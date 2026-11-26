#include "metadata_argument_bindings.hpp"
#include <iostream>
using namespace rust_internal_re;
namespace {
void check(bool value, const char *message) {
    if (!value)
        throw std::runtime_error(message);
}
}
int main() {
    try {
        constexpr Address c = 0x100000;
        Snapshot one(c, std::vector<std::byte>(0xd4, std::byte(0xaa)));
        metadata_argument_one_2cb9fc(one, c, {});
        check(one.read<std::uint64_t>(c + 0x80) == 1 &&
                  one.read<Address>(c + 0x88) == 0xaaaaaaaaaaaaaaaaULL &&
                  one.read<std::uint32_t>(c + 0xd0) == 0xaaaaaa00u &&
                  one.read<Address>(c + 0x78) == 0xaaaaaaaaaaaaaaaaULL,
              "owned string address remains unknown while count/type stores are concrete");
        metadata_argument_one_2cb9fc(one, c, Address(0));
        check(one.read<Address>(c + 0x88) == 0,
              "known null pointer is distinct from an absent raw pointer argument");

        Snapshot pair(c, std::vector<std::byte>(0xd4, std::byte(0xaa)));
        metadata_argument_two_2d2094(pair, c, 0x123456, Address(0));
        check(pair.read<Address>(c + 0x88) == 0x123456 && pair.read<Address>(c + 0x90) == 0 &&
                  pair.read<std::uint64_t>(c + 0x80) == 2 &&
                  pair.read<std::uint32_t>(c + 0xd0) == 0xaaaa0000u,
              "known second pointer shares the native16-byte argument write");
        Snapshot unknown(c, std::vector<std::byte>(0xd4, std::byte(0xaa)));
        metadata_argument_two_2d2094(unknown, c, 0x123456);
        check(unknown.read<Address>(c + 0x90) == 0xaaaaaaaaaaaaaaaaULL,
              "owned vector output pointer is retained as unknown native bytes");
        metadata_argument_index_32b1c8(unknown, c, 0x654321, 0xfedcba98u);
        check(unknown.read<Address>(c + 0x88) == 0x654321 &&
                  unknown.read<Address>(c + 0x90) == 0xaaaaaaaafedcba98ULL,
              "integer constructor initializes only the low DWORD of the second argument");

        Snapshot short_context(c, std::vector<std::byte>(0x98, std::byte(0xaa)));
        bool stopped = false;
        try {
            metadata_argument_two_2d2094(short_context, c, 1, Address(2));
        } catch (const MetadataWrapperFailure &e) {
            stopped = e.site == 0x2d20cb;
        }
        check(stopped && short_context.read<Address>(c + 0x88) == 0xaaaaaaaaaaaaaaaaULL &&
                  short_context.read<Address>(c + 0x90) == 0xaaaaaaaaaaaaaaaaULL,
              "unknown native type-span write precedes all argument stores");
        std::cout << "PASS shared one/two/index argument probe\n";
    } catch (const std::exception &e) {
        std::cerr << e.what() << '\n';
        return 1;
    }
}
