#include "node.h"


bool LogicalOperationNode::Evaluate(const Date &date, const string &event) const {
    if (op_ == LogicalOperation::And) {
        return left_->Evaluate(date, event) && right_->Evaluate(date, event);
    } else
        return left_->Evaluate(date, event) || right_->Evaluate(date, event);
}

LogicalOperationNode::LogicalOperationNode(const LogicalOperation &op, shared_ptr<Node> left, shared_ptr<Node> right) :
        op_(op), left_(left), right_(right) {}


bool EmptyNode::Evaluate(const Date &date, const string &event) const {
    return true;
}

DateComparisonNode::DateComparisonNode(const Comparison &cmp, const Date &date) : cmp_(cmp),
                                                                                  date_(date) {}

EventComparisonNode::EventComparisonNode(const Comparison &cmp, const string &event) : cmp_(cmp), event_(event) {}

template<class T>
bool EvaluateComparison(const Comparison &cmp, const T &propertyData, const T &outsideData) {
    switch (cmp) {
        case Comparison::Equal:
            return outsideData == propertyData;
        case Comparison::Less:
            return outsideData < propertyData;
        case Comparison::LessOrEqual:
            return outsideData <= propertyData;
        case Comparison::Greater:
            return propertyData < outsideData;
        case Comparison::GreaterOrEqual:
            return propertyData <= outsideData;
        case Comparison::NotEqual:
            return propertyData != outsideData;
    }
}

bool EventComparisonNode::Evaluate(const Date &date, const string &event) const {
    return EvaluateComparison(cmp_, event_, event);
}

bool DateComparisonNode::Evaluate(const Date &date, const string &event) const {
    return EvaluateComparison(cmp_, date_, date);
}
