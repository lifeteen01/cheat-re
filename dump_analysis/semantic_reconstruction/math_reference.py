#!/usr/bin/env python3
"""Analyst binary32 reference arithmetic; never executes original sample instructions."""
from pathlib import Path
import json
import struct

f32 = lambda x: struct.unpack("<f", struct.pack("<f", x))[0]
bits = lambda x: struct.unpack("<I", struct.pack("<f", x))[0]
rows = []
for value in [0, 1, 4, 25, 100, 42.25, 1e6, 2, 1e-6]:
    x = f32(value)
    half = f32(x * f32(0.5))
    word = bits(x)
    shifted = (word >> 1) | (word & 0x80000000)
    guess = struct.unpack("<f", struct.pack("<I", (0x5f3759df - shifted) & 0xffffffff))[0]
    first = f32(f32(f32(1.5) - f32(f32(guess * half) * guess)) * guess)
    second = f32(f32(f32(1.5) - f32(f32(first * half) * first)) * first)
    result = f32(1 / second)
    rows.append({"input": x, "input_bits": hex(bits(x)), "result": result, "result_bits": hex(bits(result))})
Path(__file__).with_name("math_reference.json").write_text(json.dumps(rows, indent=2) + "\n")
print(f"PASS: wrote {len(rows)} independent binary32 reference cases")
