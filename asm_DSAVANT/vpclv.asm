%include "inc/structs/structs.inc"
%include "inc/structs/loc_4aa9.inc"
org 0
bits 16
%include "inc/labels/vpclv_foreign_labels.inc"

%ifndef IMAGE_BASE
IMAGE_BASE equ 0x0008
%endif

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xa2, 0x54, 0x98, 0x90

loc_2c8d equ 0x2c8d
loc_2ca3 equ 0x2ca3
loc_2cbb equ 0x2cbb
loc_2cbf equ 0x2cbf
loc_2cd6 equ 0x2cd6
loc_2cdf equ 0x2cdf
loc_2ced equ 0x2ced
loc_2d06 equ 0x2d06
loc_2d07 equ 0x2d07
loc_2d0d equ 0x2d0d
loc_2d6d equ 0x2d6d
loc_2d75 equ 0x2d75
loc_2e67 equ 0x2e67
loc_2e6c equ 0x2e6c
loc_2e93 equ 0x2e93
loc_2eac equ 0x2eac
loc_2eb3 equ 0x2eb3
loc_2f21 equ 0x2f21
loc_2f23 equ 0x2f23
loc_2f42 equ 0x2f42
loc_2f46 equ 0x2f46
loc_3734 equ 0x3734
data_3a87 equ 0x3a87
loc_3d08 equ 0x3d08
loc_4615 equ 0x4615
loc_4aa9 equ 0x4aa9
data_7096 equ 0x7096
data_9096 equ 0x9096
dseg_0002 equ 0x0002
dseg_0038 equ 0x0038
dseg_003c equ 0x003c
dseg_0040 equ 0x0040
dseg_0042 equ 0x0042
dseg_0044 equ 0x0044
dseg_010c equ 0x010c
dseg_0e32 equ 0x0e32
dseg_59fc equ 0x59fc
dseg_5b3e equ 0x5b3e
dseg_69c8 equ 0x69c8
dseg_82ee equ 0x82ee
dseg_830a equ 0x830a
dseg_844c equ 0x844c
dseg_844e equ 0x844e
dseg_8450 equ 0x8450
dseg_8f20 equ 0x8f20
dseg_904e equ 0x904e
dseg_9050 equ 0x9050
dseg_905a equ 0x905a
dseg_905e equ 0x905e
dseg_908a equ 0x908a
dseg_908c equ 0x908c
dseg_908e equ 0x908e
dseg_9090 equ 0x9090
dseg_9092 equ 0x9092
dseg_9094 equ 0x9094
dseg_93fe equ 0x93fe
dseg_9400 equ 0x9400
dseg_9402 equ 0x9402
dseg_9404 equ 0x9404
dseg_9406 equ 0x9406
dseg_9408 equ 0x9408
dseg_9416 equ 0x9416
dseg_9418 equ 0x9418
dseg_941a equ 0x941a
dseg_941c equ 0x941c
dseg_941e equ 0x941e
dseg_9420 equ 0x9420
dseg_9422 equ 0x9422
dseg_9424 equ 0x9424
dseg_9426 equ 0x9426
dseg_9428 equ 0x9428
dseg_942a equ 0x942a
dseg_942c equ 0x942c
dseg_9432 equ 0x9432
dseg_9434 equ 0x9434
dseg_9436 equ 0x9436
dseg_9438 equ 0x9438
dseg_943a equ 0x943a
dseg_948c equ 0x948c
dseg_948e equ 0x948e
dseg_9490 equ 0x9490
dseg_9492 equ 0x9492
dseg_95d0 equ 0x95d0
dseg_95f4 equ 0x95f4
dseg_9704 equ 0x9704

    db 0x70, 0x03, 0xa4, 0x03, 0xb9, 0xa4
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [dseg_830a], byte 0x16  ; 0x0014
    jne short @..local.l1            ; 0x0019
    call api_idx_000c_3              ; 0x001b
@..local.l1:
    mov ax, 0                        ; 0x001e
    ret                              ; 0x0021
