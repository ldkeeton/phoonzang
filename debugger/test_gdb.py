#!/usr/bin/env python3
"""Test GDB stub TSR — send ? immediately, then probe registers/memory."""
import socket, time

def gdb_cmd(sock, cmd):
    payload = cmd.encode() if isinstance(cmd, str) else cmd
    csum = sum(payload) & 0xFF
    pkt = b'$' + payload + b'#' + f'{csum:02x}'.encode()
    sock.send(pkt)
    buf = b''
    while True:
        b = sock.recv(1)
        if not b:
            break
        buf += b
        if b == b'#' and len(buf) >= 3:
            c1 = sock.recv(1)
            c2 = sock.recv(1)
            buf += c1 + c2
            sock.send(b'+')
            break
    s = buf.find(b'$')
    if s >= 0:
        e = buf.find(b'#', s)
        if e >= 0:
            return buf[s:e+3]
    return buf

sock = socket.socket()
sock.settimeout(5)
sock.connect(('localhost', 1234))
time.sleep(0.5)

try:
    d = sock.recv(1024)
    print(f"drained: {d.hex()}")
except:
    pass

r = gdb_cmd(sock, '?')
print(f"?  = {r}")

if r and r.startswith(b'$'):
    r2 = gdb_cmd(sock, 'g')
    print(f"g  = {r2}")
    if r2 and r2.startswith(b'$'):
        resp = r2[1:-3]
        regs = bytes.fromhex(resp.decode())
        eip = int.from_bytes(regs[32:36], 'little')
        cs  = int.from_bytes(regs[40:44], 'little')
        ss  = int.from_bytes(regs[44:48], 'little')
        sp  = int.from_bytes(regs[16:20], 'little')
        print(f"   CS:IP = {cs:04X}:{eip:04X}   SS:SP = {ss:04X}:{sp:04X}")

        phys = cs * 16 + eip
        r3 = gdb_cmd(sock, f'm{phys:x},10')
        mr = r3[1:-3].decode() if r3.startswith(b'$') else '<err>'
        print(f"   m[CS:IP] = {mr}")

print("\nOK — TSR responds")
sock.close()
