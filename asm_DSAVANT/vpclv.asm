%include "inc/structs/structs.inc"
%include "inc/structs/loc_4aa9.inc"
org 0
bits 16
%include "inc/labels/vpclv_foreign_labels.inc"

    ; header (8 bytes)
    db 0xf2, 0x00, 0x55, 0x50, 0xa2, 0x54, 0x98, 0x90

data_0002 equ 0x0002
data_0038 equ 0x0038
data_003c equ 0x003c
data_0040 equ 0x0040
data_0042 equ 0x0042
data_0044 equ 0x0044
data_010c equ 0x010c
data_0e32 equ 0x0e32
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
data_59fc equ 0x59fc
data_5b3e equ 0x5b3e
data_69c8 equ 0x69c8
data_7096 equ 0x7096
data_82ee equ 0x82ee
data_830a equ 0x830a
data_844c equ 0x844c
data_844e equ 0x844e
data_8450 equ 0x8450
data_8f20 equ 0x8f20
data_904e equ 0x904e
data_9050 equ 0x9050
data_905a equ 0x905a
data_905e equ 0x905e
data_908a equ 0x908a
data_908c equ 0x908c
data_908e equ 0x908e
data_9090 equ 0x9090
data_9092 equ 0x9092
data_9094 equ 0x9094
data_9096 equ 0x9096
data_93fe equ 0x93fe
data_9400 equ 0x9400
data_9402 equ 0x9402
data_9404 equ 0x9404
data_9406 equ 0x9406
data_9416 equ 0x9416
data_9418 equ 0x9418
data_941a equ 0x941a
data_941c equ 0x941c
data_941e equ 0x941e
data_9420 equ 0x9420
data_9422 equ 0x9422
data_9424 equ 0x9424
data_9426 equ 0x9426
data_9428 equ 0x9428
data_942a equ 0x942a
data_942c equ 0x942c
data_9432 equ 0x9432
data_9434 equ 0x9434
data_9436 equ 0x9436
data_9438 equ 0x9438
data_943a equ 0x943a
data_948c equ 0x948c
data_948e equ 0x948e
data_9490 equ 0x9490
data_9492 equ 0x9492
data_95d0 equ 0x95d0
data_95f4 equ 0x95f4
data_9704 equ 0x9704

    db 0x70, 0x03, 0xa4, 0x03, 0xb9, 0xa4
loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_830a], byte 0x16  ; 0x0014
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
    cmp ax, word [data_69c8]         ; 0x5372
    jl short @..api_idx_000c_3.l5    ; 0x5376
    cmp word [data_8450], byte 0     ; 0x5378
    je short @..api_idx_000c_3.l7    ; 0x537d
    push word [data_844c]            ; 0x537f
    push word [data_844e]            ; 0x5383
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
    push word [data_9434]            ; 0x53a5
    push word [data_9432]            ; 0x53a9
    call ds_dispatch_e942            ; 0x53ad
    add sp, byte 8                   ; 0x53b0
    mov ax, 0                        ; 0x53b3
    push ax                          ; 0x53b6
    mov ax, 1                        ; 0x53b7
    push ax                          ; 0x53ba
    push word [data_942c]            ; 0x53bb
    push word [data_942a]            ; 0x53bf
    call ds_dispatch_e942            ; 0x53c3
    add sp, byte 8                   ; 0x53c6
    mov ax, 0                        ; 0x53c9
    push ax                          ; 0x53cc
    mov ax, 1                        ; 0x53cd
    push ax                          ; 0x53d0
    push word [data_9428]            ; 0x53d1
    push word [data_9426]            ; 0x53d5
    call ds_dispatch_e942            ; 0x53d9
    add sp, byte 8                   ; 0x53dc
    mov ax, 0                        ; 0x53df
    push ax                          ; 0x53e2
    mov ax, 1                        ; 0x53e3
    push ax                          ; 0x53e6
    push word [data_9424]            ; 0x53e7
    push word [data_9422]            ; 0x53eb
    call ds_dispatch_e942            ; 0x53ef
    add sp, byte 8                   ; 0x53f2
    mov ax, 0                        ; 0x53f5
    push ax                          ; 0x53f8
    mov ax, 1                        ; 0x53f9
    push ax                          ; 0x53fc
    push word [data_9420]            ; 0x53fd
    push word [data_941e]            ; 0x5401
    call ds_dispatch_e942            ; 0x5405
    add sp, byte 8                   ; 0x5408
    mov ax, 0                        ; 0x540b
    push ax                          ; 0x540e
    mov ax, 1                        ; 0x540f
    push ax                          ; 0x5412
    push word [data_941c]            ; 0x5413
    push word [data_941a]            ; 0x5417
    call ds_dispatch_e942            ; 0x541b
    add sp, byte 8                   ; 0x541e
    mov ax, 0                        ; 0x5421
    push ax                          ; 0x5424
    mov ax, 1                        ; 0x5425
    push ax                          ; 0x5428
    push word [data_9418]            ; 0x5429
    push word [data_9416]            ; 0x542d
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
    mov ax, data_0002                ; 0x5453
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
    pop word [data_9406]             ; 0x5472
    pop cx                           ; 0x5476
    mov word [data_9402], sp         ; 0x5477
    mov word [data_9404], bp         ; 0x547b
    mov word [data_93fe], si         ; 0x547f
    mov word [data_9400], di         ; 0x5483
    cld                              ; 0x5487
    mov di, 0x9408                   ; 0x5488
    mov cx, 0x97ac                   ; 0x548b
    sub cx, di                       ; 0x548e
    shr cx, 1                        ; 0x5490
    je short @..local.l15            ; 0x5492
    sub ax, ax                       ; 0x5494
    rep stosw                        ; 0x5496
@..local.l15:
    call loc_000e                    ; 0x5498
    mov bp, word [data_9404]         ; 0x549b
    mov sp, word [data_9402]         ; 0x549f
    mov si, word [data_93fe]         ; 0x54a3
    mov di, word [data_9400]         ; 0x54a7
    push cx                          ; 0x54ab
    jmp [data_9406]                  ; 0x54ac

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

