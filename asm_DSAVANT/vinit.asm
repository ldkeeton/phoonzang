; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vinit.inc"
bits 16
%include "inc/host_symbols.inc"
%ifndef VBASE
VBASE equ __zres_end - 0x000e
%endif
section .text vstart=VBASE
%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e + VBASE
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                             ; o_magic: overlay signature (0x00f2)
    dw __zres_end                         ; 0x5055 ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)    ; 0x1609 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x0120 ; o_dsize: initialized data size
    dw 0x0002                             ; o_bss: uninitialized data size
    dw loc_15d9 - IMAGE_BASE + __zres_end ; 0x6620 ; o_entry: overlay entry offset (CS)

__zcode_start:

loc_000e:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov ax, word [bss_830a]          ; 0x0014
    jmp short @..loc_000e.l5         ; 0x0017
@..loc_000e.l1:
    call loc_03a8                    ; 0x0019
    jmp short @..loc_000e.l6         ; 0x001c
@..loc_000e.l2:
    call api_idx_0068_VUVP           ; 0x001e
    jmp short @..loc_000e.l6         ; 0x0021
@..loc_000e.l3:
    call api_idx_0002_LIOI           ; 0x0023
    jmp short @..loc_000e.l6         ; 0x0026
@..loc_000e.l4:
    call api_idx_0008_LUSR           ; 0x0028
    jmp short @..loc_000e.l6         ; 0x002b
@..loc_000e.l5:
    cmp ax, strict word 0            ; 0x002d
    je short @..loc_000e.l1          ; 0x0030
    cmp ax, strict word 1            ; 0x0032
    je short @..loc_000e.l2          ; 0x0035
    cmp ax, strict word 2            ; 0x0037
    je short @..loc_000e.l4          ; 0x003a
    cmp ax, strict word 8            ; 0x003c
    je short @..loc_000e.l3          ; 0x003f
@..loc_000e.l6:
    mov ax, 0                        ; 0x0041
    ret                              ; 0x0044
%include "vinit/api_idx_0002_MPHG.asm"     ; 0x0045

%include "vinit/api_idx_0002_VSKI.asm"     ; 0x0084

%include "vinit/api_idx_0002_IMLG.asm"     ; 0x00ca

%include "vinit/api_idx_0002_OILV.asm"     ; 0x010c

%include "vinit/api_idx_000c_POHU.asm"     ; 0x0146

%include "lib/api_idx_0002_VTPK.asm"     ; 0x08b7

%include "vinit/api_idx_0002_NJSO.asm"     ; 0x094a

%include "vinit/api_idx_0004_JPMO.asm"     ; 0x0988

%include "vinit/api_idx_000e_KUPL.asm"     ; 0x09d3

%include "vinit/api_idx_0068_VUVP.asm"     ; 0x0ac7

%include "vinit/api_idx_0002_LIOI.asm"     ; 0x133d

%include "vinit/api_idx_0008_LUSR.asm"     ; 0x1409

loc_15d9:
    pop word [dseg_91b6]             ; 0x15d9
    pop cx                           ; 0x15dd
    mov word [dseg_91b2], sp         ; 0x15de
    mov word [dseg_91b4], bp         ; 0x15e2
    mov word [dseg_91ae], si         ; 0x15e6
    mov word [dseg_91b0], di         ; 0x15ea
    cld                              ; 0x15ee
    mov di, bss_91b8                 ; 0x15ef
    mov cx, 0x91ba                   ; 0x15f2
    sub cx, di                       ; 0x15f5
    shr cx, 1                        ; 0x15f7
    je short @..loc_15d9.l1          ; 0x15f9
    sub ax, ax                       ; 0x15fb
    rep stosw                        ; 0x15fd
@..loc_15d9.l1:
    call loc_000e                    ; 0x15ff
    mov bp, word [dseg_91b4]         ; 0x1602
    mov sp, word [dseg_91b2]         ; 0x1606
    mov si, word [dseg_91ae]         ; 0x160a
    mov di, word [dseg_91b0]         ; 0x160e
    push cx                          ; 0x1612
    jmp [dseg_91b6]                  ; 0x1613
__zdata_start:

    db 'SCENARIO.HDR', 0
    db 'VBFONT0.VGA', 0
    db 'VBFONT1.VGA', 0
    db 'VBFONT2.VGA', 0
    db 'VBFONT3.VGA', 0
    db 'VCFONT1.VGA', 0
    db 'VCPORT0.VGA', 0
    db 'VCFONT2.VGA', 0
    db 'VCFONT3.VGA', 0
    db 'VMPNTR0.VGA', 0
    db 'VMPNTR1.VGA', 0
    db 'VMPNTR2.VGA', 0
    db 'BASEDATA.VGA', 0
    db 'MASTER.HDR', 0
    db 'DISK.HDR', 0
    db 'MSG.HDR', 0
    db 'PCFILE.DBS', 0
    db 'MISC.HDR', 0
    db 'MSG.DBS', 0
    db 'SCENARIO.DBS', 0
    db 'PALETTE.DEF', 0
    db 'TIT1SCRN.VGA', 0
    db 'TIT2SCRN.VGA', 0
    db 'MAINSCRN.VGA', 0
    times 10 db 0


__zimage_end:
