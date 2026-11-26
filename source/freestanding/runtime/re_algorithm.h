#ifndef RE_FREESTANDING_ALGORITHM_H
#define RE_FREESTANDING_ALGORITHM_H

/*  Freestanding algorithm replacements — no <algorithm> dependency.
 *  Zero CRT / STL dependencies.  Header-only, namespace re.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20 */

#include "re_types.h"

namespace re {

/* ================================================================
   detail — sorting internals
   ================================================================ */
namespace detail {

/* Default less-than comparator. */
struct DefaultLess {
    template<typename A, typename B>
    constexpr bool operator()(const A& a, const B& b) const { return a < b; }
};

/* Floor of log2(n) via bit-scan.  Returns 0 for n <= 1. */
inline ReUSize re_log2(ReUSize n) {
    if (n <= 1) return 0;
    return (ReUSize)63 - (ReUSize)__builtin_clzll((unsigned long long)n);
}

/* Insertion sort — O(n^2) but fast for small n (< ~16). */
template<typename It, typename Compare>
void insertion_sort(It first, It last, Compare cmp) {
    if (last - first <= 1) return;
    for (It i = first + 1; i != last; ++i) {
        auto key = re_move(*i);
        It j = i;
        while (j != first && cmp(key, *(j - 1))) {
            *j = re_move(*(j - 1));
            --j;
        }
        *j = re_move(key);
    }
}

/* Sift-down for heapsort (max-heap). */
template<typename It, typename Compare>
void sift_down(It first, ReUSize len, ReUSize idx, Compare cmp) {
    for (;;) {
        ReUSize left = 2 * idx + 1;
        if (left >= len) break;
        ReUSize best = idx;
        if (cmp(first[best], first[left])) best = left;
        ReUSize right = left + 1;
        if (right < len && cmp(first[best], first[right])) best = right;
        if (best == idx) break;
        re_swap(first[idx], first[best]);
        idx = best;
    }
}

/* Heapsort — O(n log n) fallback when depth limit is reached. */
template<typename It, typename Compare>
void heap_sort(It first, It last, Compare cmp) {
    ReUSize n = (ReUSize)(last - first);
    if (n <= 1) return;
    /* Build max-heap (sift every non-leaf). */
    ReUSize i = n / 2;
    while (i > 0) {
        --i;
        sift_down(first, n, i, cmp);
    }
    /* Extract sorted order. */
    i = n;
    while (i > 1) {
        --i;
        re_swap(first[0], first[i]);
        sift_down(first, i, (ReUSize)0, cmp);
    }
}

/* Median-of-three partition (Lomuto scheme).
 * Returns the iterator pointing to the pivot in its final position. */
template<typename It, typename Compare>
It partition_range(It first, It last, Compare cmp) {
    It mid  = first + (last - first) / 2;
    It back = last - 1;
    /* Sort the three sentinels so *first <= *mid <= *back. */
    if (cmp(*mid, *first))  re_swap(*first, *mid);
    if (cmp(*back, *first)) re_swap(*first, *back);
    if (cmp(*back, *mid))   re_swap(*mid,   *back);
    /* Pivot = median, place it at back for Lomuto scan. */
    re_swap(*mid, *back);
    /* Lomuto partition: elements < pivot move to [first, store). */
    It store = first;
    for (It j = first; j != back; ++j) {
        if (cmp(*j, *back)) {
            re_swap(*store, *j);
            ++store;
        }
    }
    re_swap(*store, *back);
    return store;
}

/* Introsort loop — quicksort with depth-limited fallback to heapsort.
 * Leaves small (<=16) partitions unsorted; a final insertion sort
 * over the whole range cleans up in O(n). */
template<typename It, typename Compare>
void introsort_loop(It first, It last, ReUSize depth, Compare cmp) {
    while ((ReUSize)(last - first) > 16) {
        if (depth == 0) {
            heap_sort(first, last, cmp);
            return;
        }
        --depth;
        It pivot = partition_range(first, last, cmp);
        /* Recurse on the smaller partition; iterate on the larger
         * to bound stack depth to O(log n). */
        if (pivot - first < last - (pivot + 1)) {
            introsort_loop(first, pivot, depth, cmp);
            first = pivot + 1;
        } else {
            introsort_loop(pivot + 1, last, depth, cmp);
            last = pivot;
        }
    }
}

} /* namespace detail */


/* ================================================================
   Sort — introsort (quicksort + insertion sort + heapsort fallback)
   Depth limit: 2 * floor(log2(n))
   ================================================================ */
template<typename It, typename Compare>
void re_sort(It first, It last, Compare cmp) {
    if (last - first <= 1) return;
    detail::introsort_loop(first, last,
        2 * detail::re_log2((ReUSize)(last - first)), cmp);
    detail::insertion_sort(first, last, cmp);
}

template<typename It>
void re_sort(It first, It last) {
    re_sort(first, last, detail::DefaultLess{});
}


/* ================================================================
   Linear search
   ================================================================ */
template<typename It, typename T>
It re_find(It first, It last, const T& value) {
    for (; first != last; ++first)
        if (*first == value) return first;
    return last;
}

template<typename It, typename Pred>
It re_find_if(It first, It last, Pred pred) {
    for (; first != last; ++first)
        if (pred(*first)) return first;
    return last;
}


/* ================================================================
   Count
   ================================================================ */
template<typename It, typename T>
ReUSize re_count(It first, It last, const T& value) {
    ReUSize n = 0;
    for (; first != last; ++first)
        if (*first == value) ++n;
    return n;
}

template<typename It, typename Pred>
ReUSize re_count_if(It first, It last, Pred pred) {
    ReUSize n = 0;
    for (; first != last; ++first)
        if (pred(*first)) ++n;
    return n;
}


/* ================================================================
   Min / Max element
   ================================================================ */
template<typename It>
It re_min_element(It first, It last) {
    if (first == last) return last;
    It best = first;
    for (++first; first != last; ++first)
        if (*first < *best) best = first;
    return best;
}

template<typename It>
It re_max_element(It first, It last) {
    if (first == last) return last;
    It best = first;
    for (++first; first != last; ++first)
        if (*best < *first) best = first;
    return best;
}


/* ================================================================
   Copy / Fill
   ================================================================ */
template<typename InputIt, typename OutputIt>
OutputIt re_copy(InputIt first, InputIt last, OutputIt dest) {
    for (; first != last; ++first, ++dest)
        *dest = *first;
    return dest;
}

template<typename It, typename T>
void re_fill(It first, It last, const T& value) {
    for (; first != last; ++first)
        *first = value;
}


/* ================================================================
   Remove / Remove-if   (returns new logical end)
   ================================================================ */
template<typename It, typename T>
It re_remove(It first, It last, const T& value) {
    first = re_find(first, last, value);
    if (first == last) return last;
    It result = first;
    ++first;
    for (; first != last; ++first) {
        if (!(*first == value)) {
            *result = re_move(*first);
            ++result;
        }
    }
    return result;
}

template<typename It, typename Pred>
It re_remove_if(It first, It last, Pred pred) {
    first = re_find_if(first, last, pred);
    if (first == last) return last;
    It result = first;
    ++first;
    for (; first != last; ++first) {
        if (!pred(*first)) {
            *result = re_move(*first);
            ++result;
        }
    }
    return result;
}


/* ================================================================
   Erase-if for containers (remove+erase idiom)
   ================================================================ */
template<typename C, typename Pred>
void re_erase_if(C& container, Pred pred) {
    auto* it = container.begin();
    while (it != container.end()) {
        if (pred(*it))
            container.erase(it);
        else
            ++it;
    }
}


/* ================================================================
   Any / All / None of
   ================================================================ */
template<typename It, typename Pred>
bool re_any_of(It first, It last, Pred pred) {
    for (; first != last; ++first)
        if (pred(*first)) return true;
    return false;
}

template<typename It, typename Pred>
bool re_all_of(It first, It last, Pred pred) {
    for (; first != last; ++first)
        if (!pred(*first)) return false;
    return true;
}

template<typename It, typename Pred>
bool re_none_of(It first, It last, Pred pred) {
    for (; first != last; ++first)
        if (pred(*first)) return false;
    return true;
}


/* ================================================================
   Binary search   (requires sorted range, uses operator<)
   ================================================================ */
template<typename It, typename T>
It re_lower_bound(It first, It last, const T& value) {
    ReUSize count = (ReUSize)(last - first);
    while (count > 0) {
        ReUSize step = count / 2;
        It mid = first + step;
        if (*mid < value) {
            first = mid + 1;
            count -= step + 1;
        } else {
            count = step;
        }
    }
    return first;
}

template<typename It, typename T>
It re_upper_bound(It first, It last, const T& value) {
    ReUSize count = (ReUSize)(last - first);
    while (count > 0) {
        ReUSize step = count / 2;
        It mid = first + step;
        if (!(value < *mid)) {
            first = mid + 1;
            count -= step + 1;
        } else {
            count = step;
        }
    }
    return first;
}

template<typename It, typename T>
bool re_binary_search(It first, It last, const T& value) {
    It it = re_lower_bound(first, last, value);
    return it != last && !(value < *it);
}


/* ================================================================
   Transform
   ================================================================ */
template<typename InputIt, typename OutputIt, typename UnaryOp>
OutputIt re_transform(InputIt first, InputIt last, OutputIt dest, UnaryOp op) {
    for (; first != last; ++first, ++dest)
        *dest = op(*first);
    return dest;
}


/* ================================================================
   Accumulate
   ================================================================ */
template<typename It, typename T>
T re_accumulate(It first, It last, T init) {
    for (; first != last; ++first)
        init = init + *first;
    return init;
}

template<typename It, typename T, typename BinOp>
T re_accumulate(It first, It last, T init, BinOp op) {
    for (; first != last; ++first)
        init = op(init, *first);
    return init;
}


/* ================================================================
   Reverse
   ================================================================ */
template<typename It>
void re_reverse(It first, It last) {
    while (first != last) {
        --last;
        if (first == last) break;
        re_swap(*first, *last);
        ++first;
    }
}


/* ================================================================
   Unique   (removes consecutive duplicates, returns new end)
   ================================================================ */
template<typename It>
It re_unique(It first, It last) {
    if (first == last) return last;
    It result = first;
    ++first;
    for (; first != last; ++first) {
        if (!(*result == *first)) {
            ++result;
            if (result != first)
                *result = re_move(*first);
        }
    }
    return ++result;
}


/* ================================================================
   Rotate   (three-reverse algorithm)
   Returns iterator to the element that was previously at *first.
   ================================================================ */
template<typename It>
It re_rotate(It first, It middle, It last) {
    if (first == middle) return last;
    if (middle == last)  return first;
    re_reverse(first, middle);
    re_reverse(middle, last);
    re_reverse(first, last);
    return first + (last - middle);
}


/* ================================================================
   Equal
   ================================================================ */
template<typename It1, typename It2>
bool re_equal(It1 first1, It1 last1, It2 first2) {
    for (; first1 != last1; ++first1, ++first2)
        if (!(*first1 == *first2)) return false;
    return true;
}


/* ================================================================
   For-each
   ================================================================ */
template<typename It, typename F>
F re_for_each(It first, It last, F f) {
    for (; first != last; ++first)
        f(*first);
    return f;
}

} /* namespace re */

#endif /* RE_FREESTANDING_ALGORITHM_H */
