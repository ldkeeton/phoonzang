#!/usr/bin/env python3
"""Poll the TSR stub until it responds to a GDB halt query.

Waits for port, drains stale bytes, sends ? halt query,
ACKs the S05 response, then exits 0.  VSCode's GDB can
then connect normally.
"""
import socket, time, sys, re

def wait_connect(timeout_s=20):
    deadline = time.time() + timeout_s
    while time.time() < deadline:
        try:
            s = socket.create_connection(('localhost', 1234), timeout=1.0)
            return s
        except OSError:
            time.sleep(0.25)
    sys.exit(1)

def drain(s, timeout=0.5):
    """Read and discard any bytes already in the buffer."""
    s.settimeout(timeout)
    try:
        while True:
            s.recv(1)
    except socket.timeout:
        pass

def gdb_recv(s, timeout=2.0):
    """Read until '#' (end of packet marker) or timeout."""
    s.settimeout(timeout)
    data = b''
    try:
        while True:
            chunk = s.recv(1)
            if not chunk:
                break
            data += chunk
            if chunk == b'#':
                # Read 2 checksum bytes
                try:
                    data += s.recv(2)
                except socket.timeout:
                    pass
                break
    except socket.timeout:
        pass
    return data

# Wait for DOSBox-X port
sock = wait_connect()

# Drain startup artifacts (ff03 etc.)
drain(sock)

# Poll until TSR is in gdb_loop (responds to ? with S05)
for i in range(30):
    try:
        sock.sendall(b'$?#3f')
        # Read ACK from pkt_read
        ack = sock.recv(1)
        if ack == b'+':
            # Read the S05 response
            resp = gdb_recv(sock)
            # ACK the response so TSR returns to gdb_loop
            sock.sendall(b'+')
            if b'S05' in resp:
                sock.close()
                sys.exit(0)
    except OSError:
        pass
    time.sleep(0.5)

sock.close()
sys.exit(1)