%include "vpclv/api_idx_0002.asm"

%include "vpclv/api_idx_0012.asm"

%include "vpclv/api_idx_000c.asm"

%include "vpclv/api_idx_0004.asm"

%include "vpclv/api_idx_0002_2.asm"

%include "vpclv/api_idx_0002_3.asm"

%include "vpclv/api_idx_0010.asm"

%include "vpclv/api_idx_000a.asm"

%include "vpclv/api_idx_007c.asm"

%include "vpclv/api_idx_0004_2.asm"

%include "vpclv/api_idx_000a_2.asm"

%include "vpclv/api_idx_000c_2.asm"

%include "vpclv/api_idx_0050.asm"

%include "vpclv/api_idx_00ca.asm"

%include "vpclv/api_idx_0004_3.asm"

%include "vpclv/api_idx_002a.asm"

%include "vpclv/api_idx_0080.asm"

%include "vpclv/api_idx_0004_4.asm"

%include "vpclv/api_idx_004c.asm"

%include "vpclv/api_idx_0006.asm"

%include "vpclv/api_idx_0002_4.asm"

%include "vpclv/api_idx_0052.asm"

%include "vpclv/api_idx_0004_5.asm"

%include "vpclv/api_idx_0020.asm"

%include "vpclv/api_idx_0004_6.asm"

%include "vpclv/api_idx_0004_7.asm"

%include "vpclv/api_idx_0002_5.asm"

%include "vpclv/api_idx_002e.asm"

%include "vpclv/api_idx_0032.asm"

%include "vpclv/api_idx_0088.asm"

%include "vpclv/api_idx_001c.asm"

%include "vpclv/api_idx_0002_6.asm"

%include "vpclv/api_idx_00ac.asm"

%include "vpclv/api_idx_0004_8.asm"

%include "vpclv/api_idx_0018.asm"

%include "vpclv/api_idx_00b4.asm"

%include "vpclv/api_idx_0006_2.asm"

%include "vpclv/api_idx_00a4.asm"

%include "vpclv/api_idx_0046.asm"

%include "vpclv/api_idx_000e.asm"

%include "vpclv/api_idx_000c_3.asm"

@..api_idx_000c_3.l5:
    mov ax, 1                        ; 0x535f
    push ax                          ; 0x5362
    push word [bp - 0x0002]          ; 0x5363
    call api_idx_0046                ; 0x5366
    add sp, byte 4                   ; 0x5369
    inc word [bp - 0x0002]           ; 0x536c
@..api_idx_000c_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x536f
    cmp ax, word [dseg_69c8]         ; 0x5372
    jl short @..api_idx_000c_3.l5    ; 0x5376
    cmp word [dseg_8450], byte 0     ; 0x5378
    je short @..api_idx_000c_3.l7    ; 0x537d
    push word [dseg_844c]            ; 0x537f
    push word [dseg_844e]            ; 0x5383
    call ds_dispatch_d91b            ; 0x5387
    add sp, byte 4                   ; 0x538a
    mov ax, 0                        ; 0x538d
    push ax                          ; 0x5390
    call ds_dispatch_d907            ; 0x5391
    pop cx                           ; 0x5394
