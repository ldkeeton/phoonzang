; auto-generated
%include "inc/structs/structs.inc"
%include "inc/structs/vpclv.inc"
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
    dw (__zdata_start - __zcode_start)    ; 0x54a2 ; o_csize: code size in bytes
    dw __zdseg_end                        ; 0x9098 ; o_dorg: data load origin (memory offset)
    dw (__zimage_end - __zdata_start)     ; 0x0370 ; o_dsize: initialized data size
    dw 0x03a4                             ; o_bss: uninitialized data size
    dw loc_5472 - IMAGE_BASE + __zres_end ; 0xa4b9 ; o_entry: overlay entry offset (CS)

__zcode_start:
fpu_loc_45b6 equ 0x45b6 + VBASE

loc_000e:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    cmp word [bss_830a], byte 0x16   ; 0x0014
    jne short @..loc_000e.l1         ; 0x0019
    call api_idx_000c_3              ; 0x001b
@..loc_000e.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
%include "vpclv/api_idx_0002.asm"          ; 0x0022

%include "vpclv/api_idx_0012.asm"          ; 0x0086

%include "vpclv/api_idx_000c.asm"          ; 0x0202

%include "vpclv/api_idx_0004.asm"          ; 0x0281

%include "vpclv/api_idx_0002_2.asm"        ; 0x0331

%include "vpclv/api_idx_0002_3.asm"        ; 0x038c

%include "vpclv/api_idx_0010.asm"          ; 0x03cd

%include "vpclv/api_idx_000a.asm"          ; 0x04ca

%include "vpclv/api_idx_007c.asm"          ; 0x0572

%include "vpclv/api_idx_0004_2.asm"        ; 0x0e3b

%include "vpclv/api_idx_000a_2.asm"        ; 0x0eac

%include "vpclv/api_idx_000c_2.asm"        ; 0x1017

%include "vpclv/api_idx_0050.asm"          ; 0x1141

%include "vpclv/api_idx_00ca.asm"          ; 0x1e31

%include "vpclv/api_idx_0004_3.asm"        ; 0x21be

%include "vpclv/api_idx_002a.asm"          ; 0x2447

%include "vpclv/api_idx_0080.asm"          ; 0x24f0

%include "vpclv/api_idx_0004_4.asm"        ; 0x2717

%include "vpclv/api_idx_004c.asm"          ; 0x27e3

%include "vpclv/api_idx_0006.asm"          ; 0x2a85

%include "vpclv/api_idx_0002_4.asm"        ; 0x2b1a

%include "vpclv/api_idx_0052.asm"          ; 0x2c0c

%include "vpclv/api_idx_0004_5.asm"        ; 0x3288

%include "vpclv/api_idx_0020.asm"          ; 0x333c

%include "vpclv/api_idx_0004_6.asm"        ; 0x34cd

%include "vpclv/api_idx_0004_7.asm"        ; 0x35fc

%include "vpclv/api_idx_0002_5.asm"        ; 0x3851

%include "vpclv/api_idx_002e.asm"          ; 0x390b

%include "vpclv/api_idx_0032.asm"          ; 0x3a7a

%include "vpclv/api_idx_0088.asm"          ; 0x3f9e

%include "vpclv/api_idx_001c.asm"          ; 0x4140

%include "vpclv/api_idx_0002_6.asm"        ; 0x4270

%include "vpclv/api_idx_00ac.asm"          ; 0x45e0

%include "vpclv/api_idx_0004_8.asm"        ; 0x4884

%include "vpclv/api_idx_0018.asm"          ; 0x4955

%include "vpclv/leaf_loc_4990.asm"         ; 0x4990

%include "vpclv/leaf_loc_49b1.asm"         ; 0x49b1

%include "vpclv/leaf_loc_49d2.asm"         ; 0x49d2

%include "vpclv/leaf_loc_49f3.asm"         ; 0x49f3

%include "vpclv/leaf_loc_4a14.asm"         ; 0x4a14

%include "vpclv/leaf_loc_4a35.asm"         ; 0x4a35

%include "vpclv/leaf_loc_4a56.asm"         ; 0x4a56

%include "vpclv/leaf_loc_4a77.asm"         ; 0x4a77

%include "vpclv/leaf_loc_4ab4.asm"         ; 0x4ab4

%include "vpclv/api_idx_00b4.asm"          ; 0x4cc5

%include "vpclv/api_idx_0006_2.asm"        ; 0x4e03

