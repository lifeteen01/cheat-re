#pragma once
/* Freestanding compatibility helpers for missing runtime API. */
#include "re_string.h"

namespace re {
/* Fill-constructor for ReString (re_string.h lacks ReString(count, char)). */
inline ReString re_string_fill(ReUSize count, char c) {
    ReString s;
    s.resize(count, c);
    return s;
}
} // namespace re
