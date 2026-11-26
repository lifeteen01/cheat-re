#pragma once
#include "internal_analysis.hpp"
namespace rust_internal_re {
// [I] Explicit offline allocation: reserves existing copied bytes without clearing
// them. The caller owns the arena and chooses its initial byte contents.
class OwnedSnapshotAllocator {
public:
    OwnedSnapshotAllocator(Snapshot&,Address begin,ReUSize capacity);
    Address allocate(ReUSize bytes,ReUSize alignment=8);
    Snapshot& snapshot() const { return image_; }
    ReUSize used() const { return static_cast<ReUSize>(next_-begin_); }
private:
    Snapshot& image_;
    Address begin_,next_,end_;
};
enum class RegistryStatus { complete, missing_bytes, analysis_limit };
struct RegistryLookup {
    Address value{};
    bool inserted{};
    RegistryStatus status{RegistryStatus::complete};
};
struct IdentityKeyResult {
    re::ReString value;
    RegistryStatus status{RegistryStatus::complete};
};
// [C] 369e70: pointer-range gates, player+640, UTF16 NUL scan, low-byte
// conversion. [I] Limits only bound analysis; native has no scan limit.
IdentityKeyResult identity_key_369e70(const Snapshot&,Address player,bool force_empty=false,
                                     ReUSize maximum_characters=4096);
ReU64 registry_hash_2d7078(re::ReSpan<const ReByte>);
ReU64 baseline_hash_2d0ae4(ReU32);
// [I] Owned-container adaptation of the two native default-inserting registries.
// [C] Nodes retain native field offsets, constructor stores and linked-list order.
// [I] Header/bucket storage is owned C++ state. Keys are immutable after insertion.
class RegistryStore {
public:
    explicit RegistryStore(OwnedSnapshotAllocator&,float maximum_load=1.0f);
    RegistryLookup baseline_2ef724(ReU32);
    RegistryLookup identity_2df608(re::ReStringView);
    Snapshot& snapshot() const { return arena_.snapshot(); }
    re::ReVector<Address> baseline_nodes() const;
    re::ReVector<Address> identity_nodes() const;
    ReUSize baseline_bucket_count() const { return baseline_buckets_; }
    ReUSize identity_bucket_count() const { return identity_buckets_; }
private:
    struct Entry { re::ReString key; ReU64 hash; Address node; };
    OwnedSnapshotAllocator& arena_;
    float maximum_load_;
    ReUSize baseline_buckets_{8},identity_buckets_{8};
    Address baseline_head_{},identity_head_{};
    re::ReVector<Entry> baselines_,identities_;
    RegistryLookup lookup(re::ReVector<Entry>&,Address&,ReUSize&,re::ReString,bool);
    void links(const re::ReVector<Entry>&,Address);
};
void check_registry_reconstruction();
} // namespace rust_internal_re
