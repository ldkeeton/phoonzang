#!/bin/bash
# Standalone serial-to-TCP bridge for GDB debugging.
# Creates a PTY at /tmp/com1 and bridges it to TCP :1234.
# Run BEFORE dosemu.
rm -f /tmp/com1
exec /usr/bin/socat pty,link=/tmp/com1,rawer,unlink-close=0,mode=666 tcp-l:1234,reuseaddr,fork
