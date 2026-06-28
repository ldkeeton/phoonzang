"""String carving pass.

Scans binary data for printable-ASCII strings in IS_UNKNOWN regions and
marks them IS_DATA.  Runs early to prevent the disassembler from decoding
string bytes as instructions.
"""

from lib.model import IS_UNKNOWN, IS_DATA


def carve_strings(data, bitmap, min_body=4):
    """Scan *data* for printable-ASCII strings in IS_UNKNOWN regions.

    Strings: >= *min_body* printable chars (0x20–0x7E) terminated by 0x00
    (C-style) or 0x24 ($ — DOS style).  Body + terminator marked IS_DATA.
    """
    n = len(data)
    i = 0
    while i < n:
        if bitmap[i] != IS_UNKNOWN:
            i += 1
            continue
        if not (0x20 <= data[i] <= 0x7E):
            i += 1
            continue
        start = i
        while i < n and 0x20 <= data[i] <= 0x7E:
            i += 1
        body_len = i - start
        if body_len < min_body:
            continue
        if i < n and data[i] in (0x00, 0x24):
            for j in range(start, i + 1):
                bitmap[j] = IS_DATA
