#ifndef RE_FREESTANDING_MAP_H
#define RE_FREESTANDING_MAP_H

/*  Freestanding ordered map and set — replaces std::map / std::set.
 *  Implemented as a sorted vector (binary search).  Good for the
 *  config/lookup-table workloads in this project; not for hot-path
 *  mass-insertion.
 *  Zero CRT / STL dependencies.  Header-only, namespace re.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20 */

#include "re_types.h"
#include "re_error.h"   /* ReOptional, re_nullopt */
#include "re_vector.h"

namespace re {

/* ================================================================
   ReMap<K,V>  —  sorted-vector ordered map
   Keys must support operator< .
   ================================================================ */
template<typename K, typename V>
class ReMap {
public:
    struct Pair { K key; V value; };

private:
    ReVector<Pair> pairs_;

    ReUSize lower_bound(const K& key) const {
        ReUSize lo = 0, hi = pairs_.size();
        while (lo < hi) {
            ReUSize mid = lo + (hi - lo) / 2;
            if (pairs_[mid].key < key)
                lo = mid + 1;
            else
                hi = mid;
        }
        return lo;
    }

    bool key_eq(ReUSize pos, const K& key) const {
        return pos < pairs_.size() && !(key < pairs_[pos].key)
                                   && !(pairs_[pos].key < key);
    }

public:
    using key_type = K;
    using mapped_type = V;

    ReMap() = default;

    /* Initializer list constructor: ReMap<K,V>{ {{k1,v1}, {k2,v2}} } */
    ReMap(std::initializer_list<Pair> init) {
        pairs_.reserve(init.size());
        for (const auto& p : init)
            insert(p.key, p.value);
    }

    /* Assignment from initializer list */
    ReMap& operator=(std::initializer_list<Pair> init) {
        clear();
        pairs_.reserve(init.size());
        for (const auto& p : init)
            insert(p.key, p.value);
        return *this;
    }

    /* -- Element access -- */
    V& at(const K& key) {
        ReUSize pos = lower_bound(key);
        if (!key_eq(pos, key)) __builtin_trap();
        return pairs_[pos].value;
    }

    const V& at(const K& key) const {
        ReUSize pos = lower_bound(key);
        if (!key_eq(pos, key)) __builtin_trap();
        return pairs_[pos].value;
    }

    V& operator[](const K& key) {
        ReUSize pos = lower_bound(key);
        if (key_eq(pos, key))
            return pairs_[pos].value;
        /* Insert a default-constructed value at sorted position */
        Pair p{key, V{}};
        pairs_.insert(pairs_.data() + pos, re_move(p));
        return pairs_[pos].value;
    }

    ReOptional<V*> find(const K& key) {
        ReUSize pos = lower_bound(key);
        if (key_eq(pos, key))
            return ReOptional<V*>(&pairs_[pos].value);
        return re_nullopt;
    }

    ReOptional<const V*> find(const K& key) const {
        ReUSize pos = lower_bound(key);
        if (key_eq(pos, key))
            return ReOptional<const V*>(&pairs_[pos].value);
        return re_nullopt;
    }

    Pair* find_pair(const K& key) {
        ReUSize pos = lower_bound(key);
        if (key_eq(pos, key))
            return &pairs_[pos];
        return nullptr;
    }

    const Pair* find_pair(const K& key) const {
        ReUSize pos = lower_bound(key);
        if (key_eq(pos, key))
            return &pairs_[pos];
        return nullptr;
    }

    bool contains(const K& key) const {
        return key_eq(lower_bound(key), key);
    }

    bool insert(const K& key, const V& value) {
        ReUSize pos = lower_bound(key);
        if (key_eq(pos, key))
            return false;
        Pair p{key, value};
        pairs_.insert(pairs_.data() + pos, re_move(p));
        return true;
    }

    bool erase(const K& key) {
        ReUSize pos = lower_bound(key);
        if (!key_eq(pos, key))
            return false;
        pairs_.erase(pairs_.data() + pos);
        return true;
    }

    void erase(const Pair* pos) {
        if (pos >= pairs_.begin() && pos < pairs_.end())
            pairs_.erase(pos);
    }

    void clear()                 { pairs_.clear(); }
    ReUSize size()  const        { return pairs_.size(); }
    bool    empty() const        { return pairs_.empty(); }

    void reserve(ReUSize cap)    { pairs_.reserve(cap); }

    /* -- Iteration (sorted order) -- */
    Pair*       begin()       { return pairs_.begin(); }
    Pair*       end()         { return pairs_.end(); }
    const Pair* begin() const { return pairs_.begin(); }
    const Pair* end()   const { return pairs_.end(); }
};


/* ================================================================
   ReSet<K>  —  sorted-vector ordered set
   Keys must support operator< .
   ================================================================ */
template<typename K>
class ReSet {
    ReVector<K> keys_;

    ReUSize lower_bound(const K& key) const {
        ReUSize lo = 0, hi = keys_.size();
        while (lo < hi) {
            ReUSize mid = lo + (hi - lo) / 2;
            if (keys_[mid] < key)
                lo = mid + 1;
            else
                hi = mid;
        }
        return lo;
    }

    bool key_eq(ReUSize pos, const K& key) const {
        return pos < keys_.size() && !(key < keys_[pos])
                                  && !(keys_[pos] < key);
    }

public:
    ReSet() = default;

    bool insert(const K& key) {
        ReUSize pos = lower_bound(key);
        if (key_eq(pos, key))
            return false;
        keys_.insert(keys_.data() + pos, key);
        return true;
    }

    bool contains(const K& key) const {
        return key_eq(lower_bound(key), key);
    }

    bool erase(const K& key) {
        ReUSize pos = lower_bound(key);
        if (!key_eq(pos, key))
            return false;
        keys_.erase(keys_.data() + pos);
        return true;
    }

    void    clear()          { keys_.clear(); }
    ReUSize size()  const    { return keys_.size(); }
    bool    empty() const    { return keys_.empty(); }

    void reserve(ReUSize c)  { keys_.reserve(c); }

    const K* begin() const   { return keys_.begin(); }
    const K* end()   const   { return keys_.end(); }
};

} /* namespace re */

#endif /* RE_FREESTANDING_MAP_H */
