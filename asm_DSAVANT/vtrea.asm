%include "inc/structs/structs.inc"
%include "inc/structs/loc_49f2.inc"
org 0
bits 16
%include "inc/labels/vtrea_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x0d, 0x9a, 0x98, 0x90

data_0002 equ 0x0002
data_0110 equ 0x0110
data_0112 equ 0x0112
loc_0c44 equ 0x0c44
loc_0c5c equ 0x0c5c
loc_0c63 equ 0x0c63
loc_0c80 equ 0x0c80
loc_0cef equ 0x0cef
data_0e0e equ 0x0e0e
data_0e10 equ 0x0e10
data_0e12 equ 0x0e12
data_0e2a equ 0x0e2a
data_0e2c equ 0x0e2c
data_0e32 equ 0x0e32
data_3f00 equ 0x3f00
loc_4443 equ 0x4443
loc_446f equ 0x446f
loc_4495 equ 0x4495
loc_4498 equ 0x4498
loc_44ad equ 0x44ad
loc_44bd equ 0x44bd
loc_44c0 equ 0x44c0
loc_44c9 equ 0x44c9
loc_44d7 equ 0x44d7
loc_44e6 equ 0x44e6
loc_44f6 equ 0x44f6
loc_4504 equ 0x4504
loc_4513 equ 0x4513
loc_4518 equ 0x4518
loc_4582 equ 0x4582
loc_45b4 equ 0x45b4
loc_45ee equ 0x45ee
loc_4619 equ 0x4619
loc_4642 equ 0x4642
loc_46b0 equ 0x46b0
loc_46b5 equ 0x46b5
loc_46c2 equ 0x46c2
loc_46ec equ 0x46ec
loc_4729 equ 0x4729
loc_4740 equ 0x4740
loc_476b equ 0x476b
loc_4782 equ 0x4782
loc_4793 equ 0x4793
loc_47af equ 0x47af
loc_47e1 equ 0x47e1
loc_47e8 equ 0x47e8
loc_480f equ 0x480f
loc_481f equ 0x481f
loc_482e equ 0x482e
loc_483d equ 0x483d
loc_4842 equ 0x4842
loc_48b5 equ 0x48b5
loc_48d2 equ 0x48d2
loc_495a equ 0x495a
loc_49a7 equ 0x49a7
loc_49f2 equ 0x49f2
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
data_5216 equ 0x5216
data_590e equ 0x590e
data_5910 equ 0x5910
data_598c equ 0x598c
data_598e equ 0x598e
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_5b6e equ 0x5b6e
data_69c8 equ 0x69c8
data_82e8 equ 0x82e8
data_82ee equ 0x82ee
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
data_830a equ 0x830a
data_830c equ 0x830c
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_849e equ 0x849e
data_84a0 equ 0x84a0
data_84a2 equ 0x84a2
data_84a4 equ 0x84a4
data_8d06 equ 0x8d06
data_8d08 equ 0x8d08
data_8d0a equ 0x8d0a
data_8d0c equ 0x8d0c
data_8d0e equ 0x8d0e
data_8d10 equ 0x8d10
data_8d12 equ 0x8d12
data_8f20 equ 0x8f20
data_8f3e equ 0x8f3e
data_8f40 equ 0x8f40
data_8f42 equ 0x8f42
data_8f44 equ 0x8f44
data_8f46 equ 0x8f46
data_904e equ 0x904e
data_9050 equ 0x9050
data_9052 equ 0x9052
data_905a equ 0x905a
data_905e equ 0x905e
data_9060 equ 0x9060
data_9062 equ 0x9062
data_9064 equ 0x9064
data_9066 equ 0x9066
data_9068 equ 0x9068
data_906a equ 0x906a
data_906c equ 0x906c
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_910a equ 0x910a
data_910c equ 0x910c
data_910e equ 0x910e
data_9110 equ 0x9110
data_9112 equ 0x9112
data_9114 equ 0x9114
data_9116 equ 0x9116
data_9118 equ 0x9118
data_911a equ 0x911a
data_911c equ 0x911c
data_911e equ 0x911e
data_9120 equ 0x9120
data_9122 equ 0x9122
data_9124 equ 0x9124
data_9126 equ 0x9126
data_9150 equ 0x9150
data_9152 equ 0x9152
data_9154 equ 0x9154
data_91d4 equ 0x91d4
data_91fe equ 0x91fe
data_9250 equ 0x9250
data_95de equ 0x95de
data_95e0 equ 0x95e0
data_95e4 equ 0x95e4

    db 0x7c, 0x00, 0xa6, 0x05, 0x0c, 0xea
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov word [data_9114], 0          ; 0x0014
    mov word [data_9116], 0xffff     ; 0x001a
    mov word [data_9118], 0          ; 0x0020
    mov word [data_911a], 0xffff     ; 0x0026
    cmp word [data_830a], byte 0x0f  ; 0x002c
    jne short @..local.l1            ; 0x0031
    mov word [data_830a], 0x16       ; 0x0033
    call api_idx_0050_2              ; 0x0039
    jmp short @..local.l6            ; 0x003c
@..local.l1:
    cmp word [data_830a], byte 0x15  ; 0x003e
    jne short @..local.l2            ; 0x0043
    mov word [data_830a], 0x16       ; 0x0045
    call loc_809e                    ; 0x004b
    jmp short @..local.l6            ; 0x004e
@..local.l2:
    cmp word [data_830a], byte 0x1a  ; 0x0050
    jne short @..local.l3            ; 0x0055
    mov word [data_830a], 5          ; 0x0057
    call loc_811f                    ; 0x005d
    jmp short @..local.l6            ; 0x0060
@..local.l3:
    cmp word [data_830a], byte 0x1c  ; 0x0062
    jne short @..local.l4            ; 0x0067
    mov word [data_830a], 5          ; 0x0069
    call loc_81b6                    ; 0x006f
    jmp short @..local.l6            ; 0x0072
@..local.l4:
    cmp word [data_830a], byte 0x1d  ; 0x0074
    jne short @..local.l5            ; 0x0079
    mov word [data_830a], 5          ; 0x007b
    call loc_81db                    ; 0x0081
    jmp short @..local.l6            ; 0x0084
@..local.l5:
    mov word [data_830a], 0x16       ; 0x0086
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

