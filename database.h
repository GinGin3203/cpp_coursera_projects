#pragma once

#include <iostream>
#include <string>
#include <set>
#include <stack>
#include <map>
#include <sstream>
#include "date.h"

using namespace std;

class Database {
public:

    void Add(const Date &date, const string &event);

    void Print(ostream &os) const;

    template<class Func>
    int RemoveIf(const Func predicate);

    template<class Func>
    vector<string> FindIf(const Func predicate);

    string Last(const Date &date);


private:
    map<Date, set<string>> SetStorage;
    map<Date, vector<string>> VecStorage;

    template<typename It, class Func>
    int Delete(const Func predicate, It leftIter, const It rightIter);
};

template<class T>
ostream &operator<<(ostream &stream, const vector<T> &storage) {
    auto lastElem = end(storage);
    lastElem--;
    for (const auto &c: storage) {
        if (c == *lastElem)
            cout << c;
        else
            cout << c << " ";
    }
    return stream;
}

template<typename It, class Func>
int Database::Delete(const Func predicate, It leftIter, const It rightIter) {
    int counter = 0;
    while (leftIter != rightIter) {
        auto ValueIter = begin(leftIter->second);
        while (ValueIter != end(leftIter->second)) {
            if (predicate(leftIter->first, *ValueIter)) {
                ValueIter = leftIter->second.erase(ValueIter);
                counter++;
            } else
                ValueIter++;
        }
        leftIter++;

    }
    return counter;
}

template<class Func>
int Database::RemoveIf(const Func predicate) {
    auto SetCounter = Delete(predicate, begin(SetStorage), end(SetStorage));
    auto VecCounter = Delete(predicate, begin(VecStorage), end(VecStorage));
    if (SetCounter != VecCounter)
        throw logic_error("VecStorage and SetStorage should maintain the same number of elements");

    for (auto SetIt = begin(SetStorage); SetIt != end(SetStorage); SetIt++) {
        if (SetIt->second.empty())
            SetIt = SetStorage.erase(SetIt);
    }


    for (auto VecIt = begin(VecStorage); VecIt != end(VecStorage); VecIt++) {
        if (VecIt->second.empty())
            VecIt = VecStorage.erase(VecIt);
    }
    return SetCounter;
}

template<class Func>
vector<string> Database::FindIf(const Func predicate) {
    vector<string> QueryResult;
    for (auto StorageIter = begin(SetStorage); StorageIter != end(SetStorage); StorageIter++)
        for (auto ValueIter = begin(StorageIter->second); ValueIter != end(StorageIter->second); ValueIter++)
            if (predicate(StorageIter->first, *ValueIter)) {
                ostringstream os;
                os << StorageIter->first << " " << *ValueIter;
                QueryResult.push_back(os.str());
            }
    return QueryResult;
}
