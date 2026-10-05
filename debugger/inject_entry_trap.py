#!/usr/bin/env python3
"""Create a debugger-only COM image that stops at its first instruction."""
import pathlib
import sys


def main():
    if len(sys.argv) != 3:
        raise SystemExit("usage: inject_entry_trap.py INPUT.COM OUTPUT.COM")

    source, destination = map(pathlib.Path, sys.argv[1:])
    image = bytearray(source.read_bytes())
    if not image:
        raise SystemExit(f"empty COM image: {source}")
    image[0] = 0xCC
    destination.write_bytes(image)


if __name__ == "__main__":
    main()
