#pragma once

#include <algorithm>
using namespace std;

template <typename It>
class IteratorRange {
public:
  IteratorRange(It first, It last) : first(first), last(last) {
  }

  It begin() const {
    return first;
  }

  It end() const {
    return last;
  }

  size_t size() const {
    return last - first;
  }

private:
  It first, last;
};

template <typename Container>
auto Head(Container& c, size_t top) {
  return IteratorRange(begin(c), begin(c) + min<size_t>(max<size_t>(top, 0), c.size()));
}
