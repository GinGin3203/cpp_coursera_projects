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
    if (SetStorage[date].find(event) == SetStorage[date].end()) {
        VecStorage[date].push_back(event);
        SetStorage[date].insert(event);

    }
}


string Database::Last(const Date &date) {
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


