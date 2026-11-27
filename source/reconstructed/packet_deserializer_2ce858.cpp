// [C] 0x2ce858..0x2cea79 (545 bytes): Tagged data packet deserializer.
// Reads a type-tagged binary stream and fills a 0x98-byte output struct.
//
// Arguments:
//   rcx (r13) = source buffer context
//   rdx (rbp) = packet header (byte at +2 = type tag, +4 = data start)
//   r8  (rbx) = output struct pointer (zeroed 0x98 bytes at start)
//
// Type tag switch (tag & 0x0f):
//   0: Position data (3 floats)
//   1: Rotation data (4 floats, quaternion)
//   2: Integer data
//   3: Short string (inline, up to ~16 bytes)
//   4: Long string (length-prefixed)
//   5: Boolean flag
//   default: Skip/unknown
//
// Flow:
//   1. Zero output struct via memset (0x3c8d70, 0x98 bytes)
//   2. Read type tag byte from header+2
//   3. Switch on (tag & 0x0f), read data fields from header+4 onward
//   4. For each type, populate the corresponding fields in output struct
//   5. Advance read cursor by consumed bytes, return bytes consumed in output[0]
//
// Evidence: dump bytes at RVA 0x2ce858, 1 call to memset, type dispatch at 0x2ce8b6.
// Cross-ref: Called from network packet processing pipeline.
#include "reconstruction.hpp"

namespace rust_internal_re {

struct PacketField {
    ReU32 bytes_consumed{};
    ReU8  field_type{};
    union {
        struct { float x, y, z; } position;
        struct { float x, y, z, w; } rotation;
        ReI32 integer;
        bool boolean;
    } value{};
    re::ReArray<char, 64> text{};
    ReU32 text_length{};
};

// [C] 0x2ce858: Deserialize one tagged field from a packet buffer.
PacketField packet_deserialize_field_2ce858(
    Snapshot& s,
    Address context,
    Address header,
    Address output)
{
    PacketField field{};

    // [C] 0x2ce884: Zero output 0x98 bytes
    // memset(output, 0, 0x98) via 0x3c8d70

    // [C] 0x2ce878: Read type tag from header + 2
    auto tag_opt = s.read<ReU8>(header + 2);
    if (!tag_opt) return field;
    ReU8 tag = *tag_opt;
    field.field_type = tag;

    // [C] 0x2ce8b3: Switch on (tag & 0x0f)
    Address data = header + 4;
    ReU8 type = tag & 0x0f;

    switch (type) {
    case 0: { // Position (3 floats = 12 bytes)
        auto x = s.read<float>(data);
        auto y = s.read<float>(data + 4);
        auto z = s.read<float>(data + 8);
        if (x && y && z) {
            field.value.position = {*x, *y, *z};
            field.bytes_consumed = 16; // header(4) + data(12)
        }
        break;
    }
    case 1: { // Rotation quaternion (4 floats = 16 bytes)
        auto x = s.read<float>(data);
        auto y = s.read<float>(data + 4);
        auto z = s.read<float>(data + 8);
        auto w = s.read<float>(data + 12);
        if (x && y && z && w) {
            field.value.rotation = {*x, *y, *z, *w};
            field.bytes_consumed = 20;
        }
        break;
    }
    case 2: { // Integer (4 bytes)
        auto v = s.read<ReI32>(data);
        if (v) {
            field.value.integer = *v;
            field.bytes_consumed = 8;
        }
        break;
    }
    case 3: { // Short inline string
        // Read bytes until null or 16 chars
        for (ReU32 i = 0; i < 16; ++i) {
            auto c = s.read<char>(data + i);
            if (!c || *c == 0) { field.text_length = i; break; }
            field.text[i] = *c;
            field.text_length = i + 1;
        }
        field.bytes_consumed = 4 + field.text_length + 1;
        break;
    }
    case 4: { // Length-prefixed string
        auto len = s.read<ReU32>(data);
        if (len && *len < 64) {
            for (ReU32 i = 0; i < *len; ++i) {
                auto c = s.read<char>(data + 4 + i);
                if (c) field.text[i] = *c;
            }
            field.text_length = *len;
            field.bytes_consumed = 8 + *len;
        }
        break;
    }
    case 5: { // Boolean
        auto v = s.read<ReU8>(data);
        if (v) {
            field.value.boolean = (*v != 0);
            field.bytes_consumed = 5;
        }
        break;
    }
    default:
        field.bytes_consumed = 4; // Skip unknown type
        break;
    }

    return field;
}

} // namespace rust_internal_re
