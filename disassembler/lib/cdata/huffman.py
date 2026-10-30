"""Packed text records: what ``#pragma huffman "tree.c"`` makes of a string.

The tree is 16-bit words, a pair per node: the word for a 0 bit, then the
word for a 1 bit.  A word with the top bit set links to the node numbered by
its negation; any other word is the character at that leaf.  Node 0 is the
root.  A record is ``[length][count][bits]``: *length* counts the bytes after
it, *count* the characters, and the bits run most significant first, the last
byte padded with zeros.  ``huffman.c`` beside the generated sources is the
same in C.
"""

import struct


def codes(tree):
    """``{character: bits}`` for the tree's bytes, each code a ``0``/``1``
    string."""
    words = struct.unpack(f'<{len(tree) // 2}H', tree[:len(tree) & ~1])
    out = {}
    stack = [(0, '')]
    while stack:
        node, path = stack.pop()
        for bit in '01':
            word = words[node * 2 + int(bit)]
            if word & 0x8000:
                stack.append(((-word) & 0xffff, path + bit))
            elif chr(word) in out:
                raise ValueError(f'character {word:#x} is at two leaves')
            else:
                out[chr(word)] = path + bit
    return out


def pack(text, table):
    """The record for *text*; ``KeyError`` names a character with no code."""
    bits = ''.join(table[c] for c in text)
    bits += '0' * (-len(bits) % 8)
    body = int(bits, 2).to_bytes(len(bits) // 8, 'big') if bits else b''
    if len(text) > 255 or len(body) + 1 > 255:
        raise ValueError(f'{len(text)} characters do not fit one record')
    return bytes([len(body) + 1, len(text)]) + body