%include "vpclv/leaf_loc_4e18.asm"         ; 0x4e18

%include "vpclv/leaf_loc_4e1f.asm"         ; 0x4e1f

%include "vpclv/api_idx_00a4.asm"          ; 0x4e9e

%include "vpclv/api_idx_0046.asm"          ; 0x4fca

%include "vpclv/api_idx_000e.asm"          ; 0x50a1

%include "vpclv/api_idx_000c_3.asm"        ; 0x5161

@..api_idx_000c_3.l5:
    mov ax, 1                        ; 0x535f
    push ax                          ; 0x5362
    push word [bp - 0x0002]          ; 0x5363
    call api_idx_0046                ; 0x5366
    add sp, byte 4                   ; 0x5369
    inc word [bp - 0x0002]           ; 0x536c
@..api_idx_000c_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x536f
    cmp ax, word [bss_69c8]          ; 0x5372
    jl short @..api_idx_000c_3.l5    ; 0x5376
    cmp word [bss_8450], byte 0      ; 0x5378
    je short @..api_idx_000c_3.l7    ; 0x537d
    push word [bss_844c]             ; 0x537f
    push word [bss_844e]             ; 0x5383
    call ds_app_2b62                 ; 0x5387
    add sp, byte 4                   ; 0x538a
    mov ax, 0                        ; 0x538d
    push ax                          ; 0x5390
    call ds_app_2b4e                 ; 0x5391
    pop cx                           ; 0x5394
@..api_idx_000c_3.l7:
    mov ax, 0xf                      ; 0x5395
    push ax                          ; 0x5398
    call ds_app_1371                 ; 0x5399
    pop cx                           ; 0x539c
    mov ax, 0                        ; 0x539d
    push ax                          ; 0x53a0
    mov ax, 1                        ; 0x53a1
    push ax                          ; 0x53a4
    push word [bss_9434]             ; 0x53a5
    push word [bss_9432]             ; 0x53a9
    call ds_loc_3b89                 ; 0x53ad
    add sp, byte 8                   ; 0x53b0
    mov ax, 0                        ; 0x53b3
    push ax                          ; 0x53b6
    mov ax, 1                        ; 0x53b7
    push ax                          ; 0x53ba
    push word [bss_942c]             ; 0x53bb
    push word [bss_942a]             ; 0x53bf
    call ds_loc_3b89                 ; 0x53c3
    add sp, byte 8                   ; 0x53c6
    mov ax, 0                        ; 0x53c9
    push ax                          ; 0x53cc
    mov ax, 1                        ; 0x53cd
    push ax                          ; 0x53d0
    push word [bss_9428]             ; 0x53d1
    push word [bss_9426]             ; 0x53d5
    call ds_loc_3b89                 ; 0x53d9
    add sp, byte 8                   ; 0x53dc
    mov ax, 0                        ; 0x53df
    push ax                          ; 0x53e2
    mov ax, 1                        ; 0x53e3
    push ax                          ; 0x53e6
    push word [bss_9424]             ; 0x53e7
    push word [bss_9422]             ; 0x53eb
    call ds_loc_3b89                 ; 0x53ef
    add sp, byte 8                   ; 0x53f2
    mov ax, 0                        ; 0x53f5
    push ax                          ; 0x53f8
    mov ax, 1                        ; 0x53f9
    push ax                          ; 0x53fc
    push word [bss_9420]             ; 0x53fd
    push word [bss_941e]             ; 0x5401
    call ds_loc_3b89                 ; 0x5405
    add sp, byte 8                   ; 0x5408
    mov ax, 0                        ; 0x540b
    push ax                          ; 0x540e
    mov ax, 1                        ; 0x540f
    push ax                          ; 0x5412
    push word [bss_941c]             ; 0x5413
    push word [bss_941a]             ; 0x5417
    call ds_loc_3b89                 ; 0x541b
    add sp, byte 8                   ; 0x541e
    mov ax, 0                        ; 0x5421
    push ax                          ; 0x5424
    mov ax, 1                        ; 0x5425
    push ax                          ; 0x5428
    push word [bss_9418]             ; 0x5429
    push word [bss_9416]             ; 0x542d
    call ds_loc_3b89                 ; 0x5431
    add sp, byte 8                   ; 0x5434
    mov ax, 0                        ; 0x5437
    push ax                          ; 0x543a
    mov ax, 1                        ; 0x543b
    push ax                          ; 0x543e
    push word [bp - 0x000a]          ; 0x543f
    push word [bp - 0x000c]          ; 0x5442
    call ds_loc_3b89                 ; 0x5445
    add sp, byte 8                   ; 0x5448
    mov ax, 1                        ; 0x544b
    push ax                          ; 0x544e
    call ds_app_1371                 ; 0x544f
    pop cx                           ; 0x5452
    mov ax, 2                        ; 0x5453
    push ax                          ; 0x5456
    call ds_app_1371                 ; 0x5457
    pop cx                           ; 0x545a
    call api_idx_000e                ; 0x545b
    mov ax, 0xc7                     ; 0x545e
    push ax                          ; 0x5461
    mov ax, 0x13f                    ; 0x5462
    push ax                          ; 0x5465
    mov ax, 0                        ; 0x5466
    push ax                          ; 0x5469
    push ax                          ; 0x546a
    call ds_loc_3b21                 ; 0x546b
    add sp, byte 8                   ; 0x546e
    ret                              ; 0x5471
