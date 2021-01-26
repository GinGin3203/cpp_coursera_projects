#pragma once

#include "profile.h"
#include "iterator_range.h"
#include <istream>
#include <ostream>
#include <set>
#include <list>
#include <unordered_map>
#include <vector>
#include <future>
#include <map>
#include <deque>
#include <string>
using namespace std;

class InvertedIndex {
public:

    InvertedIndex() {
        docs.reserve(50000) ;
        }

    void Add(string&& document);
    IteratorRange<deque<pair<size_t, size_t>>::iterator> Lookup(string&& word);
  const string& GetDocument(size_t id) const {
    return docs[id];
  }

  size_t DocsSize() const {
      return docs.size();
  }

private:
  map<string, deque<pair<size_t, size_t>>> index;
  vector<string> docs;
};

class SearchServer {
public:
  SearchServer() = default;
  explicit SearchServer(istream& document_input);
  void UpdateDocumentBase(istream& document_input);
  void AddQueriesStream(istream& query_input, ostream& search_results_output);
  ~SearchServer();
private:
//    vector <size_t> ExploreLine(string line);

    mutex db_update_mut;
    InvertedIndex index;
    vector<future<void>> vec_futures;
};