@..api_idx_000c_3.l7:
    mov ax, 0xf                      ; 0x5395
    push ax                          ; 0x5398
    call ds_dispatch_c12a            ; 0x5399
    pop cx                           ; 0x539c
    mov ax, 0                        ; 0x539d
    push ax                          ; 0x53a0
    mov ax, 1                        ; 0x53a1
    push ax                          ; 0x53a4
    push word [dseg_9434]            ; 0x53a5
    push word [dseg_9432]            ; 0x53a9
    call ds_dispatch_e942            ; 0x53ad
    add sp, byte 8                   ; 0x53b0
    mov ax, 0                        ; 0x53b3
    push ax                          ; 0x53b6
    mov ax, 1                        ; 0x53b7
    push ax                          ; 0x53ba
    push word [dseg_942c]            ; 0x53bb
    push word [dseg_942a]            ; 0x53bf
    call ds_dispatch_e942            ; 0x53c3
    add sp, byte 8                   ; 0x53c6
    mov ax, 0                        ; 0x53c9
    push ax                          ; 0x53cc
    mov ax, 1                        ; 0x53cd
    push ax                          ; 0x53d0
    push word [dseg_9428]            ; 0x53d1
    push word [dseg_9426]            ; 0x53d5
    call ds_dispatch_e942            ; 0x53d9
    add sp, byte 8                   ; 0x53dc
    mov ax, 0                        ; 0x53df
    push ax                          ; 0x53e2
    mov ax, 1                        ; 0x53e3
    push ax                          ; 0x53e6
    push word [dseg_9424]            ; 0x53e7
    push word [dseg_9422]            ; 0x53eb
    call ds_dispatch_e942            ; 0x53ef
    add sp, byte 8                   ; 0x53f2
    mov ax, 0                        ; 0x53f5
    push ax                          ; 0x53f8
    mov ax, 1                        ; 0x53f9
    push ax                          ; 0x53fc
    push word [dseg_9420]            ; 0x53fd
    push word [dseg_941e]            ; 0x5401
    call ds_dispatch_e942            ; 0x5405
    add sp, byte 8                   ; 0x5408
    mov ax, 0                        ; 0x540b
    push ax                          ; 0x540e
    mov ax, 1                        ; 0x540f
    push ax                          ; 0x5412
    push word [dseg_941c]            ; 0x5413
    push word [dseg_941a]            ; 0x5417
    call ds_dispatch_e942            ; 0x541b
    add sp, byte 8                   ; 0x541e
    mov ax, 0                        ; 0x5421
    push ax                          ; 0x5424
    mov ax, 1                        ; 0x5425
    push ax                          ; 0x5428
    push word [dseg_9418]            ; 0x5429
    push word [dseg_9416]            ; 0x542d
    call ds_dispatch_e942            ; 0x5431
    add sp, byte 8                   ; 0x5434
    mov ax, 0                        ; 0x5437
    push ax                          ; 0x543a
    mov ax, 1                        ; 0x543b
    push ax                          ; 0x543e
    push word [bp - 0x000a]          ; 0x543f
    push word [bp - 0x000c]          ; 0x5442
    call ds_dispatch_e942            ; 0x5445
    add sp, byte 8                   ; 0x5448
    mov ax, 1                        ; 0x544b
    push ax                          ; 0x544e
    call ds_dispatch_c12a            ; 0x544f
    pop cx                           ; 0x5452
    mov ax, 2                        ; 0x5453
    push ax                          ; 0x5456
    call ds_dispatch_c12a            ; 0x5457
    pop cx                           ; 0x545a
    call api_idx_000e                ; 0x545b
    mov ax, 0xc7                     ; 0x545e
    push ax                          ; 0x5461
    mov ax, 0x13f                    ; 0x5462
    push ax                          ; 0x5465
    mov ax, 0                        ; 0x5466
    push ax                          ; 0x5469
    push ax                          ; 0x546a
    call ds_dispatch_e8da            ; 0x546b
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
    mov di, dseg_9408                ; 0x5488
    mov cx, 0x97ac                   ; 0x548b
    sub cx, di                       ; 0x548e
    shr cx, 1                        ; 0x5490
    je short @..local.l15            ; 0x5492
    sub ax, ax                       ; 0x5494
    rep stosw                        ; 0x5496
@..local.l15:
    call loc_000e                    ; 0x5498
    mov bp, word [dseg_9404]         ; 0x549b
    mov sp, word [dseg_9402]         ; 0x549f
    mov si, word [dseg_93fe]         ; 0x54a3
    mov di, word [dseg_9400]         ; 0x54a7
    push cx                          ; 0x54ab
    jmp [dseg_9406]                  ; 0x54ac

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

