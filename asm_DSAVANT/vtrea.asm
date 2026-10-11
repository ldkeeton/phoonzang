%include "inc/structs/structs.inc"
%include "inc/structs/loc_4582.inc"
org 0
bits 16
%include "inc/labels/vtrea_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x000e
%endif

    ; Aztec C86 overlay header (14 bytes)
    dw 0x00f2      ; o_magic: overlay signature (0x00f2)
    dw 0x5055      ; o_corg: code load origin (memory offset)
    dw 0x9a0d      ; o_csize: code size in bytes
    dw 0x9098      ; o_dorg: data load origin (memory offset)
    dw 0x007c      ; o_dsize: initialized data size
    dw 0x05a6      ; o_bss: uninitialized data size
    dw 0xea0c      ; o_entry: overlay entry offset (CS)

loc_4582 equ 0x4582
loc_4ad7 equ 0x4ad7
loc_4af7 equ 0x4af7
loc_4b1f equ 0x4b1f
loc_4b28 equ 0x4b28
loc_4bbe equ 0x4bbe
loc_4bcb equ 0x4bcb
api_idx_0092 equ 0x4bcc
loc_4bdd equ 0x4bdd
loc_4be2 equ 0x4be2
loc_4c0c equ 0x4c0c
loc_4c64 equ 0x4c64
loc_4c7e equ 0x4c7e
loc_4cf9 equ 0x4cf9
loc_4d07 equ 0x4d07
loc_4d23 equ 0x4d23
loc_4d31 equ 0x4d31
loc_4d3f equ 0x4d3f
loc_4d47 equ 0x4d47
loc_4d73 equ 0x4d73
loc_4d8a equ 0x4d8a
loc_4dcc equ 0x4dcc
loc_4e35 equ 0x4e35
loc_4e73 equ 0x4e73
loc_4e75 equ 0x4e75
loc_4eb0 equ 0x4eb0
loc_4ee5 equ 0x4ee5
api_idx_007a equ 0x4f0c
loc_4f2b equ 0x4f2b
loc_4f69 equ 0x4f69
loc_4f6e equ 0x4f6e
loc_4f8c equ 0x4f8c
data_69c8 equ 0x69c8
data_82f2 equ 0x82f2
data_82f4 equ 0x82f4
data_82f6 equ 0x82f6
data_82f8 equ 0x82f8
data_82fa equ 0x82fa
data_82fc equ 0x82fc
data_82fe equ 0x82fe
data_8300 equ 0x8300
data_8302 equ 0x8302
data_8306 equ 0x8306
data_91fe equ 0x91fe
data_9250 equ 0x9250
data_95de equ 0x95de
dseg_0002 equ 0x0002
dseg_0110 equ 0x0110
dseg_0112 equ 0x0112
bss_0e0e equ 0x0e0e
bss_0e10 equ 0x0e10
bss_0e12 equ 0x0e12
bss_0e2a equ 0x0e2a
bss_0e2c equ 0x0e2c
bss_0e32 equ 0x0e32
bss_3f00 equ 0x3f00
bss_5216 equ 0x5216
bss_590e equ 0x590e
bss_5910 equ 0x5910
bss_598c equ 0x598c
bss_598e equ 0x598e
bss_59fc equ 0x59fc
bss_5b3e equ 0x5b3e
bss_5b6e equ 0x5b6e
bss_69c8 equ 0x69c8
bss_82e8 equ 0x82e8
bss_82ee equ 0x82ee
bss_8306 equ 0x8306
bss_830a equ 0x830a
bss_830c equ 0x830c
bss_844c equ 0x844c
bss_844e equ 0x844e
bss_8450 equ 0x8450
bss_849e equ 0x849e
bss_84a0 equ 0x84a0
bss_84a2 equ 0x84a2
bss_84a4 equ 0x84a4
bss_8d06 equ 0x8d06
bss_8d08 equ 0x8d08
bss_8d0a equ 0x8d0a
bss_8d0c equ 0x8d0c
bss_8d0e equ 0x8d0e
bss_8d10 equ 0x8d10
bss_8d12 equ 0x8d12
bss_8f20 equ 0x8f20
bss_8f3e equ 0x8f3e
bss_8f40 equ 0x8f40
bss_8f42 equ 0x8f42
bss_8f44 equ 0x8f44
bss_8f46 equ 0x8f46
bss_904e equ 0x904e
bss_9050 equ 0x9050
bss_9052 equ 0x9052
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
dseg_910a equ 0x910a
dseg_910c equ 0x910c
dseg_910e equ 0x910e
dseg_9110 equ 0x9110
dseg_9112 equ 0x9112
bss_9114 equ 0x9114
bss_9116 equ 0x9116
bss_9118 equ 0x9118
bss_911a equ 0x911a
bss_911c equ 0x911c
bss_911e equ 0x911e
bss_9120 equ 0x9120
bss_9122 equ 0x9122
bss_9124 equ 0x9124
bss_9126 equ 0x9126
bss_9150 equ 0x9150
bss_9152 equ 0x9152
bss_9154 equ 0x9154
bss_91d4 equ 0x91d4
bss_91fe equ 0x91fe
bss_9200 equ 0x9200
bss_9250 equ 0x9250
bss_95de equ 0x95de
bss_95e0 equ 0x95e0
bss_95e4 equ 0x95e4

loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov word [bss_9114], 0           ; 0x0014
    mov word [bss_9116], 0xffff      ; 0x001a
    mov word [bss_9118], 0           ; 0x0020
    mov word [bss_911a], 0xffff      ; 0x0026
    cmp word [bss_830a], byte 0x0f   ; 0x002c
    jne short @..local.l1            ; 0x0031
    mov word [bss_830a], 0x16        ; 0x0033
    call api_idx_0050_2              ; 0x0039
    jmp short @..local.l6            ; 0x003c
@..local.l1:
    cmp word [bss_830a], byte 0x15   ; 0x003e
    jne short @..local.l2            ; 0x0043
    mov word [bss_830a], 0x16        ; 0x0045
    call loc_809e                    ; 0x004b
    jmp short @..local.l6            ; 0x004e
@..local.l2:
    cmp word [bss_830a], byte 0x1a   ; 0x0050
    jne short @..local.l3            ; 0x0055
    mov word [bss_830a], 5           ; 0x0057
    call loc_811f                    ; 0x005d
    jmp short @..local.l6            ; 0x0060
@..local.l3:
    cmp word [bss_830a], byte 0x1c   ; 0x0062
    jne short @..local.l4            ; 0x0067
    mov word [bss_830a], 5           ; 0x0069
    call loc_81b6                    ; 0x006f
    jmp short @..local.l6            ; 0x0072
@..local.l4:
    cmp word [bss_830a], byte 0x1d   ; 0x0074
    jne short @..local.l5            ; 0x0079
    mov word [bss_830a], 5           ; 0x007b
    call loc_81db                    ; 0x0081
    jmp short @..local.l6            ; 0x0084
@..local.l5:
    mov word [bss_830a], 0x16        ; 0x0086
@..local.l6:
    mov ax, 0                        ; 0x008c
    ret                              ; 0x008f
%include "vtrea/api_idx_0010.asm"

%include "vtrea/api_idx_000e.asm"

%include "vtrea/api_idx_000a.asm"

%include "vtrea/api_idx_0004.asm"

%include "vtrea/api_idx_000a_2.asm"

%include "vtrea/api_idx_0004_2.asm"

%include "vtrea/api_idx_0090.asm"

%include "vtrea/api_idx_0004_3.asm"

%include "vtrea/api_idx_0004_4.asm"

%include "vtrea/api_idx_0002.asm"

%include "vtrea/api_idx_005a.asm"

%include "vtrea/api_idx_003e.asm"

%include "vtrea/api_idx_0056.asm"

%include "vtrea/api_idx_0050.asm"

%include "vtrea/api_idx_0004_5.asm"

%include "vtrea/api_idx_0006.asm"

%include "vtrea/api_idx_00b8.asm"

%include "vtrea/api_idx_0060.asm"

%include "vtrea/api_idx_0002_2.asm"

%include "vtrea/api_idx_0084.asm"

%include "vtrea/api_idx_0008.asm"

%include "vtrea/api_idx_0004_6.asm"

%include "vtrea/api_idx_0006_2.asm"

%include "vtrea/api_idx_0006_3.asm"

%include "vtrea/api_idx_0018.asm"

%include "vtrea/api_idx_0004_7.asm"

%include "vtrea/api_idx_0038.asm"

%include "vtrea/api_idx_0054.asm"

%include "vtrea/api_idx_0008_2.asm"

%include "vtrea/api_idx_004c.asm"

%include "vtrea/api_idx_0004_9.asm"

%include "vtrea/api_idx_0040.asm"

%include "vtrea/api_idx_0006_4.asm"

%include "vtrea/api_idx_0002_3.asm"

%include "vtrea/api_idx_0002_4.asm"

%include "vtrea/api_idx_00a8.asm"

%include "vtrea/api_idx_0006_5.asm"

%include "vtrea/api_idx_0004_10.asm"

%include "vtrea/api_idx_006a.asm"

%include "vtrea/api_idx_0074.asm"

%include "vtrea/api_idx_0002_5.asm"

%include "vtrea/api_idx_0004_11.asm"

%include "vtrea/api_idx_0034.asm"

%include "vtrea/api_idx_0072.asm"

%include "vtrea/api_idx_0004_12.asm"

%include "vtrea/api_idx_00e6.asm"

%include "vtrea/api_idx_0074_2.asm"

%include "vtrea/api_idx_0050_2.asm"

%include "vtrea/api_idx_002a.asm"

%include "vtrea/api_idx_0008_3.asm"

%include "vtrea/api_idx_000c.asm"

%include "vtrea/api_idx_0002_6.asm"

%include "vtrea/api_idx_0004_13.asm"

%include "vtrea/api_idx_000a_3.asm"

%include "vtrea/api_idx_000c_2.asm"

%include "vtrea/api_idx_0044.asm"

%include "vtrea/leaf_loc_9a03.asm"

