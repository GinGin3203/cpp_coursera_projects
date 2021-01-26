#include "search_server.h"
#include "iterator_range.h"

#include <algorithm>
#include <iterator>
#include <sstream>
#include <iostream>
#include <numeric>

vector<string> SplitIntoWords(const string &line) {
    istringstream words_input(line);
    return {istream_iterator<string>(words_input), istream_iterator<string>()};
}

vector<string> SplitIntoWords(string &&line) {
    istringstream words_input(line);
    return {istream_iterator<string>(words_input), istream_iterator<string>()};
}

SearchServer::SearchServer(istream &document_input) {
    UpdateDocumentBase(document_input);
}

void SearchServer::UpdateDocumentBase(istream &document_input) {
    InvertedIndex new_index;

    for (string current_document; getline(document_input, current_document);) {
        new_index.Add(move(current_document));
    }

    lock_guard g(db_update_mut);
    swap(index, new_index);
}

//vector <size_t> SearchServer::ExploreLine(string current_query) {
//    vector<size_t> search_results(index.DocsSize());
//
//    for (auto word : SplitIntoWords(move(current_query))) {
//        for (auto [docid, hitcount]: index.Lookup(move(word))) {
//            search_results[docid] += hitcount;
//        }
//    }
//    return search_results;
//}
//
//vector<size_t> ProcessBatch(const set<string>& key_words, vector<string> lines) {
//    Stats result;
//    for (const string& line : lines) {
//        result += ExploreLine(key_words, line);
//    }
//    return result;
//}

void SearchServer::AddQueriesStream(
        istream &query_input, ostream &search_results_output
) {
        vector<size_t> search_results, docid_idx;

        search_results.resize(index.DocsSize());
        docid_idx.resize(index.DocsSize());

        for (string current_query; getline(query_input, current_query);) {
            search_results_output << current_query << ':';

            iota(docid_idx.begin(), docid_idx.end(), 0);
            search_results.assign(search_results.size(), 0);

            for (auto word : SplitIntoWords(move(current_query))) {
                for (auto[docid, hitcount]: index.Lookup(move(word))) {
                    search_results[docid] += hitcount;
                }
            }

            partial_sort(
                    begin(docid_idx),
                    Head(docid_idx, 5).end(),
                    end(docid_idx),
                    [&search_results](size_t lhs, size_t rhs) {
                        return search_results[lhs] != search_results[rhs] ?
                               search_results[lhs] > search_results[rhs] :
                               lhs < rhs;
                    });

            for (auto docid: Head(docid_idx, 5)) {
                if (search_results[docid] == 0)
                    continue;
                search_results_output << " {"
                                      << "docid: " << docid << ", "
                                      << "hitcount: " << search_results[docid] << '}';
            }
            search_results_output << endl;

    };


}


void InvertedIndex::Add(string&& document) {
    const size_t docid = docs.size();
    for (auto word : SplitIntoWords(*docs.insert(docs.end(), move(document)))) {
        auto& deq_ref = index[move(word)];
        if (deq_ref.empty() || deq_ref.back().first != docid)
            deq_ref.emplace_back(make_pair(docid, 0));
        deq_ref.back().second++;
    }
}

IteratorRange<deque<pair<size_t, size_t>>::iterator> InvertedIndex::Lookup(string&& word) {
        auto& deq = index[move(word)];
        return Head(deq, deq.size());
}

SearchServer::~SearchServer() {
    for (auto& fut: vec_futures)
        fut.get();
}
