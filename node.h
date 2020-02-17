#pragma once

#include "date.h"
#include <memory>

enum struct LogicalOperation {
    And,
    Or,
};

enum class Comparison {
    Less,
    LessOrEqual,
    Greater,
    GreaterOrEqual,
    Equal,
    NotEqual,
};

template<class T>
bool EvaluateComparison(const Comparison &cmp, const T &propertyData, const T &outsideData);

class Node {
public:
    virtual bool Evaluate(const Date &date, const string &event) const = 0;


};

class EmptyNode : public Node {
public:

    bool Evaluate(const Date &date, const string &event) const override;

};

class LogicalOperationNode : public Node {
public:
    LogicalOperationNode(const LogicalOperation &op, shared_ptr<Node> left, shared_ptr<Node> right);

    bool Evaluate(const Date &date, const string &event) const override;

private:
    const LogicalOperation op_;
    shared_ptr<const Node> left_, right_;
};

class DateComparisonNode : public Node {
public:
    DateComparisonNode(const Comparison &cmp, const Date &date);

    bool Evaluate(const Date &date, const string &event) const override;

private:
    const Comparison cmp_;
    const Date date_;
};

class EventComparisonNode : public Node {
public:
    EventComparisonNode(const Comparison &cmp, const string &event);

    bool Evaluate(const Date &date, const string &event) const override;

private:
    const Comparison cmp_;
    const string event_;

};