%include "inc/structs/structs.inc"
%include "inc/structs/loc_33df.inc"
org 0
bits 16
%include "inc/labels/vmele_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0008
%endif

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0x65, 0x37, 0x98, 0x90

dseg_0002 equ 0x0002
dseg_0e36 equ 0x0e36
dseg_5962 equ 0x5962
dseg_5963 equ 0x5963
dseg_5964 equ 0x5964
dseg_5988 equ 0x5988
dseg_598e equ 0x598e
dseg_5b6e equ 0x5b6e
dseg_69c8 equ 0x69c8
dseg_7abc equ 0x7abc
dseg_7b04 equ 0x7b04
dseg_82b6 equ 0x82b6
dseg_82e8 equ 0x82e8
dseg_82ee equ 0x82ee
dseg_82fa equ 0x82fa
dseg_82fc equ 0x82fc
dseg_830a equ 0x830a
dseg_830c equ 0x830c
dseg_8452 equ 0x8452
dseg_8454 equ 0x8454
dseg_8456 equ 0x8456
dseg_8458 equ 0x8458
dseg_845a equ 0x845a
dseg_845c equ 0x845c
dseg_845e equ 0x845e
dseg_8460 equ 0x8460
dseg_8466 equ 0x8466
dseg_8468 equ 0x8468
dseg_8482 equ 0x8482
dseg_8484 equ 0x8484
dseg_8492 equ 0x8492
dseg_849e equ 0x849e
dseg_84a0 equ 0x84a0
dseg_84a2 equ 0x84a2
dseg_84a4 equ 0x84a4
dseg_8d0a equ 0x8d0a
dseg_8d0c equ 0x8d0c
dseg_8d0e equ 0x8d0e
dseg_8d10 equ 0x8d10
dseg_8f20 equ 0x8f20
dseg_905a equ 0x905a
dseg_905e equ 0x905e
dseg_9060 equ 0x9060
dseg_9062 equ 0x9062
dseg_9064 equ 0x9064
dseg_9066 equ 0x9066
dseg_9068 equ 0x9068
dseg_906a equ 0x906a
dseg_906c equ 0x906c
dseg_908a equ 0x908a
dseg_908c equ 0x908c
dseg_908e equ 0x908e
dseg_9090 equ 0x9090
dseg_9092 equ 0x9092
dseg_9094 equ 0x9094
dseg_90ac equ 0x90ac
dseg_90ae equ 0x90ae
dseg_90b0 equ 0x90b0
dseg_90b2 equ 0x90b2
dseg_90b4 equ 0x90b4
dseg_90b6 equ 0x90b6
dseg_90b8 equ 0x90b8
dseg_90ba equ 0x90ba
dseg_90bc equ 0x90bc

    db 0x1e, 0x00, 0x1a, 0x00, 0x57, 0x87
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov word [dseg_90b6], 5          ; 0x0014
    mov word [dseg_90b8], 0          ; 0x001a
    mov word [dseg_90ba], 0          ; 0x0020
    mov word [dseg_90bc], 0          ; 0x0026
    cmp word [dseg_830a], byte 0x0a  ; 0x002c
    jne short @..local.l1            ; 0x0031
    call loc_33df                    ; 0x0033
@..local.l1:
    cmp word [dseg_830a], byte 0x0e  ; 0x0036
    jne short @..local.l2            ; 0x003b
    call api_idx_0056                ; 0x003d
@..local.l2:
    cmp word [dseg_830a], byte 0x0b  ; 0x0040
    jne short @..local.l3            ; 0x0045
    call api_idx_0002_2              ; 0x0047
@..local.l3:
    mov ax, 0                        ; 0x004a
    ret                              ; 0x004d
%include "vmele/api_idx_0008.asm"

%include "vmele/api_idx_0004.asm"

%include "vmele/api_idx_0008_2.asm"

%include "vmele/api_idx_000a.asm"

%include "vmele/api_idx_0004_2.asm"

%include "vmele/api_idx_000c.asm"

%include "vmele/api_idx_0004_3.asm"

%include "vmele/api_idx_00a8.asm"

%include "vmele/api_idx_005e.asm"

%include "vmele/api_idx_0008_3.asm"

%include "vmele/api_idx_0004_4.asm"

%include "vmele/api_idx_000a_2.asm"

%include "vmele/api_idx_000c_2.asm"

%include "vmele/api_idx_000e.asm"

%include "vmele/api_idx_005c.asm"

%include "vmele/api_idx_0006.asm"

%include "vmele/api_idx_0004_5.asm"

%include "vmele/api_idx_0014.asm"

%include "vmele/api_idx_000e_2.asm"

%include "vmele/api_idx_0004_6.asm"

%include "vmele/api_idx_001c.asm"

%include "vmele/api_idx_000e_3.asm"

%include "vmele/api_idx_0002.asm"

%include "vmele/api_idx_000c_3.asm"

%include "vmele/api_idx_0006_2.asm"

%include "vmele/api_idx_005a.asm"

%include "vmele/api_idx_0004_7.asm"

%include "vmele/api_idx_0008_4.asm"

%include "vmele/api_idx_0056.asm"

%include "vmele/api_idx_0004_8.asm"

%include "vmele/api_idx_0002_2.asm"

%include "vmele/string_loc_3710.asm"

%include "vmele/string_loc_374e.asm"


    db 'MON00.PIC', 0
    db 0x20, 0x00
    db 'VM1.$$$', 0
    times 10 db 0

