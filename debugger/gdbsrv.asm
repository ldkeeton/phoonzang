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
%include "lib/equ.asm"
%include "lib/data.asm"
%include "lib/serial.asm"
%include "lib/hex.asm"
%include "lib/proto.asm"
%include "lib/bp.asm"
%include "lib/cmds.asm"
%include "lib/int.asm"

; ─── End of resident portion ────────────────────────
resident_end:

; ─── Transient init (freed after TSR) ──────────────
%include "lib/init.asm"
