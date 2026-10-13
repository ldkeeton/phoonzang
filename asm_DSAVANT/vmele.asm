%include "inc/structs/structs.inc"
%include "inc/structs/vmele.inc"
org 0
bits 16
%include "labels/host_calls.inc"

%include "labels/host_values.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2                                ; o_magic: overlay signature (0x00f2)
    dw 0x5055                                ; o_corg: code load origin (memory offset)
    dw (__zdata_start - __zcode_start)       ; 0x3765 ; o_csize: code size in bytes
    dw __zdataseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)        ; 0x001e ; o_dsize: initialized data size
    dw 0x001a                                ; o_bss: uninitialized data size
    dw string_loc_3710 - IMAGE_BASE + 0x5055 ; 0x8757 ; o_entry: overlay entry offset (CS)

__zcode_start:
dseg_0002 equ 0x0002
bss_0e36 equ 0x0e36
bss_5962 equ 0x5962
bss_5963 equ 0x5963
bss_5964 equ 0x5964
bss_5988 equ 0x5988
bss_598e equ 0x598e
bss_5b6e equ 0x5b6e
bss_69c8 equ 0x69c8
bss_7abc equ 0x7abc
bss_7b04 equ 0x7b04
bss_82b6 equ 0x82b6
bss_82e8 equ 0x82e8
bss_82ee equ 0x82ee
bss_82fa equ 0x82fa
bss_82fc equ 0x82fc
bss_830a equ 0x830a
bss_830c equ 0x830c
bss_8452 equ 0x8452
bss_8454 equ 0x8454
bss_8456 equ 0x8456
bss_8458 equ 0x8458
bss_845a equ 0x845a
bss_845c equ 0x845c
bss_845e equ 0x845e
bss_8460 equ 0x8460
bss_8466 equ 0x8466
bss_8468 equ 0x8468
bss_8482 equ 0x8482
bss_8484 equ 0x8484
bss_8492 equ 0x8492
bss_849e equ 0x849e
bss_84a0 equ 0x84a0
bss_84a2 equ 0x84a2
bss_84a4 equ 0x84a4
bss_8d0a equ 0x8d0a
bss_8d0c equ 0x8d0c
bss_8d0e equ 0x8d0e
bss_8d10 equ 0x8d10
bss_8f20 equ 0x8f20
bss_905a equ 0x905a
bss_905e equ 0x905e
bss_9060 equ 0x9060
bss_9062 equ 0x9062
bss_9064 equ 0x9064
bss_9066 equ 0x9066
bss_9068 equ 0x9068
bss_906a equ 0x906a
bss_906c equ 0x906c
bss_908a equ 0x908a
bss_908c equ 0x908c
bss_908e equ 0x908e
bss_9090 equ 0x9090
bss_9092 equ 0x9092
bss_9094 equ 0x9094
dseg_90ac equ 0x90ac
dseg_90ae equ 0x90ae
dseg_90b0 equ 0x90b0
dseg_90b2 equ 0x90b2
dseg_90b4 equ 0x90b4
bss_90b6 equ 0x90b6
bss_90b8 equ 0x90b8
bss_90ba equ 0x90ba
bss_90bc equ 0x90bc

loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_aztec_csav               ; 0x0011
    mov word [bss_90b6], 5           ; 0x0014
    mov word [bss_90b8], 0           ; 0x001a
    mov word [bss_90ba], 0           ; 0x0020
    mov word [bss_90bc], 0           ; 0x0026
    cmp word [bss_830a], byte 0x0a   ; 0x002c
    jne short @..local.l1            ; 0x0031
    call loc_33df                    ; 0x0033
@..local.l1:
    cmp word [bss_830a], byte 0x0e   ; 0x0036
    jne short @..local.l2            ; 0x003b
    call api_idx_0056                ; 0x003d
@..local.l2:
    cmp word [bss_830a], byte 0x0b   ; 0x0040
    jne short @..local.l3            ; 0x0045
    call api_idx_0002_2              ; 0x0047
@..local.l3:
    mov ax, 0                        ; 0x004a
    ret                              ; 0x004d
%include "vmele/api_idx_0008.asm"          ; 0x004e

%include "vmele/api_idx_0004.asm"          ; 0x0102

%include "vmele/api_idx_0008_2.asm"        ; 0x0164

%include "vmele/api_idx_000a.asm"          ; 0x0244

%include "vmele/api_idx_0004_2.asm"        ; 0x02c2

%include "vmele/api_idx_000c.asm"          ; 0x030a

%include "vmele/api_idx_0004_3.asm"        ; 0x03b9

%include "vmele/api_idx_00a8.asm"          ; 0x041d

%include "vmele/api_idx_005e.asm"          ; 0x0649

%include "vmele/api_idx_0008_3.asm"        ; 0x07ad

%include "vmele/api_idx_0004_4.asm"        ; 0x0c67

%include "vmele/api_idx_000a_2.asm"        ; 0x0f95

%include "vmele/api_idx_000c_2.asm"        ; 0x11b0

%include "vmele/api_idx_000e.asm"          ; 0x12ac

%include "vmele/api_idx_005c.asm"          ; 0x14e6

%include "vmele/api_idx_0006.asm"          ; 0x1713

%include "vmele/api_idx_0004_5.asm"        ; 0x17ad

%include "vmele/api_idx_0014.asm"          ; 0x1844

%include "vmele/api_idx_000e_2.asm"        ; 0x2138

%include "vmele/api_idx_0004_6.asm"        ; 0x245b

%include "vmele/api_idx_001c.asm"          ; 0x2565

%include "vmele/api_idx_000e_3.asm"        ; 0x27ab

%include "vmele/api_idx_0002.asm"          ; 0x28fc

%include "vmele/api_idx_000c_3.asm"        ; 0x29c5

%include "vmele/api_idx_0006_2.asm"        ; 0x2b78

%include "vmele/api_idx_005a.asm"          ; 0x2cde

%include "vmele/api_idx_0004_7.asm"        ; 0x2ec4

%include "vmele/api_idx_0008_4.asm"        ; 0x306a

%include "vmele/io_loc_309d.asm"           ; 0x309d

%include "vmele/io_loc_30ab.asm"           ; 0x30ab

%include "vmele/io_loc_30b9.asm"           ; 0x30b9

%include "vmele/io_loc_30c7.asm"           ; 0x30c7

%include "vmele/io_loc_30d5.asm"           ; 0x30d5

%include "vmele/io_loc_30e3.asm"           ; 0x30e3

%include "vmele/api_idx_0056.asm"          ; 0x31a1

%include "vmele/api_idx_0004_8.asm"        ; 0x3390

%include "vmele/api_idx_0002_2.asm"        ; 0x36b8

%include "vmele/string_loc_3710.asm"       ; 0x3710

%include "vmele/string_loc_374e.asm"       ; 0x374e

__zdata_start:

    db 'MON00.PIC', 0
    db 0x20, 0x00
    db 'VM1.$$$', 0
    times 10 db 0


__zimage_end:
