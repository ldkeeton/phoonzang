#!/usr/bin/env python3
"""Interactive raw RSP debugger — bypass GDB, talk directly to the stub.
   Usage:  ./interact.py             (connect to :1234)
           ./interact.py :1234       (explicit port)
"""
import socket, readline, struct, sys, time

PORT = 1234
NAME  = ["EAX","ECX","EDX","EBX","ESP","EBP","ESI","EDI","EIP","EFL","CS","DS","ES","SS","FS","GS"]
# Register save offsets from equ.asm
R_AX,R_CX,R_DX,R_BX,R_SP,R_BP,R_SI,R_DI,R_IP,R_FL,R_CS,R_DS,R_ES,R_SS,R_FS,R_GS = range(16)
RSZ = 64  # SAVE_L

# ─── RSP send/recv ────────────────────────────────────
def gdb_cmd(sock, cmd):
    payload = cmd.encode() if isinstance(cmd, str) else cmd
    csum = sum(payload) & 0xFF
    pkt = b'$' + payload + b'#' + f'{csum:02x}'.encode()
    sock.send(pkt)
    buf = b''
    while True:
        b = sock.recv(1)
        if not b: break
        buf += b
        if b == b'#' and len(buf) >= 3:
            c1 = sock.recv(1); c2 = sock.recv(1)
            buf += c1 + c2
            sock.send(b'+')
            break
    s = buf.find(b'$')
    if s >= 0:
        e = buf.find(b'#', s)
        if e >= 0: return buf[s:e+3]
    return buf

def decode(text):
    """Strip $...#xx envelope, return inner bytes as-is."""
    if text.startswith(b'$') and b'#' in text:
        return text[1:text.index(b'#')]
    return text

def decode_hex(text):
    """Strip envelope, return raw bytes from hex inner."""
    if text.startswith(b'$') and b'#' in text:
        hx = text[1:text.index(b'#')].decode()
        return bytes.fromhex(hx)
    return text

def encode(data):
    """Return $hex#xx for raw bytes."""
    hx = data.hex() if isinstance(data, bytes) else f'{data:02x}'
    payload = hx.encode() if isinstance(hx, str) else hx
    csum = sum(payload) & 0xFF
    return b'$' + payload + b'#' + f'{csum:02x}'.encode()

# ─── Register display ─────────────────────────────────
def show_regs(sock):
    r = gdb_cmd(sock, 'g')
    if not r.startswith(b'$'):
        print(f"  err: {r}")
        return None
    data = decode_hex(r)
    if len(data) < RSZ:
        print(f"  short reply ({len(data)} bytes)")
        return None
    regs = [int.from_bytes(data[o:o+4], 'little') for o in range(0, RSZ, 4)]
    for i, name in enumerate(NAME):
        if name in ("DS","ES","SS","FS","GS"):
            print(f"  {name:3s} = {regs[i]:04X}")
        elif name in ("CS",):
            print(f"  {name:3s} = {regs[i]:04X}")
        elif name == "EIP":
            print(f"  {name:3s} = {regs[i]:08X}")
        elif name == "EFL":
            print(f"  {name:3s} = {regs[i]:08X}")
        else:
            print(f"  {name:3s} = {regs[i]:08X}  ({regs[i]})")
    # disasm next instruction
    phys = regs[R_CS] * 16 + regs[R_IP]
    mr = gdb_cmd(sock, f'm{phys:x},10')
    if mr.startswith(b'$'):
        hx = mr[1:mr.index(b'#')].decode()
        inst = bytes.fromhex(hx)
        print(f"\n  [{regs[R_CS]:04X}:{regs[R_IP]:08X}]  {' '.join(f'{b:02X}' for b in inst[:8])}")
    return regs

# ─── Connection ───────────────────────────────────────
def connect(port):
    sock = socket.socket()
    sock.settimeout(5)
    sock.connect(('localhost', port))
    time.sleep(0.3)
    # drain
    try:
        d = sock.recv(1024)
        if d:
            print(f"  drained: {d.hex()}")
    except:
        pass
    return sock

