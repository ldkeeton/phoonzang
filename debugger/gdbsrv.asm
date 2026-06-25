; gdbsrv.asm — real-mode GDB stub TSR for DOS
;
; Build:   nasm -O0 -f bin -o gdbsrv.com gdbsrv.asm
; Usage:   GDBSRV [hotkey_scan]
;   hotkey_scan = hex scancode (default 58 = F12, checked with Ctrl held)
;
; dosemu2:  $_com1 = "host-guest:tcp:1234"
; GDB:      target remote :1234

BITS 16
ORG 0x100

; ─── Entry point (must be at 0x100) ─────────────────
    jmp init

; ─── Resident modules (stay in memory after TSR) ────
%include "equ.asm"
%include "data.asm"
%include "serial.asm"
%include "hex.asm"
%include "proto.asm"
%include "bp.asm"
%include "cmds.asm"
%include "int.asm"

; ─── End of resident portion ────────────────────────
resident_end:

; ─── Transient init (freed after TSR) ──────────────
%include "init.asm"
