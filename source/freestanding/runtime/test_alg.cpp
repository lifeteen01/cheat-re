/* Compilation test for re_algorithm.h, re_utility.h, re_random.h.
 * Not meant to run — just verifies that everything compiles cleanly
 * under strict freestanding flags. */

#include "re_algorithm.h"
#include "re_utility.h"
#include "re_random.h"

/* Include existing headers to check for conflicts. */
#include "re_types.h"
#include "re_mem.h"
#include "re_error.h"
#include "re_vector.h"

namespace {

/* ---- re_algorithm.h ---- */

void test_sort() {
    int arr[] = {5, 3, 1, 4, 2, 8, 7, 6, 9, 0, 15, 14, 13, 12, 11, 10, 16, 17, 18, 19};
    re::re_sort(arr, arr + 20);
    re::re_sort(arr, arr + 20, [](int a, int b) { return a > b; });

    /* Edge cases. */
    int single[] = {1};
    re::re_sort(single, single + 1);
    re::re_sort(single, single);
}

void test_find() {
    int arr[] = {5, 3, 1, 4, 2};
    int* found = re::re_find(arr, arr + 5, 3);
    (void)found;

    int* found_if = re::re_find_if(arr, arr + 5, [](int x) { return x > 3; });
    (void)found_if;
}

void test_count() {
    int arr[] = {1, 2, 3, 2, 1};
    ReUSize c1 = re::re_count(arr, arr + 5, 2);
    ReUSize c2 = re::re_count_if(arr, arr + 5, [](int x) { return x > 1; });
    (void)c1; (void)c2;
}

void test_min_max() {
    int arr[] = {5, 3, 1, 4, 2};
    int* mn = re::re_min_element(arr, arr + 5);
    int* mx = re::re_max_element(arr, arr + 5);
    (void)mn; (void)mx;

    /* Empty range. */
    int* mn_e = re::re_min_element(arr, arr);
    int* mx_e = re::re_max_element(arr, arr);
    (void)mn_e; (void)mx_e;
}

void test_copy_fill() {
    int src[] = {1, 2, 3, 4, 5};
    int dst[5];
    re::re_copy(src, src + 5, dst);
    re::re_fill(dst, dst + 5, 0);
}

void test_remove() {
    int arr[] = {1, 2, 3, 2, 4};
    int* end1 = re::re_remove(arr, arr + 5, 2);
    (void)end1;

    int arr2[] = {1, 2, 3, 4, 5};
    int* end2 = re::re_remove_if(arr2, arr2 + 5, [](int x) { return x > 3; });
    (void)end2;
}

void test_predicates() {
    int arr[] = {1, 2, 3, 4, 5};
    bool any  = re::re_any_of(arr, arr + 5, [](int x) { return x > 3; });
    bool all  = re::re_all_of(arr, arr + 5, [](int x) { return x > 0; });
    bool none = re::re_none_of(arr, arr + 5, [](int x) { return x > 10; });
    (void)any; (void)all; (void)none;
}

void test_binary_search() {
    int sorted[] = {1, 2, 3, 4, 5};
    int* lb = re::re_lower_bound(sorted, sorted + 5, 3);
    int* ub = re::re_upper_bound(sorted, sorted + 5, 3);
    bool bs = re::re_binary_search(sorted, sorted + 5, 3);
    (void)lb; (void)ub; (void)bs;
}

void test_transform() {
    int src[] = {1, 2, 3, 4, 5};
    int dst[5];
    re::re_transform(src, src + 5, dst, [](int x) { return x * 2; });
}

void test_accumulate() {
    int arr[] = {1, 2, 3, 4, 5};
    int sum1 = re::re_accumulate(arr, arr + 5, 0);
    int sum2 = re::re_accumulate(arr, arr + 5, 1, [](int a, int b) { return a * b; });
    (void)sum1; (void)sum2;
}

void test_reverse() {
    int arr[] = {1, 2, 3, 4, 5};
    re::re_reverse(arr, arr + 5);
}

void test_unique() {
    int arr[] = {1, 1, 2, 2, 3, 3};
    int* end = re::re_unique(arr, arr + 6);
    (void)end;
}

void test_rotate() {
    int arr[] = {1, 2, 3, 4, 5};
    int* ret = re::re_rotate(arr, arr + 2, arr + 5);
    (void)ret;
}

void test_equal() {
    int a[] = {1, 2, 3};
    int b[] = {1, 2, 3};
    bool eq = re::re_equal(a, a + 3, b);
    (void)eq;
}

void test_for_each() {
    int arr[] = {1, 2, 3, 4, 5};
    re::re_for_each(arr, arr + 5, [](int& x) { x += 1; });
}


/* ---- re_utility.h ---- */

void test_pair() {
    re::RePair<int, float> p1;
    re::RePair<int, float> p2(1, 2.0f);
    auto p3 = re::re_make_pair(1, 2.0f);
    (void)p1;

    bool eq = (p2 == p3);
    bool lt = (p2 < p3);
    (void)eq; (void)lt;

    /* Access. */
    int   a = p3.first;
    float b = p3.second;
    (void)a; (void)b;
}

void test_tuple() {
    re::ReTuple<> t0;
    re::ReTuple<int> t1(42);
    re::ReTuple<int, float> t2(1, 2.0f);
    re::ReTuple<int, float, double> t3(1, 2.0f, 3.0);
    (void)t0;

    /* Index-based access. */
    int&    v0 = re::re_get<0>(t2);
    float&  v1 = re::re_get<1>(t2);
    (void)v0; (void)v1;

    int&    u0 = re::re_get<0>(t3);
    float&  u1 = re::re_get<1>(t3);
    double& u2 = re::re_get<2>(t3);
    (void)u0; (void)u1; (void)u2;

    /* Const access. */
    const auto& ct = t2;
    const int& cv = re::re_get<0>(ct);
    (void)cv;

    /* make_tuple. */
    auto t4 = re::re_make_tuple(1, 2.0f, 3.0);
    int& t4v = re::re_get<0>(t4);
    (void)t4v;

    /* Copy construction. */
    re::ReTuple<int> t1_copy(t1);
    (void)t1_copy;

    /* Tuple size. */
    static_assert(re::re_tuple_size_v<re::ReTuple<>>     == 0, "");
    static_assert(re::re_tuple_size_v<re::ReTuple<int>>  == 1, "");
    static_assert(re::re_tuple_size_v<re::ReTuple<int, float, double>> == 3, "");

    /* Larger tuple (up to 8 elements). */
    re::ReTuple<int, int, int, int, int, int, int, int>
        t8(1, 2, 3, 4, 5, 6, 7, 8);
    int& e7 = re::re_get<7>(t8);
    (void)e7;
}

void test_unique_ptr() {
    re::ReUniquePtr<int> up1;
    (void)up1;

    auto up2 = re::re_make_unique<int>(42);

    if (up2) {
        int val = *up2;
        (void)val;
    }

    int* raw = up2.release();
    if (raw) {
        /* int is trivially destructible — just free. */
        re::mem_free(raw);
    }

    /* Move. */
    auto up3 = re::re_make_unique<int>(99);
    re::ReUniquePtr<int> up4(re::re_move(up3));
    (void)up4;
}

void test_initializer_list() {
    auto sum = [](std::initializer_list<int> il) {
        int s = 0;
        for (auto it = il.begin(); it != il.end(); ++it)
            s += *it;
        return s;
    };
    int result = sum({1, 2, 3, 4, 5});
    (void)result;
}


/* ---- re_random.h ---- */

void test_random() {
    re::ReRandom rng;
    re::ReRandom rng2(0xDEADBEEFULL);

    ReU64 u64 = rng.next_u64();
    ReU32 u32 = rng.next_u32();
    ReU32 bounded = rng.next_u32(100);
    ReF32 f32 = rng.next_f32();
    ReF64 f64 = rng.next_f64();
    ReI32 range = rng.next_range(-10, 10);
    (void)u64; (void)u32; (void)bounded;
    (void)f32; (void)f64; (void)range;

    int arr[] = {1, 2, 3, 4, 5};
    rng.shuffle(arr, arr + 5);

    /* Edge: empty and single-element shuffle. */
    rng.shuffle(arr, arr);
    rng.shuffle(arr, arr + 1);
}


/* ---- Cross-integration: use with ReVector ---- */

void test_with_vector() {
    re::ReVector<int> v;
    v.push_back(5);
    v.push_back(3);
    v.push_back(1);
    v.push_back(4);
    v.push_back(2);

    re::re_sort(v.begin(), v.end());

    int* found = re::re_find(v.begin(), v.end(), 3);
    (void)found;

    bool has = re::re_binary_search(v.begin(), v.end(), 4);
    (void)has;

    re::ReVector<re::RePair<int, int>> pairs;
    pairs.emplace_back(1, 2);
    pairs.emplace_back(3, 4);
    re::re_sort(pairs.begin(), pairs.end(),
        [](const re::RePair<int,int>& a, const re::RePair<int,int>& b) {
            return a.first < b.first;
        });
}

} /* anonymous namespace */