# ─── Help ─────────────────────────────────────────────
HELP = """Commands:
  ?          halt reason
  g          read all registers
  s          single step
  c          continue
  m ADDR LEN read memory (hex addr, hex len)
  M ADDR LEN HEX  write memory (hex hex hex)
  b ADDR     set breakpoint
  d ADDR     remove breakpoint
  k          kill stub
  D          detach (resume target)
  h          this help
  q, x, ^D   quit"""

# ─── Main loop ────────────────────────────────────────
def main():
    port = PORT
    if len(sys.argv) > 1:
        port = int(sys.argv[1].replace(':', ''))
    print(f"Connecting to :{port}...")
    try:
        sock = connect(port)
    except Exception as e:
        print(f"  failed: {e}")
        return 1

    # Initial probe
    r = gdb_cmd(sock, '?')
    if r.startswith(b'$'):
        resp = decode(r)
        print(f"  halt   = {resp.decode() if isinstance(resp, bytes) else resp}")
    else:
        print(f"  probe  = {r}")

    print("  Type 'h' for help, '?' for halt reason.")
    show_regs(sock)

    while True:
        try:
            line = input("\n> ").strip()
        except (EOFError, KeyboardInterrupt):
            print()
            break
        if not line: continue

        parts = line.split()
        cmd = parts[0].lower()

        if cmd in ('q', 'x'):
            break
        elif cmd == 'h':
            print(HELP)
        elif cmd == '?':
            r = gdb_cmd(sock, '?')
            if r.startswith(b'$'):
                resp = decode(r)
                print(f"  halt   = {resp.decode() if isinstance(resp, bytes) else resp}")
            else:
                print(f"  ?  = {r}")
        elif cmd == 'g':
            show_regs(sock)
        elif cmd == 's':
            r = gdb_cmd(sock, 's')
            # step wakes INT1 which sends S05, but sip returns first and waits
            # we need to receive S05 before sending 'g'
            if not r.startswith(b'$'):
                # sometimes gdb_cmd already got the S05
                print(f"  step ack = {r}")
            show_regs(sock)
        elif cmd == 'c':
            r = gdb_cmd(sock, 'c')
            print(f"  continue ack = {r}")
            show_regs(sock)
        elif cmd == 'm':
            if len(parts) < 3:
                print("  usage: m ADDR LEN")
                continue
            r = gdb_cmd(sock, f'm{parts[1]},{parts[2]}')
            if r.startswith(b'$'):
                hx = r[1:r.index(b'#')].decode()
                print(f"  mem   = {hx}")
            else:
                print(f"  m  = {r}")
        elif cmd == 'M':
            if len(parts) < 4:
                print("  usage: M ADDR LEN HEX")
                continue
            r = gdb_cmd(sock, f'M{parts[1]},{parts[2]}:{parts[3]}')
            if r.startswith(b'$'):
                print(f"  M  = OK")
            else:
                print(f"  M  = {r}")
        elif cmd == 'b':
            if len(parts) < 2:
                print("  usage: b ADDR")
                continue
            r = gdb_cmd(sock, f'Z0,{parts[1]},1')
            if r.startswith(b'$'):
                print(f"  bp set at {parts[1]}")
            else:
                print(f"  b  = {r}")
        elif cmd == 'd':
            if len(parts) < 2:
                print("  usage: d ADDR")
                continue
            r = gdb_cmd(sock, f'z0,{parts[1]},1')
            if r.startswith(b'$'):
                print(f"  bp removed at {parts[1]}")
            else:
                print(f"  d  = {r}")
        elif cmd == 'k':
            r = gdb_cmd(sock, 'k')
            print(f"  kill = {r}")
            break
        elif cmd == 'D':
            r = gdb_cmd(sock, 'D')
            print(f"  detach = {r}")
            break
        else:
            print(f"  unknown: {cmd}")

    sock.close()
    return 0

if __name__ == '__main__':
    exit(main())
