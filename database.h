#pragma once

#include <iostream>
#include <string>
#include <set>
#include <algorithm>
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
    vector<string> FindIf(const Func predicate) const;

    string Last(const Date &date) const;


private:
    map<Date, set<string>> SetStorage;
    map<Date, vector<string>> VecStorage;

};

//template<class T>
//ostream &operator<<(ostream &stream, const vector<T> &storage) {
//    auto lastElem = end(storage);
//    lastElem--;
//    for (const auto &c: storage) {
//        if (c == *lastElem)
//            cout << c;
//        else
//            cout << c << " ";
//    }
//    return stream;
//}


template<class Func>
int Database::RemoveIf(const Func predicate) {
    int Counter = 0;
    auto VecIt = begin(VecStorage);
    while (VecIt != end(VecStorage)) {
        auto date = VecIt->first;
        auto prevSize = VecIt->second.size();

        auto newEnd = stable_partition(begin(VecIt->second), end(VecIt->second),
                                       [predicate, date](const string &s) {
                                           return !predicate(date, s);
                                       });
        VecIt->second.erase(newEnd, VecIt->second.end());
        auto newSize = VecIt->second.size();
        Counter += (int) (prevSize - newSize);

        if (VecIt->second.empty()) {
            SetStorage.erase(VecIt->first);
            VecIt = VecStorage.erase(VecIt);
        } else {
            SetStorage[VecIt->first] = set<string>(begin(VecIt->second), end(VecIt->second));
            VecIt++;
        }

    }
    return Counter;
}

template<class Func>
vector<string> Database::FindIf(const Func predicate) const {
    vector<string> QueryResult;
    for (auto StorageIter = begin(VecStorage); StorageIter != end(VecStorage); StorageIter++)
        for (auto ValueIter = begin(StorageIter->second); ValueIter != end(StorageIter->second); ValueIter++)
            if (predicate(StorageIter->first, *ValueIter)) {
                ostringstream os;
                os << StorageIter->first << " " << *ValueIter;
                QueryResult.push_back(os.str());
            }
    return QueryResult;
}
