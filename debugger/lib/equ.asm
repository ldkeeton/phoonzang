; equ.asm — constants for GDBSRV

COM1   equ 0x3F8
BDIV   equ 1
MAX_BP equ 16
BUF_SZ equ 1024
STK_SZ equ 256
; GDB's i386 register packet: core registers, FPU/SSE slots, and orig_eax.
RSP_REG_SIZE equ 312

; register save offsets
%define R_AX 0
%define R_CX 4
%define R_DX 8
%define R_BX 12
%define R_SP 16
%define R_BP 20
%define R_SI 24
%define R_DI 28
%define R_IP 32
%define R_FL 36
%define R_CS 40
%define R_SS 44
%define R_DS 48
%define R_ES 52
%define R_FS 56
%define R_GS 60
SAVE_L equ 64
