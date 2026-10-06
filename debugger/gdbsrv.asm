; gdbsrv.asm — real-mode GDB stub TSR for DOS
;
; Build:   nasm -O0 -f bin -o gdbsrv.com gdbsrv.asm
; Usage:   GDBSRV [hotkey_scan]
;   hotkey_scan = hex scancode (default 58 = F12, checked with Ctrl held)
;
; dosemu2:  $_com1 = "host-guest:tcp:1234"
; GDB:      target remote :1234

BITS 16                                  ; assemble instructions for 16-bit real mode
%ifidn __OUTPUT_FORMAT__, bin            ; only raw COM builds need DOS load address
ORG 0x100                                ; DOS loads a COM image after the 256-byte PSP
%endif                                   ; end COM-image-only origin selection

; ─── Entry point (must be at 0x100) ─────────────────
    jmp init                             ; skip resident code and run one-time TSR setup

; ─── Resident modules (stay in memory after TSR) ────
%include "lib/equ.asm"                  ; constants and saved-register offsets
%include "lib/data.asm"                 ; resident buffers, state, and packet strings
%include "lib/serial.asm"               ; COM1 UART setup, input, and output
%include "lib/hex.asm"                  ; ASCII-hex conversions for RSP packets
%include "lib/proto.asm"                ; GDB Remote Serial Protocol framing
%include "lib/bp.asm"                   ; software breakpoint table and patching
%include "lib/cmds.asm"                 ; RSP command dispatch and execution control
%include "lib/int.asm"                  ; CPU traps, serial IRQ, and TSR interface

; ─── End of resident portion ────────────────────────
resident_end:                             ; transient init code begins after this address

; ─── Transient init (freed after TSR) ──────────────
%include "lib/init.asm"                 ; setup code discarded after TSR installation
