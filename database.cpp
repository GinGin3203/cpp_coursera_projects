#include "database.h"

//#define DEBUG


void Database::Print(ostream &os) const {
    for (const auto &item : VecStorage) {
        for (const string &event : item.second) {
            os << item.first << " " << event << endl;
        }
    }
}

void Database::Add(const Date &date, const string &event) {
    auto curr_size = SetStorage[date].size();
    SetStorage[date].insert(event);

    if (curr_size != SetStorage[date].size())
        VecStorage[date].push_back(event);
}


string Database::Last(const Date &date) const {
    auto lastIter = VecStorage.upper_bound(date);
    if (lastIter == begin(VecStorage)) {
        throw invalid_argument("No preceding date\n");
    } else {
        lastIter--;
        ostringstream os;
        os << lastIter->first << " " << lastIter->second.back();
        return os.str();
    }
}


