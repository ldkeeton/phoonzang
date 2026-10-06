; equ.asm — constants for GDBSRV

COM1   equ 0x3F8                        ; base I/O port for the first PC serial UART
BDIV   equ 1                            ; UART divisor for 115200 baud at 1.8432 MHz
MAX_BP equ 16                           ; maximum simultaneous software breakpoints
BUF_SZ equ 1024                         ; maximum received RSP packet buffer size
STK_SZ equ 256
; GDB's i8086 register packet: core registers and FPU/SSE slots.
RSP_REG_SIZE equ 308                    ; i386-layout register packet size expected by GDB
IRQ4_VECTOR  equ 0x0C                   ; hardware interrupt vector assigned to COM1 IRQ4

; register save offsets
%define R_AX 0                          ; byte offset of saved AX in four-byte GDB slot
%define R_CX 4                          ; byte offset of saved CX slot
%define R_DX 8                          ; byte offset of saved DX slot
%define R_BX 12                         ; byte offset of saved BX slot
%define R_SP 16                         ; byte offset of saved SP slot
%define R_BP 20                         ; byte offset of saved BP slot
%define R_SI 24                         ; byte offset of saved SI slot
%define R_DI 28                         ; byte offset of saved DI slot
%define R_IP 32                         ; byte offset of saved instruction pointer slot
%define R_FL 36                         ; byte offset of saved flags slot
%define R_CS 40                         ; byte offset of saved code-segment slot
%define R_SS 44                         ; byte offset of saved stack-segment slot
%define R_DS 48                         ; byte offset of saved data-segment slot
%define R_ES 52                         ; byte offset of saved extra-segment slot
%define R_FS 56                         ; byte offset of saved FS slot (reported as zero)
%define R_GS 60                         ; byte offset of saved GS slot (reported as zero)
SAVE_L equ 64                           ; number of low register bytes stored locally