loc_5472:
    pop word [dseg_9406]             ; 0x5472
    pop cx                           ; 0x5476
    mov word [dseg_9402], sp         ; 0x5477
    mov word [dseg_9404], bp         ; 0x547b
    mov word [dseg_93fe], si         ; 0x547f
    mov word [dseg_9400], di         ; 0x5483
    cld                              ; 0x5487
    mov di, bss_9408                 ; 0x5488
    mov cx, 0x97ac                   ; 0x548b
    sub cx, di                       ; 0x548e
    shr cx, 1                        ; 0x5490
    je short @..loc_5472.l1          ; 0x5492
    sub ax, ax                       ; 0x5494
    rep stosw                        ; 0x5496
@..loc_5472.l1:
    call loc_000e                    ; 0x5498
    mov bp, word [dseg_9404]         ; 0x549b
    mov sp, word [dseg_9402]         ; 0x549f
    mov si, word [dseg_93fe]         ; 0x54a3
    mov di, word [dseg_9400]         ; 0x54a7
    push cx                          ; 0x54ab
    jmp [dseg_9406]                  ; 0x54ac
__zdata_start:

    db 0x25, 0x20, 0x00, 0x2a, 0x2a, 0x2a, 0x00
    db 'V.$$$', 0
    db 'ACBCBCCCCHCHBA', 0
    db '02222232112230', 0
    db 'ACCCCDCCCHHKDA', 0
    db '02222232123230', 0
    db 'ACCCCDCCCIFKEA', 0
    db '02222232121230', 0
    db 'ACHCHDCCCHFIDA', 0
    db '02323232111230', 0
    db 'ACKCHHGCCIECBA', 0
    db '02322322121220', 0
    db 'ACBCCDECCEEEGA', 0
    db '02121212111330', 0
    db 'ACICIBHCCFKFFA', 0
    db '02323112113330', 0
    db 'ACECCEGCCIFKFA', 0
    db '02222222122220', 0
    db 'ACKCGDHCCFKIDA', 0
    db '02322212112320', 0
    db 'ACHCHHGCCCECHA', 0
    db '02322322112230', 0
    db '1111111110', 0
    db '11100000', 0
    db '000000', 0
    db '1111000000', 0
    db '1000111100', 0
    db '11101000', 0
    db '000000', 0
    db '1111000010', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101111', 0
    db '000000', 0
    db '1111000000', 0
    db '1111111110', 0
    db '11100111', 0
    db '000000', 0
    db '1111010000', 0
    db '1001110000', 0
    db '11100000', 0
    db '000000', 0
    db '1111010000', 0
    db '1111111110', 0
    db '11111111', 0
    db '000000', 0
    db '1111000010', 0
    db '1001111000', 0
    db '11101000', 0
    db '000000', 0
    db '1111000100', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111001000', 0
    db '0001101010', 0
    db '11101000', 0
    db '000000', 0
    db '1111101010', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111101000', 0
    db '1111111110', 0
    db '11101000', 0
    db '000000', 0
    db '1111000011', 0
    db '1001111101', 0
    db '11101001', 0
    db '000000', 0
    db '1111000101', 0
    db '1111111111', 0
    db '11100111', 0
    db '000000', 0
    db '1111010001', 0
    db 0x25, 0x20, 0x28, 0x00, 0x29, 0x00, 0x2f
    times 4 db 0
    db 'PCVWSCRN.VGA', 0
    times 11 db 0


__zimage_end:
