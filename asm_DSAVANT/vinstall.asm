%include "structs/structs.inc"
%include "structs/loc_2e5b.inc"
org 0
bits 16
    ; header (512 bytes)
    db 0x4d, 0x5a, 0x14, 0x00, 0x31, 0x00, 0x01, 0x00, 0x20, 0x00, 0x5d, 0x04, 0xff, 0xff, 0x8e, 0x03
    db 0xfe, 0x6a, 0x00, 0x00, 0xd2, 0x33, 0x00, 0x00, 0x20
    times 7 db 0
    db 0xd3, 0x33
    times 478 db 0

data_0002 equ 0x0002
data_0004 equ 0x0004
data_0005 equ 0x0005
data_0006 equ 0x0006
data_002c equ 0x002c
data_002e equ 0x002e
data_0030 equ 0x0030
data_0080 equ 0x0080
data_0302 equ 0x0302
data_060e equ 0x060e
data_09cd equ 0x09cd
data_0a80 equ 0x0a80
data_0b34 equ 0x0b34
data_0e18 equ 0x0e18
data_0e1c equ 0x0e1c
data_0e2d equ 0x0e2d
data_0e8f equ 0x0e8f
data_0ec8 equ 0x0ec8
data_0ee4 equ 0x0ee4
data_1bf9 equ 0x1bf9
loc_1fcd equ 0x1fcd
data_2072 equ 0x2072
data_2279 equ 0x2279
data_230e equ 0x230e
data_2310 equ 0x2310
data_2312 equ 0x2312
data_2314 equ 0x2314
data_2316 equ 0x2316
data_2318 equ 0x2318
data_231a equ 0x231a
data_244e equ 0x244e
data_24d4 equ 0x24d4
data_24d6 equ 0x24d6
data_24d8 equ 0x24d8
data_24da equ 0x24da
data_24dc equ 0x24dc
data_24de equ 0x24de
data_24e0 equ 0x24e0
data_24e4 equ 0x24e4
data_2500 equ 0x2500
data_2512 equ 0x2512
data_2514 equ 0x2514
data_2516 equ 0x2516
data_2518 equ 0x2518
data_251a equ 0x251a
data_251b equ 0x251b
data_251c equ 0x251c
data_2530 equ 0x2530
data_2534 equ 0x2534
data_2536 equ 0x2536
data_2538 equ 0x2538
data_253a equ 0x253a
data_253c equ 0x253c
data_2644 equ 0x2644
data_2645 equ 0x2645
data_2646 equ 0x2646
data_2647 equ 0x2647
data_2698 equ 0x2698
data_2823 equ 0x2823
data_2825 equ 0x2825
loc_2877 equ 0x2877
data_29ba equ 0x29ba
data_29bb equ 0x29bb
data_29d0 equ 0x29d0
data_29d1 equ 0x29d1
data_29d2 equ 0x29d2
data_29d4 equ 0x29d4
data_29d5 equ 0x29d5
data_29d6 equ 0x29d6
data_29d7 equ 0x29d7
data_29d8 equ 0x29d8
data_29da equ 0x29da
data_29dc equ 0x29dc
data_29dd equ 0x29dd
data_29df equ 0x29df
data_29e1 equ 0x29e1
data_29e2 equ 0x29e2
data_29e3 equ 0x29e3
data_29e6 equ 0x29e6
data_29e8 equ 0x29e8
data_29ea equ 0x29ea
data_29ec equ 0x29ec
data_29ee equ 0x29ee
data_2af0 equ 0x2af0
data_2af2 equ 0x2af2
data_2af4 equ 0x2af4
data_2af6 equ 0x2af6
data_2af8 equ 0x2af8
data_2afa equ 0x2afa
data_2bc4 equ 0x2bc4
loc_2e49 equ 0x2e49
loc_2e5b equ 0x2e5b
loc_2e5d equ 0x2e5d
loc_2e5f equ 0x2e5f
data_3031 equ 0x3031
data_312d equ 0x312d
data_32e8 equ 0x32e8
data_33d0 equ 0x33d0
data_33eb equ 0x33eb
data_3632 equ 0x3632
data_380c equ 0x380c
leaf_loc_5fe5 equ 0x5fe5

loc_0200:
    push bp                          ; 0x0200
    mov bp, sp                       ; 0x0201
    add sp, byte 0xee                ; 0x0203
loc_0206:
    mov bx, word [bp + 0x4]          ; 0x0206
    mov al, byte [bx]                ; 0x0209
    cbw                              ; 0x020b
    push ax                          ; 0x020c
    call loc_2bb2                    ; 0x020d
    pop cx                           ; 0x0210
    add ax, strict word 0xffbf       ; 0x0211
    mov word [bp - 0x0012], ax       ; 0x0214
    cmp ax, strict word 0            ; 0x0217
    jl short @..local.l3             ; 0x021a
    cmp ax, strict word 0x19         ; 0x021c
    jg short @..local.l3             ; 0x021f
    mov ax, word [bp - 0x0012]       ; 0x0221
    mov word [bp - 0x000a], ax       ; 0x0224
    mov word [bp - 0x0010], 0xe00    ; 0x0227
    lea ax, word [bp - 0x0010]       ; 0x022c
    push ax                          ; 0x022f
    push ax                          ; 0x0230
    mov ax, 0x21                     ; 0x0231
    push ax                          ; 0x0234
    call loc_2b31                    ; 0x0235
    add sp, byte 6                   ; 0x0238
    mov word [bp - 0x0010], 0x1900   ; 0x023b
    lea ax, word [bp - 0x0010]       ; 0x0240
    push ax                          ; 0x0243
    push ax                          ; 0x0244
    mov ax, 0x21                     ; 0x0245
    push ax                          ; 0x0248
    call loc_2b31                    ; 0x0249
    add sp, byte 6                   ; 0x024c
    mov ax, word [bp - 0x0010]       ; 0x024f
    and ax, 0xff                     ; 0x0252
    cmp ax, word [bp - 0x0012]       ; 0x0255
    je short @..local.l2             ; 0x0258
    mov ax, 0xffff                   ; 0x025a
@..local.l1:
    mov sp, bp                       ; 0x025d
    pop bp                           ; 0x025f
    ret                              ; 0x0260
@..local.l2:
    jmp short @..local.l4            ; 0x0261
@..local.l3:
    mov ax, 0xffff                   ; 0x0263
    jmp short @..local.l1            ; 0x0266
@..local.l4:
    mov ax, 0                        ; 0x0268
    jmp short @..local.l1            ; 0x026b
math_loc_026d:
    push bp                          ; 0x026d
    mov bp, sp                       ; 0x026e
    add sp, byte 0xfe                ; 0x0270
    push di                          ; 0x0273
    push si                          ; 0x0274
    mov di, 0                        ; 0x0275
    push word [bp + 0x4]             ; 0x0278
    call strlen_3                    ; 0x027b
    pop cx                           ; 0x027e
    dec ax                           ; 0x027f
    mov word [bp - 0x0002], ax       ; 0x0280
    jmp short @..math_loc_026d.l2    ; 0x0283
@..math_loc_026d.l1:
    mov bx, word [bp + 0x4]          ; 0x0285
    mov al, byte [bx + di]           ; 0x0288
    cbw                              ; 0x028a
    mov si, ax                       ; 0x028b
    add bx, word [bp - 0x0002]       ; 0x028d
    mov al, byte [bx]                ; 0x0290
    mov bx, word [bp + 0x4]          ; 0x0292
    mov byte [bx + di], al           ; 0x0295
    mov ax, si                       ; 0x0297
    mov cx, word [bp + 0x4]          ; 0x0299
    add cx, word [bp - 0x0002]       ; 0x029c
    mov bx, cx                       ; 0x029f
    mov byte [bx], al                ; 0x02a1
    dec word [bp - 0x0002]           ; 0x02a3
    inc di                           ; 0x02a6
@..math_loc_026d.l2:
    cmp di, word [bp - 0x0002]       ; 0x02a7
    jl short @..math_loc_026d.l1     ; 0x02aa
    pop si                           ; 0x02ac
    pop di                           ; 0x02ad
    mov sp, bp                       ; 0x02ae
    pop bp                           ; 0x02b0
    ret                              ; 0x02b1
math_loc_02b2:
    push bp                          ; 0x02b2
    mov bp, sp                       ; 0x02b3
    push di                          ; 0x02b5
    push si                          ; 0x02b6
    mov di, word [bp + 0x4]          ; 0x02b7
    mov ax, di                       ; 0x02ba
    cmp ax, strict word 0            ; 0x02bc
    jge short @..math_loc_02b2.l1    ; 0x02bf
    neg ax                           ; 0x02c1
    mov word [bp + 0x4], ax          ; 0x02c3
@..math_loc_02b2.l1:
    mov si, 0                        ; 0x02c6
@..math_loc_02b2.l2:
    mov ax, word [bp + 0x4]          ; 0x02c9
    mov cx, 0xa                      ; 0x02cc
    cwd                              ; 0x02cf
    idiv cx                          ; 0x02d0
    mov ax, dx                       ; 0x02d2
    add ax, strict word 0x30         ; 0x02d4
    mov cx, word [bp + 0x6]          ; 0x02d7
    add cx, si                       ; 0x02da
    mov bx, cx                       ; 0x02dc
    inc si                           ; 0x02de
    mov byte [bx], al                ; 0x02df
    mov ax, word [bp + 0x4]          ; 0x02e1
    mov cx, 0xa                      ; 0x02e4
    cwd                              ; 0x02e7
    idiv cx                          ; 0x02e8
    mov word [bp + 0x4], ax          ; 0x02ea
    cmp ax, strict word 0            ; 0x02ed
    jg short @..math_loc_02b2.l2     ; 0x02f0
    cmp di, byte 0                   ; 0x02f2
    jge short @..math_loc_02b2.l3    ; 0x02f5
    mov ax, word [bp + 0x6]          ; 0x02f7
    add ax, si                       ; 0x02fa
    mov bx, ax                       ; 0x02fc
    inc si                           ; 0x02fe
    mov byte [bx], 0x2d              ; 0x02ff
@..math_loc_02b2.l3:
    mov bx, word [bp + 0x6]          ; 0x0302
    mov byte [bx + si], 0            ; 0x0305
    push word [bp + 0x6]             ; 0x0308
    call math_loc_026d               ; 0x030b
    pop cx                           ; 0x030e
    pop si                           ; 0x030f
    pop di                           ; 0x0310
    mov sp, bp                       ; 0x0311
    pop bp                           ; 0x0313
    ret                              ; 0x0314

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xfc, 0x57, 0x56, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0x89, 0x56
    db 0xfe, 0x89, 0x46, 0xfc, 0x83, 0xfa, 0x00, 0x7f, 0x07, 0x75, 0x07, 0x3d, 0x00, 0x00, 0x72, 0x02
    db 0xeb, 0x0d, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x89, 0x56, 0x06, 0x89, 0x46, 0x04, 0xbe
    db 0x00, 0x00, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0xb9, 0x0a, 0x00, 0xbb, 0x00, 0x00, 0xe8, 0xef
    db 0x30, 0x05, 0x30, 0x00, 0x83, 0xd2, 0x00, 0x8b, 0xfe, 0x46, 0x8b, 0x5e, 0x08, 0x88, 0x01, 0x8b
    db 0x46, 0x04, 0x8b, 0x56, 0x06, 0xb9, 0x0a, 0x00, 0xbb, 0x00, 0x00, 0xe8, 0xa4, 0x30, 0x89, 0x56
    db 0x06, 0x89, 0x46, 0x04, 0x83, 0xfa, 0x00, 0x7f, 0x07, 0x75, 0x07, 0x3d, 0x00, 0x00, 0x76, 0x02
    db 0xeb, 0xc0, 0x83, 0x7e, 0xfe, 0x00, 0x7f, 0x08, 0x75

@..local.l5:

    db 0x08, 0x83, 0x7e, 0xfc, 0x00, 0x72, 0x02, 0xeb, 0x09, 0x8b, 0xfe, 0x46, 0x8b, 0x5e, 0x08, 0xc6
    db 0x01, 0x2d, 0x8b, 0x5e, 0x08, 0xc6, 0x00, 0x00, 0xff, 0x76, 0x08, 0xe8, 0xc1, 0xfe, 0x59, 0x5e
    db 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

loc_03b3:
    push bp                          ; 0x03b3
    mov bp, sp                       ; 0x03b4
    add sp, strict word 0xff00       ; 0x03b6
    push word [bp + 0x6]             ; 0x03ba
    push word [bp + 0x4]             ; 0x03bd
    call bios_video_loc_2551         ; 0x03c0
    add sp, byte 4                   ; 0x03c3
    lea ax, word [bp - 0x00ff]       ; 0x03c6
    push ax                          ; 0x03ca
    push word [bp + 0x8]             ; 0x03cb
    call math_loc_02b2               ; 0x03ce
    add sp, byte 4                   ; 0x03d1
    lea ax, word [bp - 0x00ff]       ; 0x03d4
    push ax                          ; 0x03d8
    call bios_video_loc_2621         ; 0x03d9
    pop cx                           ; 0x03dc
    mov sp, bp                       ; 0x03dd
    pop bp                           ; 0x03df
    ret                              ; 0x03e0
loc_03e1:
    push bp                          ; 0x03e1
    mov bp, sp                       ; 0x03e2
    add sp, strict word 0xff00       ; 0x03e4
    push word [bp + 0x6]             ; 0x03e8
    push word [bp + 0x4]             ; 0x03eb
    call bios_video_loc_2551         ; 0x03ee
    add sp, byte 4                   ; 0x03f1
    lea ax, word [bp - 0x00ff]       ; 0x03f4
    push ax                          ; 0x03f8
    push word [bp + 0x8]             ; 0x03f9
    call math_loc_02b2               ; 0x03fc
    add sp, byte 4                   ; 0x03ff
    lea ax, word [bp - 0x00ff]       ; 0x0402
    push ax                          ; 0x0406
    call bios_video_loc_25d3         ; 0x0407
    pop cx                           ; 0x040a
    mov sp, bp                       ; 0x040b
    pop bp                           ; 0x040d
    ret                              ; 0x040e
loc_040f:
    push bp                          ; 0x040f
    mov bp, sp                       ; 0x0410
    push word [bp + 0x6]             ; 0x0412
    push word [bp + 0x4]             ; 0x0415
    call bios_video_loc_2551         ; 0x0418
    add sp, byte 4                   ; 0x041b
    push word [bp + 0x8]             ; 0x041e
    call bios_video_loc_2621         ; 0x0421
    pop cx                           ; 0x0424
    mov sp, bp                       ; 0x0425
    pop bp                           ; 0x0427
    ret                              ; 0x0428
loc_0429:
    push bp                          ; 0x0429
    mov bp, sp                       ; 0x042a
    push word [bp + 0x6]             ; 0x042c
    push word [bp + 0x4]             ; 0x042f
    call bios_video_loc_2551         ; 0x0432
    add sp, byte 4                   ; 0x0435
    push word [bp + 0x8]             ; 0x0438
    call bios_video_loc_25d3         ; 0x043b
    pop cx                           ; 0x043e
    mov sp, bp                       ; 0x043f
    pop bp                           ; 0x0441
    ret                              ; 0x0442
loc_0443:
    call bios_video_loc_252e         ; 0x0443
    mov ax, 0                        ; 0x0446
    push ax                          ; 0x0449
    push ax                          ; 0x044a
    call bios_video_loc_2551         ; 0x044b
    add sp, byte 4                   ; 0x044e
    ret                              ; 0x0451
math_loc_0452:
    push bp                          ; 0x0452
    mov bp, sp                       ; 0x0453
    add sp, byte 0xfe                ; 0x0455
    call bios_video_loc_2720         ; 0x0458
    mov word [bp - 0x0002], ax       ; 0x045b
    mov ax, 7                        ; 0x045e
    push ax                          ; 0x0461
    mov ax, 0x1444                   ; 0x0462
    push ax                          ; 0x0465
    call loc_2c62                    ; 0x0466
    add sp, byte 4                   ; 0x0469
    push word [bp - 0x0002]          ; 0x046c
    call bios_video_loc_2733         ; 0x046f
    pop cx                           ; 0x0472
    mov sp, bp                       ; 0x0473
    pop bp                           ; 0x0475
    ret                              ; 0x0476

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xf6, 0xc6, 0x46, 0xfe, 0x00, 0xc6, 0x46, 0xff, 0x00, 0xff, 0x76
    db 0x06, 0xff, 0x76, 0x04, 0xe8, 0xc3, 0x20, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xf8, 0x00, 0x00, 0xc7
    db 0x46, 0xf6, 0x00, 0x00, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0xe8, 0x7e, 0x20, 0x89, 0x46, 0xfc, 0x3d
    db 0x0d, 0x00, 0x75, 0x03, 0xe9, 0xc2, 0x00, 0x3d, 0x08, 0x00, 0x75, 0x4b, 0x83, 0x7e, 0xf6, 0x00
    db 0x7e, 0x3f, 0xff, 0x4e, 0xf6, 0x75, 0x05, 0xc7, 0x46, 0xfa, 0x00, 0x00, 0x8b, 0x46, 0xf8, 0xb9
    db 0x0a, 0x00, 0x99, 0xf7, 0xf9, 0x89, 0x46, 0xf8, 0xff, 0x4e, 0x06, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0x76, 0x20, 0x83, 0xc4, 0x04, 0xc6, 0x46, 0xfe, 0x20, 0x8d, 0x46, 0xfe, 0x50, 0xe8
    db 0x38, 0x21, 0x59, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x5e, 0x20, 0x83, 0xc4, 0x04, 0xeb
    db 0x03, 0xe8, 0x57, 0xff, 0xe9, 0x6f, 0x00, 0x8b, 0x46, 0xf6, 0x3b, 0x46, 0x08, 0x7c, 0x05, 0xe8
    db 0x49, 0xff, 0xeb, 0x62, 0x83, 0x7e, 0xf6, 0x00, 0x75, 0x21, 0x83, 0x7e, 0xfc, 0x2d, 0x75, 0x1b
    db 0xff, 0x46, 0xf6, 0xc7, 0x46, 0xfa, 0x01, 0x00, 0x8a, 0x46, 0xfc, 0x88, 0x46, 0xfe, 0x8d, 0x46
    db 0xfe, 0x50, 0xe8, 0xf5, 0x20, 0x59, 0xff, 0x46, 0x06, 0xeb, 0x3b, 0x83, 0x7e, 0xfc, 0x30, 0x7c
    db 0x32, 0x83, 0x7e, 0xfc, 0x39, 0x7f, 0x2c, 0xff, 0x46, 0xf6, 0x8b, 0x46, 0xf8, 0x8b, 0xd0, 0xd1
    db 0xe0, 0xd1, 0xe0, 0x03, 0xc2, 0xd1, 0xe0, 0x03, 0x46, 0xfc, 0x05, 0xd0, 0xff, 0x89, 0x46, 0xf8
    db 0x8a, 0x46, 0xfc, 0x88, 0x46, 0xfe, 0x8d, 0x46, 0xfe, 0x50, 0xe8, 0xbd, 0x20, 0x59, 0xff, 0x46
    db 0x06, 0xeb, 0x03, 0xe8, 0xe5, 0xfe, 0xe9, 0x30, 0xff, 0x83, 0x7e, 0xfa, 0x01, 0x75, 0x09, 0x8b
    db 0x46, 0xf8, 0xf7, 0xd8, 0x8b, 0xe5, 0x5d, 0xc3, 0x8b, 0x46, 0xf8, 0xeb, 0xf7

loc_0584:
    push bp                          ; 0x0584
    mov bp, sp                       ; 0x0585
    add sp, byte 0xfc                ; 0x0587
    call bios_video_loc_2720         ; 0x058a
    mov word [bp - 0x0004], ax       ; 0x058d
    mov ax, 0x20                     ; 0x0590
    cmp word [bp + 0x4], byte 1      ; 0x0593
    jne short @..local.l6            ; 0x0597
    mov ax, 0x11                     ; 0x0599
@..local.l6:
    mov byte [bp - 0x0002], al       ; 0x059c
    mov byte [bp - 0x0001], 0        ; 0x059f
    lea ax, word [bp - 0x0002]       ; 0x05a3
    push ax                          ; 0x05a6
    call bios_video_loc_2621         ; 0x05a7
    pop cx                           ; 0x05aa
    push word [bp - 0x0004]          ; 0x05ab
    call bios_video_loc_2733         ; 0x05ae
    pop cx                           ; 0x05b1
    mov sp, bp                       ; 0x05b2
    pop bp                           ; 0x05b4
    ret                              ; 0x05b5
loc_05b6:
    push bp                          ; 0x05b6
    mov bp, sp                       ; 0x05b7
    add sp, byte 0xf6                ; 0x05b9
    push si                          ; 0x05bc
    mov byte [bp - 0x0002], 0        ; 0x05bd
    mov byte [bp - 0x0001], 0        ; 0x05c1
    push word [bp + 0x8]             ; 0x05c5
    call strlen_3                    ; 0x05c8
    pop cx                           ; 0x05cb
    mov word [bp - 0x0006], ax       ; 0x05cc
    add word [bp + 0x6], ax          ; 0x05cf
    push word [bp + 0x6]             ; 0x05d2
    push word [bp + 0x4]             ; 0x05d5
    call bios_video_loc_2551         ; 0x05d8
    add sp, byte 4                   ; 0x05db
    mov ax, 1                        ; 0x05de
    push ax                          ; 0x05e1
    call loc_0584                    ; 0x05e2
    pop cx                           ; 0x05e5
@..local.l7:
    call dos_con_in_noecho           ; 0x05e6
    push ax                          ; 0x05e9
    call loc_06a6                    ; 0x05ea
    pop cx                           ; 0x05ed
    mov word [bp - 0x0004], ax       ; 0x05ee
    cmp ax, strict word 0xd          ; 0x05f1
    jne short @..local.l8            ; 0x05f4
    jmp near @..local.l15            ; 0x05f6
@..local.l8:
    mov ax, 0                        ; 0x05f9
    push ax                          ; 0x05fc
    call loc_0584                    ; 0x05fd
    pop cx                           ; 0x0600
    cmp word [bp - 0x0004], byte 8   ; 0x0601
    je short @..local.l9             ; 0x0605
    cmp word [bp - 0x0004], byte 8   ; 0x0607
    jne short @..local.l12           ; 0x060b
@..local.l9:
    cmp word [bp - 0x0006], byte 0   ; 0x060d
    jle short @..local.l10           ; 0x0611
    dec word [bp - 0x0006]           ; 0x0613
    mov bx, word [bp + 0x8]          ; 0x0616
    mov si, word [bp - 0x0006]       ; 0x0619
    mov byte [bx + si], 0            ; 0x061c
    dec word [bp + 0x6]              ; 0x061f
    push word [bp + 0x6]             ; 0x0622
    push word [bp + 0x4]             ; 0x0625
    call bios_video_loc_2551         ; 0x0628
    add sp, byte 4                   ; 0x062b
    mov byte [bp - 0x0002], 0x20     ; 0x062e
    lea ax, word [bp - 0x0002]       ; 0x0632
    push ax                          ; 0x0635
    call bios_video_loc_2621         ; 0x0636
    pop cx                           ; 0x0639
    push word [bp + 0x6]             ; 0x063a
    push word [bp + 0x4]             ; 0x063d
    call bios_video_loc_2551         ; 0x0640
    add sp, byte 4                   ; 0x0643
    jmp short @..local.l11           ; 0x0646
@..local.l10:
    call math_loc_0452               ; 0x0648
@..local.l11:
    jmp short @..local.l14           ; 0x064b
@..local.l12:
    mov ax, word [bp - 0x0006]       ; 0x064d
    cmp ax, word [bp + 0xa]          ; 0x0650
    jl short @..local.l13            ; 0x0653
    call math_loc_0452               ; 0x0655
    jmp short @..local.l14           ; 0x0658
@..local.l13:
    cmp word [bp - 0x0004], byte 0x20 ; 0x065a
    jl short @..local.l14            ; 0x065e
    cmp word [bp - 0x0004], byte 0x7f ; 0x0660
    jg short @..local.l14            ; 0x0664
    mov al, byte [bp - 0x0004]       ; 0x0666
    mov bx, word [bp + 0x8]          ; 0x0669
    mov si, word [bp - 0x0006]       ; 0x066c
    mov byte [bx + si], al           ; 0x066f
    inc word [bp - 0x0006]           ; 0x0671
    mov bx, word [bp + 0x8]          ; 0x0674
    mov si, word [bp - 0x0006]       ; 0x0677
    mov byte [bx + si], 0            ; 0x067a
    mov al, byte [bp - 0x0004]       ; 0x067d
    mov byte [bp - 0x0002], al       ; 0x0680
    lea ax, word [bp - 0x0002]       ; 0x0683
    push ax                          ; 0x0686
    call bios_video_loc_2621         ; 0x0687
    pop cx                           ; 0x068a
    inc word [bp + 0x6]              ; 0x068b
@..local.l14:
    mov ax, 1                        ; 0x068e
    push ax                          ; 0x0691
    call loc_0584                    ; 0x0692
    pop cx                           ; 0x0695
    jmp near @..local.l7             ; 0x0696
@..local.l15:
    mov ax, 0                        ; 0x0699
    push ax                          ; 0x069c
    call loc_0584                    ; 0x069d
    pop cx                           ; 0x06a0
    pop si                           ; 0x06a1
    mov sp, bp                       ; 0x06a2
    pop bp                           ; 0x06a4
    ret                              ; 0x06a5
loc_06a6:
    push bp                          ; 0x06a6
    mov bp, sp                       ; 0x06a7
    add sp, byte 0xfe                ; 0x06a9
    cmp word [bp + 0x4], byte 0      ; 0x06ac
    jne short @..local.l22           ; 0x06b0
    call dos_con_in_noecho           ; 0x06b2
    mov word [bp - 0x0002], ax       ; 0x06b5
    jmp short @..local.l21           ; 0x06b8
@..local.l16:
    mov ax, 8                        ; 0x06ba
@..local.l17:
    mov sp, bp                       ; 0x06bd
    pop bp                           ; 0x06bf
    ret                              ; 0x06c0
@..local.l18:
    mov ax, 9                        ; 0x06c1
    jmp short @..local.l17           ; 0x06c4
@..local.l19:
    mov ax, 0xa                      ; 0x06c6
    jmp short @..local.l17           ; 0x06c9
@..local.l20:
    mov ax, 0xb                      ; 0x06cb
    jmp short @..local.l17           ; 0x06ce
@..local.l21:
    cmp ax, strict word 0x48         ; 0x06d0
    je short @..local.l18            ; 0x06d3
    cmp ax, strict word 0x4b         ; 0x06d5
    je short @..local.l16            ; 0x06d8
    cmp ax, strict word 0x4d         ; 0x06da
    je short @..local.l19            ; 0x06dd
    cmp ax, strict word 0x50         ; 0x06df
    je short @..local.l20            ; 0x06e2
    jmp short @..local.l23           ; 0x06e4
@..local.l22:
    push word [bp + 0x4]             ; 0x06e6
    call loc_2bb2                    ; 0x06e9
    pop cx                           ; 0x06ec
    jmp short @..local.l17           ; 0x06ed
@..local.l23:
    jmp short @..local.l17           ; 0x06ef
loc_06f1:
    push bp                          ; 0x06f1
    mov bp, sp                       ; 0x06f2
    add sp, byte 0xf0                ; 0x06f4
    mov ax, word [bp + 0x4]          ; 0x06f7
    mov word [bp - 0x0010], ax       ; 0x06fa
    lea ax, word [bp - 0x0010]       ; 0x06fd
    push ax                          ; 0x0700
    push ax                          ; 0x0701
    mov ax, 0x10                     ; 0x0702
    push ax                          ; 0x0705
    call loc_2b31                    ; 0x0706
    add sp, byte 6                   ; 0x0709
    mov sp, bp                       ; 0x070c
    pop bp                           ; 0x070e
    ret                              ; 0x070f

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0xfc, 0xfe, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x90, 0xfb, 0x83, 0xc4, 0x04, 0xc6, 0x86, 0xff, 0xfe, 0x00, 0xc6, 0x86, 0x00, 0xff, 0x00, 0x8d
    db 0x86, 0x01, 0xff, 0x50, 0xe8
    db '8.Y+F'
    db 0x06, 0x7d, 0x0d, 0xb8, 0x47, 0x14, 0x50, 0xe8, 0xdd, 0x1e, 0x59, 0xff, 0x4e, 0x06, 0xeb, 0xe5
    db 0x8d, 0x86, 0x01, 0xff, 0x50, 0xe8, 0x1d, 0x2e, 0x59, 0x2b, 0x46, 0x06, 0x89, 0x86, 0xfd, 0xfe
    db 0xeb, 0x1b, 0x8b, 0x9e, 0xfd, 0xfe, 0x03, 0xdd, 0x8a, 0x87, 0x01, 0xff, 0x88, 0x86, 0xff, 0xfe
    db 0x8d, 0x86, 0xff, 0xfe, 0x50, 0xe8, 0xaf, 0x1e, 0x59, 0xff, 0x86, 0xfd, 0xfe, 0x8d, 0x86, 0x01
    db 0xff, 0x50, 0xe8, 0xf0, 0x2d, 0x59, 0x3b, 0x86, 0xfd, 0xfe, 0x7f, 0xd6, 0x8b, 0xe5, 0x5d, 0xc3
    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0xfc, 0xfe, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xff, 0x76, 0x06, 0xff
    db 0x76, 0x04, 0xe8, 0x76, 0xfb, 0x83, 0xc4, 0x06, 0xc6, 0x86, 0xff, 0xfe, 0x00, 0xc6, 0x86, 0x00
    db 0xff, 0x00, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xe8, 0xbb, 0x2d, 0x59, 0x2b, 0x46, 0x08, 0x7d, 0x0d
    db 0xb8, 0x49, 0x14, 0x50, 0xe8, 0x60, 0x1e, 0x59, 0xff, 0x4e, 0x08, 0xeb, 0xe5, 0x8d, 0x86, 0x01
    db 0xff, 0x50, 0xe8, 0xa0, 0x2d, 0x59, 0x2b, 0x46, 0x08, 0x89, 0x86, 0xfd, 0xfe, 0xeb, 0x1b, 0x8b
    db 0x9e, 0xfd, 0xfe, 0x03, 0xdd, 0x8a, 0x87, 0x01, 0xff, 0x88, 0x86, 0xff, 0xfe, 0x8d, 0x86, 0xff
    db 0xfe, 0x50, 0xe8, 0x32, 0x1e, 0x59, 0xff, 0x86, 0xfd, 0xfe, 0x8d, 0x86, 0x01, 0xff, 0x50, 0xe8
    db 0x73, 0x2d, 0x59, 0x3b, 0x86, 0xfd, 0xfe, 0x7f, 0xd6, 0x8b, 0xe5, 0x5d, 0xc3

loc_0807:
    push bp                          ; 0x0807
    mov bp, sp                       ; 0x0808
    push word [bp + 0x4]             ; 0x080a
    call leaf_loc_2806               ; 0x080d
    pop cx                           ; 0x0810
    mov sp, bp                       ; 0x0811
    pop bp                           ; 0x0813
    ret                              ; 0x0814
    push bp                          ; 0x0815
    db 0x8b, 0xec ; mov bp, sp
    push word [bp + 0x4]             ; 0x0818
    call loc_2877                    ; 0x081b
    pop cx                           ; 0x081e
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp                           ; 0x0821
    ret                              ; 0x0822
loc_0823:
    push bp                          ; 0x0823
    mov bp, sp                       ; 0x0824
    add sp, strict word 0xfefe       ; 0x0826
    mov ax, word [bp + 0x4]          ; 0x082a
    mov word [bp - 0x0002], ax       ; 0x082d
@..local.l24:
    push word [bp + 0x8]             ; 0x0830
    push word [bp + 0x6]             ; 0x0833
    call bios_video_loc_2551         ; 0x0836
    add sp, byte 4                   ; 0x0839
    lea ax, word [bp - 0x0101]       ; 0x083c
    push ax                          ; 0x0840
    push word [bp - 0x0002]          ; 0x0841
    call math_loc_02b2               ; 0x0844
    add sp, byte 4                   ; 0x0847
    lea ax, word [bp - 0x0101]       ; 0x084a
    push ax                          ; 0x084e
    call bios_video_loc_25d3         ; 0x084f
    pop cx                           ; 0x0852
    mov ax, 0x144b                   ; 0x0853
    push ax                          ; 0x0856
    call bios_video_loc_2621         ; 0x0857
    pop cx                           ; 0x085a
    push word [bp + 0xa]             ; 0x085b
    lea ax, word [bp - 0x0101]       ; 0x085e
    push ax                          ; 0x0862
    push word [bp + 0x8]             ; 0x0863
    push word [bp + 0x6]             ; 0x0866
    call loc_05b6                    ; 0x0869
    add sp, byte 8                   ; 0x086c
    lea ax, word [bp - 0x0101]       ; 0x086f
    push ax                          ; 0x0873
    call loc_0807                    ; 0x0874
    pop cx                           ; 0x0877
    mov word [bp - 0x0002], ax       ; 0x0878
    mov ax, word [bp - 0x0002]       ; 0x087b
    cmp ax, word [bp + 0xe]          ; 0x087e
    jl short @..local.l24            ; 0x0881
    cmp ax, word [bp + 0xc]          ; 0x0883
    jg short @..local.l24            ; 0x0886
    mov ax, word [bp - 0x0002]       ; 0x0888
    mov sp, bp                       ; 0x088b
    pop bp                           ; 0x088d
    ret                              ; 0x088e

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0xfc, 0xfe, 0xc6, 0x86, 0xfd, 0xfe, 0x00, 0xff, 0x76, 0x0a, 0xff
    db 0x76, 0x08, 0xe8, 0xad, 0x1c, 0x83, 0xc4, 0x04, 0xff, 0x76, 0x0c, 0xff, 0x76, 0x06, 0xff, 0x76
    db 0x04, 0xe8, 0xd7, 0xfe, 0x83, 0xc4, 0x06, 0xff, 0x76, 0x0c, 0x8d, 0x86, 0xfd, 0xfe, 0x50, 0xff
    db 0x76, 0x0a, 0xff, 0x76, 0x08, 0xe8, 0xef, 0xfc, 0x83, 0xc4, 0x08, 0x80, 0xbe, 0xfd, 0xfe, 0x00
    db 0x75, 0x0e, 0x8b, 0x46, 0x04, 0x8b, 0x56, 0x06, 0x89, 0x56, 0xfe, 0x89, 0x46, 0xfc, 0xeb, 0x0f
    db 0x8d, 0x86, 0xfd, 0xfe, 0x50, 0xe8, 0x2e, 0xff, 0x59, 0x89, 0x56, 0xfe, 0x89, 0x46, 0xfc, 0x8b
    db 0x46, 0xfc, 0x8b, 0x56, 0xfe, 0x3b, 0x56, 0x10, 0x7f, 0x07, 0x75, 0x07, 0x3b, 0x46, 0x0e, 0x76
    db 0x02, 0xeb, 0x99, 0xff, 0x76, 0x0a, 0xff, 0x76, 0x08, 0xe8, 0x46, 0x1c, 0x83, 0xc4, 0x04, 0xff
    db 0x76, 0x0c, 0xff, 0x76, 0xfe, 0xff, 0x76, 0xfc, 0xe8, 0x70, 0xfe, 0x83, 0xc4, 0x06, 0x8b, 0x46
    db 0xfc, 0x8b, 0x56, 0xfe, 0x8b, 0xe5, 0x5d, 0xc3

loc_0927:
    mov byte [data_2644], 0x1f       ; 0x0927
    mov byte [data_2645], data_002e  ; 0x092c
    mov byte [data_2645], 0x70       ; 0x0931
    mov byte [data_2646], 0x4e       ; 0x0936
    mov byte [data_2647], 0x1f       ; 0x093b
    call loc_0443                    ; 0x0940
    ret                              ; 0x0943
math_loc_0944:
    push bp                          ; 0x0944
    mov bp, sp                       ; 0x0945
    push word [bp + 0x8]             ; 0x0947
    push word [bp + 0x6]             ; 0x094a
    push word [bp + 0x4]             ; 0x094d
    call loc_040f                    ; 0x0950
    add sp, byte 6                   ; 0x0953
    mov ax, word [bp + 0xa]          ; 0x0956
    shl ax, 1                        ; 0x0959
    mov bx, ax                       ; 0x095b
    push word [bx + 0x160]           ; 0x095d
    mov ax, 0x16                     ; 0x0961
    push ax                          ; 0x0964
    push word [bp + 0x4]             ; 0x0965
    call loc_040f                    ; 0x0968
    add sp, byte 6                   ; 0x096b
    push word [bp + 0xc]             ; 0x096e
    mov ax, data_002e                ; 0x0971
    push ax                          ; 0x0974
    push word [bp + 0x4]             ; 0x0975
    call loc_040f                    ; 0x0978
    add sp, byte 6                   ; 0x097b
    push word [bp + 0xe]             ; 0x097e
    mov ax, 0x3a                     ; 0x0981
    push ax                          ; 0x0984
    push word [bp + 0x4]             ; 0x0985
    call loc_040f                    ; 0x0988
    add sp, byte 6                   ; 0x098b
    mov sp, bp                       ; 0x098e
    pop bp                           ; 0x0990
    ret                              ; 0x0991
math_loc_0992:
    push bp                          ; 0x0992
    mov bp, sp                       ; 0x0993
    mov ax, 0x144f                   ; 0x0995
    push ax                          ; 0x0998
    mov ax, 0                        ; 0x0999
    push ax                          ; 0x099c
    mov ax, 0x16                     ; 0x099d
    push ax                          ; 0x09a0
    call loc_040f                    ; 0x09a1
    add sp, byte 6                   ; 0x09a4
    push word [bp + 0x4]             ; 0x09a7
    push word [bp + 0x4]             ; 0x09aa
    call strlen_3                    ; 0x09ad
    pop cx                           ; 0x09b0
    inc ax                           ; 0x09b1
    mov cx, data_0002                ; 0x09b2
    cwd                              ; 0x09b5
    idiv cx                          ; 0x09b6
    mov cx, ax                       ; 0x09b8
    mov ax, 0x28                     ; 0x09ba
    sub ax, cx                       ; 0x09bd
    push ax                          ; 0x09bf
    mov ax, 0x16                     ; 0x09c0
    push ax                          ; 0x09c3
    call loc_040f                    ; 0x09c4
    add sp, byte 6                   ; 0x09c7
    call math_loc_0452               ; 0x09ca
@..math_loc_0992.l1:
    call dos_con_in_noecho           ; 0x09cd
    cmp ax, strict word 0xd          ; 0x09d0
    je short @..math_loc_0992.l2     ; 0x09d3
    jmp short @..math_loc_0992.l1    ; 0x09d5
@..math_loc_0992.l2:
    mov ax, 0x149f                   ; 0x09d7
    push ax                          ; 0x09da
    mov ax, 0                        ; 0x09db
    push ax                          ; 0x09de
    mov ax, 0x16                     ; 0x09df
    push ax                          ; 0x09e2
    call loc_040f                    ; 0x09e3
    add sp, byte 6                   ; 0x09e6
    mov ax, 0x2648                   ; 0x09e9
    push ax                          ; 0x09ec
    push ax                          ; 0x09ed
    call strlen_3                    ; 0x09ee
    pop cx                           ; 0x09f1
    inc ax                           ; 0x09f2
    mov cx, data_0002                ; 0x09f3
    cwd                              ; 0x09f6
    idiv cx                          ; 0x09f7
    mov cx, ax                       ; 0x09f9
    mov ax, 0x28                     ; 0x09fb
    sub ax, cx                       ; 0x09fe
    push ax                          ; 0x0a00
    mov ax, 0x16                     ; 0x0a01
    push ax                          ; 0x0a04
    call loc_040f                    ; 0x0a05
    add sp, byte 6                   ; 0x0a08
    mov sp, bp                       ; 0x0a0b
    pop bp                           ; 0x0a0d
    ret                              ; 0x0a0e
loc_0a0f:
    push bp                          ; 0x0a0f
    mov bp, sp                       ; 0x0a10
    add sp, strict word 0xff60       ; 0x0a12
    push word [bp + 0x6]             ; 0x0a16
    lea ax, word [bp - 0x0050]       ; 0x0a19
    push ax                          ; 0x0a1c
    call strlen_2                    ; 0x0a1d
    add sp, byte 4                   ; 0x0a20
    mov ax, 0x14ef                   ; 0x0a23
    push ax                          ; 0x0a26
    lea ax, word [bp - 0x0050]       ; 0x0a27
    push ax                          ; 0x0a2a
    call strlen                      ; 0x0a2b
    add sp, byte 4                   ; 0x0a2e
    mov ax, data_0002                ; 0x0a31
    push ax                          ; 0x0a34
    lea ax, word [bp - 0x0050]       ; 0x0a35
    push ax                          ; 0x0a38
    call loc_3381                    ; 0x0a39
    add sp, byte 4                   ; 0x0a3c
    mov word [data_2698], ax         ; 0x0a3f
    cmp ax, strict word 0xffff       ; 0x0a42
    jne short @..local.l26           ; 0x0a45
    mov ax, 0x14fc                   ; 0x0a47
    push ax                          ; 0x0a4a
    lea ax, word [bp - 0x00a0]       ; 0x0a4b
    push ax                          ; 0x0a4f
    call strlen_2                    ; 0x0a50
    add sp, byte 4                   ; 0x0a53
    lea ax, word [bp - 0x0050]       ; 0x0a56
    push ax                          ; 0x0a59
    lea ax, word [bp - 0x00a0]       ; 0x0a5a
    push ax                          ; 0x0a5e
    call strlen                      ; 0x0a5f
    add sp, byte 4                   ; 0x0a62
    mov ax, 0x151a                   ; 0x0a65
    push ax                          ; 0x0a68
    lea ax, word [bp - 0x00a0]       ; 0x0a69
    push ax                          ; 0x0a6d
    call strlen                      ; 0x0a6e
    add sp, byte 4                   ; 0x0a71
    lea ax, word [bp - 0x00a0]       ; 0x0a74
    push ax                          ; 0x0a78
    call math_loc_0992               ; 0x0a79
    pop cx                           ; 0x0a7c
    mov ax, 1                        ; 0x0a7d
@..local.l25:
    mov sp, bp                       ; 0x0a80
    pop bp                           ; 0x0a82
    ret                              ; 0x0a83
@..local.l26:
    mov ax, 0                        ; 0x0a84
    push ax                          ; 0x0a87
    mov ax, 0                        ; 0x0a88
    mov dx, 0                        ; 0x0a8b
    push dx                          ; 0x0a8e
    push ax                          ; 0x0a8f
    push word [data_2698]            ; 0x0a90
    call dos_file_loc_3881           ; 0x0a94
    add sp, byte 8                   ; 0x0a97
    mov ax, 0x34c                    ; 0x0a9a
    push ax                          ; 0x0a9d
    mov ax, 0x269a                   ; 0x0a9e
    push ax                          ; 0x0aa1
    push word [data_2698]            ; 0x0aa2
    call dos_file_loc_3833           ; 0x0aa6
    add sp, byte 6                   ; 0x0aa9
    mov ax, word [bp + 0x1c]         ; 0x0aac
    cmp ax, word [data_29d2]         ; 0x0aaf
    je short @..local.l27            ; 0x0ab3
    mov ax, 0x152c                   ; 0x0ab5
    push ax                          ; 0x0ab8
    call math_loc_0992               ; 0x0ab9
    pop cx                           ; 0x0abc
    push word [data_2698]            ; 0x0abd
    call dos_file_loc_3869           ; 0x0ac1
    pop cx                           ; 0x0ac4
    mov ax, 1                        ; 0x0ac5
    jmp short @..local.l25           ; 0x0ac8
@..local.l27:
    mov ax, word [bp + 0x1c]         ; 0x0aca
    mov word [data_29d2], ax         ; 0x0acd
    mov al, byte [bp + 0xc]          ; 0x0ad0
    mov byte [data_29e2], al         ; 0x0ad3
    mov al, byte [bp + 0x12]         ; 0x0ad6
    mov byte [data_29ba], al         ; 0x0ad9
    mov al, byte [bp + 0x14]         ; 0x0adc
    mov byte [data_29bb], al         ; 0x0adf
    push word [bp + 0x16]            ; 0x0ae2
    mov ax, 0x29bc                   ; 0x0ae5
    push ax                          ; 0x0ae8
    call strlen_2                    ; 0x0ae9
    add sp, byte 4                   ; 0x0aec
    mov al, byte [bp + 0x18]         ; 0x0aef
    mov byte [data_29d0], al         ; 0x0af2
    mov al, byte [bp + 0x1a]         ; 0x0af5
    mov byte [data_29d1], al         ; 0x0af8
    mov ax, 0xa                      ; 0x0afb
    cmp word [bp + 0xe], byte 7      ; 0x0afe
    jne short @..local.l28           ; 0x0b02
    mov ax, 0                        ; 0x0b04
@..local.l28:
    mov byte [data_29d4], al         ; 0x0b07
    mov ax, 0xa                      ; 0x0b0a
    cmp word [bp + 0xe], byte 7      ; 0x0b0d
    jne short @..local.l29           ; 0x0b11
    mov ax, 0                        ; 0x0b13
@..local.l29:
    mov byte [data_29d5], al         ; 0x0b16
    mov ax, 0xa                      ; 0x0b19
    cmp word [bp + 0xe], byte 7      ; 0x0b1c
    jne short @..local.l30           ; 0x0b20
    mov ax, 0                        ; 0x0b22
@..local.l30:
    mov byte [data_29d6], al         ; 0x0b25
    mov ax, 0xa                      ; 0x0b28
    cmp word [bp + 0xe], byte 7      ; 0x0b2b
    jne short @..local.l31           ; 0x0b2f
    mov ax, 0                        ; 0x0b31
@..local.l31:
    mov byte [data_29d7], al         ; 0x0b34
    mov ax, word [bp + 0xe]          ; 0x0b37
    mov cx, 7                        ; 0x0b3a
    cwd                              ; 0x0b3d
    idiv cx                          ; 0x0b3e
    mov ax, dx                       ; 0x0b40
    mov word [bp + 0xe], ax          ; 0x0b42
    mov al, byte [bp + 0xe]          ; 0x0b45
    mov byte [data_29dc], al         ; 0x0b48
    cmp word [bp + 0xe], byte 5      ; 0x0b4b
    jne short @..local.l32           ; 0x0b4f
    mov byte [data_29dc], 0          ; 0x0b51
@..local.l32:
    mov byte [data_29dd], al         ; 0x0b56
    cmp word [bp + 0xe], byte 2      ; 0x0b59
    je short @..local.l33            ; 0x0b5d
    cmp word [bp + 0xe], byte 3      ; 0x0b5f
    jne short @..local.l34           ; 0x0b63
@..local.l33:
    mov byte [data_29dd], 0          ; 0x0b65
@..local.l34:
    mov word [data_29d8], 0          ; 0x0b6a
    mov word [data_29da], 0          ; 0x0b70
    cmp word [bp + 0xe], byte 0      ; 0x0b76
    jle short @..local.l35           ; 0x0b7a
    mov word [data_29d8], 0x220      ; 0x0b7c
    mov word [data_29da], 0x220      ; 0x0b82
@..local.l35:
    mov ax, 1                        ; 0x0b88
    cmp word [bp + 0x10], byte 0     ; 0x0b8b
    jne short @..local.l36           ; 0x0b8f
    mov ax, 0                        ; 0x0b91
@..local.l36:
    mov byte [data_29e1], al         ; 0x0b94
    mov al, byte [bp + 0xa]          ; 0x0b97
    mov byte [data_29df], al         ; 0x0b9a
    push word [bp + 0x6]             ; 0x0b9d
    mov ax, 0x296a                   ; 0x0ba0
    push ax                          ; 0x0ba3
    call strlen_2                    ; 0x0ba4
    add sp, byte 4                   ; 0x0ba7
    push word [bp + 0x6]             ; 0x0baa
    mov ax, 0x2992                   ; 0x0bad
    push ax                          ; 0x0bb0
    call strlen_2                    ; 0x0bb1
    add sp, byte 4                   ; 0x0bb4
    cmp word [bp + 0xa], byte 5      ; 0x0bb7
    jne short @..local.l37           ; 0x0bbb
    push word [bp + 0x8]             ; 0x0bbd
    mov ax, 0x297e                   ; 0x0bc0
    push ax                          ; 0x0bc3
    call strlen_2                    ; 0x0bc4
    add sp, byte 4                   ; 0x0bc7
    mov ax, 0x155e                   ; 0x0bca
    push ax                          ; 0x0bcd
    mov ax, 0x297e                   ; 0x0bce
    push ax                          ; 0x0bd1
    call strlen                      ; 0x0bd2
    add sp, byte 4                   ; 0x0bd5
    mov byte [data_29e3], 1          ; 0x0bd8
@..local.l37:
    mov ax, 0x1560                   ; 0x0bdd
    push ax                          ; 0x0be0
    mov ax, 0x29a6                   ; 0x0be1
    push ax                          ; 0x0be4
    call strlen_2                    ; 0x0be5
    add sp, byte 4                   ; 0x0be8
    mov ax, 0                        ; 0x0beb
    push ax                          ; 0x0bee
    mov ax, 0                        ; 0x0bef
    mov dx, 0                        ; 0x0bf2
    push dx                          ; 0x0bf5
    push ax                          ; 0x0bf6
    push word [data_2698]            ; 0x0bf7
    call dos_file_loc_3881           ; 0x0bfb
    add sp, byte 8                   ; 0x0bfe
    mov ax, 0x34c                    ; 0x0c01
    push ax                          ; 0x0c04
    mov ax, 0x269a                   ; 0x0c05
    push ax                          ; 0x0c08
    push word [data_2698]            ; 0x0c09
    call dos_file_loc_383a           ; 0x0c0d
    add sp, byte 6                   ; 0x0c10
    push word [data_2698]            ; 0x0c13
    call dos_file_loc_3869           ; 0x0c17
    pop cx                           ; 0x0c1a
    mov ax, 0                        ; 0x0c1b
    jmp near @..local.l25            ; 0x0c1e
math_loc_0c21:
    push bp                          ; 0x0c21
    mov bp, sp                       ; 0x0c22
    mov ax, word [bp + 0x4]          ; 0x0c24
    mov cx, data_0004                ; 0x0c27
    cwd                              ; 0x0c2a
    idiv cx                          ; 0x0c2b
    mov ax, dx                       ; 0x0c2d
    inc ax                           ; 0x0c2f
    mov word [bp + 0x4], ax          ; 0x0c30
    cmp ax, strict word 1            ; 0x0c33
    jne short @..math_loc_0c21.l1    ; 0x0c36
    cmp word [data_29e6], byte 0     ; 0x0c38
    jne short @..math_loc_0c21.l1    ; 0x0c3d
    inc word [bp + 0x4]              ; 0x0c3f
@..math_loc_0c21.l1:
    cmp word [bp + 0x4], byte 2      ; 0x0c42
    jne short @..math_loc_0c21.l2    ; 0x0c46
    cmp word [data_29e8], byte 0     ; 0x0c48
    jne short @..math_loc_0c21.l2    ; 0x0c4d
    inc word [bp + 0x4]              ; 0x0c4f
@..math_loc_0c21.l2:
    cmp word [bp + 0x4], byte 3      ; 0x0c52
    jne short @..math_loc_0c21.l3    ; 0x0c56
    cmp word [data_29ea], byte 0     ; 0x0c58
    jne short @..math_loc_0c21.l3    ; 0x0c5d
    inc word [bp + 0x4]              ; 0x0c5f
@..math_loc_0c21.l3:
    cmp word [bp + 0x4], byte 4      ; 0x0c62
    jne short @..math_loc_0c21.l4    ; 0x0c66
    cmp word [data_29ec], byte 0     ; 0x0c68
    jne short @..math_loc_0c21.l4    ; 0x0c6d
    mov word [bp + 0x4], 1           ; 0x0c6f
@..math_loc_0c21.l4:
    cmp word [bp + 0x4], byte 1      ; 0x0c74
    jne short @..math_loc_0c21.l5    ; 0x0c78
    cmp word [data_29e6], byte 0     ; 0x0c7a
    jne short @..math_loc_0c21.l5    ; 0x0c7f
    inc word [bp + 0x4]              ; 0x0c81
@..math_loc_0c21.l5:
    cmp word [bp + 0x4], byte 2      ; 0x0c84
    jne short @..math_loc_0c21.l6    ; 0x0c88
    cmp word [data_29e8], byte 0     ; 0x0c8a
    jne short @..math_loc_0c21.l6    ; 0x0c8f
    inc word [bp + 0x4]              ; 0x0c91
@..math_loc_0c21.l6:
    cmp word [bp + 0x4], byte 3      ; 0x0c94
    jne short @..math_loc_0c21.l7    ; 0x0c98
    cmp word [data_29ea], byte 0     ; 0x0c9a
    jne short @..math_loc_0c21.l7    ; 0x0c9f
    inc word [bp + 0x4]              ; 0x0ca1
@..math_loc_0c21.l7:
    cmp word [bp + 0x4], byte 4      ; 0x0ca4
    jne short @..math_loc_0c21.l8    ; 0x0ca8
    cmp word [data_29ec], byte 0     ; 0x0caa
    jne short @..math_loc_0c21.l8    ; 0x0caf
    mov word [bp + 0x4], 0           ; 0x0cb1
@..math_loc_0c21.l8:
    mov ax, word [bp + 0x4]          ; 0x0cb6
    shl ax, 1                        ; 0x0cb9
    mov bx, ax                       ; 0x0cbb
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10                     ; 0x0cc1
    push ax                          ; 0x0cc4
    mov ax, 0xd                      ; 0x0cc5
    push ax                          ; 0x0cc8
    call loc_040f                    ; 0x0cc9
    add sp, byte 6                   ; 0x0ccc
    mov ax, word [bp + 0x4]          ; 0x0ccf
    mov sp, bp                       ; 0x0cd2
    pop bp                           ; 0x0cd4
    ret                              ; 0x0cd5
math_loc_0cd6:
    push bp                          ; 0x0cd6
    mov bp, sp                       ; 0x0cd7
    push si                          ; 0x0cd9
@..math_loc_0cd6.l1:
    mov ax, word [bp + 0x6]          ; 0x0cda
    inc ax                           ; 0x0cdd
    mov cx, data_0005                ; 0x0cde
    cwd                              ; 0x0ce1
    idiv cx                          ; 0x0ce2
    mov word [bp + 0x6], dx          ; 0x0ce4
    mov bx, word [bp + 0x8]          ; 0x0ce7
    mov si, word [bp + 0x6]          ; 0x0cea
    cmp byte [bx + si], data_0030    ; 0x0ced
    je short @..math_loc_0cd6.l1     ; 0x0cf0
    mov ax, word [bp + 0x6]          ; 0x0cf2
    shl ax, 1                        ; 0x0cf5
    mov bx, ax                       ; 0x0cf7
    push word [bx + 0x160]           ; 0x0cf9
    mov ax, 0x16                     ; 0x0cfd
    push ax                          ; 0x0d00
    push word [bp + 0x4]             ; 0x0d01
    call loc_040f                    ; 0x0d04
    add sp, byte 6                   ; 0x0d07
    mov ax, word [bp + 0x6]          ; 0x0d0a
    pop si                           ; 0x0d0d
    mov sp, bp                       ; 0x0d0e
    pop bp                           ; 0x0d10
    ret                              ; 0x0d11
math_loc_0d12:
    push bp                          ; 0x0d12
    mov bp, sp                       ; 0x0d13
    mov ax, word [bp + 0x4]          ; 0x0d15
    inc ax                           ; 0x0d18
    mov cx, 8                        ; 0x0d19
    cwd                              ; 0x0d1c
    idiv cx                          ; 0x0d1d
    mov word [bp + 0x4], dx          ; 0x0d1f
    shl dx, 1                        ; 0x0d22
    mov bx, dx                       ; 0x0d24
    push word [bx + 0xa4]            ; 0x0d26
    mov ax, 0x29                     ; 0x0d2a
    push ax                          ; 0x0d2d
    mov ax, 0x12                     ; 0x0d2e
    push ax                          ; 0x0d31
    call loc_040f                    ; 0x0d32
    add sp, byte 6                   ; 0x0d35
    mov ax, word [bp + 0x4]          ; 0x0d38
    mov sp, bp                       ; 0x0d3b
    pop bp                           ; 0x0d3d
    ret                              ; 0x0d3e
math_loc_0d3f:
    push bp                          ; 0x0d3f
    mov bp, sp                       ; 0x0d40
    mov ax, word [bp + 0x8]          ; 0x0d42
    inc ax                           ; 0x0d45
    mov cx, data_0002                ; 0x0d46
    cwd                              ; 0x0d49
    idiv cx                          ; 0x0d4a
    mov word [bp + 0x8], dx          ; 0x0d4c
    shl dx, 1                        ; 0x0d4f
    mov bx, dx                       ; 0x0d51
    push word [bx + 0x154]           ; 0x0d53
    push word [bp + 0x6]             ; 0x0d57
    push word [bp + 0x4]             ; 0x0d5a
    call loc_040f                    ; 0x0d5d
    add sp, byte 6                   ; 0x0d60
    mov ax, word [bp + 0x8]          ; 0x0d63
    mov sp, bp                       ; 0x0d66
    pop bp                           ; 0x0d68
    ret                              ; 0x0d69
math_loc_0d6a:
    push bp                          ; 0x0d6a
    mov bp, sp                       ; 0x0d6b
    add sp, byte 0xae                ; 0x0d6d
    push word [bp + 0x4]             ; 0x0d70
    call strlen_3                    ; 0x0d73
    pop cx                           ; 0x0d76
    cmp ax, strict word 0x4c         ; 0x0d77
    jle short @..math_loc_0d6a.l1    ; 0x0d7a
    mov ax, 0x4c                     ; 0x0d7c
    jmp short @..math_loc_0d6a.l2    ; 0x0d7f
@..math_loc_0d6a.l1:
    push word [bp + 0x4]             ; 0x0d81
    call strlen_3                    ; 0x0d84
    pop cx                           ; 0x0d87
@..math_loc_0d6a.l2:
    mov word [bp - 0x0002], ax       ; 0x0d88
    push ax                          ; 0x0d8b
    push word [bp + 0x4]             ; 0x0d8c
    lea ax, word [bp - 0x0052]       ; 0x0d8f
    push ax                          ; 0x0d92
    call string_loc_2b09             ; 0x0d93
    add sp, byte 6                   ; 0x0d96
    mov bx, word [bp - 0x0002]       ; 0x0d99
    add bx, bp                       ; 0x0d9c
    mov byte [bx - 0x0052], 0        ; 0x0d9e
    mov ax, 0x156d                   ; 0x0da2
    push ax                          ; 0x0da5
    mov ax, 0                        ; 0x0da6
    push ax                          ; 0x0da9
    mov ax, 0x16                     ; 0x0daa
    push ax                          ; 0x0dad
    call loc_040f                    ; 0x0dae
    add sp, byte 6                   ; 0x0db1
    lea ax, word [bp - 0x0052]       ; 0x0db4
    push ax                          ; 0x0db7
    push ax                          ; 0x0db8
    call strlen_3                    ; 0x0db9
    pop cx                           ; 0x0dbc
    inc ax                           ; 0x0dbd
    mov cx, data_0002                ; 0x0dbe
    cwd                              ; 0x0dc1
    idiv cx                          ; 0x0dc2
    mov cx, ax                       ; 0x0dc4
    mov ax, 0x28                     ; 0x0dc6
    sub ax, cx                       ; 0x0dc9
    push ax                          ; 0x0dcb
    mov ax, 0x16                     ; 0x0dcc
    push ax                          ; 0x0dcf
    call loc_040f                    ; 0x0dd0
    add sp, byte 6                   ; 0x0dd3
    mov sp, bp                       ; 0x0dd6
    pop bp                           ; 0x0dd8
    ret                              ; 0x0dd9
loc_0dda:
    push bp                          ; 0x0dda
    mov bp, sp                       ; 0x0ddb
    add sp, strict word 0xff5c       ; 0x0ddd
    mov ax, 0x15bd                   ; 0x0de1
    push ax                          ; 0x0de4
    lea ax, word [bp - 0x00a2]       ; 0x0de5
    push ax                          ; 0x0de9
    call strlen_2                    ; 0x0dea
    add sp, byte 4                   ; 0x0ded
    cmp word [bp + 0x8], byte 0      ; 0x0df0
    jge short @..local.l38           ; 0x0df4
    mov ax, 0x15cc                   ; 0x0df6
    push ax                          ; 0x0df9
    lea ax, word [bp - 0x00a2]       ; 0x0dfa
    push ax                          ; 0x0dfe
    call strlen                      ; 0x0dff
    add sp, byte 4                   ; 0x0e02
    mov ax, 0                        ; 0x0e05
    sub ax, word [bp + 0x8]          ; 0x0e08
    mov word [bp + 0x8], ax          ; 0x0e0b
    jmp short @..local.l39           ; 0x0e0e
@..local.l38:
    mov ax, 0x15d8                   ; 0x0e10
    push ax                          ; 0x0e13
    lea ax, word [bp - 0x00a2]       ; 0x0e14
    push ax                          ; 0x0e18
    call strlen                      ; 0x0e19
    add sp, byte 4                   ; 0x0e1c
    call math_loc_0452               ; 0x0e1f
@..local.l39:
    mov ax, 0x15e1                   ; 0x0e22
    push ax                          ; 0x0e25
    lea ax, word [bp - 0x00a2]       ; 0x0e26
    push ax                          ; 0x0e2a
    call strlen                      ; 0x0e2b
    add sp, byte 4                   ; 0x0e2e
    mov ax, word [bp + 0x8]          ; 0x0e31
    add ax, strict word 0x40         ; 0x0e34
    mov byte [bp - 0x0002], al       ; 0x0e37
    mov byte [bp - 0x0001], 0        ; 0x0e3a
    lea ax, word [bp - 0x0002]       ; 0x0e3e
    push ax                          ; 0x0e41
    lea ax, word [bp - 0x00a2]       ; 0x0e42
    push ax                          ; 0x0e46
    call strlen                      ; 0x0e47
    add sp, byte 4                   ; 0x0e4a
    mov ax, 0x15e9                   ; 0x0e4d
    push ax                          ; 0x0e50
    lea ax, word [bp - 0x00a2]       ; 0x0e51
    push ax                          ; 0x0e55
    call strlen                      ; 0x0e56
    add sp, byte 4                   ; 0x0e59
    push word [bp + 0x4]             ; 0x0e5c
    lea ax, word [bp - 0x00a2]       ; 0x0e5f
    push ax                          ; 0x0e63
    call strlen                      ; 0x0e64
    add sp, byte 4                   ; 0x0e67
    mov ax, 0x15f7                   ; 0x0e6a
    push ax                          ; 0x0e6d
    lea ax, word [bp - 0x00a2]       ; 0x0e6e
    push ax                          ; 0x0e72
    call strlen                      ; 0x0e73
    add sp, byte 4                   ; 0x0e76
    push word [bp + 0xa]             ; 0x0e79
    call strlen_3                    ; 0x0e7c
    pop cx                           ; 0x0e7f
    cmp ax, strict word 0            ; 0x0e80
    jle short @..local.l41           ; 0x0e83
    push word [bp + 0x6]             ; 0x0e85
    lea ax, word [bp - 0x0052]       ; 0x0e88
    push ax                          ; 0x0e8b
    call strlen_2                    ; 0x0e8c
    add sp, byte 4                   ; 0x0e8f
    push word [bp + 0xa]             ; 0x0e92
    lea ax, word [bp - 0x0052]       ; 0x0e95
    push ax                          ; 0x0e98
    call strlen                      ; 0x0e99
    add sp, byte 4                   ; 0x0e9c
@..local.l40:
    lea ax, word [bp - 0x00a2]       ; 0x0e9f
    push ax                          ; 0x0ea3
    call math_loc_0992               ; 0x0ea4
    pop cx                           ; 0x0ea7
    mov ax, 0                        ; 0x0ea8
    push ax                          ; 0x0eab
    lea ax, word [bp - 0x0052]       ; 0x0eac
    push ax                          ; 0x0eaf
    call loc_3381                    ; 0x0eb0
    add sp, byte 4                   ; 0x0eb3
    mov word [bp - 0x00a4], ax       ; 0x0eb6
    cmp word [bp - 0x00a4], byte 0xff ; 0x0eba
    je short @..local.l40            ; 0x0ebf
    push word [bp - 0x00a4]          ; 0x0ec1
    call dos_file_loc_3869           ; 0x0ec5
    pop cx                           ; 0x0ec8
    jmp short @..local.l42           ; 0x0ec9
@..local.l41:
    lea ax, word [bp - 0x00a2]       ; 0x0ecb
    push ax                          ; 0x0ecf
    call math_loc_0992               ; 0x0ed0
    pop cx                           ; 0x0ed3
@..local.l42:
    mov sp, bp                       ; 0x0ed4
    pop bp                           ; 0x0ed6
    ret                              ; 0x0ed7
loc_0ed8:
    push bp                          ; 0x0ed8
    mov bp, sp                       ; 0x0ed9
    add sp, strict word 0xfe34       ; 0x0edb
    push word [bp + 0x4]             ; 0x0edf
    lea ax, word [bp - 0x0028]       ; 0x0ee2
    push ax                          ; 0x0ee5
    call strlen_2                    ; 0x0ee6
    add sp, byte 4                   ; 0x0ee9
    mov ax, 0x1609                   ; 0x0eec
    push ax                          ; 0x0eef
    lea ax, word [bp - 0x0028]       ; 0x0ef0
    push ax                          ; 0x0ef3
    call strlen                      ; 0x0ef4
    add sp, byte 4                   ; 0x0ef7
    mov ax, 0x1615                   ; 0x0efa
    push ax                          ; 0x0efd
    lea ax, word [bp - 0x0050]       ; 0x0efe
    push ax                          ; 0x0f01
    call strlen_2                    ; 0x0f02
    add sp, byte 4                   ; 0x0f05
    push word [bp + 0x4]             ; 0x0f08
    lea ax, word [bp - 0x0078]       ; 0x0f0b
    push ax                          ; 0x0f0e
    call strlen_2                    ; 0x0f0f
    add sp, byte 4                   ; 0x0f12
    push word [bp + 0x8]             ; 0x0f15
    lea ax, word [bp - 0x0078]       ; 0x0f18
    push ax                          ; 0x0f1b
    call strlen                      ; 0x0f1c
    add sp, byte 4                   ; 0x0f1f
    push word [bp + 0x4]             ; 0x0f22
    lea ax, word [bp - 0x0177]       ; 0x0f25
    push ax                          ; 0x0f29
    call strlen_2                    ; 0x0f2a
    add sp, byte 4                   ; 0x0f2d
    mov ax, 0x1621                   ; 0x0f30
    push ax                          ; 0x0f33
    lea ax, word [bp - 0x0177]       ; 0x0f34
    push ax                          ; 0x0f38
    call strlen                      ; 0x0f39
    add sp, byte 4                   ; 0x0f3c
    push word [bp + 0x4]             ; 0x0f3f
    lea ax, word [bp - 0x0177]       ; 0x0f42
    push ax                          ; 0x0f46
    call strlen                      ; 0x0f47
    add sp, byte 4                   ; 0x0f4a
    push word [bp + 0x8]             ; 0x0f4d
    lea ax, word [bp - 0x0177]       ; 0x0f50
    push ax                          ; 0x0f54
    call strlen                      ; 0x0f55
    add sp, byte 4                   ; 0x0f58
    mov ax, 0x162e                   ; 0x0f5b
    push ax                          ; 0x0f5e
    lea ax, word [bp - 0x0177]       ; 0x0f5f
    push ax                          ; 0x0f63
    call strlen                      ; 0x0f64
    add sp, byte 4                   ; 0x0f67
    push word [bp + 0xa]             ; 0x0f6a
    lea ax, word [bp - 0x0177]       ; 0x0f6d
    push ax                          ; 0x0f71
    call strlen                      ; 0x0f72
    add sp, byte 4                   ; 0x0f75
    lea ax, word [bp - 0x0177]       ; 0x0f78
    push ax                          ; 0x0f7c
    call math_loc_0d6a               ; 0x0f7d
    pop cx                           ; 0x0f80
    mov ax, 0x2357                   ; 0x0f81
    push ax                          ; 0x0f84
    mov ax, 0x1634                   ; 0x0f85
    push ax                          ; 0x0f88
    mov ax, 0x1630                   ; 0x0f89
    push ax                          ; 0x0f8c
    call loc_2bfe                    ; 0x0f8d
    add sp, byte 6                   ; 0x0f90
    mov word [data_29ee], ax         ; 0x0f93
    mov ax, 0                        ; 0x0f96
    push ax                          ; 0x0f99
    push ax                          ; 0x0f9a
    push word [bp + 0xa]             ; 0x0f9b
    lea ax, word [bp - 0x0078]       ; 0x0f9e
    push ax                          ; 0x0fa1
    lea ax, word [bp - 0x0050]       ; 0x0fa2
    push ax                          ; 0x0fa5
    lea ax, word [bp - 0x0028]       ; 0x0fa6
    push ax                          ; 0x0fa9
    call loc_2908                    ; 0x0faa
    add sp, byte 0x0c                ; 0x0fad
    mov word [bp - 0x01c9], ax       ; 0x0fb0
    call dos_proc_loc_2a9d           ; 0x0fb4
    mov word [bp - 0x01cb], ax       ; 0x0fb7
    push word [data_29ee]            ; 0x0fbb
    mov ax, 0x163a                   ; 0x0fbf
    push ax                          ; 0x0fc2
    mov ax, 0x1636                   ; 0x0fc3
    push ax                          ; 0x0fc6
    call loc_2bfe                    ; 0x0fc7
    add sp, byte 6                   ; 0x0fca
    mov word [data_29ee], ax         ; 0x0fcd
    cmp word [bp - 0x01c9], byte 0xff ; 0x0fd0
    je short @..local.l43            ; 0x0fd5
    cmp word [bp - 0x01cb], byte 0   ; 0x0fd7
    je short @..local.l44            ; 0x0fdc
@..local.l43:
    mov ax, 0x163c                   ; 0x0fde
    push ax                          ; 0x0fe1
    lea ax, word [bp - 0x01c7]       ; 0x0fe2
    push ax                          ; 0x0fe6
    call strlen_2                    ; 0x0fe7
    add sp, byte 4                   ; 0x0fea
    push word [bp + 0x4]             ; 0x0fed
    lea ax, word [bp - 0x01c7]       ; 0x0ff0
    push ax                          ; 0x0ff4
    call strlen                      ; 0x0ff5
    add sp, byte 4                   ; 0x0ff8
    push word [bp + 0x8]             ; 0x0ffb
    lea ax, word [bp - 0x01c7]       ; 0x0ffe
    push ax                          ; 0x1002
    call strlen                      ; 0x1003
    add sp, byte 4                   ; 0x1006
    mov ax, 0x1657                   ; 0x1009
    push ax                          ; 0x100c
    lea ax, word [bp - 0x01c7]       ; 0x100d
    push ax                          ; 0x1011
    call strlen                      ; 0x1012
    add sp, byte 4                   ; 0x1015
    lea ax, word [bp - 0x01c7]       ; 0x1018
    push ax                          ; 0x101c
    call math_loc_0992               ; 0x101d
    pop cx                           ; 0x1020
    mov ax, 3                        ; 0x1021
    push ax                          ; 0x1024
    call dos_file_loc_380b           ; 0x1025
    pop cx                           ; 0x1028
@..local.l44:
    mov sp, bp                       ; 0x1029
    pop bp                           ; 0x102b
    ret                              ; 0x102c

    db 0x55, 0x8b, 0xec, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db '8%Y=P', 0
    db 0x7f, 0x18, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x2b, 0x25, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x2e, 0xff
    db 0x76, 0x0a, 0xe8, 0x1f, 0x25, 0x59, 0x85, 0xc0, 0x75, 0x23, 0xb8, 0xf0, 0x29, 0x50, 0xff, 0x76
    db 0x08, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x73, 0xfe, 0x83, 0xc4, 0x08, 0xb8, 0x69, 0x16
    db 0x50, 0xb8, 0xf0, 0x29, 0x50, 0xe8, 0x6a, 0x1a, 0x83, 0xc4, 0x04, 0xeb, 0x1b, 0xb8, 0xf0, 0x29
    db 0x50, 0xe8, 0xf0, 0x24, 0x59, 0x3d, 0x00, 0x00, 0x7e, 0x0e, 0xb8, 0x6a, 0x16, 0x50, 0xb8, 0xf0
    db 0x29, 0x50, 0xe8, 0x16, 0x1a, 0x83, 0xc4, 0x04, 0xff, 0x76, 0x0a, 0xb8, 0xf0, 0x29, 0x50, 0xe8
    db 0x09, 0x1a, 0x83, 0xc4, 0x04, 0x8b, 0xe5, 0x5d, 0xc3

loc_10a4:
    push bp                          ; 0x10a4
    mov bp, sp                       ; 0x10a5
    mov ax, word [bp + 0x4]          ; 0x10a7
    jmp near @..local.l45            ; 0x10aa
    mov ax, 0x166c                   ; 0x10ad
    push ax                          ; 0x10b0
    push word [bp + 0x6]             ; 0x10b1
    call strlen_2                    ; 0x10b4
    add sp, byte 4                   ; 0x10b7
    mov ax, 0x166f                   ; 0x10ba
    push ax                          ; 0x10bd
    push word [bp + 0x8]             ; 0x10be
    call strlen_2                    ; 0x10c1
    add sp, byte 4                   ; 0x10c4
    jmp near @..local.l46            ; 0x10c7
    mov ax, 0x1672                   ; 0x10ca
    push ax                          ; 0x10cd
    push word [bp + 0x6]             ; 0x10ce
    call strlen_2                    ; 0x10d1
    add sp, byte 4                   ; 0x10d4
    mov ax, 0x1675                   ; 0x10d7
    push ax                          ; 0x10da
    push word [bp + 0x8]             ; 0x10db
    call strlen_2                    ; 0x10de
    add sp, byte 4                   ; 0x10e1
    jmp short @..local.l46           ; 0x10e4
    mov ax, 0x1676                   ; 0x10e6
    push ax                          ; 0x10e9
    push word [bp + 0x6]             ; 0x10ea
    call strlen_2                    ; 0x10ed
    add sp, byte 4                   ; 0x10f0
    mov ax, 0x1679                   ; 0x10f3
    push ax                          ; 0x10f6
    push word [bp + 0x8]             ; 0x10f7
    call strlen_2                    ; 0x10fa
    add sp, byte 4                   ; 0x10fd
    jmp short @..local.l46           ; 0x1100
    mov ax, 0x167a                   ; 0x1102
    push ax                          ; 0x1105
    push word [bp + 0x6]             ; 0x1106
    call strlen_2                    ; 0x1109
    add sp, byte 4                   ; 0x110c
    mov ax, 0x167d                   ; 0x110f
    push ax                          ; 0x1112
    push word [bp + 0x8]             ; 0x1113
    call strlen_2                    ; 0x1116
    add sp, byte 4                   ; 0x1119
    jmp short @..local.l46           ; 0x111c
    mov ax, 0x167e                   ; 0x111e
    push ax                          ; 0x1121
    push word [bp + 0x6]             ; 0x1122
    call strlen_2                    ; 0x1125
    add sp, byte 4                   ; 0x1128
    mov ax, 0x1681                   ; 0x112b
    push ax                          ; 0x112e
    push word [bp + 0x8]             ; 0x112f
    call strlen_2                    ; 0x1132
    add sp, byte 4                   ; 0x1135
    jmp short @..local.l46           ; 0x1138
    lodsw                            ; 0x113a
    push cs                          ; 0x113b
    retf 0xe60e                      ; 0x113c
    push cs                          ; 0x113f
    add cl, byte [bx]                ; 0x1140
    push ds                          ; 0x1142
    db 0x0f
@..local.l45:
    cmp ax, strict word 5            ; 0x1144
    jae short @..local.l46           ; 0x1147
    xchg bx, ax                      ; 0x1149
    shl bx, 1                        ; 0x114a
    jmp [cs:bx + 0xf3a]              ; 0x114c
@..local.l46:
    mov sp, bp                       ; 0x1151
    pop bp                           ; 0x1153
    ret                              ; 0x1154

    db 0x55, 0x8b, 0xec, 0x81, 0xc4, 0x5e, 0xff, 0x8b, 0x46, 0x04, 0x8b, 0xd0, 0xd1, 0xe0, 0xd1, 0xe0
    db 0x03, 0xc2, 0xd1, 0xe0, 0x8b, 0x4e, 0x06, 0xd1, 0xe1, 0x03, 0xc1, 0x8b, 0xd8, 0xff, 0xb7, 0xad
    db 0x02, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0x60, 0x19, 0x83, 0xc4, 0x04, 0xc7, 0x46, 0xfe, 0x00, 0x00
    db 0xeb, 0x21, 0x8b, 0x5e, 0xfe, 0x03, 0xdd, 0x80, 0x7f, 0xae, 0x2a, 0x74, 0x0c, 0x8a, 0x47, 0xae
    db 0x98, 0x05, 0xbf, 0xff, 0x3b, 0x46, 0x08, 0x75, 0x07, 0xb8, 0x01, 0x00, 0x8b, 0xe5, 0x5d, 0xc3
    db 0xff, 0x46, 0xfe, 0x8d, 0x46, 0xae, 0x50, 0xe8, 0xc0, 0x23, 0x59, 0x3b, 0x46, 0xfe, 0x7f, 0xd2
    db 0xb8, 0x00, 0x00, 0xeb, 0xe7

loc_11ba:
    push bp                          ; 0x11ba
    mov bp, sp                       ; 0x11bb
    add sp, byte 0xae                ; 0x11bd
    push word [bp + 0x4]             ; 0x11c0
    call loc_0200                    ; 0x11c3
    pop cx                           ; 0x11c6
    mov word [bp - 0x0002], ax       ; 0x11c7
    cmp ax, strict word 0xffff       ; 0x11ca
    jne short @..local.l47           ; 0x11cd
    mov ax, 0x1689                   ; 0x11cf
    push ax                          ; 0x11d2
    lea ax, word [bp - 0x0052]       ; 0x11d3
    push ax                          ; 0x11d6
    call strlen_2                    ; 0x11d7
    add sp, byte 4                   ; 0x11da
    push word [bp + 0x4]             ; 0x11dd
    lea ax, word [bp - 0x0052]       ; 0x11e0
    push ax                          ; 0x11e3
    call strlen                      ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, 0x16af                   ; 0x11ea
    push ax                          ; 0x11ed
    lea ax, word [bp - 0x0052]       ; 0x11ee
    push ax                          ; 0x11f1
    call strlen                      ; 0x11f2
    add sp, byte 4                   ; 0x11f5
    lea ax, word [bp - 0x0052]       ; 0x11f8
    push ax                          ; 0x11fb
    call math_loc_0992               ; 0x11fc
    pop cx                           ; 0x11ff
    mov ax, data_0004                ; 0x1200
    push ax                          ; 0x1203
    call dos_file_loc_380b           ; 0x1204
    pop cx                           ; 0x1207
@..local.l47:
    push word [bp + 0x6]             ; 0x1208
    call leaf_loc_2a1c               ; 0x120b
    pop cx                           ; 0x120e
    mov word [bp - 0x0002], ax       ; 0x120f
    cmp ax, strict word 0xffff       ; 0x1212
    je short @..local.l48            ; 0x1215
    jmp near @..local.l51            ; 0x1217
@..local.l48:
    cmp word [bp + 0x8], byte 1      ; 0x121a
    jne short @..local.l50           ; 0x121e
    push word [bp + 0x6]             ; 0x1220
    call dos_loc_29fe                ; 0x1223
    pop cx                           ; 0x1226
    mov word [bp - 0x0002], ax       ; 0x1227
    cmp ax, strict word 0xffff       ; 0x122a
    jne short @..local.l49           ; 0x122d
    mov ax, 0x16c2                   ; 0x122f
    push ax                          ; 0x1232
    lea ax, word [bp - 0x0052]       ; 0x1233
    push ax                          ; 0x1236
    call strlen_2                    ; 0x1237
    add sp, byte 4                   ; 0x123a
    push word [bp + 0x6]             ; 0x123d
    lea ax, word [bp - 0x0052]       ; 0x1240
    push ax                          ; 0x1243
    call strlen                      ; 0x1244
    add sp, byte 4                   ; 0x1247
    mov ax, 0x16e8                   ; 0x124a
    push ax                          ; 0x124d
    lea ax, word [bp - 0x0052]       ; 0x124e
    push ax                          ; 0x1251
    call strlen                      ; 0x1252
    add sp, byte 4                   ; 0x1255
    lea ax, word [bp - 0x0052]       ; 0x1258
    push ax                          ; 0x125b
    call math_loc_0992               ; 0x125c
    pop cx                           ; 0x125f
    mov ax, 1                        ; 0x1260
    push ax                          ; 0x1263
    call dos_file_loc_380b           ; 0x1264
    pop cx                           ; 0x1267
@..local.l49:
    push word [bp + 0x6]             ; 0x1268
    call leaf_loc_2a1c               ; 0x126b
    pop cx                           ; 0x126e
    mov word [bp - 0x0002], ax       ; 0x126f
@..local.l50:
    cmp word [bp - 0x0002], byte 0xff ; 0x1272
    jne short @..local.l51           ; 0x1276
    mov ax, 0x16fa                   ; 0x1278
    push ax                          ; 0x127b
    lea ax, word [bp - 0x0052]       ; 0x127c
    push ax                          ; 0x127f
    call strlen_2                    ; 0x1280
    add sp, byte 4                   ; 0x1283
    push word [bp + 0x6]             ; 0x1286
    lea ax, word [bp - 0x0052]       ; 0x1289
    push ax                          ; 0x128c
    call strlen                      ; 0x128d
    add sp, byte 4                   ; 0x1290
    mov ax, 0x1720                   ; 0x1293
    push ax                          ; 0x1296
    lea ax, word [bp - 0x0052]       ; 0x1297
    push ax                          ; 0x129a
    call strlen                      ; 0x129b
    add sp, byte 4                   ; 0x129e
    lea ax, word [bp - 0x0052]       ; 0x12a1
    push ax                          ; 0x12a4
    call math_loc_0992               ; 0x12a5
    pop cx                           ; 0x12a8
    mov ax, data_0002                ; 0x12a9
    push ax                          ; 0x12ac
    call dos_file_loc_380b           ; 0x12ad
    pop cx                           ; 0x12b0
@..local.l51:
    mov sp, bp                       ; 0x12b1
    pop bp                           ; 0x12b3
    ret                              ; 0x12b4
math_loc_12b5:
    push bp                          ; 0x12b5
    mov bp, sp                       ; 0x12b6
    add sp, strict word 0xfd28       ; 0x12b8
    call loc_0927                    ; 0x12bc
    mov word [bp - 0x01c8], 0x78     ; 0x12bf
    call loc_0443                    ; 0x12c5
    mov ax, 0x1732                   ; 0x12c8
    push ax                          ; 0x12cb
    mov ax, 0xe                      ; 0x12cc
    push ax                          ; 0x12cf
    mov ax, 0                        ; 0x12d0
    push ax                          ; 0x12d3
    call loc_040f                    ; 0x12d4
    add sp, byte 6                   ; 0x12d7
    mov ax, 0x1767                   ; 0x12da
    push ax                          ; 0x12dd
    mov ax, 0xe                      ; 0x12de
    push ax                          ; 0x12e1
    mov ax, 1                        ; 0x12e2
    push ax                          ; 0x12e5
    call loc_040f                    ; 0x12e6
    add sp, byte 6                   ; 0x12e9
    mov ax, 0x179c                   ; 0x12ec
    push ax                          ; 0x12ef
    mov ax, 0xe                      ; 0x12f0
    push ax                          ; 0x12f3
    mov ax, data_0002                ; 0x12f4
    push ax                          ; 0x12f7
    call loc_040f                    ; 0x12f8
    add sp, byte 6                   ; 0x12fb
    mov ax, 0x17d1                   ; 0x12fe
    push ax                          ; 0x1301
    mov ax, 0xe                      ; 0x1302
    push ax                          ; 0x1305
    mov ax, 3                        ; 0x1306
    push ax                          ; 0x1309
    call loc_040f                    ; 0x130a
    add sp, byte 6                   ; 0x130d
    mov ax, 0x1806                   ; 0x1310
    push ax                          ; 0x1313
    mov ax, 0xe                      ; 0x1314
    push ax                          ; 0x1317
    mov ax, data_0004                ; 0x1318
    push ax                          ; 0x131b
    call loc_040f                    ; 0x131c
    add sp, byte 6                   ; 0x131f
    mov ax, word [bp - 0x01c8]       ; 0x1322
    mov cx, 0x64                     ; 0x1326
    cwd                              ; 0x1329
    idiv cx                          ; 0x132a
    push ax                          ; 0x132c
    mov ax, 0x3b                     ; 0x132d
    push ax                          ; 0x1330
    mov ax, 3                        ; 0x1331
    push ax                          ; 0x1334
    call loc_03b3                    ; 0x1335
    add sp, byte 6                   ; 0x1338
    mov ax, 0x183b                   ; 0x133b
    push ax                          ; 0x133e
    call bios_video_loc_2621         ; 0x133f
    pop cx                           ; 0x1342
    lea ax, word [bp - 0x02d6]       ; 0x1343
    push ax                          ; 0x1347
    mov ax, word [bp - 0x01c8]       ; 0x1348
    mov cx, 0x64                     ; 0x134c
    cwd                              ; 0x134f
    idiv cx                          ; 0x1350
    mov ax, dx                       ; 0x1352
    push ax                          ; 0x1354
    call math_loc_02b2               ; 0x1355
    add sp, byte 4                   ; 0x1358
    lea ax, word [bp - 0x02d6]       ; 0x135b
    push ax                          ; 0x135f
    call strlen_3                    ; 0x1360
    pop cx                           ; 0x1363
    cmp ax, strict word 1            ; 0x1364
    jne short @..math_loc_12b5.l1    ; 0x1367
    mov al, byte [bp - 0x02d6]       ; 0x1369
    mov byte [bp - 0x02d5], al       ; 0x136d
    mov byte [bp - 0x02d6], data_0030 ; 0x1371
    mov byte [bp - 0x02d4], 0        ; 0x1376
@..math_loc_12b5.l1:
    lea ax, word [bp - 0x02d6]       ; 0x137b
    push ax                          ; 0x137f
    call bios_video_loc_2621         ; 0x1380
    pop cx                           ; 0x1383
    mov ax, 0x183d                   ; 0x1384
    push ax                          ; 0x1387
    mov ax, data_0005                ; 0x1388
    push ax                          ; 0x138b
    mov ax, 7                        ; 0x138c
    push ax                          ; 0x138f
    call loc_040f                    ; 0x1390
    add sp, byte 6                   ; 0x1393
    mov ax, 0x1882                   ; 0x1396
    push ax                          ; 0x1399
    mov ax, data_0005                ; 0x139a
    push ax                          ; 0x139d
    mov ax, 8                        ; 0x139e
    push ax                          ; 0x13a1
    call loc_040f                    ; 0x13a2
    add sp, byte 6                   ; 0x13a5
    mov ax, 0x18b2                   ; 0x13a8
    push ax                          ; 0x13ab
    mov ax, data_0005                ; 0x13ac
    push ax                          ; 0x13af
    mov ax, 0xa                      ; 0x13b0
    push ax                          ; 0x13b3
    call loc_040f                    ; 0x13b4
    add sp, byte 6                   ; 0x13b7
    mov ax, 0x18f6                   ; 0x13ba
    push ax                          ; 0x13bd
    mov ax, data_0005                ; 0x13be
    push ax                          ; 0x13c1
    mov ax, 0xb                      ; 0x13c2
    push ax                          ; 0x13c5
    call loc_040f                    ; 0x13c6
    add sp, byte 6                   ; 0x13c9
    mov ax, 0x1911                   ; 0x13cc
    push ax                          ; 0x13cf
    mov ax, data_0005                ; 0x13d0
    push ax                          ; 0x13d3
    mov ax, 0xd                      ; 0x13d4
    push ax                          ; 0x13d7
    call loc_040f                    ; 0x13d8
    add sp, byte 6                   ; 0x13db
    mov ax, 0x1957                   ; 0x13de
    push ax                          ; 0x13e1
    mov ax, data_0005                ; 0x13e2
    push ax                          ; 0x13e5
    mov ax, 0xe                      ; 0x13e6
    push ax                          ; 0x13e9
    call loc_040f                    ; 0x13ea
    add sp, byte 6                   ; 0x13ed
    mov ax, 0x199e                   ; 0x13f0
    push ax                          ; 0x13f3
    mov ax, data_0005                ; 0x13f4
    push ax                          ; 0x13f7
    mov ax, 0xf                      ; 0x13f8
    push ax                          ; 0x13fb
    call loc_040f                    ; 0x13fc
    add sp, byte 6                   ; 0x13ff
    mov ax, 0x19e4                   ; 0x1402
    push ax                          ; 0x1405
    mov ax, data_0005                ; 0x1406
    push ax                          ; 0x1409
    mov ax, 0x10                     ; 0x140a
    push ax                          ; 0x140d
    call loc_040f                    ; 0x140e
    add sp, byte 6                   ; 0x1411
    mov ax, 0x1a2b                   ; 0x1414
    push ax                          ; 0x1417
    mov ax, data_0005                ; 0x1418
    push ax                          ; 0x141b
    mov ax, 0x11                     ; 0x141c
    push ax                          ; 0x141f
    call loc_040f                    ; 0x1420
    add sp, byte 6                   ; 0x1423
    mov ax, 0x1a72                   ; 0x1426
    push ax                          ; 0x1429
    mov ax, data_0005                ; 0x142a
    push ax                          ; 0x142d
    mov ax, 0x12                     ; 0x142e
    push ax                          ; 0x1431
    call loc_040f                    ; 0x1432
    add sp, byte 6                   ; 0x1435
    mov ax, 0x1a91                   ; 0x1438
    push ax                          ; 0x143b
    mov ax, 0x2648                   ; 0x143c
    push ax                          ; 0x143f
    call strlen_2                    ; 0x1440
    add sp, byte 4                   ; 0x1443
    mov ax, 0x1a92                   ; 0x1446
    push ax                          ; 0x1449
    call math_loc_0992               ; 0x144a
    pop cx                           ; 0x144d
    call loc_0443                    ; 0x144e
    mov ax, 0x1ac1                   ; 0x1451
    push ax                          ; 0x1454
    mov ax, 0xe                      ; 0x1455
    push ax                          ; 0x1458
    mov ax, 0                        ; 0x1459
    push ax                          ; 0x145c
    call loc_040f                    ; 0x145d
    add sp, byte 6                   ; 0x1460
    mov ax, 0x1af6                   ; 0x1463
    push ax                          ; 0x1466
    mov ax, 0xe                      ; 0x1467
    push ax                          ; 0x146a
    mov ax, 1                        ; 0x146b
    push ax                          ; 0x146e
    call loc_040f                    ; 0x146f
    add sp, byte 6                   ; 0x1472
    mov ax, 0x1b2b                   ; 0x1475
    push ax                          ; 0x1478
    mov ax, 0xe                      ; 0x1479
    push ax                          ; 0x147c
    mov ax, data_0002                ; 0x147d
    push ax                          ; 0x1480
    call loc_040f                    ; 0x1481
    add sp, byte 6                   ; 0x1484
    mov ax, 0x1b60                   ; 0x1487
    push ax                          ; 0x148a
    mov ax, 0xe                      ; 0x148b
    push ax                          ; 0x148e
    mov ax, 3                        ; 0x148f
    push ax                          ; 0x1492
    call loc_040f                    ; 0x1493
    add sp, byte 6                   ; 0x1496
    mov ax, 0x1b95                   ; 0x1499
    push ax                          ; 0x149c
    mov ax, 0xe                      ; 0x149d
    push ax                          ; 0x14a0
    mov ax, data_0004                ; 0x14a1
    push ax                          ; 0x14a4
    call loc_040f                    ; 0x14a5
    add sp, byte 6                   ; 0x14a8
    call io_loc_245e                 ; 0x14ab
    mov word [bp - 0x0006], ax       ; 0x14ae
    mov word [data_29e6], 0          ; 0x14b1
    mov word [data_29e8], 0          ; 0x14b7
    mov word [data_29ea], 0          ; 0x14bd
    mov word [data_2af0], 0          ; 0x14c3
    mov word [data_29ec], 0          ; 0x14c9
    mov word [data_2af2], 0          ; 0x14cf
    mov word [data_2af4], 0          ; 0x14d5
    mov word [data_2af6], 0          ; 0x14db
    mov word [data_2af8], 0          ; 0x14e1
    mov word [data_2afa], 0          ; 0x14e7
    test ax, 1                       ; 0x14ed
    je short @..local.l52            ; 0x14f0
    mov word [data_29e6], 1          ; 0x14f2
@..local.l52:
    test ax, data_0002               ; 0x14f8
    je short @..local.l53            ; 0x14fb
    mov word [data_29e8], 1          ; 0x14fd
@..local.l53:
    test ax, 0x1000                  ; 0x1503
    je short @..local.l54            ; 0x1506
    mov word [data_2afa], 1          ; 0x1508
@..local.l54:
    mov word [bp - 0x000e], 3        ; 0x150e
    mov ax, 0x1bca                   ; 0x1513
    push ax                          ; 0x1516
    lea ax, word [bp - 0x001c]       ; 0x1517
    push ax                          ; 0x151a
    call strlen_2                    ; 0x151b
    add sp, byte 4                   ; 0x151e
    mov ax, 0x1bcd                   ; 0x1521
    push ax                          ; 0x1524
    lea ax, word [bp - 0x0032]       ; 0x1525
    push ax                          ; 0x1528
    call strlen_2                    ; 0x1529
    add sp, byte 4                   ; 0x152c
    mov word [bp - 0x0010], data_0004 ; 0x152f
    lea ax, word [bp - 0x0054]       ; 0x1534
    push ax                          ; 0x1537
    lea ax, word [bp - 0x003e]       ; 0x1538
    push ax                          ; 0x153b
    push word [bp - 0x0010]          ; 0x153c
    call loc_10a4                    ; 0x153f
    add sp, byte 6                   ; 0x1542
    mov ax, 0x1bce                   ; 0x1545
    push ax                          ; 0x1548
    mov ax, data_0002                ; 0x1549
    push ax                          ; 0x154c
    mov ax, data_0006                ; 0x154d
    push ax                          ; 0x1550
    call loc_040f                    ; 0x1551
    add sp, byte 6                   ; 0x1554
    mov ax, 0x1c1b                   ; 0x1557
    push ax                          ; 0x155a
    mov ax, data_0002                ; 0x155b
    push ax                          ; 0x155e
    mov ax, 7                        ; 0x155f
    push ax                          ; 0x1562
    call loc_040f                    ; 0x1563
    add sp, byte 6                   ; 0x1566
    lea ax, word [bp - 0x0032]       ; 0x1569
    push ax                          ; 0x156c
    lea ax, word [bp - 0x001c]       ; 0x156d
    push ax                          ; 0x1570
    push word [bp - 0x000e]          ; 0x1571
    mov ax, 0x1c68                   ; 0x1574
    push ax                          ; 0x1577
    mov ax, data_0002                ; 0x1578
    push ax                          ; 0x157b
    mov ax, 8                        ; 0x157c
    push ax                          ; 0x157f
    call math_loc_0944               ; 0x1580
    add sp, byte 0x0c                ; 0x1583
    lea ax, word [bp - 0x0054]       ; 0x1586
    push ax                          ; 0x1589
    lea ax, word [bp - 0x003e]       ; 0x158a
    push ax                          ; 0x158d
    push word [bp - 0x0010]          ; 0x158e
    mov ax, 0x1c7b                   ; 0x1591
    push ax                          ; 0x1594
    mov ax, data_0002                ; 0x1595
    push ax                          ; 0x1598
    mov ax, 9                        ; 0x1599
    push ax                          ; 0x159c
    call math_loc_0944               ; 0x159d
    add sp, byte 0x0c                ; 0x15a0
    mov word [bp - 0x01a0], 0        ; 0x15a3
    mov word [bp - 0x01a2], 0        ; 0x15a9
    mov byte [bp - 0x01b8], 0        ; 0x15af
    mov ax, 0x1c8e                   ; 0x15b4
    push ax                          ; 0x15b7
    mov ax, data_0002                ; 0x15b8
    push ax                          ; 0x15bb
    mov ax, 0xb                      ; 0x15bc
    push ax                          ; 0x15bf
    call loc_040f                    ; 0x15c0
    add sp, byte 6                   ; 0x15c3
    mov ax, word [bp - 0x01a0]       ; 0x15c6
    shl ax, 1                        ; 0x15ca
    mov bx, ax                       ; 0x15cc
    push word [bx + 0x154]           ; 0x15ce
    mov ax, 0x1b                     ; 0x15d2
    push ax                          ; 0x15d5
    mov ax, 0xb                      ; 0x15d6
    push ax                          ; 0x15d9
    call loc_040f                    ; 0x15da
    add sp, byte 6                   ; 0x15dd
    mov ax, word [bp - 0x01a2]       ; 0x15e0
    shl ax, 1                        ; 0x15e4
    mov bx, ax                       ; 0x15e6
    push word [bx + 0x154]           ; 0x15e8
    mov ax, 0x29                     ; 0x15ec
    push ax                          ; 0x15ef
    mov ax, 0xb                      ; 0x15f0
    push ax                          ; 0x15f3
    call loc_040f                    ; 0x15f4
    add sp, byte 6                   ; 0x15f7
    lea ax, word [bp - 0x01b8]       ; 0x15fa
    push ax                          ; 0x15fe
    mov ax, 0x3a                     ; 0x15ff
    push ax                          ; 0x1602
    mov ax, 0xb                      ; 0x1603
    push ax                          ; 0x1606
    call loc_040f                    ; 0x1607
    add sp, byte 6                   ; 0x160a
    mov ax, 0x1cc7                   ; 0x160d
    push ax                          ; 0x1610
    mov ax, data_0002                ; 0x1611
    push ax                          ; 0x1614
    mov ax, 0xd                      ; 0x1615
    push ax                          ; 0x1618
    call loc_040f                    ; 0x1619
    add sp, byte 6                   ; 0x161c
    mov ax, 0x1d0a                   ; 0x161f
    push ax                          ; 0x1622
    mov ax, data_0002                ; 0x1623
    push ax                          ; 0x1626
    mov ax, 0xe                      ; 0x1627
    push ax                          ; 0x162a
    call loc_040f                    ; 0x162b
    add sp, byte 6                   ; 0x162e
    mov word [bp - 0x0196], 0        ; 0x1631
    mov word [bp - 0x01be], 0xf      ; 0x1637
    cmp word [data_29e6], byte 0     ; 0x163d
    je short @..local.l55            ; 0x1642
    mov word [bp - 0x0196], 1        ; 0x1644
    push word [data_0004]            ; 0x164a
    mov ax, 0xa                      ; 0x164e
    push ax                          ; 0x1651
    push word [bp - 0x01be]          ; 0x1652
    call loc_040f                    ; 0x1656
    add sp, byte 6                   ; 0x1659
    inc word [bp - 0x01be]           ; 0x165c
@..local.l55:
    cmp word [data_29e8], byte 0     ; 0x1660
    je short @..local.l57            ; 0x1665
    cmp word [bp - 0x0196], byte 0   ; 0x1667
    jne short @..local.l56           ; 0x166c
    mov word [bp - 0x0196], data_0002 ; 0x166e
@..local.l56:
    push word [data_0006]            ; 0x1674
    mov ax, 0xa                      ; 0x1678
    push ax                          ; 0x167b
    push word [bp - 0x01be]          ; 0x167c
    call loc_040f                    ; 0x1680
    add sp, byte 6                   ; 0x1683
    inc word [bp - 0x01be]           ; 0x1686
@..local.l57:
    mov ax, word [bp - 0x0196]       ; 0x168a
    shl ax, 1                        ; 0x168e
    mov bx, ax                       ; 0x1690
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10                     ; 0x1696
    push ax                          ; 0x1699
    mov ax, 0xd                      ; 0x169a
    push ax                          ; 0x169d
    call loc_040f                    ; 0x169e
    add sp, byte 6                   ; 0x16a1
    mov word [bp - 0x01ba], 0        ; 0x16a4
    mov word [bp - 0x01bc], 0        ; 0x16aa
    mov ax, 0x1d4d                   ; 0x16b0
    push ax                          ; 0x16b3
    mov ax, 0x34                     ; 0x16b4
    push ax                          ; 0x16b7
    mov ax, 0xf                      ; 0x16b8
    push ax                          ; 0x16bb
    call loc_040f                    ; 0x16bc
    add sp, byte 6                   ; 0x16bf
    push word [bp - 0x01ba]          ; 0x16c2
    mov ax, 0x3e                     ; 0x16c6
    push ax                          ; 0x16c9
    mov ax, 0xf                      ; 0x16ca
    push ax                          ; 0x16cd
    call loc_03b3                    ; 0x16ce
    add sp, byte 6                   ; 0x16d1
    mov ax, 0x1d58                   ; 0x16d4
    push ax                          ; 0x16d7
    mov ax, 0x34                     ; 0x16d8
    push ax                          ; 0x16db
    mov ax, 0x10                     ; 0x16dc
    push ax                          ; 0x16df
    call loc_040f                    ; 0x16e0
    add sp, byte 6                   ; 0x16e3
    push word [bp - 0x01bc]          ; 0x16e6
    mov ax, 0x3e                     ; 0x16ea
    push ax                          ; 0x16ed
    mov ax, 0x10                     ; 0x16ee
    push ax                          ; 0x16f1
    call loc_03b3                    ; 0x16f2
    add sp, byte 6                   ; 0x16f5
    mov ax, word [data_2afa]         ; 0x16f8
    mov word [bp - 0x019a], ax       ; 0x16fb
    mov ax, 0x1d63                   ; 0x16ff
    push ax                          ; 0x1702
    mov ax, 0x14                     ; 0x1703
    push ax                          ; 0x1706
    mov ax, 0x12                     ; 0x1707
    push ax                          ; 0x170a
    call loc_040f                    ; 0x170b
    add sp, byte 6                   ; 0x170e
    mov ax, word [bp - 0x019a]       ; 0x1711
    shl ax, 1                        ; 0x1715
    mov bx, ax                       ; 0x1717
    push word [bx + 0x154]           ; 0x1719
    mov ax, 0x1b                     ; 0x171d
    push ax                          ; 0x1720
    mov ax, 0x12                     ; 0x1721
    push ax                          ; 0x1724
    call loc_040f                    ; 0x1725
    add sp, byte 6                   ; 0x1728
    mov word [bp - 0x0198], 0        ; 0x172b
    mov ax, 0x1d6b                   ; 0x1731
    push ax                          ; 0x1734
    mov ax, 0x22                     ; 0x1735
    push ax                          ; 0x1738
    mov ax, 0x12                     ; 0x1739
    push ax                          ; 0x173c
    call loc_040f                    ; 0x173d
    add sp, byte 6                   ; 0x1740
    mov ax, word [bp - 0x0198]       ; 0x1743
    shl ax, 1                        ; 0x1747
    mov bx, ax                       ; 0x1749
    push word [bx + 0xa4]            ; 0x174b
    mov ax, 0x29                     ; 0x174f
    push ax                          ; 0x1752
    mov ax, 0x12                     ; 0x1753
    push ax                          ; 0x1756
    call loc_040f                    ; 0x1757
    add sp, byte 6                   ; 0x175a
    mov ax, 0x1d73                   ; 0x175d
    push ax                          ; 0x1760
    mov ax, 0x12                     ; 0x1761
    push ax                          ; 0x1764
    mov ax, 0x14                     ; 0x1765
    push ax                          ; 0x1768
    call loc_040f                    ; 0x1769
    add sp, byte 6                   ; 0x176c
    mov ax, 0x1d9f                   ; 0x176f
    push ax                          ; 0x1772
    mov ax, 0x14                     ; 0x1773
    push ax                          ; 0x1776
    mov ax, 0x16                     ; 0x1777
    push ax                          ; 0x177a
    call loc_040f                    ; 0x177b
    add sp, byte 6                   ; 0x177e
    cmp word [bp - 0x0196], byte 0   ; 0x1781
    jne short @..local.l58           ; 0x1786
    mov ax, 0x1dc7                   ; 0x1788
    push ax                          ; 0x178b
    call math_loc_0992               ; 0x178c
    pop cx                           ; 0x178f
    mov ax, 0x1df7                   ; 0x1790
    push ax                          ; 0x1793
    call math_loc_0992               ; 0x1794
    pop cx                           ; 0x1797
    mov ax, 3                        ; 0x1798
    push ax                          ; 0x179b
    call loc_06f1                    ; 0x179c
    pop cx                           ; 0x179f
    mov ax, 0                        ; 0x17a0
    push ax                          ; 0x17a3
    call dos_file_loc_380b           ; 0x17a4
    pop cx                           ; 0x17a7
@..local.l58:
    mov word [bp - 0x019c], 0        ; 0x17a8
    mov word [bp - 0x019e], 0xffff   ; 0x17ae
    mov word [bp - 0x01c0], 0        ; 0x17b4
@..local.l59:
    mov ax, 0x1e28                   ; 0x17ba
    push ax                          ; 0x17bd
    mov ax, 0x2648                   ; 0x17be
    push ax                          ; 0x17c1
    call strlen_2                    ; 0x17c2
    add sp, byte 4                   ; 0x17c5
    mov ax, word [bp - 0x019e]       ; 0x17c8
    jmp near @..local.l60            ; 0x17cc
    mov ax, word [bp - 0x000e]       ; 0x17cf
    shl ax, 1                        ; 0x17d2
    mov bx, ax                       ; 0x17d4
    push word [bx + 0x160]           ; 0x17d6
    mov ax, 0x16                     ; 0x17da
    push ax                          ; 0x17dd
    mov ax, 8                        ; 0x17de
    push ax                          ; 0x17e1
    call loc_040f                    ; 0x17e2
    add sp, byte 6                   ; 0x17e5
    jmp near @..local.l61            ; 0x17e8
    lea ax, word [bp - 0x001c]       ; 0x17eb
    push ax                          ; 0x17ee
    mov ax, data_002e                ; 0x17ef
    push ax                          ; 0x17f2
    mov ax, 8                        ; 0x17f3
    push ax                          ; 0x17f6
    call loc_040f                    ; 0x17f7
    add sp, byte 6                   ; 0x17fa
    jmp near @..local.l61            ; 0x17fd
    lea ax, word [bp - 0x0032]       ; 0x1800
    push ax                          ; 0x1803
    mov ax, 0x3a                     ; 0x1804
    push ax                          ; 0x1807
    mov ax, 8                        ; 0x1808
    push ax                          ; 0x180b
    call loc_040f                    ; 0x180c
    add sp, byte 6                   ; 0x180f
    jmp near @..local.l61            ; 0x1812
    mov ax, word [bp - 0x0010]       ; 0x1815
    shl ax, 1                        ; 0x1818
    mov bx, ax                       ; 0x181a
    push word [bx + 0x160]           ; 0x181c
    mov ax, 0x16                     ; 0x1820
    push ax                          ; 0x1823
    mov ax, 9                        ; 0x1824
    push ax                          ; 0x1827
    call loc_040f                    ; 0x1828
    add sp, byte 6                   ; 0x182b
    jmp near @..local.l61            ; 0x182e
    lea ax, word [bp - 0x003e]       ; 0x1831
    push ax                          ; 0x1834
    mov ax, data_002e                ; 0x1835
    push ax                          ; 0x1838
    mov ax, 9                        ; 0x1839
    push ax                          ; 0x183c
    call loc_040f                    ; 0x183d
    add sp, byte 6                   ; 0x1840
    jmp near @..local.l61            ; 0x1843
    lea ax, word [bp - 0x0054]       ; 0x1846
    push ax                          ; 0x1849
    mov ax, 0x3a                     ; 0x184a
    push ax                          ; 0x184d
    mov ax, 9                        ; 0x184e
    push ax                          ; 0x1851
    call loc_040f                    ; 0x1852
    add sp, byte 6                   ; 0x1855
    jmp near @..local.l61            ; 0x1858
    mov ax, word [bp - 0x01a0]       ; 0x185b
    shl ax, 1                        ; 0x185f
    mov bx, ax                       ; 0x1861
    push word [bx + 0x154]           ; 0x1863
    mov ax, 0x1b                     ; 0x1867
    push ax                          ; 0x186a
    mov ax, 0xb                      ; 0x186b
    push ax                          ; 0x186e
    call loc_040f                    ; 0x186f
    add sp, byte 6                   ; 0x1872
    jmp near @..local.l61            ; 0x1875
    mov ax, word [bp - 0x01a2]       ; 0x1878
    shl ax, 1                        ; 0x187c
    mov bx, ax                       ; 0x187e
    push word [bx + 0x154]           ; 0x1880
    mov ax, 0x29                     ; 0x1884
    push ax                          ; 0x1887
    mov ax, 0xb                      ; 0x1888
    push ax                          ; 0x188b
    call loc_040f                    ; 0x188c
    add sp, byte 6                   ; 0x188f
    jmp near @..local.l61            ; 0x1892
    lea ax, word [bp - 0x01b8]       ; 0x1895
    push ax                          ; 0x1899
    mov ax, 0x3a                     ; 0x189a
    push ax                          ; 0x189d
    mov ax, 0xb                      ; 0x189e
    push ax                          ; 0x18a1
    call loc_040f                    ; 0x18a2
    add sp, byte 6                   ; 0x18a5
    jmp near @..local.l61            ; 0x18a8
    mov ax, word [bp - 0x0196]       ; 0x18ab
    shl ax, 1                        ; 0x18af
    mov bx, ax                       ; 0x18b1
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10                     ; 0x18b7
    push ax                          ; 0x18ba
    mov ax, 0xd                      ; 0x18bb
    push ax                          ; 0x18be
    call loc_040f                    ; 0x18bf
    add sp, byte 6                   ; 0x18c2
    jmp near @..local.l61            ; 0x18c5
    push word [bp - 0x01ba]          ; 0x18c8
    mov ax, 0x3e                     ; 0x18cc
    push ax                          ; 0x18cf
    mov ax, 0xf                      ; 0x18d0
    push ax                          ; 0x18d3
    call loc_03b3                    ; 0x18d4
    add sp, byte 6                   ; 0x18d7
    jmp near @..local.l61            ; 0x18da
    push word [bp - 0x01bc]          ; 0x18dd
    mov ax, 0x3e                     ; 0x18e1
    push ax                          ; 0x18e4
    mov ax, 0x10                     ; 0x18e5
    push ax                          ; 0x18e8
    call loc_03b3                    ; 0x18e9
    add sp, byte 6                   ; 0x18ec
    jmp near @..local.l61            ; 0x18ef
    mov ax, word [bp - 0x019a]       ; 0x18f2
    shl ax, 1                        ; 0x18f6
    mov bx, ax                       ; 0x18f8
    push word [bx + 0x154]           ; 0x18fa
    mov ax, 0x1b                     ; 0x18fe
    push ax                          ; 0x1901
    mov ax, 0x12                     ; 0x1902
    push ax                          ; 0x1905
    call loc_040f                    ; 0x1906
    add sp, byte 6                   ; 0x1909
    jmp near @..local.l61            ; 0x190c
    mov ax, word [bp - 0x0198]       ; 0x190f
    shl ax, 1                        ; 0x1913
    mov bx, ax                       ; 0x1915
    push word [bx + 0xa4]            ; 0x1917
    mov ax, 0x29                     ; 0x191b
    push ax                          ; 0x191e
    mov ax, 0x12                     ; 0x191f
    push ax                          ; 0x1922
    call loc_040f                    ; 0x1923
    add sp, byte 6                   ; 0x1926
    jmp short @..local.l61           ; 0x1929
    mov ax, 0x1e50                   ; 0x192b
    push ax                          ; 0x192e
    mov ax, 0x12                     ; 0x192f
    push ax                          ; 0x1932
    mov ax, 0x14                     ; 0x1933
    push ax                          ; 0x1936
    call loc_040f                    ; 0x1937
    add sp, byte 6                   ; 0x193a
    jmp short @..local.l61           ; 0x193d
    mov ax, 0x1e5d                   ; 0x193f
    push ax                          ; 0x1942
    mov ax, 0x21                     ; 0x1943
    push ax                          ; 0x1946
    mov ax, 0x14                     ; 0x1947
    push ax                          ; 0x194a
    call loc_040f                    ; 0x194b
    add sp, byte 6                   ; 0x194e
    jmp short @..local.l61           ; 0x1951
    mov ax, 0x1e69                   ; 0x1953
    push ax                          ; 0x1956
    mov ax, data_0030                ; 0x1957
    push ax                          ; 0x195a
    mov ax, 0x14                     ; 0x195b
    push ax                          ; 0x195e
    call loc_040f                    ; 0x195f
    add sp, byte 6                   ; 0x1962
    jmp short @..local.l61           ; 0x1965
    jmp short @..local.l61           ; 0x1967

    db 0x67, 0x17, 0xcf, 0x15, 0xeb, 0x15, 0x00, 0x16, 0x15, 0x16, 0x31, 0x16, 0x46, 0x16, 0x5b, 0x16
    db 0x78, 0x16, 0x95, 0x16, 0xab, 0x16, 0xc8, 0x16, 0xdd, 0x16, 0xf2, 0x16, 0x0f, 0x17, 0x2b, 0x17
    db 0x3f, 0x17, 0x53, 0x17

@..local.l60:
    sub ax, strict word 0xffff       ; 0x198d
    cmp ax, strict word 0x12         ; 0x1990
    jae short @..local.l61           ; 0x1993
    xchg bx, ax                      ; 0x1995
    shl bx, 1                        ; 0x1996
    jmp [cs:bx + 0x1769]             ; 0x1998
@..local.l61:
    mov ax, word [bp - 0x019c]       ; 0x199d
    jmp near @..local.l62            ; 0x19a1
    mov ax, word [bp - 0x000e]       ; 0x19a4
    shl ax, 1                        ; 0x19a7
    mov bx, ax                       ; 0x19a9
    push word [bx + 0x160]           ; 0x19ab
    mov ax, 0x16                     ; 0x19af
    push ax                          ; 0x19b2
    mov ax, 8                        ; 0x19b3
    push ax                          ; 0x19b6
    call loc_0429                    ; 0x19b7
    add sp, byte 6                   ; 0x19ba
    jmp near @..local.l63            ; 0x19bd
    lea ax, word [bp - 0x001c]       ; 0x19c0
    push ax                          ; 0x19c3
    mov ax, data_002e                ; 0x19c4
    push ax                          ; 0x19c7
    mov ax, 8                        ; 0x19c8
    push ax                          ; 0x19cb
    call loc_0429                    ; 0x19cc
    add sp, byte 6                   ; 0x19cf
    jmp near @..local.l63            ; 0x19d2
    lea ax, word [bp - 0x0032]       ; 0x19d5
    push ax                          ; 0x19d8
    mov ax, 0x3a                     ; 0x19d9
    push ax                          ; 0x19dc
    mov ax, 8                        ; 0x19dd
    push ax                          ; 0x19e0
    call loc_0429                    ; 0x19e1
    add sp, byte 6                   ; 0x19e4
    jmp near @..local.l63            ; 0x19e7
    mov ax, word [bp - 0x0010]       ; 0x19ea
    shl ax, 1                        ; 0x19ed
    mov bx, ax                       ; 0x19ef
    push word [bx + 0x160]           ; 0x19f1
    mov ax, 0x16                     ; 0x19f5
    push ax                          ; 0x19f8
    mov ax, 9                        ; 0x19f9
    push ax                          ; 0x19fc
    call loc_0429                    ; 0x19fd
    add sp, byte 6                   ; 0x1a00
    jmp near @..local.l63            ; 0x1a03
    lea ax, word [bp - 0x003e]       ; 0x1a06
    push ax                          ; 0x1a09
    mov ax, data_002e                ; 0x1a0a
    push ax                          ; 0x1a0d
    mov ax, 9                        ; 0x1a0e
    push ax                          ; 0x1a11
    call loc_0429                    ; 0x1a12
    add sp, byte 6                   ; 0x1a15
    jmp near @..local.l63            ; 0x1a18
    lea ax, word [bp - 0x0054]       ; 0x1a1b
    push ax                          ; 0x1a1e
    mov ax, 0x3a                     ; 0x1a1f
    push ax                          ; 0x1a22
    mov ax, 9                        ; 0x1a23
    push ax                          ; 0x1a26
    call loc_0429                    ; 0x1a27
    add sp, byte 6                   ; 0x1a2a
    jmp near @..local.l63            ; 0x1a2d
    mov ax, word [bp - 0x01a0]       ; 0x1a30
    shl ax, 1                        ; 0x1a34
    mov bx, ax                       ; 0x1a36
    push word [bx + 0x154]           ; 0x1a38
    mov ax, 0x1b                     ; 0x1a3c
    push ax                          ; 0x1a3f
    mov ax, 0xb                      ; 0x1a40
    push ax                          ; 0x1a43
    call loc_0429                    ; 0x1a44
    add sp, byte 6                   ; 0x1a47
    jmp near @..local.l63            ; 0x1a4a
    mov ax, word [bp - 0x01a2]       ; 0x1a4d
    shl ax, 1                        ; 0x1a51
    mov bx, ax                       ; 0x1a53
    push word [bx + 0x154]           ; 0x1a55
    mov ax, 0x29                     ; 0x1a59
    push ax                          ; 0x1a5c
    mov ax, 0xb                      ; 0x1a5d
    push ax                          ; 0x1a60
    call loc_0429                    ; 0x1a61
    add sp, byte 6                   ; 0x1a64
    jmp near @..local.l63            ; 0x1a67
    lea ax, word [bp - 0x01b8]       ; 0x1a6a
    push ax                          ; 0x1a6e
    mov ax, 0x3a                     ; 0x1a6f
    push ax                          ; 0x1a72
    mov ax, 0xb                      ; 0x1a73
    push ax                          ; 0x1a76
    call loc_0429                    ; 0x1a77
    add sp, byte 6                   ; 0x1a7a
    jmp near @..local.l63            ; 0x1a7d
    mov ax, word [bp - 0x0196]       ; 0x1a80
    shl ax, 1                        ; 0x1a84
    mov bx, ax                       ; 0x1a86
    db 0xff, 0xb7, 0x02, 0x00 ; push word [bx + 0x2]
    mov ax, 0x10                     ; 0x1a8c
    push ax                          ; 0x1a8f
    mov ax, 0xd                      ; 0x1a90
    push ax                          ; 0x1a93
    call loc_0429                    ; 0x1a94
    add sp, byte 6                   ; 0x1a97
    jmp near @..local.l63            ; 0x1a9a
    push word [bp - 0x01ba]          ; 0x1a9d
    mov ax, 0x3e                     ; 0x1aa1
    push ax                          ; 0x1aa4
    mov ax, 0xf                      ; 0x1aa5
    push ax                          ; 0x1aa8
    call loc_03e1                    ; 0x1aa9
    add sp, byte 6                   ; 0x1aac
    jmp near @..local.l63            ; 0x1aaf
    push word [bp - 0x01bc]          ; 0x1ab2
    mov ax, 0x3e                     ; 0x1ab6
    push ax                          ; 0x1ab9
    mov ax, 0x10                     ; 0x1aba
    push ax                          ; 0x1abd
    call loc_03e1                    ; 0x1abe
    add sp, byte 6                   ; 0x1ac1
    jmp near @..local.l63            ; 0x1ac4
    mov ax, word [bp - 0x019a]       ; 0x1ac7
    shl ax, 1                        ; 0x1acb
    mov bx, ax                       ; 0x1acd
    push word [bx + 0x154]           ; 0x1acf
    mov ax, 0x1b                     ; 0x1ad3
    push ax                          ; 0x1ad6
    mov ax, 0x12                     ; 0x1ad7
    push ax                          ; 0x1ada
    call loc_0429                    ; 0x1adb
    add sp, byte 6                   ; 0x1ade
    jmp near @..local.l63            ; 0x1ae1
    mov ax, word [bp - 0x0198]       ; 0x1ae4
    shl ax, 1                        ; 0x1ae8
    mov bx, ax                       ; 0x1aea
    push word [bx + 0xa4]            ; 0x1aec
    mov ax, 0x29                     ; 0x1af0
    push ax                          ; 0x1af3
    mov ax, 0x12                     ; 0x1af4
    push ax                          ; 0x1af7
    call loc_0429                    ; 0x1af8
    add sp, byte 6                   ; 0x1afb
    jmp short @..local.l63           ; 0x1afe
    mov ax, 0x1e77                   ; 0x1b00
    push ax                          ; 0x1b03
    mov ax, 0x12                     ; 0x1b04
    push ax                          ; 0x1b07
    mov ax, 0x14                     ; 0x1b08
    push ax                          ; 0x1b0b
    call loc_0429                    ; 0x1b0c
    add sp, byte 6                   ; 0x1b0f
    jmp short @..local.l63           ; 0x1b12
    mov ax, 0x1e84                   ; 0x1b14
    push ax                          ; 0x1b17
    mov ax, 0x21                     ; 0x1b18
    push ax                          ; 0x1b1b
    mov ax, 0x14                     ; 0x1b1c
    push ax                          ; 0x1b1f
    call loc_0429                    ; 0x1b20
    add sp, byte 6                   ; 0x1b23
    jmp short @..local.l63           ; 0x1b26
    mov ax, 0x1e90                   ; 0x1b28
    push ax                          ; 0x1b2b
    mov ax, data_0030                ; 0x1b2c
    push ax                          ; 0x1b2f
    mov ax, 0x14                     ; 0x1b30
    push ax                          ; 0x1b33
    call loc_0429                    ; 0x1b34
    add sp, byte 6                   ; 0x1b37
    jmp short @..local.l63           ; 0x1b3a

    db 0xa4, 0x17, 0xc0, 0x17, 0xd5, 0x17, 0xea, 0x17, 0x06, 0x18, 0x1b, 0x18, 0x30, 0x18, 0x4d, 0x18
    db 0x6a, 0x18, 0x80, 0x18, 0x9d, 0x18, 0xb2, 0x18, 0xc7, 0x18, 0xe4, 0x18, 0x00, 0x19, 0x14, 0x19
    db 0x28, 0x19

@..local.l62:
    cmp ax, strict word 0x11         ; 0x1b5e
    jae short @..local.l63           ; 0x1b61
    xchg bx, ax                      ; 0x1b63
    shl bx, 1                        ; 0x1b64
    jmp [cs:bx + 0x193c]             ; 0x1b66
@..local.l63:
    call dos_con_in_noecho           ; 0x1b6b
    push ax                          ; 0x1b6e
    call loc_06a6                    ; 0x1b6f
    pop cx                           ; 0x1b72
    mov word [bp - 0x0008], ax       ; 0x1b73
    jmp near @..local.l98            ; 0x1b76
loc_1b79:
    mov ax, word [bp - 0x019c]       ; 0x1b79
    mov word [bp - 0x019e], ax       ; 0x1b7d
    shl ax, 1                        ; 0x1b81
    mov bx, ax                       ; 0x1b83
    mov ax, word [bx + 0x1dd]        ; 0x1b85
    mov word [bp - 0x019c], ax       ; 0x1b89
    jmp near loc_1fce                ; 0x1b8d
loc_1b90:
    mov ax, word [bp - 0x019c]       ; 0x1b90
    mov word [bp - 0x019e], ax       ; 0x1b94
    shl ax, 1                        ; 0x1b98
    mov bx, ax                       ; 0x1b9a
    mov ax, word [bx + 0x221]        ; 0x1b9c
    mov word [bp - 0x019c], ax       ; 0x1ba0
    jmp near loc_1fce                ; 0x1ba4
loc_1ba7:
    mov ax, word [bp - 0x019c]       ; 0x1ba7
    mov word [bp - 0x019e], ax       ; 0x1bab
    shl ax, 1                        ; 0x1baf
    mov bx, ax                       ; 0x1bb1
    mov ax, word [bx + 0x1ff]        ; 0x1bb3
    mov word [bp - 0x019c], ax       ; 0x1bb7
    jmp near loc_1fce                ; 0x1bbb
loc_1bbe:
    mov ax, word [bp - 0x019c]       ; 0x1bbe
    mov word [bp - 0x019e], ax       ; 0x1bc2
    shl ax, 1                        ; 0x1bc6
    mov bx, ax                       ; 0x1bc8
    mov ax, word [bx + 0x243]        ; 0x1bca
    mov word [bp - 0x019c], ax       ; 0x1bce
    jmp near loc_1fce                ; 0x1bd2
loc_1bd5:
    mov word [bp - 0x019e], 0xffff   ; 0x1bd5
    mov ax, word [bp - 0x019c]       ; 0x1bdb
    jmp near @..local.l96            ; 0x1bdf
    mov ax, 0x1e9e                   ; 0x1be2
    push ax                          ; 0x1be5
    push word [bp - 0x000e]          ; 0x1be6
    mov ax, 8                        ; 0x1be9
    push ax                          ; 0x1bec
    call math_loc_0cd6               ; 0x1bed
    add sp, byte 6                   ; 0x1bf0
    mov word [bp - 0x000e], ax       ; 0x1bf3
    jmp near @..local.l97            ; 0x1bf6
@..local.l64:
    mov ax, data_0002                ; 0x1bf9
    push ax                          ; 0x1bfc
    lea ax, word [bp - 0x001c]       ; 0x1bfd
    push ax                          ; 0x1c00
    mov ax, data_002e                ; 0x1c01
    push ax                          ; 0x1c04
    mov ax, 8                        ; 0x1c05
    push ax                          ; 0x1c08
    call loc_05b6                    ; 0x1c09
    add sp, byte 8                   ; 0x1c0c
    cmp byte [bp - 0x001c], 0x41     ; 0x1c0f
    jl short @..local.l65            ; 0x1c13
    cmp byte [bp - 0x001c], 0x5a     ; 0x1c15
    jg short @..local.l65            ; 0x1c19
    cmp byte [bp - 0x001b], 0x3a     ; 0x1c1b
    je short @..local.l66            ; 0x1c1f
@..local.l65:
    mov ax, 1                        ; 0x1c21
    jmp short @..local.l67           ; 0x1c24
@..local.l66:
    mov ax, 0                        ; 0x1c26
@..local.l67:
    mov word [bp - 0x01c2], ax       ; 0x1c29
    cmp ax, strict word 1            ; 0x1c2d
    jne short @..local.l68           ; 0x1c30
    mov ax, 0x1ea4                   ; 0x1c32
    push ax                          ; 0x1c35
    call math_loc_0992               ; 0x1c36
    pop cx                           ; 0x1c39
@..local.l68:
    cmp word [bp - 0x01c2], byte 1   ; 0x1c3a
    je short @..local.l64            ; 0x1c3f
    jmp near @..local.l97            ; 0x1c41
    mov ax, 0x1ecd                   ; 0x1c44
    push ax                          ; 0x1c47
    call math_loc_0992               ; 0x1c48
    pop cx                           ; 0x1c4b
    jmp near @..local.l97            ; 0x1c4c
    mov ax, 0x1ef6                   ; 0x1c4f
    push ax                          ; 0x1c52
    push word [bp - 0x0010]          ; 0x1c53
    mov ax, 9                        ; 0x1c56
    push ax                          ; 0x1c59
    call math_loc_0cd6               ; 0x1c5a
    add sp, byte 6                   ; 0x1c5d
    mov word [bp - 0x0010], ax       ; 0x1c60
    lea ax, word [bp - 0x0054]       ; 0x1c63
    push ax                          ; 0x1c66
    lea ax, word [bp - 0x003e]       ; 0x1c67
    push ax                          ; 0x1c6a
    push word [bp - 0x0010]          ; 0x1c6b
    call loc_10a4                    ; 0x1c6e
    add sp, byte 6                   ; 0x1c71
    mov ax, 0x1efc                   ; 0x1c74
    push ax                          ; 0x1c77
    mov ax, data_002e                ; 0x1c78
    push ax                          ; 0x1c7b
    mov ax, 9                        ; 0x1c7c
    push ax                          ; 0x1c7f
    call loc_040f                    ; 0x1c80
    add sp, byte 6                   ; 0x1c83
    lea ax, word [bp - 0x003e]       ; 0x1c86
    push ax                          ; 0x1c89
    mov ax, data_002e                ; 0x1c8a
    push ax                          ; 0x1c8d
    mov ax, 9                        ; 0x1c8e
    push ax                          ; 0x1c91
    call loc_040f                    ; 0x1c92
    add sp, byte 6                   ; 0x1c95
    lea ax, word [bp - 0x0054]       ; 0x1c98
    push ax                          ; 0x1c9b
    mov ax, 0x3a                     ; 0x1c9c
    push ax                          ; 0x1c9f
    mov ax, 9                        ; 0x1ca0
    push ax                          ; 0x1ca3
    call loc_040f                    ; 0x1ca4
    add sp, byte 6                   ; 0x1ca7
    jmp near @..local.l97            ; 0x1caa
@..local.l69:
    mov ax, data_0002                ; 0x1cad
    push ax                          ; 0x1cb0
    lea ax, word [bp - 0x003e]       ; 0x1cb1
    push ax                          ; 0x1cb4
    mov ax, data_002e                ; 0x1cb5
    push ax                          ; 0x1cb8
    mov ax, 9                        ; 0x1cb9
    push ax                          ; 0x1cbc
    call loc_05b6                    ; 0x1cbd
    add sp, byte 8                   ; 0x1cc0
    cmp byte [bp - 0x003e], 0x41     ; 0x1cc3
    jl short @..local.l70            ; 0x1cc7
    cmp byte [bp - 0x003e], 0x5a     ; 0x1cc9
    jg short @..local.l70            ; 0x1ccd
    cmp byte [bp - 0x003d], 0x3a     ; 0x1ccf
    je short @..local.l71            ; 0x1cd3
@..local.l70:
    mov ax, 1                        ; 0x1cd5
    jmp short @..local.l72           ; 0x1cd8
@..local.l71:
    mov ax, 0                        ; 0x1cda
@..local.l72:
    mov word [bp - 0x01c2], ax       ; 0x1cdd
    cmp ax, strict word 1            ; 0x1ce1
    jne short @..local.l73           ; 0x1ce4
    mov ax, 0x1f1e                   ; 0x1ce6
    push ax                          ; 0x1ce9
    call math_loc_0992               ; 0x1cea
    pop cx                           ; 0x1ced
    jmp short @..local.l74           ; 0x1cee
@..local.l73:
    mov al, byte [bp - 0x003e]       ; 0x1cf0
    cmp al, byte [bp - 0x001c]       ; 0x1cf3
    jne short @..local.l74           ; 0x1cf6
    mov ax, 0x1f47                   ; 0x1cf8
    push ax                          ; 0x1cfb
    call math_loc_0992               ; 0x1cfc
    pop cx                           ; 0x1cff
@..local.l74:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d00
    je short @..local.l69            ; 0x1d05
    jmp near @..local.l97            ; 0x1d07
@..local.l75:
    mov ax, 0x14                     ; 0x1d0a
    push ax                          ; 0x1d0d
    lea ax, word [bp - 0x0054]       ; 0x1d0e
    push ax                          ; 0x1d11
    mov ax, 0x3a                     ; 0x1d12
    push ax                          ; 0x1d15
    mov ax, 9                        ; 0x1d16
    push ax                          ; 0x1d19
    call loc_05b6                    ; 0x1d1a
    add sp, byte 8                   ; 0x1d1d
    cmp word [bp - 0x0010], byte 0   ; 0x1d20
    jne short @..local.l80           ; 0x1d24
    cmp byte [bp - 0x0054], 0x41     ; 0x1d26
    jl short @..local.l76            ; 0x1d2a
    cmp byte [bp - 0x0054], 0x5a     ; 0x1d2c
    jg short @..local.l76            ; 0x1d30
    cmp byte [bp - 0x0053], 0x3a     ; 0x1d32
    jne short @..local.l76           ; 0x1d36
    lea ax, word [bp - 0x0054]       ; 0x1d38
    push ax                          ; 0x1d3b
    call strlen_3                    ; 0x1d3c
    pop cx                           ; 0x1d3f
    cmp ax, strict word 2            ; 0x1d40
    jle short @..local.l77           ; 0x1d43
@..local.l76:
    mov ax, 1                        ; 0x1d45
    jmp short @..local.l78           ; 0x1d48
@..local.l77:
    mov ax, 0                        ; 0x1d4a
@..local.l78:
    mov word [bp - 0x01c2], ax       ; 0x1d4d
    cmp ax, strict word 1            ; 0x1d51
    jne short @..local.l79           ; 0x1d54
    mov ax, 0x1f7c                   ; 0x1d56
    push ax                          ; 0x1d59
    call math_loc_0992               ; 0x1d5a
    pop cx                           ; 0x1d5d
@..local.l79:
    jmp short @..local.l81           ; 0x1d5e
@..local.l80:
    mov word [bp - 0x01c2], 0        ; 0x1d60
@..local.l81:
    cmp word [bp - 0x01c2], byte 1   ; 0x1d66
    je short @..local.l75            ; 0x1d6b
    jmp near @..local.l97            ; 0x1d6d
    push word [bp - 0x01a0]          ; 0x1d70
    mov ax, 0x1b                     ; 0x1d74
    push ax                          ; 0x1d77
    mov ax, 0xb                      ; 0x1d78
    push ax                          ; 0x1d7b
    call math_loc_0d3f               ; 0x1d7c
    add sp, byte 6                   ; 0x1d7f
    mov word [bp - 0x01a0], ax       ; 0x1d82
    jmp near @..local.l97            ; 0x1d86
    push word [bp - 0x01a2]          ; 0x1d89
    mov ax, 0x29                     ; 0x1d8d
    push ax                          ; 0x1d90
    mov ax, 0xb                      ; 0x1d91
    push ax                          ; 0x1d94
    call math_loc_0d3f               ; 0x1d95
    add sp, byte 6                   ; 0x1d98
    mov word [bp - 0x01a2], ax       ; 0x1d9b
    jmp near @..local.l97            ; 0x1d9f
@..local.l82:
    mov ax, 0x14                     ; 0x1da2
    push ax                          ; 0x1da5
    lea ax, word [bp - 0x01b8]       ; 0x1da6
    push ax                          ; 0x1daa
    mov ax, 0x3a                     ; 0x1dab
    push ax                          ; 0x1dae
    mov ax, 0xb                      ; 0x1daf
    push ax                          ; 0x1db2
    call loc_05b6                    ; 0x1db3
    add sp, byte 8                   ; 0x1db6
    lea ax, word [bp - 0x01b8]       ; 0x1db9
    push ax                          ; 0x1dbd
    call strlen_3                    ; 0x1dbe
    pop cx                           ; 0x1dc1
    mov word [bp - 0x02d8], ax       ; 0x1dc2
    cmp ax, strict word 2            ; 0x1dc6
    jl short @..local.l83            ; 0x1dc9
    mov bx, ax                       ; 0x1dcb
    add bx, bp                       ; 0x1dcd
    cmp byte [bx - 0x01b9], 0x3a     ; 0x1dcf
    je short @..local.l84            ; 0x1dd4
@..local.l83:
    mov ax, 1                        ; 0x1dd6
    jmp short @..local.l85           ; 0x1dd9
@..local.l84:
    mov ax, 0                        ; 0x1ddb
@..local.l85:
    mov word [bp - 0x01c2], ax       ; 0x1dde
    cmp ax, strict word 1            ; 0x1de2
    jne short @..local.l86           ; 0x1de5
    mov ax, 0x1fa5                   ; 0x1de7
    push ax                          ; 0x1dea
    call math_loc_0992               ; 0x1deb
    pop cx                           ; 0x1dee
@..local.l86:
    cmp word [bp - 0x01c2], byte 1   ; 0x1def
    je short @..local.l82            ; 0x1df4
    jmp near @..local.l97            ; 0x1df6
    push word [bp - 0x0196]          ; 0x1df9
    call math_loc_0c21               ; 0x1dfd
    pop cx                           ; 0x1e00
    mov word [bp - 0x0196], ax       ; 0x1e01
    jmp near @..local.l97            ; 0x1e05
    mov ax, 0xff9d                   ; 0x1e08
    push ax                          ; 0x1e0b
    mov ax, 0x63                     ; 0x1e0c
    push ax                          ; 0x1e0f
    mov ax, 3                        ; 0x1e10
    push ax                          ; 0x1e13
    mov ax, 0x3e                     ; 0x1e14
    push ax                          ; 0x1e17
    mov ax, 0xf                      ; 0x1e18
    push ax                          ; 0x1e1b
    push word [bp - 0x01ba]          ; 0x1e1c
    call loc_0823                    ; 0x1e20
    add sp, byte 0x0c                ; 0x1e23
    mov word [bp - 0x01ba], ax       ; 0x1e26
    jmp near @..local.l97            ; 0x1e2a
    mov ax, 0xff9d                   ; 0x1e2d
    push ax                          ; 0x1e30
    mov ax, 0x63                     ; 0x1e31
    push ax                          ; 0x1e34
    mov ax, 3                        ; 0x1e35
    push ax                          ; 0x1e38
    mov ax, 0x3e                     ; 0x1e39
    push ax                          ; 0x1e3c
    mov ax, 0x10                     ; 0x1e3d
    push ax                          ; 0x1e40
    push word [bp - 0x01bc]          ; 0x1e41
    call loc_0823                    ; 0x1e45
    add sp, byte 0x0c                ; 0x1e48
    mov word [bp - 0x01bc], ax       ; 0x1e4b
    jmp near @..local.l97            ; 0x1e4f
    push word [bp - 0x019a]          ; 0x1e52
    mov ax, 0x1b                     ; 0x1e56
    push ax                          ; 0x1e59
    mov ax, 0x12                     ; 0x1e5a
    push ax                          ; 0x1e5d
    call math_loc_0d3f               ; 0x1e5e
    add sp, byte 6                   ; 0x1e61
    mov word [bp - 0x019a], ax       ; 0x1e64
    jmp near @..local.l97            ; 0x1e68
    push word [bp - 0x0198]          ; 0x1e6b
    call math_loc_0d12               ; 0x1e6f
    pop cx                           ; 0x1e72
    mov word [bp - 0x0198], ax       ; 0x1e73
    jmp near @..local.l97            ; 0x1e77
    mov al, byte [bp - 0x001c]       ; 0x1e7a
    cmp al, byte [bp - 0x003e]       ; 0x1e7d
    jne short @..local.l87           ; 0x1e80
    mov ax, 0x1fce                   ; 0x1e82
    push ax                          ; 0x1e85
    call math_loc_0992               ; 0x1e86
    pop cx                           ; 0x1e89
    mov ax, 0x200a                   ; 0x1e8a
    push ax                          ; 0x1e8d
    call math_loc_0992               ; 0x1e8e
    pop cx                           ; 0x1e91
    jmp near @..local.l95            ; 0x1e92
@..local.l87:
    mov ax, word [bp - 0x0010]       ; 0x1e95
    jmp short @..local.l92           ; 0x1e98
@..local.l88:
    mov ax, 0x204c                   ; 0x1e9a
    push ax                          ; 0x1e9d
    lea ax, word [bp - 0x0194]       ; 0x1e9e
    push ax                          ; 0x1ea2
    call strlen_2                    ; 0x1ea3
    add sp, byte 4                   ; 0x1ea6
    jmp short @..local.l93           ; 0x1ea9
@..local.l89:
    mov ax, 0x2062                   ; 0x1eab
    push ax                          ; 0x1eae
    lea ax, word [bp - 0x0194]       ; 0x1eaf
    push ax                          ; 0x1eb3
    call strlen_2                    ; 0x1eb4
    add sp, byte 4                   ; 0x1eb7
    jmp short @..local.l93           ; 0x1eba
@..local.l90:
    mov ax, 0x207b                   ; 0x1ebc
    push ax                          ; 0x1ebf
    lea ax, word [bp - 0x0194]       ; 0x1ec0
    push ax                          ; 0x1ec4
    call strlen_2                    ; 0x1ec5
    add sp, byte 4                   ; 0x1ec8
    jmp short @..local.l93           ; 0x1ecb
@..local.l91:
    mov ax, 0x208f                   ; 0x1ecd
    push ax                          ; 0x1ed0
    lea ax, word [bp - 0x0194]       ; 0x1ed1
    push ax                          ; 0x1ed5
    call strlen_2                    ; 0x1ed6
    add sp, byte 4                   ; 0x1ed9
    jmp short @..local.l93           ; 0x1edc
@..local.l92:
    cmp ax, strict word 0            ; 0x1ede
    je short @..local.l88            ; 0x1ee1
    cmp ax, strict word 1            ; 0x1ee3
    je short @..local.l89            ; 0x1ee6
    cmp ax, strict word 2            ; 0x1ee8
    je short @..local.l90            ; 0x1eeb
    cmp ax, strict word 3            ; 0x1eed
    je short @..local.l91            ; 0x1ef0
@..local.l93:
    mov ax, 0x20a8                   ; 0x1ef2
    push ax                          ; 0x1ef5
    mov ax, 0x2648                   ; 0x1ef6
    push ax                          ; 0x1ef9
    call strlen_2                    ; 0x1efa
    add sp, byte 4                   ; 0x1efd
    cmp word [bp - 0x0010], byte 4   ; 0x1f00
    je short @..local.l94            ; 0x1f04
    mov ax, 0x20a9                   ; 0x1f06
    push ax                          ; 0x1f09
    lea ax, word [bp - 0x0144]       ; 0x1f0a
    push ax                          ; 0x1f0e
    call strlen_2                    ; 0x1f0f
    add sp, byte 4                   ; 0x1f12
    lea ax, word [bp - 0x0194]       ; 0x1f15
    push ax                          ; 0x1f19
    lea ax, word [bp - 0x0144]       ; 0x1f1a
    push ax                          ; 0x1f1e
    call strlen                      ; 0x1f1f
    add sp, byte 4                   ; 0x1f22
    mov ax, 0x20c0                   ; 0x1f25
    push ax                          ; 0x1f28
    lea ax, word [bp - 0x0144]       ; 0x1f29
    push ax                          ; 0x1f2d
    call strlen                      ; 0x1f2e
    add sp, byte 4                   ; 0x1f31
    lea ax, word [bp - 0x0144]       ; 0x1f34
    push ax                          ; 0x1f38
    call math_loc_0992               ; 0x1f39
    pop cx                           ; 0x1f3c
    mov ax, 0x20d2                   ; 0x1f3d
    push ax                          ; 0x1f40
    call math_loc_0992               ; 0x1f41
    pop cx                           ; 0x1f44
@..local.l94:
    mov word [bp - 0x01c6], 1        ; 0x1f45
    mov word [bp - 0x01c0], 1        ; 0x1f4b
    mov word [bp - 0x01ca], 1        ; 0x1f51
@..local.l95:
    jmp short @..local.l97           ; 0x1f57
    mov word [bp - 0x01c6], 1        ; 0x1f59
    mov word [bp - 0x01c0], 1        ; 0x1f5f
    mov word [bp - 0x01ca], 0        ; 0x1f65
    jmp short @..local.l97           ; 0x1f6b
    mov word [bp - 0x01c6], 0        ; 0x1f6d
    mov word [bp - 0x01c0], 1        ; 0x1f73
    mov word [bp - 0x01ca], 0        ; 0x1f79
    jmp short @..local.l97           ; 0x1f7f

    db 0xe2, 0x19, 0xf9, 0x19, 0x44, 0x1a, 0x4f, 0x1a, 0xad, 0x1a, 0x0a, 0x1b, 0x70, 0x1b, 0x89, 0x1b
    db 0xa2, 0x1b, 0xf9, 0x1b, 0x08, 0x1c, 0x2d, 0x1c, 0x52, 0x1c, 0x6b, 0x1c, 0x7a, 0x1c, 0x59, 0x1d
    db 0x6d, 0x1d

@..local.l96:
    cmp ax, strict word 0x11         ; 0x1fa3
    jae short @..local.l97           ; 0x1fa6
    xchg bx, ax                      ; 0x1fa8
    shl bx, 1                        ; 0x1fa9
    jmp [cs:bx + 0x1d81]             ; 0x1fab
@..local.l97:
    jmp short loc_1fce               ; 0x1fb0
    jns short loc_1fcd               ; 0x1fb2
    nop                              ; 0x1fb4
    sbb word [bx - 0x41e7], sp       ; 0x1fb5
    sbb si, cx                       ; 0x1fb9
    sbb ax, 0x19d5                   ; 0x1fbb
@..local.l98:

    db 0x2d, 0x08, 0x00, 0x3d, 0x06, 0x00, 0x73, 0x08, 0x93, 0xd1, 0xe3, 0x2e, 0xff, 0xa7, 0xb2, 0x1d

loc_1fce:
    cmp word [bp - 0x01c0], byte 0   ; 0x1fce
    jne short @..local.l99           ; 0x1fd3
    jmp near @..local.l59            ; 0x1fd5
@..local.l99:
    cmp word [bp - 0x01c6], byte 0   ; 0x1fd8
    jne short @..local.l100          ; 0x1fdd
    jmp near @..local.l115           ; 0x1fdf
@..local.l100:
    mov ax, 0x2112                   ; 0x1fe2
    push ax                          ; 0x1fe5
    mov ax, 0x29f0                   ; 0x1fe6
    push ax                          ; 0x1fe9
    call strlen_2                    ; 0x1fea
    add sp, byte 4                   ; 0x1fed
    mov ax, 0x2113                   ; 0x1ff0
    push ax                          ; 0x1ff3
    mov ax, 0x2648                   ; 0x1ff4
    push ax                          ; 0x1ff7
    call strlen_2                    ; 0x1ff8
    add sp, byte 4                   ; 0x1ffb
    lea ax, word [bp - 0x001c]       ; 0x1ffe
    push ax                          ; 0x2001
    lea ax, word [bp - 0x00a4]       ; 0x2002
    push ax                          ; 0x2006
    call strlen_2                    ; 0x2007
    add sp, byte 4                   ; 0x200a
    mov ax, 0x2114                   ; 0x200d
    push ax                          ; 0x2010
    lea ax, word [bp - 0x00a4]       ; 0x2011
    push ax                          ; 0x2015
    call strlen                      ; 0x2016
    add sp, byte 4                   ; 0x2019
    lea ax, word [bp - 0x003e]       ; 0x201c
    push ax                          ; 0x201f
    lea ax, word [bp - 0x00f4]       ; 0x2020
    push ax                          ; 0x2024
    call strlen_2                    ; 0x2025
    add sp, byte 4                   ; 0x2028
    mov ax, 0x2116                   ; 0x202b
    push ax                          ; 0x202e
    lea ax, word [bp - 0x00f4]       ; 0x202f
    push ax                          ; 0x2033
    call strlen                      ; 0x2034
    add sp, byte 4                   ; 0x2037
    cmp word [bp - 0x01ca], byte 0   ; 0x203a
    jne short @..local.l101          ; 0x203f
    cmp word [bp - 0x0010], byte 4   ; 0x2041
    jne short @..local.l101          ; 0x2045
    lea ax, word [bp - 0x0054]       ; 0x2047
    push ax                          ; 0x204a
    lea ax, word [bp - 0x00f4]       ; 0x204b
    push ax                          ; 0x204f
    call strlen                      ; 0x2050
    add sp, byte 4                   ; 0x2053
    lea ax, word [bp - 0x0054]       ; 0x2056
    push ax                          ; 0x2059
    call strlen_3                    ; 0x205a
    pop cx                           ; 0x205d
    cmp ax, strict word 0            ; 0x205e
    jle short @..local.l101          ; 0x2061
    mov ax, 0x2118                   ; 0x2063
    push ax                          ; 0x2066
    lea ax, word [bp - 0x00f4]       ; 0x2067
    push ax                          ; 0x206b
    call strlen                      ; 0x206c
    add sp, byte 4                   ; 0x206f
@..local.l101:
    cmp word [bp - 0x01ca], byte 1   ; 0x2072
    je short @..local.l102           ; 0x2077
    jmp near @..local.l110           ; 0x2079
@..local.l102:
    cmp word [bp - 0x0010], byte 4   ; 0x207c
    je short @..local.l103           ; 0x2080
    jmp near @..local.l110           ; 0x2082
@..local.l103:
    lea ax, word [bp - 0x0054]       ; 0x2085
    push ax                          ; 0x2088
    lea ax, word [bp - 0x00f4]       ; 0x2089
    push ax                          ; 0x208d
    call strlen                      ; 0x208e
    add sp, byte 4                   ; 0x2091
    mov ax, 1                        ; 0x2094
    push ax                          ; 0x2097
    lea ax, word [bp - 0x00f4]       ; 0x2098
    push ax                          ; 0x209c
    lea ax, word [bp - 0x003e]       ; 0x209d
    push ax                          ; 0x20a0
    call loc_11ba                    ; 0x20a1
    add sp, byte 6                   ; 0x20a4
    lea ax, word [bp - 0x0054]       ; 0x20a7
    push ax                          ; 0x20aa
    call strlen_3                    ; 0x20ab
    pop cx                           ; 0x20ae
    cmp ax, strict word 0            ; 0x20af
    jle short @..local.l104          ; 0x20b2
    mov ax, 0x211a                   ; 0x20b4
    push ax                          ; 0x20b7
    lea ax, word [bp - 0x00f4]       ; 0x20b8
    push ax                          ; 0x20bc
    call strlen                      ; 0x20bd
    add sp, byte 4                   ; 0x20c0
@..local.l104:
    mov ax, 0x211c                   ; 0x20c3
    push ax                          ; 0x20c6
    mov ax, 1                        ; 0x20c7
    push ax                          ; 0x20ca
    lea ax, word [bp - 0x00a4]       ; 0x20cb
    push ax                          ; 0x20cf
    lea ax, word [bp - 0x001c]       ; 0x20d0
    push ax                          ; 0x20d3
    call loc_0dda                    ; 0x20d4
    add sp, byte 8                   ; 0x20d7
    mov ax, 0x2132                   ; 0x20da
    push ax                          ; 0x20dd
    mov ax, 0x2127                   ; 0x20de
    push ax                          ; 0x20e1
    lea ax, word [bp - 0x00f4]       ; 0x20e2
    push ax                          ; 0x20e6
    lea ax, word [bp - 0x00a4]       ; 0x20e7
    push ax                          ; 0x20eb
    call loc_0ed8                    ; 0x20ec
    add sp, byte 8                   ; 0x20ef
    cmp word [bp - 0x000e], byte 3   ; 0x20f2
    je short @..local.l105           ; 0x20f6
    jmp near @..local.l106           ; 0x20f8
@..local.l105:
    mov ax, 0x213e                   ; 0x20fb
    push ax                          ; 0x20fe
    mov ax, 0x2133                   ; 0x20ff
    push ax                          ; 0x2102
    lea ax, word [bp - 0x00f4]       ; 0x2103
    push ax                          ; 0x2107
    lea ax, word [bp - 0x00a4]       ; 0x2108
    push ax                          ; 0x210c
    call loc_0ed8                    ; 0x210d
    add sp, byte 8                   ; 0x2110
    mov ax, 0x214a                   ; 0x2113
    push ax                          ; 0x2116
    mov ax, 0x213f                   ; 0x2117
    push ax                          ; 0x211a
    lea ax, word [bp - 0x00f4]       ; 0x211b
    push ax                          ; 0x211f
    lea ax, word [bp - 0x00a4]       ; 0x2120
    push ax                          ; 0x2124
    call loc_0ed8                    ; 0x2125
    add sp, byte 8                   ; 0x2128
    mov ax, 0x2156                   ; 0x212b
    push ax                          ; 0x212e
    mov ax, 0x214b                   ; 0x212f
    push ax                          ; 0x2132
    lea ax, word [bp - 0x00f4]       ; 0x2133
    push ax                          ; 0x2137
    lea ax, word [bp - 0x00a4]       ; 0x2138
    push ax                          ; 0x213c
    call loc_0ed8                    ; 0x213d
    add sp, byte 8                   ; 0x2140
    mov ax, 0x2157                   ; 0x2143
    push ax                          ; 0x2146
    mov ax, data_0002                ; 0x2147
    push ax                          ; 0x214a
    lea ax, word [bp - 0x00a4]       ; 0x214b
    push ax                          ; 0x214f
    lea ax, word [bp - 0x001c]       ; 0x2150
    push ax                          ; 0x2153
    call loc_0dda                    ; 0x2154
    add sp, byte 8                   ; 0x2157
    mov ax, 0x216d                   ; 0x215a
    push ax                          ; 0x215d
    mov ax, 0x2162                   ; 0x215e
    push ax                          ; 0x2161
    lea ax, word [bp - 0x00f4]       ; 0x2162
    push ax                          ; 0x2166
    lea ax, word [bp - 0x00a4]       ; 0x2167
    push ax                          ; 0x216b
    call loc_0ed8                    ; 0x216c
    add sp, byte 8                   ; 0x216f
    mov ax, 0x2179                   ; 0x2172
    push ax                          ; 0x2175
    mov ax, 0x216e                   ; 0x2176
    push ax                          ; 0x2179
    lea ax, word [bp - 0x00f4]       ; 0x217a
    push ax                          ; 0x217e
    lea ax, word [bp - 0x00a4]       ; 0x217f
    push ax                          ; 0x2183
    call loc_0ed8                    ; 0x2184
    add sp, byte 8                   ; 0x2187
    mov ax, 0x2185                   ; 0x218a
    push ax                          ; 0x218d
    mov ax, 0x217a                   ; 0x218e
    push ax                          ; 0x2191
    lea ax, word [bp - 0x00f4]       ; 0x2192
    push ax                          ; 0x2196
    lea ax, word [bp - 0x00a4]       ; 0x2197
    push ax                          ; 0x219b
    call loc_0ed8                    ; 0x219c
    add sp, byte 8                   ; 0x219f
    mov ax, 0x2191                   ; 0x21a2
    push ax                          ; 0x21a5
    mov ax, 0x2186                   ; 0x21a6
    push ax                          ; 0x21a9
    lea ax, word [bp - 0x00f4]       ; 0x21aa
    push ax                          ; 0x21ae
    lea ax, word [bp - 0x00a4]       ; 0x21af
    push ax                          ; 0x21b3
    call loc_0ed8                    ; 0x21b4
    add sp, byte 8                   ; 0x21b7
@..local.l106:
    cmp word [bp - 0x000e], byte 2   ; 0x21ba
    je short @..local.l107           ; 0x21be
    jmp near @..local.l108           ; 0x21c0
@..local.l107:
    mov ax, 0x219d                   ; 0x21c3
    push ax                          ; 0x21c6
    mov ax, 0x2192                   ; 0x21c7
    push ax                          ; 0x21ca
    lea ax, word [bp - 0x00f4]       ; 0x21cb
    push ax                          ; 0x21cf
    lea ax, word [bp - 0x00a4]       ; 0x21d0
    push ax                          ; 0x21d4
    call loc_0ed8                    ; 0x21d5
    add sp, byte 8                   ; 0x21d8
    mov ax, 0x219e                   ; 0x21db
    push ax                          ; 0x21de
    mov ax, data_0002                ; 0x21df
    push ax                          ; 0x21e2
    lea ax, word [bp - 0x00a4]       ; 0x21e3
    push ax                          ; 0x21e7
    lea ax, word [bp - 0x001c]       ; 0x21e8
    push ax                          ; 0x21eb
    call loc_0dda                    ; 0x21ec
    add sp, byte 8                   ; 0x21ef
    mov ax, 0x21b4                   ; 0x21f2
    push ax                          ; 0x21f5
    mov ax, 0x21a9                   ; 0x21f6
    push ax                          ; 0x21f9
    lea ax, word [bp - 0x00f4]       ; 0x21fa
    push ax                          ; 0x21fe
    lea ax, word [bp - 0x00a4]       ; 0x21ff
    push ax                          ; 0x2203
    call loc_0ed8                    ; 0x2204
    add sp, byte 8                   ; 0x2207
    mov ax, 0x21c0                   ; 0x220a
    push ax                          ; 0x220d
    mov ax, 0x21b5                   ; 0x220e
    push ax                          ; 0x2211
    lea ax, word [bp - 0x00f4]       ; 0x2212
    push ax                          ; 0x2216
    lea ax, word [bp - 0x00a4]       ; 0x2217
    push ax                          ; 0x221b
    call loc_0ed8                    ; 0x221c
    add sp, byte 8                   ; 0x221f
    mov ax, 0x21cc                   ; 0x2222
    push ax                          ; 0x2225
    mov ax, 0x21c1                   ; 0x2226
    push ax                          ; 0x2229
    lea ax, word [bp - 0x00f4]       ; 0x222a
    push ax                          ; 0x222e
    lea ax, word [bp - 0x00a4]       ; 0x222f
    push ax                          ; 0x2233
    call loc_0ed8                    ; 0x2234
    add sp, byte 8                   ; 0x2237
    mov ax, 0x21cd                   ; 0x223a
    push ax                          ; 0x223d
    mov ax, 3                        ; 0x223e
    push ax                          ; 0x2241
    lea ax, word [bp - 0x00a4]       ; 0x2242
    push ax                          ; 0x2246
    lea ax, word [bp - 0x001c]       ; 0x2247
    push ax                          ; 0x224a
    call loc_0dda                    ; 0x224b
    add sp, byte 8                   ; 0x224e
    mov ax, 0x21e3                   ; 0x2251
    push ax                          ; 0x2254
    mov ax, 0x21d8                   ; 0x2255
    push ax                          ; 0x2258
    lea ax, word [bp - 0x00f4]       ; 0x2259
    push ax                          ; 0x225d
    lea ax, word [bp - 0x00a4]       ; 0x225e
    push ax                          ; 0x2262
    call loc_0ed8                    ; 0x2263
    add sp, byte 8                   ; 0x2266
    mov ax, 0x21ef                   ; 0x2269
    push ax                          ; 0x226c
    mov ax, 0x21e4                   ; 0x226d
    push ax                          ; 0x2270
    lea ax, word [bp - 0x00f4]       ; 0x2271
    push ax                          ; 0x2275
    lea ax, word [bp - 0x00a4]       ; 0x2276
    push ax                          ; 0x227a
    call loc_0ed8                    ; 0x227b
    add sp, byte 8                   ; 0x227e
    mov ax, 0x21f0                   ; 0x2281
    push ax                          ; 0x2284
    mov ax, data_0004                ; 0x2285
    push ax                          ; 0x2288
    lea ax, word [bp - 0x00a4]       ; 0x2289
    push ax                          ; 0x228d
    lea ax, word [bp - 0x001c]       ; 0x228e
    push ax                          ; 0x2291
    call loc_0dda                    ; 0x2292
    add sp, byte 8                   ; 0x2295
    mov ax, 0x2206                   ; 0x2298
    push ax                          ; 0x229b
    mov ax, 0x21fb                   ; 0x229c
    push ax                          ; 0x229f
    lea ax, word [bp - 0x00f4]       ; 0x22a0
    push ax                          ; 0x22a4
    lea ax, word [bp - 0x00a4]       ; 0x22a5
    push ax                          ; 0x22a9
    call loc_0ed8                    ; 0x22aa
    add sp, byte 8                   ; 0x22ad
@..local.l108:
    cmp word [bp - 0x000e], byte 1   ; 0x22b0
    je short @..local.l109           ; 0x22b4
    jmp near @..local.l110           ; 0x22b6
@..local.l109:
    mov ax, 0x2212                   ; 0x22b9
    push ax                          ; 0x22bc
    mov ax, 0x2207                   ; 0x22bd
    push ax                          ; 0x22c0
    lea ax, word [bp - 0x00f4]       ; 0x22c1
    push ax                          ; 0x22c5
    lea ax, word [bp - 0x00a4]       ; 0x22c6
    push ax                          ; 0x22ca
    call loc_0ed8                    ; 0x22cb
    add sp, byte 8                   ; 0x22ce
    mov ax, 0x221e                   ; 0x22d1
    push ax                          ; 0x22d4
    mov ax, 0x2213                   ; 0x22d5
    push ax                          ; 0x22d8
    lea ax, word [bp - 0x00f4]       ; 0x22d9
    push ax                          ; 0x22dd
    lea ax, word [bp - 0x00a4]       ; 0x22de
    push ax                          ; 0x22e2
    call loc_0ed8                    ; 0x22e3
    add sp, byte 8                   ; 0x22e6
    mov ax, 0x221f                   ; 0x22e9
    push ax                          ; 0x22ec
    mov ax, data_0002                ; 0x22ed
    push ax                          ; 0x22f0
    lea ax, word [bp - 0x00a4]       ; 0x22f1
    push ax                          ; 0x22f5
    lea ax, word [bp - 0x001c]       ; 0x22f6
    push ax                          ; 0x22f9
    call loc_0dda                    ; 0x22fa
    add sp, byte 8                   ; 0x22fd
    mov ax, 0x2235                   ; 0x2300
    push ax                          ; 0x2303
    mov ax, 0x222a                   ; 0x2304
    push ax                          ; 0x2307
    lea ax, word [bp - 0x00f4]       ; 0x2308
    push ax                          ; 0x230c
    lea ax, word [bp - 0x00a4]       ; 0x230d
    push ax                          ; 0x2311
    call loc_0ed8                    ; 0x2312
    add sp, byte 8                   ; 0x2315
    mov ax, 0x2241                   ; 0x2318
    push ax                          ; 0x231b
    mov ax, 0x2236                   ; 0x231c
    push ax                          ; 0x231f
    lea ax, word [bp - 0x00f4]       ; 0x2320
    push ax                          ; 0x2324
    lea ax, word [bp - 0x00a4]       ; 0x2325
    push ax                          ; 0x2329
    call loc_0ed8                    ; 0x232a
    add sp, byte 8                   ; 0x232d
    mov ax, 0x224d                   ; 0x2330
    push ax                          ; 0x2333
    mov ax, 0x2242                   ; 0x2334
    push ax                          ; 0x2337
    lea ax, word [bp - 0x00f4]       ; 0x2338
    push ax                          ; 0x233c
    lea ax, word [bp - 0x00a4]       ; 0x233d
    push ax                          ; 0x2341
    call loc_0ed8                    ; 0x2342
    add sp, byte 8                   ; 0x2345
    mov ax, 0x2259                   ; 0x2348
    push ax                          ; 0x234b
    mov ax, 0x224e                   ; 0x234c
    push ax                          ; 0x234f
    lea ax, word [bp - 0x00f4]       ; 0x2350
    push ax                          ; 0x2354
    lea ax, word [bp - 0x00a4]       ; 0x2355
    push ax                          ; 0x2359
    call loc_0ed8                    ; 0x235a
    add sp, byte 8                   ; 0x235d
    mov ax, 0x225a                   ; 0x2360
    push ax                          ; 0x2363
    mov ax, 3                        ; 0x2364
    push ax                          ; 0x2367
    lea ax, word [bp - 0x00a4]       ; 0x2368
    push ax                          ; 0x236c
    lea ax, word [bp - 0x001c]       ; 0x236d
    push ax                          ; 0x2370
    call loc_0dda                    ; 0x2371
    add sp, byte 8                   ; 0x2374
    mov ax, 0x2270                   ; 0x2377
    push ax                          ; 0x237a
    mov ax, 0x2265                   ; 0x237b
    push ax                          ; 0x237e
    lea ax, word [bp - 0x00f4]       ; 0x237f
    push ax                          ; 0x2383
    lea ax, word [bp - 0x00a4]       ; 0x2384
    push ax                          ; 0x2388
    call loc_0ed8                    ; 0x2389
    add sp, byte 8                   ; 0x238c
@..local.l110:
    mov ax, word [bp - 0x0010]       ; 0x238f
    jmp short @..local.l111          ; 0x2392
loc_2394:
    mov word [bp - 0x022c], data_0005 ; 0x2394
    jmp short @..local.l112          ; 0x239a
loc_239c:
    mov word [bp - 0x022c], data_0002 ; 0x239c
    jmp short @..local.l112          ; 0x23a2
loc_23a4:
    mov word [bp - 0x022c], data_0004 ; 0x23a4
    jmp short @..local.l112          ; 0x23aa
loc_23ac:
    mov word [bp - 0x022c], data_0002 ; 0x23ac
    jmp short @..local.l112          ; 0x23b2
loc_23b4:
    mov word [bp - 0x022c], 1        ; 0x23b4
    jmp short @..local.l112          ; 0x23ba
    db 0x94, 0x21, 0x9c, 0x21, 0xa4, 0x21, 0xac, 0x21, 0xb4, 0x21
@..local.l111:
    cmp ax, strict word 5            ; 0x23c6
    jae short @..local.l112          ; 0x23c9
    xchg bx, ax                      ; 0x23cb
    shl bx, 1                        ; 0x23cc
    jmp [cs:bx + 0x21bc]             ; 0x23ce
@..local.l112:
    cmp word [bp - 0x0010], byte 4   ; 0x23d3
    je short @..local.l113           ; 0x23d7
    mov ax, 0x2271                   ; 0x23d9
    push ax                          ; 0x23dc
    mov ax, 0xffff                   ; 0x23dd
    push ax                          ; 0x23e0
    lea ax, word [bp - 0x00f4]       ; 0x23e1
    push ax                          ; 0x23e5
    lea ax, word [bp - 0x003e]       ; 0x23e6
    push ax                          ; 0x23e9
    call loc_0dda                    ; 0x23ea
    add sp, byte 8                   ; 0x23ed
@..local.l113:
    push word [bp - 0x01c8]          ; 0x23f0
    push word [bp - 0x01bc]          ; 0x23f4
    push word [bp - 0x01ba]          ; 0x23f8
    lea ax, word [bp - 0x01b8]       ; 0x23fc
    push ax                          ; 0x2400
    push word [bp - 0x01a2]          ; 0x2401
    push word [bp - 0x01a0]          ; 0x2405
    push word [bp - 0x019a]          ; 0x2409
    push word [bp - 0x0198]          ; 0x240d
    push word [bp - 0x0196]          ; 0x2411
    push word [bp - 0x022c]          ; 0x2415
    lea ax, word [bp - 0x0054]       ; 0x2419
    push ax                          ; 0x241c
    lea ax, word [bp - 0x00f4]       ; 0x241d
    push ax                          ; 0x2421
    lea ax, word [bp - 0x003e]       ; 0x2422
    push ax                          ; 0x2425
    call loc_0a0f                    ; 0x2426
    add sp, byte 0x1a                ; 0x2429
    test ax, ax                      ; 0x242c
    je short @..local.l114           ; 0x242e
    mov ax, 0x227e                   ; 0x2430
    push ax                          ; 0x2433
    call math_loc_0992               ; 0x2434
    pop cx                           ; 0x2437
    jmp short @..local.l115          ; 0x2438
@..local.l114:
    mov ax, 0x22af                   ; 0x243a
    push ax                          ; 0x243d
    call math_loc_0992               ; 0x243e
    pop cx                           ; 0x2441
    mov ax, 0x22e3                   ; 0x2442
    push ax                          ; 0x2445
    call math_loc_0992               ; 0x2446
    pop cx                           ; 0x2449
@..local.l115:
    mov ax, 3                        ; 0x244a
    push ax                          ; 0x244d
    call loc_06f1                    ; 0x244e
    pop cx                           ; 0x2451
    mov ax, 0                        ; 0x2452
    push ax                          ; 0x2455
    call dos_file_loc_380b           ; 0x2456
    pop cx                           ; 0x2459
    mov sp, bp                       ; 0x245a
    pop bp                           ; 0x245c
    ret                              ; 0x245d
io_loc_245e:
    push bp                          ; 0x245e
    mov bp, sp                       ; 0x245f
    sub sp, byte 4                   ; 0x2461
    push ds                          ; 0x2464
    push es                          ; 0x2465
    push si                          ; 0x2466
    push di                          ; 0x2467
    call bios_video_loc_247a         ; 0x2468
    call bios_video_loc_2501         ; 0x246b
    mov ax, word [bp - 0x0002]       ; 0x246e
    pop di                           ; 0x2471
    pop si                           ; 0x2472
    pop es                           ; 0x2473
    pop ds                           ; 0x2474
    mov sp, bp                       ; 0x2475
    pop bp                           ; 0x2477
    ret                              ; 0x2478
    db 0x00
bios_video_loc_247a:
    mov ah, 0xf                      ; 0x247a
    int 0x10 ; BIOS video: get video mode
    mov byte [cs:data_2279], al      ; 0x247e
    mov ax, 0                        ; 0x2482
    push ds                          ; 0x2485
    mov ds, ax                       ; 0x2486
    mov bx, 0x487                    ; 0x2488
    mov al, byte [bx]                ; 0x248b
    pop ds                           ; 0x248d
    or al, al                        ; 0x248e
    je short @..bios_video_loc_247a.l1 ; 0x2490
    jmp near @..local.l119           ; 0x2492
@..bios_video_loc_247a.l1:
    cmp byte [cs:data_2279], 7       ; 0x2495
    jne short @..bios_video_loc_247a.l2 ; 0x249b
    mov dx, 0x3d4                    ; 0x249d
    mov al, 0xf                      ; 0x24a0
    out dx, al                       ; 0x24a2
    inc dx                           ; 0x24a3
    in al, dx                        ; 0x24a4
    xchg al, ah                      ; 0x24a5
    mov al, 0x64                     ; 0x24a7
    out dx, al                       ; 0x24a9
    nop                              ; 0x24aa
    nop                              ; 0x24ab
    nop                              ; 0x24ac
    in al, dx                        ; 0x24ad
    cmp al, 0x64                     ; 0x24ae
    jne short @..local.l116          ; 0x24b0
    xchg al, ah                      ; 0x24b2
    out dx, al                       ; 0x24b4
@..bios_video_loc_247a.l2:
    mov word [bp - 0x0002], data_0004 ; 0x24b5
    ret                              ; 0x24ba
@..local.l116:
    mov dx, 0x3ba                    ; 0x24bb
    in al, dx                        ; 0x24be
    and al, data_0080                ; 0x24bf
    xchg al, ah                      ; 0x24c1
    mov cx, 0x1388                   ; 0x24c3
@..local.l117:
    in al, dx                        ; 0x24c6
    and al, data_0080                ; 0x24c7
    cmp al, ah                       ; 0x24c9
    jne short @..local.l118          ; 0x24cb
    loop @..local.l117               ; 0x24cd
    mov word [bp - 0x0002], 0        ; 0x24cf
    ret                              ; 0x24d4
@..local.l118:
    mov word [bp - 0x0002], 8        ; 0x24d5
    ret                              ; 0x24da
@..local.l119:
    mov word [bp - 0x0002], data_0006 ; 0x24db
    xor bx, bx                       ; 0x24e0
    mov ax, 0x1a00                   ; 0x24e2
    int 0x10 ; BIOS video
    cmp bl, 7                        ; 0x24e7
    je short @..local.l120           ; 0x24ea
    cmp bh, 7                        ; 0x24ec
    je short @..local.l120           ; 0x24ef
    cmp bl, 8                        ; 0x24f1
    je short @..local.l120           ; 0x24f4
    cmp bh, 8                        ; 0x24f6
    jne short @..local.l121          ; 0x24f9
@..local.l120:
    or word [bp - 0x0002], 1         ; 0x24fb
@..local.l121:
    ret                              ; 0x2500
bios_video_loc_2501:
    mov ax, 0x3533                   ; 0x2501
    int 0x21 ; DOS function dispatcher
    mov ax, es                       ; 0x2506
    or ax, bx                        ; 0x2508
    je short @..bios_video_loc_2501.l1 ; 0x250a
    cmp byte [es:bx], 0xcf           ; 0x250c
    je short @..bios_video_loc_2501.l1 ; 0x2510
    mov ax, 0                        ; 0x2512
    int 0x33 ; BIOS mouse
    or al, al                        ; 0x2517
    je short @..bios_video_loc_2501.l1 ; 0x2519
    or word [bp - 0x0002], strict word 0x1000 ; 0x251b
@..bios_video_loc_2501.l1:
    ret                              ; 0x2520
%include "vinstall/dos_con_in_noecho.asm"

bios_video_loc_252e:
    push bp                          ; 0x252e
    mov bp, sp                       ; 0x252f
    push di                          ; 0x2531
    push si                          ; 0x2532
    mov ax, 0x600                    ; 0x2533
    mov bh, byte [data_2647]         ; 0x2536
    xor cx, cx                       ; 0x253a
    mov dx, 0x184f                   ; 0x253c
    push bp                          ; 0x253f
    int 0x10 ; BIOS video
    pop bp                           ; 0x2542
    mov ah, data_0002                ; 0x2543
    xor dx, dx                       ; 0x2545
    mov bx, dx                       ; 0x2547
    int 0x10 ; BIOS video: set cursor position
    pop si                           ; 0x254b
    pop di                           ; 0x254c
    mov sp, bp                       ; 0x254d
    pop bp                           ; 0x254f
    ret                              ; 0x2550
bios_video_loc_2551:
    push bp                          ; 0x2551
    mov bp, sp                       ; 0x2552
    push di                          ; 0x2554
    push si                          ; 0x2555
    mov bx, word [bp + 0x4]          ; 0x2556
    mov dx, word [bp + 0x6]          ; 0x2559
    mov dh, bl                       ; 0x255c
    mov bh, 0                        ; 0x255e
    mov ah, data_0002                ; 0x2560
    int 0x10 ; BIOS video: set cursor position
    pop si                           ; 0x2564
    pop di                           ; 0x2565
    mov sp, bp                       ; 0x2566
    pop bp                           ; 0x2568
    ret                              ; 0x2569

    db 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x5e, 0x04, 0x8b, 0x56, 0x06, 0x53, 0x52, 0x8a, 0xf3, 0xb7
    db 0x00, 0xb4, 0x02, 0xcd, 0x10, 0xb8, 0x50, 0x00, 0x5b, 0x2b, 0xc3, 0x8b, 0xf0, 0xb8, 0x18, 0x00
    db 0x5b, 0x2b, 0xc3, 0xb3, 0x50, 0xf6, 0xeb, 0x03, 0xc6, 0x8b, 0xc8, 0xb8, 0x20, 0x09, 0x8a, 0x1e
    db 0x47, 0x26, 0xb7, 0x00, 0xcd, 0x10, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x57
    db 0x56, 0x8b, 0x5e, 0x04, 0x8b, 0x56, 0x06, 0x52, 0x8a, 0xf3, 0xb7, 0x00, 0xb4, 0x02, 0xcd, 0x10
    db 0xb8, 0x50, 0x00, 0x5b, 0x2b, 0xc3, 0x8b, 0xc8, 0xb8, 0x20, 0x09, 0x8a, 0x1e, 0x47, 0x26, 0xb7
    db 0x00, 0xcd, 0x10, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

bios_video_loc_25d3:
    push bp                          ; 0x25d3
    mov bp, sp                       ; 0x25d4
    push di                          ; 0x25d6
    push si                          ; 0x25d7
    mov bx, word [bp + 0x4]          ; 0x25d8
@..bios_video_loc_25d3.l1:
    mov al, byte [bx]                ; 0x25db
    or al, al                        ; 0x25dd
    je short @..bios_video_loc_25d3.l4 ; 0x25df
    push bx                          ; 0x25e1
    cmp al, 0xa                      ; 0x25e2
    jne short @..bios_video_loc_25d3.l2 ; 0x25e4
    mov ah, 3                        ; 0x25e6
    mov bh, 0                        ; 0x25e8
    int 0x10 ; BIOS video: get cursor position
    mov dl, 0                        ; 0x25ec
    inc dh                           ; 0x25ee
    mov ah, 3                        ; 0x25f0
    mov bh, 0                        ; 0x25f2
    mov ah, data_0002                ; 0x25f4
    int 0x10 ; BIOS video: set cursor position
    jmp short @..bios_video_loc_25d3.l3 ; 0x25f8
@..bios_video_loc_25d3.l2:
    mov ah, 9                        ; 0x25fa
    mov bl, byte [data_2645]         ; 0x25fc
    mov bh, 0                        ; 0x2600
    mov cx, 1                        ; 0x2602
    int 0x10 ; BIOS video: write char/attribute
    mov ah, 3                        ; 0x2607
    mov bh, 0                        ; 0x2609
    int 0x10 ; BIOS video: get cursor position
    inc dl                           ; 0x260d
    mov ah, 3                        ; 0x260f
    mov bh, 0                        ; 0x2611
    mov ah, data_0002                ; 0x2613
    int 0x10 ; BIOS video: set cursor position
@..bios_video_loc_25d3.l3:
    pop bx                           ; 0x2617
    inc bx                           ; 0x2618
    jmp short @..bios_video_loc_25d3.l1 ; 0x2619
@..bios_video_loc_25d3.l4:
    pop si                           ; 0x261b
    pop di                           ; 0x261c
    mov sp, bp                       ; 0x261d
    pop bp                           ; 0x261f
    ret                              ; 0x2620
bios_video_loc_2621:
    push bp                          ; 0x2621
    mov bp, sp                       ; 0x2622
    push di                          ; 0x2624
    push si                          ; 0x2625
    mov bx, word [bp + 0x4]          ; 0x2626
@..bios_video_loc_2621.l1:
    mov al, byte [bx]                ; 0x2629
    or al, al                        ; 0x262b
    je short @..bios_video_loc_2621.l4 ; 0x262d
    push bx                          ; 0x262f
    cmp al, 0xa                      ; 0x2630
    jne short @..bios_video_loc_2621.l2 ; 0x2632
    mov ah, 3                        ; 0x2634
    mov bh, 0                        ; 0x2636
    int 0x10 ; BIOS video: get cursor position
    mov dl, 0                        ; 0x263a
    inc dh                           ; 0x263c
    mov ah, 3                        ; 0x263e
    mov bh, 0                        ; 0x2640
    mov ah, data_0002                ; 0x2642
    int 0x10 ; BIOS video: set cursor position
    jmp short @..bios_video_loc_2621.l3 ; 0x2646
@..bios_video_loc_2621.l2:
    mov ah, 9                        ; 0x2648
    mov bl, byte [data_2644]         ; 0x264a
    mov bh, 0                        ; 0x264e
    mov cx, 1                        ; 0x2650
    int 0x10 ; BIOS video: write char/attribute
    mov ah, 3                        ; 0x2655
    mov bh, 0                        ; 0x2657
    int 0x10 ; BIOS video: get cursor position
    inc dl                           ; 0x265b
    mov ah, 3                        ; 0x265d
    mov bh, 0                        ; 0x265f
    mov ah, data_0002                ; 0x2661
    int 0x10 ; BIOS video: set cursor position
@..bios_video_loc_2621.l3:
    pop bx                           ; 0x2665
    inc bx                           ; 0x2666
    jmp short @..bios_video_loc_2621.l1 ; 0x2667
@..bios_video_loc_2621.l4:
    pop si                           ; 0x2669
    pop di                           ; 0x266a
    mov sp, bp                       ; 0x266b
    pop bp                           ; 0x266d
    ret                              ; 0x266e

    db 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x5e, 0x04, 0x8a, 0x07, 0x0a, 0xc0, 0x74, 0x3a, 0x53, 0x3c
    db 0x0a, 0x75, 0x14, 0xb4, 0x03, 0xb7, 0x00, 0xcd, 0x10, 0xb2, 0x00, 0xfe, 0xc6, 0xb4, 0x03, 0xb7
    db 0x00, 0xb4, 0x02, 0xcd, 0x10, 0xeb, 0x1d, 0xb4, 0x09, 0x8a, 0x1e, 0x46, 0x26, 0xb7, 0x00, 0xb9
    db 0x01, 0x00, 0xcd, 0x10, 0xb4, 0x03, 0xb7, 0x00, 0xcd, 0x10, 0xfe, 0xc2, 0xb4, 0x03, 0xb7, 0x00
    db 0xb4, 0x02, 0xcd, 0x10, 0x5b, 0x43, 0xeb, 0xc0, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b
    db 0xec, 0x83, 0xec, 0x02, 0x57, 0x56, 0x8b, 0x76, 0x0a, 0x8b, 0x7e, 0x08, 0x8b, 0x46, 0x06, 0x89
    db 0x46, 0xfe, 0xb4, 0x0c, 0x8a, 0x46, 0x0c, 0x33, 0xdb, 0x8b, 0x4e, 0xfe, 0x8b, 0x56, 0x04, 0xcd
    db 0x10, 0xff, 0x46, 0xfe, 0x3b, 0x76, 0xfe, 0x73, 0xe9, 0xff, 0x46, 0x04, 0x3b, 0x7e, 0x04, 0x73
    db 0xdb, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x46, 0x04, 0xba
    db 0x01, 0x00, 0xcd, 0x17, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

%include "vinstall/bios_kbd_check.asm"

bios_video_loc_2720:
    push bp                          ; 0x2720
    mov bp, sp                       ; 0x2721
    push di                          ; 0x2723
    push si                          ; 0x2724
    mov bh, 0                        ; 0x2725
    mov ah, 3                        ; 0x2727
    int 0x10 ; BIOS video: get cursor position
    mov ax, dx                       ; 0x272b
    pop si                           ; 0x272d
    pop di                           ; 0x272e
    mov sp, bp                       ; 0x272f
    pop bp                           ; 0x2731
    ret                              ; 0x2732
bios_video_loc_2733:
    push bp                          ; 0x2733
    mov bp, sp                       ; 0x2734
    push di                          ; 0x2736
    push si                          ; 0x2737
    mov dx, word [bp + 0x4]          ; 0x2738
    mov bh, 0                        ; 0x273b
    mov ah, data_0002                ; 0x273d
    int 0x10 ; BIOS video: set cursor position
    pop si                           ; 0x2741
    pop di                           ; 0x2742
    mov sp, bp                       ; 0x2743
    pop bp                           ; 0x2745
    ret                              ; 0x2746

    db 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x5e, 0x0c, 0xff, 0x4e, 0x04, 0xff, 0x4e, 0x06, 0x8b, 0x56
    db 0x06, 0x8b, 0x46, 0x04, 0x8a, 0xf0, 0x52, 0x89, 0x56, 0x04, 0x89, 0x17, 0x83, 0xc3, 0x02, 0x8b
    db 0x4e, 0x0a, 0x89, 0x0f, 0x83, 0xc3, 0x02, 0x8b, 0x4e, 0x08, 0x89, 0x0f, 0x83, 0xc3, 0x02, 0x51
    db 0x8b, 0xf1, 0x8b, 0xfb, 0x8b, 0x56, 0x04, 0xff, 0x46, 0x04, 0x33, 0xdb, 0xb4, 0x02, 0xcd, 0x10
    db 0xb4, 0x08, 0xcd, 0x10, 0x8b, 0xdf, 0x89, 0x07, 0x83, 0xc3, 0x02, 0x8b, 0xce, 0xe2, 0xe1, 0x59
    db 0x5a, 0xfe, 0xc6, 0xff, 0x4e, 0x0a, 0x74, 0x04, 0x52, 0x51, 0xeb, 0xd4, 0x5e, 0x5f, 0x8b, 0xe5
    db 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x83, 0xec, 0x02, 0x57, 0x56, 0x8b, 0x5e, 0x04, 0x8b, 0x17, 0x52
    db 0x89, 0x56, 0x04, 0x83, 0xc3, 0x02, 0x8b, 0x0f, 0x89, 0x4e, 0xfe, 0x83, 0xc3, 0x02, 0x8b, 0x0f
    db 0x83, 0xc3, 0x02, 0x51, 0x8b, 0xf1, 0x8b, 0xfb, 0x8b, 0x56, 0x04, 0xff, 0x46, 0x04, 0x33, 0xdb
    db 0xb4, 0x02, 0xcd, 0x10, 0x8b, 0xdf, 0x8b, 0x07, 0x8a, 0xdc, 0xb7, 0x00, 0xb9, 0x01, 0x00, 0xb4
    db 0x09, 0xcd, 0x10, 0x8b, 0xdf, 0x83, 0xc3, 0x02, 0x8b, 0xce, 0xe2, 0xd8, 0x59, 0x5a, 0xfe, 0xc6
    db 0xff, 0x4e, 0xfe, 0x74, 0x04, 0x52, 0x51, 0xeb, 0xcb, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

leaf_loc_2806:
    push bp                          ; 0x2806
    mov bp, sp                       ; 0x2807
    add sp, byte 0xfe                ; 0x2809
    push di                          ; 0x280c
    push si                          ; 0x280d
    mov si, word [bp + 0x4]          ; 0x280e
@..leaf_loc_2806.l1:
    cmp byte [si], 0x20              ; 0x2811
    je short @..leaf_loc_2806.l2     ; 0x2814
    cmp byte [si], 9                 ; 0x2816
    jne short @..leaf_loc_2806.l3    ; 0x2819
@..leaf_loc_2806.l2:
    inc si                           ; 0x281b
    jmp short @..leaf_loc_2806.l1    ; 0x281c
@..leaf_loc_2806.l3:
    mov word [bp - 0x0002], 0        ; 0x281e
    cmp byte [si], 0x2d              ; 0x2823
    jne short @..leaf_loc_2806.l4    ; 0x2826
    mov word [bp - 0x0002], 1        ; 0x2828
    inc si                           ; 0x282d
    jmp short @..leaf_loc_2806.l5    ; 0x282e
@..leaf_loc_2806.l4:
    cmp byte [si], 0x2b              ; 0x2830
    jne short @..leaf_loc_2806.l5    ; 0x2833
    inc si                           ; 0x2835
@..leaf_loc_2806.l5:
    mov di, 0                        ; 0x2836
    jmp short @..leaf_loc_2806.l7    ; 0x2839
@..leaf_loc_2806.l6:
    mov ax, di                       ; 0x283b
    mov dx, ax                       ; 0x283d
    shl ax, 1                        ; 0x283f
    shl ax, 1                        ; 0x2841
    add ax, dx                       ; 0x2843
    shl ax, 1                        ; 0x2845
    push ax                          ; 0x2847
    mov bx, si                       ; 0x2848
    inc si                           ; 0x284a
    mov al, byte [bx]                ; 0x284b
    cbw                              ; 0x284d
    mov cx, ax                       ; 0x284e
    pop ax                           ; 0x2850
    add ax, cx                       ; 0x2851
    add ax, strict word 0xffd0       ; 0x2853
    mov di, ax                       ; 0x2856
@..leaf_loc_2806.l7:
    mov al, byte [si]                ; 0x2858
    cbw                              ; 0x285a
    mov bx, ax                       ; 0x285b
    mov al, byte [bx + 0x2453]       ; 0x285d
    cbw                              ; 0x2861
    test ax, data_0004               ; 0x2862
    jne short @..leaf_loc_2806.l6    ; 0x2865
    mov ax, di                       ; 0x2867
    cmp word [bp - 0x0002], byte 0   ; 0x2869
    je short @..leaf_loc_2806.l8     ; 0x286d
    neg ax                           ; 0x286f
@..leaf_loc_2806.l8:
    pop si                           ; 0x2871
    pop di                           ; 0x2872
    mov sp, bp                       ; 0x2873
    pop bp                           ; 0x2875
    ret                              ; 0x2876

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xfc, 0x57, 0x56, 0x8b, 0x76, 0x04, 0x80, 0x3c, 0x20, 0x74, 0x05
    db 0x80, 0x3c, 0x09, 0x75, 0x03, 0x46, 0xeb, 0xf3, 0xbf, 0x00, 0x00, 0x80, 0x3c, 0x2d, 0x75, 0x06
    db 0xbf, 0x01, 0x00, 0x46, 0xeb, 0x06, 0x80, 0x3c, 0x2b, 0x75, 0x01, 0x46, 0xc7, 0x46, 0xfe, 0x00
    db 0x00, 0xc7, 0x46, 0xfc, 0x00, 0x00, 0xeb, 0x33, 0x8b, 0x46, 0xfc, 0x8b, 0x56, 0xfe, 0x50, 0x92
    db 0xbb, 0x0a, 0x00, 0xf7, 0xe3, 0x8b, 0xc8, 0x58, 0xf7, 0xe3, 0x03, 0xd1, 0x50, 0x52, 0x8b, 0xde
    db 0x46, 0x8a, 0x07, 0x98, 0x99, 0x8b, 0xc8, 0x8b, 0xda, 0x5a, 0x58, 0x03, 0xc1, 0x13, 0xd3, 0x05
    db 0xd0, 0xff, 0x83, 0xd2, 0xff, 0x89, 0x56, 0xfe, 0x89, 0x46, 0xfc, 0x8a, 0x04, 0x98, 0x8b, 0xd8
    db 0x8a, 0x87, 0x53, 0x24, 0x98, 0xa9, 0x04, 0x00, 0x75, 0xbe, 0x8b, 0x46, 0xfc, 0x8b, 0x56, 0xfe
    db 0x85, 0xff, 0x74, 0x07, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d
    db 0xc3

loc_2908:
    push bp                          ; 0x2908
    mov bp, sp                       ; 0x2909
    lea ax, word [bp + 0x6]          ; 0x290b
    push ax                          ; 0x290e
    push word [bp + 0x4]             ; 0x290f
    call loc_291c                    ; 0x2912
    add sp, byte 4                   ; 0x2915
    mov sp, bp                       ; 0x2918
    pop bp                           ; 0x291a
    ret                              ; 0x291b
loc_291c:
    push bp                          ; 0x291c
    mov bp, sp                       ; 0x291d
    add sp, strict word 0xff5c       ; 0x291f
    push di                          ; 0x2923
    push si                          ; 0x2924
    lea si, word [bp - 0x0083]       ; 0x2925
    mov word [bp - 0x0002], 1        ; 0x2929
    lea ax, word [bp - 0x0094]       ; 0x292e
    push ax                          ; 0x2932
    mov ax, 0x230a                   ; 0x2933
    push ax                          ; 0x2936
    call dos_loc_29d9                ; 0x2937
    add sp, byte 4                   ; 0x293a
    lea ax, word [bp - 0x00a4]       ; 0x293d
    push ax                          ; 0x2941
    mov ax, 0x230c                   ; 0x2942
    push ax                          ; 0x2945
    call dos_loc_29d9                ; 0x2946
    add sp, byte 4                   ; 0x2949
    mov bx, word [bp + 0x6]          ; 0x294c
    cmp word [bx], byte 0            ; 0x294f
    je short @..local.l127           ; 0x2952
    add word [bp + 0x6], byte 2      ; 0x2954
@..local.l122:
    mov bx, word [bp + 0x6]          ; 0x2958
    add word [bp + 0x6], byte 2      ; 0x295b
    mov di, word [bx]                ; 0x295f
    test di, di                      ; 0x2961
    je short @..local.l127           ; 0x2963
    cmp word [bp - 0x0002], byte 1   ; 0x2965
    jne short @..local.l123          ; 0x2969
    lea ax, word [bp - 0x0094]       ; 0x296b
    push ax                          ; 0x296f
    push di                          ; 0x2970
    call dos_loc_29d9                ; 0x2971
    add sp, byte 4                   ; 0x2974
    jmp short @..local.l124          ; 0x2977
@..local.l123:
    cmp word [bp - 0x0002], byte 2   ; 0x2979
    jne short @..local.l124          ; 0x297d
    lea ax, word [bp - 0x00a4]       ; 0x297f
    push ax                          ; 0x2983
    push di                          ; 0x2984
    call dos_loc_29d9                ; 0x2985
    add sp, byte 4                   ; 0x2988
@..local.l124:
    mov byte [si], 0x20              ; 0x298b
    inc si                           ; 0x298e
@..local.l125:
    cmp byte [di], 0                 ; 0x298f
    je short @..local.l126           ; 0x2992
    lea ax, word [bp - 0x0005]       ; 0x2994
    cmp ax, si                       ; 0x2997
    jbe short @..local.l127          ; 0x2999
    mov al, byte [di]                ; 0x299b
    mov byte [si], al                ; 0x299d
    inc di                           ; 0x299f
    inc si                           ; 0x29a0
    jmp short @..local.l125          ; 0x29a1
@..local.l126:
    inc word [bp - 0x0002]           ; 0x29a3
    jmp short @..local.l122          ; 0x29a6
@..local.l127:
    mov ax, si                       ; 0x29a8
    lea cx, word [bp - 0x0083]       ; 0x29aa
    sub ax, cx                       ; 0x29ae
    mov byte [bp - 0x0084], al       ; 0x29b0
    mov byte [si], 0xd               ; 0x29b4
    lea ax, word [bp - 0x00a4]       ; 0x29b7
    push ax                          ; 0x29bb
    lea ax, word [bp - 0x0094]       ; 0x29bc
    push ax                          ; 0x29c0
    lea ax, word [bp - 0x0084]       ; 0x29c1
    push ax                          ; 0x29c5
    mov ax, 0                        ; 0x29c6
    push ax                          ; 0x29c9
    push word [bp + 0x4]             ; 0x29ca
    call dos_proc_loc_2a27           ; 0x29cd
    add sp, byte 0x0a                ; 0x29d0
    pop si                           ; 0x29d3
    pop di                           ; 0x29d4
    mov sp, bp                       ; 0x29d5
    pop bp                           ; 0x29d7
    ret                              ; 0x29d8
dos_loc_29d9:
    push bp                          ; 0x29d9
    mov bp, sp                       ; 0x29da
    push di                          ; 0x29dc
    push si                          ; 0x29dd
    mov di, ds                       ; 0x29de
    mov es, di                       ; 0x29e0
    mov si, word [bp + 0x4]          ; 0x29e2
    mov di, word [bp + 0x6]          ; 0x29e5
    mov ax, 0x2900                   ; 0x29e8
    int 0x21 ; DOS function dispatcher
    and ax, 0xff                     ; 0x29ed
    cmp byte [es:di + 0x1], 0x20     ; 0x29f0
    jne short @..dos_loc_29d9.l1     ; 0x29f5
    mov ax, 0xffff                   ; 0x29f7
@..dos_loc_29d9.l1:
    pop si                           ; 0x29fa
    pop di                           ; 0x29fb
    pop bp                           ; 0x29fc
    ret                              ; 0x29fd
dos_loc_29fe:
    push bp                          ; 0x29fe
    mov bp, sp                       ; 0x29ff
    mov ah, 0x39                     ; 0x2a01
@..dos_loc_29fe.l1:
    mov dx, word [bp + 0x4]          ; 0x2a03
    int 0x21 ; DOS create directory
    mov ax, 0                        ; 0x2a08
    jae short @..dos_loc_29fe.l2     ; 0x2a0b
    mov word [data_24d6], ax         ; 0x2a0d
    mov ax, 0xffff                   ; 0x2a10
@..dos_loc_29fe.l2:
    pop bp                           ; 0x2a13
    ret                              ; 0x2a14
    push bp                          ; 0x2a15
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x3a                     ; 0x2a18
    jmp short @..dos_loc_29fe.l1     ; 0x2a1a
leaf_loc_2a1c:
    push bp                          ; 0x2a1c
    mov bp, sp                       ; 0x2a1d
    mov ah, 0x3b                     ; 0x2a1f
    jmp short @..dos_loc_29fe.l1     ; 0x2a21
    times 4 db 0
dos_proc_loc_2a27:
    push bp                          ; 0x2a27
    mov bp, sp                       ; 0x2a28
    push si                          ; 0x2a2a
    push di                          ; 0x2a2b
    pushf                            ; 0x2a2c
    push word [data_0030]            ; 0x2a2d
    push word [data_002e]            ; 0x2a31
    push ds                          ; 0x2a35
    push es                          ; 0x2a36
    mov word [cs:data_2823], ss      ; 0x2a37
    mov word [cs:data_2825], sp      ; 0x2a3c
    mov ax, word [bp + 0x6]          ; 0x2a41
    mov word [data_230e], ax         ; 0x2a44
    mov ax, ds                       ; 0x2a47
    mov es, ax                       ; 0x2a49
    mov ax, word [bp + 0x8]          ; 0x2a4b
    mov word [data_2310], ax         ; 0x2a4e
    mov word [data_2312], es         ; 0x2a51
    mov ax, word [bp + 0xa]          ; 0x2a55
    mov word [data_2314], ax         ; 0x2a58
    mov word [data_2316], es         ; 0x2a5b
    mov ax, word [bp + 0xc]          ; 0x2a5f
    mov word [data_2318], ax         ; 0x2a62
    mov word [data_231a], es         ; 0x2a65
    mov ax, ds                       ; 0x2a69
    mov es, ax                       ; 0x2a6b
    mov bx, data_230e                ; 0x2a6d
    mov dx, word [bp + 0x4]          ; 0x2a70
    mov ax, 0x4b00                   ; 0x2a73
    int 0x21 ; DOS function dispatcher
    mov ss, word [cs:data_2823]      ; 0x2a78
    mov sp, word [cs:data_2825]      ; 0x2a7d
    pop es                           ; 0x2a82
    pop ds                           ; 0x2a83
    jae short @..leaf_loc_2a1c.l1    ; 0x2a84
    mov word [data_24d6], ax         ; 0x2a86
    mov ax, 0xffff                   ; 0x2a89
    jmp short @..leaf_loc_2a1c.l2    ; 0x2a8c
@..leaf_loc_2a1c.l1:
    sub ax, ax                       ; 0x2a8e
@..leaf_loc_2a1c.l2:
    pop word [data_002e]             ; 0x2a90
    pop word [data_0030]             ; 0x2a94
    popf                             ; 0x2a98
    pop di                           ; 0x2a99
    pop si                           ; 0x2a9a
    pop bp                           ; 0x2a9b
    ret                              ; 0x2a9c
dos_proc_loc_2a9d:
    mov ah, 0x4d                     ; 0x2a9d
    int 0x21 ; DOS get return code
    jae short @..dos_proc_loc_2a9d.l1 ; 0x2aa1
    neg ax                           ; 0x2aa3
@..dos_proc_loc_2a9d.l1:
    ret                              ; 0x2aa5
%include "vinstall/strlen.asm"

strlen_2:
    push bp                          ; 0x2add
    mov bp, sp                       ; 0x2ade
    cld                              ; 0x2ae0
    push si                          ; 0x2ae1
    push di                          ; 0x2ae2
    mov di, ds                       ; 0x2ae3
    mov es, di                       ; 0x2ae5
    mov di, word [bp + 0x6]          ; 0x2ae7
    mov cx, 0xffff                   ; 0x2aea
    mov al, 0                        ; 0x2aed
    repne scasb                      ; 0x2aef
    not cx                           ; 0x2af1
    mov di, word [bp + 0x4]          ; 0x2af3
    mov si, word [bp + 0x6]          ; 0x2af6
    shr cx, 1                        ; 0x2af9
    jcxz @..strlen_2.l1              ; 0x2afb
    rep movsw                        ; 0x2afd
@..strlen_2.l1:
    jae short @..strlen_2.l2         ; 0x2aff
    movsb                            ; 0x2b01
@..strlen_2.l2:
    pop di                           ; 0x2b02
    pop si                           ; 0x2b03
    mov ax, word [bp + 0x4]          ; 0x2b04
    pop bp                           ; 0x2b07
    ret                              ; 0x2b08
string_loc_2b09:
    push bp                          ; 0x2b09
    mov bp, sp                       ; 0x2b0a
    cld                              ; 0x2b0c
    push si                          ; 0x2b0d
    push di                          ; 0x2b0e
    mov cx, word [bp + 0x8]          ; 0x2b0f
    mov di, ds                       ; 0x2b12
    mov es, di                       ; 0x2b14
    mov di, word [bp + 0x4]          ; 0x2b16
    mov si, word [bp + 0x6]          ; 0x2b19
    jcxz @..string_loc_2b09.l3       ; 0x2b1c
@..string_loc_2b09.l1:
    lodsb                            ; 0x2b1e
    test al, al                      ; 0x2b1f
    je short @..string_loc_2b09.l2   ; 0x2b21
    stosb                            ; 0x2b23
    loop @..string_loc_2b09.l1       ; 0x2b24
    jmp short @..string_loc_2b09.l3  ; 0x2b26
@..string_loc_2b09.l2:
    rep stosb                        ; 0x2b28
@..string_loc_2b09.l3:
    pop di                           ; 0x2b2a
    pop si                           ; 0x2b2b
    mov ax, word [bp + 0x4]          ; 0x2b2c
    pop bp                           ; 0x2b2f
    ret                              ; 0x2b30
loc_2b31:
    push bp                          ; 0x2b31
    mov bp, sp                       ; 0x2b32
    sub sp, byte 0x0e                ; 0x2b34
    push si                          ; 0x2b37
    push di                          ; 0x2b38
    push es                          ; 0x2b39
    push ds                          ; 0x2b3a
    mov byte [bp - 0x000a], 0xcd     ; 0x2b3b
    mov al, byte [bp + 0x4]          ; 0x2b3f
    mov byte [bp - 0x0009], al       ; 0x2b42
    mov word [bp - 0x0008], 0xcd8c   ; 0x2b45
    mov word [bp - 0x0006], 0xd58e   ; 0x2b4a
    mov byte [bp - 0x0004], 0xbc     ; 0x2b4f
    mov ax, sp                       ; 0x2b53
    sub ax, strict word 6            ; 0x2b55
    mov word [bp - 0x0003], ax       ; 0x2b58
    mov byte [bp - 0x0001], 0xcb     ; 0x2b5b
    mov word [bp - 0x000c], ss       ; 0x2b5f
    lea ax, word [bp - 0x000a]       ; 0x2b62
    mov word [bp - 0x000e], ax       ; 0x2b65
    mov bx, word [bp + 0x6]          ; 0x2b68
    mov ax, word [bx]                ; 0x2b6b
    push word [bx + 0x2]             ; 0x2b6d
    mov cx, word [bx + 0x4]          ; 0x2b70
    mov dx, word [bx + 0x6]          ; 0x2b73
    mov si, word [bx + 0x8]          ; 0x2b76
    mov di, word [bx + 0xa]          ; 0x2b79
    mov es, word [bx + 0xe]          ; 0x2b7c
    mov ds, word [bx + 0xc]          ; 0x2b7f
    pop bx                           ; 0x2b82
    push bp                          ; 0x2b83
    call far [bp - 0x000e]           ; 0x2b84
    pop bp                           ; 0x2b87
    push ds                          ; 0x2b88
    push bx                          ; 0x2b89
    mov bx, word [bp + 0x8]          ; 0x2b8a
    mov word [ss:bx + 0xe], es       ; 0x2b8d
    pop word [ss:bx + 0x2]           ; 0x2b91
    pop word [ss:bx + 0xc]           ; 0x2b95
    pop ds                           ; 0x2b99
    mov word [bx], ax                ; 0x2b9a
    mov word [bx + 0x4], cx          ; 0x2b9c
    mov word [bx + 0x6], dx          ; 0x2b9f
    mov word [bx + 0x8], si          ; 0x2ba2
    mov word [bx + 0xa], di          ; 0x2ba5
    pop es                           ; 0x2ba8
    pop di                           ; 0x2ba9
    pop si                           ; 0x2baa
    pushf                            ; 0x2bab
    pop ax                           ; 0x2bac
    add sp, byte 0x0e                ; 0x2bad
    pop bp                           ; 0x2bb0
    ret                              ; 0x2bb1
loc_2bb2:
    push bp                          ; 0x2bb2
    mov bp, sp                       ; 0x2bb3
    mov al, byte [bp + 0x4]          ; 0x2bb5
    sub ah, ah                       ; 0x2bb8
    cmp al, 0x61                     ; 0x2bba
    jl short @..local.l128           ; 0x2bbc
    cmp al, 0x7a                     ; 0x2bbe
    jg short @..local.l128           ; 0x2bc0
    sub al, 0x20                     ; 0x2bc2
@..local.l128:
    pop bp                           ; 0x2bc4
    ret                              ; 0x2bc5

    db 0x55, 0x8b, 0xec, 0x8a, 0x46, 0x04, 0x2a, 0xe4, 0x3c, 0x41, 0x7c, 0x06, 0x3c, 0x5a, 0x7f, 0x02
    db 0x04, 0x20, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x56, 0xe8, 0x64, 0x02, 0x8b, 0xf0, 0x85, 0xf6, 0x75
    db 0x08, 0xb8, 0x00, 0x00, 0x5e, 0x8b, 0xe5, 0x5d, 0xc3, 0x56, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04
    db 0xe8, 0x05, 0x00, 0x83, 0xc4, 0x06, 0xeb, 0xec

loc_2bfe:
    push bp                          ; 0x2bfe
    mov bp, sp                       ; 0x2bff
    push di                          ; 0x2c01
    push si                          ; 0x2c02
    push word [bp + 0x8]             ; 0x2c03
    call loc_2d0b                    ; 0x2c06
    pop cx                           ; 0x2c09
    mov si, 0x231c                   ; 0x2c0a
@..local.l129:
    cmp byte [si], 0                 ; 0x2c0d
    jne short @..local.l131          ; 0x2c10
    mov word [data_24d6], 1          ; 0x2c12
    mov ax, 0                        ; 0x2c18
@..local.l130:
    pop si                           ; 0x2c1b
    pop di                           ; 0x2c1c
    mov sp, bp                       ; 0x2c1d
    pop bp                           ; 0x2c1f
    ret                              ; 0x2c20
@..local.l131:
    push word [bp + 0x6]             ; 0x2c21
    push si                          ; 0x2c24
    call string_loc_3508             ; 0x2c25
    add sp, byte 4                   ; 0x2c28
    test ax, ax                      ; 0x2c2b
    je short @..local.l132           ; 0x2c2d
    add si, byte 5                   ; 0x2c2f
    jmp short @..local.l129          ; 0x2c32
@..local.l132:
    push word [si + 0x3]             ; 0x2c34
    push word [bp + 0x4]             ; 0x2c37
    call loc_3381                    ; 0x2c3a
    add sp, byte 4                   ; 0x2c3d
    mov di, ax                       ; 0x2c40
    mov ax, di                       ; 0x2c42
    cmp ax, strict word 0xffff       ; 0x2c44
    jne short @..local.l133          ; 0x2c47
    mov ax, 0                        ; 0x2c49
    jmp short @..local.l130          ; 0x2c4c
@..local.l133:
    mov ax, di                       ; 0x2c4e
    mov bx, word [bp + 0x8]          ; 0x2c50
    mov byte [bx + 0x7], al          ; 0x2c53
    mov bx, word [bp + 0x8]          ; 0x2c56
    mov byte [bx + 0x6], 1           ; 0x2c59
    mov ax, word [bp + 0x8]          ; 0x2c5d
    jmp short @..local.l130          ; 0x2c60
loc_2c62:
    push bp                          ; 0x2c62
    mov bp, sp                       ; 0x2c63
    lea ax, word [bp + 0x6]          ; 0x2c65
    push ax                          ; 0x2c68
    push word [bp + 0x4]             ; 0x2c69
    mov ax, 0x2a7a                   ; 0x2c6c
    push ax                          ; 0x2c6f
    call string_loc_3098             ; 0x2c70
    add sp, byte 6                   ; 0x2c73
    mov sp, bp                       ; 0x2c76
    pop bp                           ; 0x2c78
    ret                              ; 0x2c79

    db 0x55, 0x8b, 0xec, 0xb8, 0x57, 0x23, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x07, 0x00, 0x83, 0xc4, 0x04
    db 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x76, 0x04, 0x8b, 0x7e, 0x06, 0x83
    db 0xfe, 0x0a, 0x75, 0x19, 0x57, 0xb8, 0x0d, 0x00, 0x50, 0xe8, 0x1b, 0x00, 0x83, 0xc4, 0x04, 0x3d
    db 0xff, 0xff, 0x75, 0x09, 0xb8, 0xff, 0xff, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x57, 0x56, 0xe8
    db 0x05, 0x00, 0x83, 0xc4, 0x04, 0xeb, 0xf0, 0x55, 0x8b, 0xec, 0x56, 0x8b, 0x76, 0x06, 0x8b, 0x04
    db 0x3b, 0x44, 0x02, 0x72, 0x13, 0x8b, 0x46, 0x04, 0x25, 0xff, 0x00, 0x50, 0x56, 0xe8, 0xac, 0x00
    db 0x83, 0xc4, 0x04, 0x5e, 0x8b, 0xe5, 0x5d, 0xc3, 0x8a, 0x46, 0x04, 0x50, 0x8b, 0x04, 0xff, 0x04
    db 0x8b, 0xd8, 0x58, 0x88, 0x07, 0x98, 0x25, 0xff, 0x00, 0xeb, 0xe8, 0x56, 0xbe, 0x4a, 0x23, 0x8b
    db 0xc6, 0x83, 0xc6, 0x0d, 0x50, 0xe8, 0x09, 0x00, 0x59, 0x81, 0xfe, 0x4e, 0x24, 0x72, 0xf0, 0x5e
    db 0xc3

loc_2d0b:
    push bp                          ; 0x2d0b
    mov bp, sp                       ; 0x2d0c
    push di                          ; 0x2d0e
    push si                          ; 0x2d0f
    mov si, word [bp + 0x4]          ; 0x2d10
    mov di, 0                        ; 0x2d13
    test si, si                      ; 0x2d16
    jne short @..local.l135          ; 0x2d18
    mov ax, 0xffff                   ; 0x2d1a
@..local.l134:
    pop si                           ; 0x2d1d
    pop di                           ; 0x2d1e
    mov sp, bp                       ; 0x2d1f
    pop bp                           ; 0x2d21
    ret                              ; 0x2d22
@..local.l135:
    cmp byte [si + 0x6], 0           ; 0x2d23
    je short @..local.l138           ; 0x2d27
    mov al, byte [si + 0x6]          ; 0x2d29
    cbw                              ; 0x2d2c
    test ax, data_0004               ; 0x2d2d
    je short @..local.l136           ; 0x2d30
    mov ax, 0xffff                   ; 0x2d32
    push ax                          ; 0x2d35
    push si                          ; 0x2d36
    call loc_2d86                    ; 0x2d37
    add sp, byte 4                   ; 0x2d3a
    mov di, ax                       ; 0x2d3d
@..local.l136:
    mov al, byte [si + 0x7]          ; 0x2d3f
    cbw                              ; 0x2d42
    push ax                          ; 0x2d43
    call dos_file_loc_3869           ; 0x2d44
    pop cx                           ; 0x2d47
    or di, ax                        ; 0x2d48
    mov al, byte [si + 0x6]          ; 0x2d4a
    cbw                              ; 0x2d4d
    test ax, data_0002               ; 0x2d4e
    je short @..local.l137           ; 0x2d51
    push word [si + 0x4]             ; 0x2d53
    call math_loc_3019               ; 0x2d56
    pop cx                           ; 0x2d59
@..local.l137:
    mov al, byte [si + 0x6]          ; 0x2d5a
    cbw                              ; 0x2d5d
    test ax, 0x20                    ; 0x2d5e
    je short @..local.l138           ; 0x2d61
    push word [si + 0xb]             ; 0x2d63
    call dos_file_loc_38a0           ; 0x2d66
    pop cx                           ; 0x2d69
    push word [si + 0xb]             ; 0x2d6a
    call math_loc_3019               ; 0x2d6d
    pop cx                           ; 0x2d70
@..local.l138:
    mov ax, 0                        ; 0x2d71
    mov word [si], 0                 ; 0x2d74
    mov word [si + 0x2], ax          ; 0x2d78
    mov word [si + 0x4], ax          ; 0x2d7b
    mov byte [si + 0x6], 0           ; 0x2d7e
    mov ax, di                       ; 0x2d82
    jmp short @..local.l134          ; 0x2d84
loc_2d86:
    push bp                          ; 0x2d86
    mov bp, sp                       ; 0x2d87
    push di                          ; 0x2d89
    push si                          ; 0x2d8a
    mov si, word [bp + 0x4]          ; 0x2d8b
    mov word [data_2500], 0x2af5     ; 0x2d8e
    mov al, byte [si + 0x6]          ; 0x2d94
    cbw                              ; 0x2d97
    test ax, 0x10                    ; 0x2d98
    je short @..local.l140           ; 0x2d9b
    mov ax, 0xffff                   ; 0x2d9d
@..local.l139:
    pop si                           ; 0x2da0
    pop di                           ; 0x2da1
    mov sp, bp                       ; 0x2da2
    pop bp                           ; 0x2da4
    ret                              ; 0x2da5
@..local.l140:
    mov al, byte [si + 0x6]          ; 0x2da6
    cbw                              ; 0x2da9
    test ax, data_0004               ; 0x2daa
    je short @..local.l142           ; 0x2dad
    mov di, word [si]                ; 0x2daf
    sub di, word [si + 0x4]          ; 0x2db1
    push di                          ; 0x2db4
    push word [si + 0x4]             ; 0x2db5
    mov al, byte [si + 0x7]          ; 0x2db8
    cbw                              ; 0x2dbb
    push ax                          ; 0x2dbc
    call dos_file_loc_383a           ; 0x2dbd
    add sp, byte 6                   ; 0x2dc0
    cmp ax, di                       ; 0x2dc3
    je short @..local.l142           ; 0x2dc5
@..local.l141:
    or byte [si + 0x6], 0x10         ; 0x2dc7
    mov ax, 0                        ; 0x2dcb
    mov word [si], 0                 ; 0x2dce
    mov word [si + 0x2], ax          ; 0x2dd2
    mov ax, 0xffff                   ; 0x2dd5
    jmp short @..local.l139          ; 0x2dd8
@..local.l142:
    cmp word [bp + 0x6], byte 0xff   ; 0x2dda
    jne short @..local.l143          ; 0x2dde
    and byte [si + 0x6], 0xfb        ; 0x2de0
    mov ax, 0                        ; 0x2de4
    mov word [si], 0                 ; 0x2de7
    mov word [si + 0x2], ax          ; 0x2deb
    mov ax, 0                        ; 0x2dee
    jmp short @..local.l139          ; 0x2df1
@..local.l143:
    cmp word [si + 0x4], byte 0      ; 0x2df3
    jne short @..local.l144          ; 0x2df7
    push si                          ; 0x2df9
    call loc_2e63                    ; 0x2dfa
    pop cx                           ; 0x2dfd
@..local.l144:
    cmp word [si + 0x9], byte 1      ; 0x2dfe
    jne short @..local.l145          ; 0x2e02
    mov ax, 1                        ; 0x2e04
    push ax                          ; 0x2e07
    lea ax, word [bp + 0x6]          ; 0x2e08
    push ax                          ; 0x2e0b
    mov al, byte [si + 0x7]          ; 0x2e0c
    cbw                              ; 0x2e0f
    push ax                          ; 0x2e10
    call dos_file_loc_383a           ; 0x2e11
    add sp, byte 6                   ; 0x2e14
    cmp ax, strict word 1            ; 0x2e17
    jne short @..local.l141          ; 0x2e1a
    mov ax, word [bp + 0x6]          ; 0x2e1c
    jmp near @..local.l139           ; 0x2e1f
@..local.l145:
    mov ax, word [si + 0x4]          ; 0x2e22
    mov word [si], ax                ; 0x2e25
    add ax, word [si + 0x9]          ; 0x2e27
    mov word [si + 0x2], ax          ; 0x2e2a
    or byte [si + 0x6], data_0004    ; 0x2e2d
    mov al, byte [bp + 0x6]          ; 0x2e31
    push ax                          ; 0x2e34
    mov ax, word [si]                ; 0x2e35
    inc word [si]                    ; 0x2e37
    mov bx, ax                       ; 0x2e39
    pop ax                           ; 0x2e3b
    mov byte [bx], al                ; 0x2e3c
    cbw                              ; 0x2e3e
    and ax, 0xff                     ; 0x2e3f
    jmp near @..local.l139           ; 0x2e42
    push si                          ; 0x2e45
    mov si, 0x234a                   ; 0x2e46
    cmp byte [si + 0x6], 0           ; 0x2e49
    je short loc_2e5f                ; 0x2e4d
    add si, byte 0x0d                ; 0x2e4f
    cmp si, data_244e                ; 0x2e52
    jb short loc_2e5d                ; 0x2e56
    mov ax, 0                        ; 0x2e58
    pop si                           ; 0x2e5b
    ret                              ; 0x2e5c
    jmp short loc_2e49               ; 0x2e5d
    db 0x8b, 0xc6 ; mov ax, si
    jmp short loc_2e5b               ; 0x2e61
loc_2e63:
    push bp                          ; 0x2e63
    mov bp, sp                       ; 0x2e64
    add sp, byte 0xfe                ; 0x2e66
    push si                          ; 0x2e69
    mov si, word [bp + 0x4]          ; 0x2e6a
    mov al, byte [si + 0x7]          ; 0x2e6d
    cbw                              ; 0x2e70
    push ax                          ; 0x2e71
    call dos_ioctl                   ; 0x2e72
    pop cx                           ; 0x2e75
    test ax, ax                      ; 0x2e76
    je short @..local.l148           ; 0x2e78
@..local.l146:
    mov word [si + 0x9], 1           ; 0x2e7a
    mov ax, si                       ; 0x2e7f
    add ax, strict word 8            ; 0x2e81
    mov word [si + 0x4], ax          ; 0x2e84
@..local.l147:
    pop si                           ; 0x2e87
    mov sp, bp                       ; 0x2e88
    pop bp                           ; 0x2e8a
    ret                              ; 0x2e8b
@..local.l148:
    mov ax, 0x400                    ; 0x2e8c
    push ax                          ; 0x2e8f
    call loc_2f1b                    ; 0x2e90
    pop cx                           ; 0x2e93
    mov word [bp - 0x0002], ax       ; 0x2e94
    test ax, ax                      ; 0x2e97
    je short @..local.l146           ; 0x2e99
    mov word [si + 0x9], 0x400       ; 0x2e9b
    or byte [si + 0x6], data_0002    ; 0x2ea0
    mov ax, word [bp - 0x0002]       ; 0x2ea4
    mov word [si + 0x4], ax          ; 0x2ea7
    jmp short @..local.l147          ; 0x2eaa

    db 0x55, 0x8b, 0xec, 0x83, 0xc4, 0xfc, 0x57, 0x56, 0x8b, 0x76, 0x04, 0x8b, 0x44, 0xfe, 0x25, 0xfe
    db 0xff, 0x89, 0x46, 0xfe, 0x2b, 0xc6, 0x89, 0x46, 0xfc, 0x3b, 0x46, 0x06, 0x76, 0x0d, 0x8b, 0x46
    db 0x06, 0x89, 0x46, 0xfc, 0x8b, 0xce, 0x03, 0xc8, 0x89, 0x4e, 0xfe, 0x56, 0xe8, 0x3e, 0x01, 0x59
    db 0xff, 0x76, 0x06, 0xe8, 0x39, 0x00, 0x59, 0x8b, 0xf8, 0x85, 0xff, 0x74, 0x2a, 0x3b, 0xfe, 0x74
    db 0x26, 0xff, 0x76, 0xfc, 0x57, 0x56, 0xe8, 0xab, 0x0a, 0x83, 0xc4, 0x06
    db ';66%w'
    db 0x15, 0xa1, 0x36, 0x25, 0x3b, 0x46, 0xfe, 0x73, 0x0d, 0xa1, 0x34, 0x25, 0x8b, 0x0e, 0x36, 0x25
    db 0x2b, 0xce, 0x8b, 0xd9, 0x89, 0x01, 0x8b, 0xc7, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3

loc_2f1b:
    push bp                          ; 0x2f1b
    mov bp, sp                       ; 0x2f1c
    add sp, byte 0xfa                ; 0x2f1e
    push di                          ; 0x2f21
    push si                          ; 0x2f22
    mov ax, word [bp + 0x4]          ; 0x2f23
    inc ax                           ; 0x2f26
    inc ax                           ; 0x2f27
    inc ax                           ; 0x2f28
    shr ax, 1                        ; 0x2f29
    shl ax, 1                        ; 0x2f2b
    mov word [bp + 0x4], ax          ; 0x2f2d
    cmp word [data_2536], byte 0     ; 0x2f30
    jne short @..local.l149          ; 0x2f35
    mov word [data_2538], data_2538  ; 0x2f37
    or word [data_2538], 1           ; 0x2f3d
    mov word [data_2536], data_2538  ; 0x2f43
@..local.l149:
    mov word [bp - 0x0006], 0        ; 0x2f49
    mov si, word [data_2536]         ; 0x2f4e
    mov word [bp - 0x0002], si       ; 0x2f52
@..local.l150:
    cmp si, word [data_244e]         ; 0x2f55
    jne short @..local.l154          ; 0x2f59
    inc word [bp - 0x0006]           ; 0x2f5b
    mov ax, word [bp - 0x0006]       ; 0x2f5e
    cmp ax, strict word 1            ; 0x2f61
    jle short @..local.l154          ; 0x2f64
    mov word [bp - 0x0004], 0x400    ; 0x2f66
    push word [bp - 0x0004]          ; 0x2f6b
    call loc_3a05                    ; 0x2f6e
    pop cx                           ; 0x2f71
    mov di, ax                       ; 0x2f72
    mov ax, di                       ; 0x2f74
    cmp ax, strict word 0xffff       ; 0x2f76
    jne short @..local.l152          ; 0x2f79
    mov ax, 0                        ; 0x2f7b
@..local.l151:
    pop si                           ; 0x2f7e
    pop di                           ; 0x2f7f
    mov sp, bp                       ; 0x2f80
    pop bp                           ; 0x2f82
    ret                              ; 0x2f83
@..local.l152:
    mov ax, si                       ; 0x2f84
    add ax, strict word 2            ; 0x2f86
    cmp di, ax                       ; 0x2f89
    je short @..local.l153           ; 0x2f8b
    mov word [si], di                ; 0x2f8d
    or word [si], 1                  ; 0x2f8f
    dec word [bp - 0x0004]           ; 0x2f93
    dec word [bp - 0x0004]           ; 0x2f96
    mov si, di                       ; 0x2f99
@..local.l153:
    mov di, si                       ; 0x2f9b
    add di, word [bp - 0x0004]       ; 0x2f9d
    mov word [si], di                ; 0x2fa0
    mov word [di], data_2538         ; 0x2fa2
    or word [di], 1                  ; 0x2fa6
    mov word [data_244e], di         ; 0x2faa
    mov bx, word [bp - 0x0002]       ; 0x2fae
    mov ax, word [bx]                ; 0x2fb1
    and ax, strict word 0xfffe       ; 0x2fb3
    cmp ax, si                       ; 0x2fb6
    jne short @..local.l154          ; 0x2fb8
    mov si, bx                       ; 0x2fba
@..local.l154:
    test word [si], 1                ; 0x2fbc
    jne short @..local.l158          ; 0x2fc0
    mov word [bp - 0x0002], si       ; 0x2fc2
@..local.l155:
    mov ax, word [si]                ; 0x2fc5
    and ax, strict word 0xfffe       ; 0x2fc7
    mov di, ax                       ; 0x2fca
    mov bx, di                       ; 0x2fcc
    test word [bx], 1                ; 0x2fce
    jne short @..local.l156          ; 0x2fd2
    mov ax, word [di]                ; 0x2fd4
    mov word [si], ax                ; 0x2fd6
    jmp short @..local.l155          ; 0x2fd8
@..local.l156:
    sub bx, si                       ; 0x2fda
    mov word [bp - 0x0004], bx       ; 0x2fdc
    cmp bx, word [bp + 0x4]          ; 0x2fdf
    jb short @..local.l158           ; 0x2fe2
    cmp bx, word [bp + 0x4]          ; 0x2fe4
    jbe short @..local.l157          ; 0x2fe7
    mov ax, si                       ; 0x2fe9
    add ax, word [bp + 0x4]          ; 0x2feb
    mov word [si], ax                ; 0x2fee
    mov bx, ax                       ; 0x2ff0
    mov ax, word [bx]                ; 0x2ff2
    mov word [data_2534], ax         ; 0x2ff4
    mov bx, word [si]                ; 0x2ff7
    mov word [bx], di                ; 0x2ff9
@..local.l157:
    mov ax, word [si]                ; 0x2ffb
    mov word [data_2536], ax         ; 0x2ffd
    or word [si], 1                  ; 0x3000
    mov ax, si                       ; 0x3004
    add ax, strict word 2            ; 0x3006
    jmp near @..local.l151           ; 0x3009
@..local.l158:
    mov ax, word [si]                ; 0x300c
    and ax, strict word 0xfffe       ; 0x300e
    mov si, ax                       ; 0x3011
    jmp near @..local.l150           ; 0x3013
    jmp near @..local.l151           ; 0x3016
math_loc_3019:
    push bp                          ; 0x3019
    mov bp, sp                       ; 0x301a
    push si                          ; 0x301c
    mov si, word [bp + 0x4]          ; 0x301d
    add si, byte 0xfe                ; 0x3020
    test word [si], 1                ; 0x3023
    jne short @..local.l159          ; 0x3027
    mov ax, 0xffff                   ; 0x3029
@..math_loc_3019.l1:
    pop si                           ; 0x302c
    mov sp, bp                       ; 0x302d
    pop bp                           ; 0x302f
    ret                              ; 0x3030
@..local.l159:
    and word [si], strict word 0xfffe ; 0x3031
    mov word [data_2536], si         ; 0x3035
    mov ax, 0                        ; 0x3039
    jmp short @..math_loc_3019.l1    ; 0x303c

    db 'LlhFNoxXudiscpneEfgG%@/G/K/N/K/U/^/Z/c/h/h/'
    db 0x8c, 0x30, 0xab, 0x30, 0xd0, 0x30, 0xd3
    db '0{0u0{0{0u0'
    db 0xb3
    db '.0123456789abcdef -lm first', 0

string_loc_3098:
    push bp                          ; 0x3098
    mov bp, sp                       ; 0x3099
    sub sp, strict word 0x154        ; 0x309b
    push di                          ; 0x309f
    push si                          ; 0x30a0
    cld                              ; 0x30a1
    mov si, word [bp + 0x6]          ; 0x30a2
    mov word [bp - 0x0002], 0        ; 0x30a5
@..string_loc_3098.l1:
    mov byte [bp - 0x000b], 0        ; 0x30aa
    lodsb                            ; 0x30ae
    cmp al, 0x25                     ; 0x30af
    je short @..local.l160           ; 0x30b1
string_loc_30b3:
    test al, al                      ; 0x30b3
    je short @..string_loc_3098.l2   ; 0x30b5
    call string_loc_3301             ; 0x30b7
    jmp short @..string_loc_3098.l1  ; 0x30ba
@..string_loc_3098.l2:
    mov ax, word [bp - 0x0002]       ; 0x30bc
    pop si                           ; 0x30bf
    pop di                           ; 0x30c0
    mov sp, bp                       ; 0x30c1
    pop bp                           ; 0x30c3
    ret                              ; 0x30c4
@..local.l160:
    mov byte [bp - 0x000c], 0x20     ; 0x30c5
    mov byte [bp - 0x000e], 0        ; 0x30c9
    mov byte [bp - 0x000d], 0        ; 0x30cd
    mov word [bp - 0x0006], 0xffff   ; 0x30d1
@..local.l161:
    lodsb                            ; 0x30d6
    cmp al, 0x2d                     ; 0x30d7
    jne short @..local.l162          ; 0x30d9
    or byte [bp - 0x000b], 8         ; 0x30db
    jmp short @..local.l161          ; 0x30df
@..local.l162:
    cmp al, 0x2b                     ; 0x30e1
    jne short @..local.l163          ; 0x30e3
    mov byte [bp - 0x000e], 0x2b     ; 0x30e5
    jmp short @..local.l161          ; 0x30e9
@..local.l163:
    cmp al, 0x20                     ; 0x30eb
    jne short @..local.l164          ; 0x30ed
    cmp byte [bp - 0x000e], 0        ; 0x30ef
    jne short @..local.l161          ; 0x30f3
    mov byte [bp - 0x000e], 0x20     ; 0x30f5
    jmp short @..local.l161          ; 0x30f9
@..local.l164:
    cmp al, 0x23                     ; 0x30fb
    jne short @..local.l165          ; 0x30fd
    or byte [bp - 0x000b], 0x10      ; 0x30ff
    jmp short @..local.l161          ; 0x3103
@..local.l165:
    cmp al, data_0030                ; 0x3105
    jne short @..local.l166          ; 0x3107
    mov byte [bp - 0x000c], data_0030 ; 0x3109
    lodsb                            ; 0x310d
@..local.l166:
    call string_loc_3338             ; 0x310e
    test dx, dx                      ; 0x3111
    jns short @..local.l167          ; 0x3113
    neg dx                           ; 0x3115
    or byte [bp - 0x000b], 8         ; 0x3117
@..local.l167:
    mov word [bp - 0x0004], dx       ; 0x311b
    cmp al, data_002e                ; 0x311e
    jne short @..local.l168          ; 0x3120
    lodsb                            ; 0x3122
    call string_loc_3338             ; 0x3123
    mov word [bp - 0x0006], dx       ; 0x3126
@..local.l168:
    mov di, cs                       ; 0x3129
    mov es, di                       ; 0x312b
@..local.l169:
    mov di, 0x2e3e                   ; 0x312d
    mov cx, 0x15                     ; 0x3130
    repne scasb                      ; 0x3133
    sub di, strict word 0x2e3f       ; 0x3135
    shl di, 1                        ; 0x3139
    jmp [cs:di + 0x2e53]             ; 0x313b
string_loc_3140:
    or byte [bp - 0x000b], 1         ; 0x3140
    lodsb                            ; 0x3144
    jmp short @..local.l169          ; 0x3145
string_loc_3147:
    or byte [bp - 0x000b], data_0002 ; 0x3147
string_loc_314b:
    lodsb                            ; 0x314b
    jmp short @..local.l169          ; 0x314c
string_loc_314e:
    or byte [bp - 0x000b], data_0004 ; 0x314e
    lodsb                            ; 0x3152
    jmp short @..local.l169          ; 0x3153
math_loc_3155:
    mov cx, 8                        ; 0x3155
    jmp short @..string_loc_3140.l1  ; 0x3158
math_loc_315a:
    or byte [bp - 0x000b], 0x20      ; 0x315a
math_loc_315e:
    mov cx, 0x10                     ; 0x315e
    jmp short @..string_loc_3140.l1  ; 0x3161
math_loc_3163:
    mov cx, 0xa                      ; 0x3163
    jmp short @..string_loc_3140.l1  ; 0x3166
math_loc_3168:
    mov cx, 0xff0a                   ; 0x3168
@..string_loc_3140.l1:
    push ds                          ; 0x316b
    pop es                           ; 0x316c
    mov di, word [bp + 0x8]          ; 0x316d
    mov ax, word [es:di]             ; 0x3170
    add di, byte 2                   ; 0x3173
    test byte [bp - 0x000b], data_0002 ; 0x3176
    je short @..string_loc_3140.l2   ; 0x317a
    mov dx, word [es:di]             ; 0x317c
    add di, byte 2                   ; 0x317f
    jmp short @..string_loc_3140.l3  ; 0x3182
@..string_loc_3140.l2:
    sub dx, dx                       ; 0x3184
    test ch, ch                      ; 0x3186
    je short @..string_loc_3140.l4   ; 0x3188
    cwd                              ; 0x318a
@..string_loc_3140.l3:
    test ch, ch                      ; 0x318b
    je short @..string_loc_3140.l4   ; 0x318d
    mov ch, byte [bp - 0x000e]       ; 0x318f
    mov byte [bp - 0x000d], ch       ; 0x3192
    test dx, dx                      ; 0x3195
    jns short @..string_loc_3140.l4  ; 0x3197
    mov byte [bp - 0x000d], 0x2d     ; 0x3199
    neg dx                           ; 0x319d
    neg ax                           ; 0x319f
    sbb dx, byte 0                   ; 0x31a1
@..string_loc_3140.l4:
    mov word [bp + 0x8], di          ; 0x31a4
    cmp word [bp - 0x0006], byte 0   ; 0x31a7
    jge short @..string_loc_3140.l5  ; 0x31ab
    mov word [bp - 0x0006], 1        ; 0x31ad
@..string_loc_3140.l5:
    mov ch, 0                        ; 0x31b2
    mov di, ss                       ; 0x31b4
    mov es, di                       ; 0x31b6
    lea di, word [bp - 0x0140]       ; 0x31b8
@..string_loc_3140.l6:
    test dx, dx                      ; 0x31bc
    jne short @..string_loc_3140.l7  ; 0x31be
    test ax, ax                      ; 0x31c0
    je short @..string_loc_3140.l10  ; 0x31c2
@..string_loc_3140.l7:
    sub bx, bx                       ; 0x31c4
    cmp cx, dx                       ; 0x31c6
    ja short @..string_loc_3140.l8   ; 0x31c8
    push ax                          ; 0x31ca
    mov ax, dx                       ; 0x31cb
    sub dx, dx                       ; 0x31cd
    div cx                           ; 0x31cf
    mov bx, ax                       ; 0x31d1
    pop ax                           ; 0x31d3
    div cx                           ; 0x31d4
    jmp short @..string_loc_3140.l9  ; 0x31d6
@..string_loc_3140.l8:
    div cx                           ; 0x31d8
@..string_loc_3140.l9:
    xchg bx, dx                      ; 0x31da
    mov bl, byte [cs:bx + 0x2e7d]    ; 0x31dc
    dec di                           ; 0x31e1
    mov byte [es:di], bl             ; 0x31e2
    jmp short @..string_loc_3140.l6  ; 0x31e5
@..string_loc_3140.l10:
    test byte [bp - 0x000b], 0x10    ; 0x31e7
    je short @..string_loc_3140.l12  ; 0x31eb
    cmp cl, 0xa                      ; 0x31ed
    je short @..string_loc_3140.l12  ; 0x31f0
    cmp cl, 0x10                     ; 0x31f2
    jne short @..string_loc_3140.l11 ; 0x31f5
    mov byte [bp - 0x000d], 0x78     ; 0x31f7
    jmp short @..string_loc_3140.l12 ; 0x31fb
@..string_loc_3140.l11:
    dec di                           ; 0x31fd
    mov byte [es:di], data_0030      ; 0x31fe
@..string_loc_3140.l12:
    lea cx, word [bp - 0x0140]       ; 0x3202
    sub cx, di                       ; 0x3206
    mov ax, word [bp - 0x0006]       ; 0x3208
    sub ax, cx                       ; 0x320b
    mov word [bp - 0x0006], ax       ; 0x320d
    jle short @..string_loc_3140.l13 ; 0x3210
    sub word [bp - 0x0004], ax       ; 0x3212
@..string_loc_3140.l13:
    mov word [bp - 0x0008], cx       ; 0x3215
    cmp byte [bp - 0x000d], 0        ; 0x3218
    je short @..string_loc_3140.l15  ; 0x321c
    cmp byte [bp - 0x000d], 0x78     ; 0x321e
    jne short @..string_loc_3140.l14 ; 0x3222
    dec word [bp - 0x0004]           ; 0x3224
@..string_loc_3140.l14:
    dec word [bp - 0x0004]           ; 0x3227
@..string_loc_3140.l15:
    sub word [bp - 0x0004], cx       ; 0x322a
    jle short @..string_loc_3140.l17 ; 0x322d
    test byte [bp - 0x000b], 8       ; 0x322f
    jne short @..string_loc_3140.l17 ; 0x3233
    cmp byte [bp - 0x000c], data_0030 ; 0x3235
    jne short @..string_loc_3140.l16 ; 0x3239
    call string_loc_32eb             ; 0x323b
@..string_loc_3140.l16:
    mov al, byte [bp - 0x000c]       ; 0x323e
    call string_loc_3301             ; 0x3241
    dec word [bp - 0x0004]           ; 0x3244
    jg short @..string_loc_3140.l16  ; 0x3247
@..string_loc_3140.l17:
    call string_loc_32eb             ; 0x3249
@..string_loc_3140.l18:
    dec word [bp - 0x0006]           ; 0x324c
    js short @..string_loc_3140.l19  ; 0x324f
    mov al, data_0030                ; 0x3251
    call string_loc_3301             ; 0x3253
    jmp short @..string_loc_3140.l18 ; 0x3256
@..string_loc_3140.l19:
    dec word [bp - 0x0008]           ; 0x3258
    js short @..string_loc_3140.l20  ; 0x325b
    mov al, byte [es:di]             ; 0x325d
    inc di                           ; 0x3260
    call string_loc_3301             ; 0x3261
    jmp short @..string_loc_3140.l19 ; 0x3264
@..string_loc_3140.l20:
    dec word [bp - 0x0004]           ; 0x3266
    js short @..string_loc_3140.l21  ; 0x3269
    mov al, 0x20                     ; 0x326b
    call string_loc_3301             ; 0x326d
    jmp short @..string_loc_3140.l20 ; 0x3270
@..string_loc_3140.l21:
    jmp near @..string_loc_3098.l1   ; 0x3272
loc_3275:
    or byte [bp - 0x000b], 0x20      ; 0x3275
    add al, 0x20                     ; 0x3279
loc_327b:
    add word [bp + 0x8], byte 8      ; 0x327b
    mov ax, cs                       ; 0x327f
    mov es, ax                       ; 0x3281
    mov di, 0x2e8d                   ; 0x3283
    sub word [bp - 0x0004], byte 0x0a ; 0x3286
    jmp short @..string_loc_3140.l19 ; 0x328a
loc_328c:
    call string_loc_331e             ; 0x328c
    push di                          ; 0x328f
    mov al, 0                        ; 0x3290
    mov cx, 0xffff                   ; 0x3292
    repne scasb                      ; 0x3295
    not cx                           ; 0x3297
    dec cx                           ; 0x3299
    cmp cx, word [bp - 0x0006]       ; 0x329a
    jbe short @..string_loc_3140.l22 ; 0x329d
    mov cx, word [bp - 0x0006]       ; 0x329f
@..string_loc_3140.l22:
    pop di                           ; 0x32a2
    mov word [bp - 0x0006], 0        ; 0x32a3
    jmp near @..string_loc_3140.l13  ; 0x32a8
loc_32ab:
    push ds                          ; 0x32ab
    pop es                           ; 0x32ac
    mov di, word [bp + 0x8]          ; 0x32ad
    mov al, byte [es:di]             ; 0x32b0
    add di, byte 2                   ; 0x32b3
    mov word [bp + 0x8], di          ; 0x32b6
    mov byte [bp - 0x0154], al       ; 0x32b9
    mov cx, 1                        ; 0x32bd
    mov ax, ss                       ; 0x32c0
    mov es, ax                       ; 0x32c2
    lea di, word [bp - 0x0154]       ; 0x32c4
    mov word [bp - 0x0006], 0        ; 0x32c8
    jmp near @..string_loc_3140.l13  ; 0x32cd
string_loc_32d0:
    jmp near @..string_loc_3098.l1   ; 0x32d0
string_loc_32d3:
    call string_loc_331e             ; 0x32d3
    mov ax, word [bp - 0x0002]       ; 0x32d6
    mov word [es:di], ax             ; 0x32d9
    test byte [bp - 0x000b], data_0002 ; 0x32dc
    je short @..string_loc_3140.l23  ; 0x32e0
    mov word [es:di + 0x2], 0        ; 0x32e2
@..string_loc_3140.l23:
    jmp near @..string_loc_3098.l1   ; 0x32e8
string_loc_32eb:
    mov al, byte [bp - 0x000d]       ; 0x32eb
    test al, al                      ; 0x32ee
    je short @..string_loc_3140.l26  ; 0x32f0
    cmp al, 0x78                     ; 0x32f2
    jne short @..string_loc_3140.l24 ; 0x32f4
    mov al, data_0030                ; 0x32f6
    call string_loc_3301             ; 0x32f8
    mov al, 0x78                     ; 0x32fb
@..string_loc_3140.l24:
    mov byte [bp - 0x000d], 0        ; 0x32fd
string_loc_3301:
    inc word [bp - 0x0002]           ; 0x3301
    test byte [bp - 0x000b], 0x20    ; 0x3304
    je short @..string_loc_3140.l25  ; 0x3308
    cmp al, 0x61                     ; 0x330a
    jb short @..string_loc_3140.l25  ; 0x330c
    cmp al, 0x7a                     ; 0x330e
    ja short @..string_loc_3140.l25  ; 0x3310
    sub al, 0x20                     ; 0x3312
@..string_loc_3140.l25:
    push es                          ; 0x3314
    sub ah, ah                       ; 0x3315
    push ax                          ; 0x3317
    call [bp + 0x4]                  ; 0x3318
    pop ax                           ; 0x331b
    pop es                           ; 0x331c
@..string_loc_3140.l26:
    ret                              ; 0x331d
string_loc_331e:
    push ds                          ; 0x331e
    pop es                           ; 0x331f
    mov di, word [bp + 0x8]          ; 0x3320
    test byte [bp - 0x000b], data_0004 ; 0x3323
    jne short string_loc_3330        ; 0x3327
    mov di, word [di]                ; 0x3329
    add word [bp + 0x8], byte 2      ; 0x332b
    ret                              ; 0x332f
string_loc_3330:
    les di, word [es:di]             ; 0x3330
    add word [bp + 0x8], byte 4      ; 0x3333
    ret                              ; 0x3337
string_loc_3338:
    cmp al, 0x2a                     ; 0x3338
    jne short @..local.l170          ; 0x333a
    push ds                          ; 0x333c
    pop es                           ; 0x333d
    mov di, word [bp + 0x8]          ; 0x333e
    mov dx, word [es:di]             ; 0x3341
    add di, byte 2                   ; 0x3344
    mov word [bp + 0x8], di          ; 0x3347
    lodsb                            ; 0x334a
    ret                              ; 0x334b
@..local.l170:
    sub dx, dx                       ; 0x334c
    mov ah, 0                        ; 0x334e
@..local.l171:
    cmp al, data_0030                ; 0x3350
    jb short @..local.l172           ; 0x3352
    cmp al, 0x39                     ; 0x3354
    ja short @..local.l172           ; 0x3356
    sub al, data_0030                ; 0x3358
    shl dx, 1                        ; 0x335a
    mov cx, dx                       ; 0x335c
    shl dx, 1                        ; 0x335e
    shl dx, 1                        ; 0x3360
    add dx, cx                       ; 0x3362
    add dx, ax                       ; 0x3364
    lodsb                            ; 0x3366
    jmp short @..local.l171          ; 0x3367
@..local.l172:
    ret                              ; 0x3369
    push bp                          ; 0x336a
    db 0x8b, 0xec ; mov bp, sp
    push word [bp + 0x6]             ; 0x336d
    mov ax, 0x301                    ; 0x3370
    push ax                          ; 0x3373
    push word [bp + 0x4]             ; 0x3374
    call loc_3381                    ; 0x3377
    add sp, byte 6                   ; 0x337a
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp                           ; 0x337f
    ret                              ; 0x3380
loc_3381:
    push bp                          ; 0x3381
    mov bp, sp                       ; 0x3382
    push di                          ; 0x3384
    push si                          ; 0x3385
    mov ax, word [bp + 0x6]          ; 0x3386
    and ax, 0xf3                     ; 0x3389
    mov di, ax                       ; 0x338c
    or ax, 0x3d00                    ; 0x338e
    mov di, ax                       ; 0x3391
    test word [bp + 0x6], 0x200      ; 0x3393
    je short @..local.l173           ; 0x3398
    mov di, 0x3c00                   ; 0x339a
@..local.l173:
    mov ax, 0                        ; 0x339d
    push ax                          ; 0x33a0
    push word [bp + 0x4]             ; 0x33a1
    push di                          ; 0x33a4
    call dos_mem_loc_358c            ; 0x33a5
    add sp, byte 6                   ; 0x33a8
    mov si, ax                       ; 0x33ab
    mov ax, si                       ; 0x33ad
    cmp ax, strict word 0xffff       ; 0x33af
    jne short @..local.l175          ; 0x33b2
    test word [bp + 0x6], 0x100      ; 0x33b4
    je short @..local.l174           ; 0x33b9
    mov ax, 0                        ; 0x33bb
    push ax                          ; 0x33be
    push word [bp + 0x4]             ; 0x33bf
    mov ax, 0x3c                     ; 0x33c2
    push ax                          ; 0x33c5
    call dos_mem_loc_358c            ; 0x33c6
    add sp, byte 6                   ; 0x33c9
    mov si, ax                       ; 0x33cc
@..local.l174:
    jmp short @..local.l177          ; 0x33ce
@..local.l175:
    test word [bp + 0x6], 0x400      ; 0x33d0
    je short @..local.l177           ; 0x33d5
    push si                          ; 0x33d7
    call dos_file_loc_3869           ; 0x33d8
    pop cx                           ; 0x33db
    mov word [data_24d6], 0x13       ; 0x33dc
    mov ax, 0xffff                   ; 0x33e2
@..local.l176:
    pop si                           ; 0x33e5
    pop di                           ; 0x33e6
    mov sp, bp                       ; 0x33e7
    pop bp                           ; 0x33e9
    ret                              ; 0x33ea
@..local.l177:
    cmp si, byte 0                   ; 0x33eb
    jl short @..local.l179           ; 0x33ee
    test word [bp + 0x6], 0x800      ; 0x33f0
    je short @..local.l178           ; 0x33f5
    mov ax, data_0002                ; 0x33f7
    push ax                          ; 0x33fa
    mov ax, 0                        ; 0x33fb
    mov dx, 0                        ; 0x33fe
    push dx                          ; 0x3401
    push ax                          ; 0x3402
    push si                          ; 0x3403
    call dos_file_loc_3881           ; 0x3404
    add sp, byte 8                   ; 0x3407
@..local.l178:
    push si                          ; 0x340a
    call dos_ioctl                   ; 0x340b
    pop cx                           ; 0x340e
    mov byte [si + 0x251a], al       ; 0x340f
@..local.l179:
    mov ax, si                       ; 0x3413
    jmp short @..local.l176          ; 0x3415

    db 0x57, 0x2b, 0xff, 0x85, 0xd2, 0x79, 0x08, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x47, 0x85
    db 0xdb, 0x79, 0x0b, 0xf7, 0xdb, 0xf7, 0xd9, 0x83, 0xdb, 0x00, 0x81, 0xf7, 0x01, 0x00, 0xe8, 0x39
    db 0x00, 0x85, 0xff, 0x74, 0x07, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x5f, 0xc3, 0x57, 0xbf
    db 0x00, 0x00, 0x85, 0xd2, 0x79, 0x08, 0xf7, 0xda, 0xf7, 0xd8, 0x83, 0xda, 0x00, 0x47, 0x85, 0xdb
    db 0x79, 0x07, 0xf7, 0xdb, 0xf7, 0xd9, 0x83, 0xdb, 0x00, 0xe8, 0x0e, 0x00, 0x8b, 0xc1, 0x8b, 0xd3
    db 0xeb, 0xcf, 0xe8, 0x05, 0x00, 0x8b, 0xc1, 0x8b, 0xd3, 0xc3, 0x85, 0xdb, 0x75, 0x1e, 0x3b, 0xca
    db 0x77, 0x13, 0x50, 0x8b, 0xc2, 0x2b, 0xd2, 0xf7, 0xf1, 0x8b, 0xd8, 0x58, 0xf7, 0xf1, 0x8b, 0xca
    db 0x8b, 0xd3, 0x2b, 0xdb, 0xc3, 0xf7, 0xf1, 0x8b, 0xca, 0x8b, 0xd3, 0xc3, 0x57, 0x56, 0x8b, 0xf1
    db 0x8b, 0xfb, 0x52, 0x50, 0x84, 0xff, 0x74, 0x0e, 0x8a, 0xcd, 0x8a, 0xeb, 0x8a, 0xdf, 0x8a, 0xc4
    db 0x8a, 0xe2, 0x8a, 0xd6, 0x2a, 0xf6, 0xd1, 0xea, 0xd1, 0xd8, 0xd0, 0xeb, 0xd1, 0xd9, 0x84, 0xdb
    db 0x75, 0xf4, 0xf7, 0xf1, 0x8b, 0xc8, 0xf7, 0xe6, 0x8b, 0xda, 0x50, 0x8b, 0xc1, 0xf7, 0xe7, 0x03
    db 0xd8, 0x73, 0x27, 0x49, 0x58, 0x8b, 0xc1, 0xf7, 0xe7, 0x8b, 0xd8, 0x8b, 0xc1, 0xf7, 0xe6, 0x03
    db 0xda, 0x8e, 0xc1, 0x8b, 0xc8, 0x58, 0x5a, 0x2b, 0xc8, 0x1b, 0xda, 0xf7, 0xd1, 0xf7, 0xd3, 0x83
    db 0xc1, 0x01, 0x83, 0xd3, 0x00, 0x8c, 0xc0, 0xe9, 0x12, 0x00, 0x8b, 0xd3, 0x8b, 0xc1, 0x5b, 0x59
    db 0x2b, 0xcb, 0x5b, 0x1b, 0xda, 0x73, 0x05, 0x03, 0xce, 0x13, 0xdf, 0x48, 0x2b, 0xd2, 0x5e, 0x5f
    db 0xc3

string_loc_3508:
    push bp                          ; 0x3508
    mov bp, sp                       ; 0x3509
    cld                              ; 0x350b
    push si                          ; 0x350c
    push di                          ; 0x350d
    mov si, word [bp + 0x4]          ; 0x350e
    mov di, ds                       ; 0x3511
    mov es, di                       ; 0x3513
    mov di, word [bp + 0x6]          ; 0x3515
@..string_loc_3508.l1:
    lodsw                            ; 0x3518
    scasw                            ; 0x3519
    jne short @..local.l180          ; 0x351a
    test al, al                      ; 0x351c
    je short @..string_loc_3508.l2   ; 0x351e
    test ah, ah                      ; 0x3520
    jne short @..string_loc_3508.l1  ; 0x3522
    jmp short @..string_loc_3508.l2  ; 0x3524

    db 0x55, 0x8b, 0xec, 0x8b, 0x4e, 0x08, 0x8b, 0xd1, 0xd1, 0xe9, 0xfc, 0x56, 0x57, 0x8b, 0x76, 0x04
    db 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06, 0xe3, 0x0e, 0xad, 0xaf, 0x75, 0x18, 0x84, 0xc0, 0x74
    db 0x0e, 0x84, 0xe4, 0xe0, 0xf4, 0x74, 0x08, 0xf6, 0xc2, 0x01, 0x74, 0x03, 0xa6, 0x75, 0x13

@..string_loc_3508.l2:
    sub ax, ax                       ; 0x3555
@..string_loc_3508.l3:
    pop di                           ; 0x3557
    pop si                           ; 0x3558
    pop bp                           ; 0x3559
    ret                              ; 0x355a
@..local.l180:
    sub di, byte 2                   ; 0x355b
    scasb                            ; 0x355e
    jne short @..local.l181          ; 0x355f
    test al, al                      ; 0x3561
    je short @..string_loc_3508.l2   ; 0x3563
    mov al, ah                       ; 0x3565
    scasb                            ; 0x3567
@..local.l181:
    sbb ax, ax                       ; 0x3568
    js short @..string_loc_3508.l3   ; 0x356a
    inc ax                           ; 0x356c
    jmp short @..string_loc_3508.l3  ; 0x356d
strlen_3:
    push bp                          ; 0x356f
    mov bp, sp                       ; 0x3570
    cld                              ; 0x3572
    push di                          ; 0x3573
    mov di, ds                       ; 0x3574
    mov es, di                       ; 0x3576
    mov di, word [bp + 0x4]          ; 0x3578
    mov bx, di                       ; 0x357b
    sub ax, ax                       ; 0x357d
    mov cx, 0x7fff                   ; 0x357f
    repne scasb                      ; 0x3582
    mov ax, di                       ; 0x3584
    sub ax, bx                       ; 0x3586
    dec ax                           ; 0x3588
    pop di                           ; 0x3589
    pop bp                           ; 0x358a
    ret                              ; 0x358b
dos_mem_loc_358c:
    push bp                          ; 0x358c
    mov bp, sp                       ; 0x358d
    mov ax, word [bp + 0x4]          ; 0x358f
    test ah, ah                      ; 0x3592
    jne short @..dos_mem_loc_358c.l1 ; 0x3594
    xchg al, ah                      ; 0x3596
@..dos_mem_loc_358c.l1:
    cmp ah, 0xa                      ; 0x3598
    jb short @..local.l182           ; 0x359b
    push si                          ; 0x359d
    push es                          ; 0x359e
    cmp ah, 0x47                     ; 0x359f
    jne short @..dos_mem_loc_358c.l2 ; 0x35a2
    mov dx, word [bp + 0x8]          ; 0x35a4
    mov si, word [bp + 0x6]          ; 0x35a7
    jmp short @..dos_mem_loc_358c.l3 ; 0x35aa
@..dos_mem_loc_358c.l2:
    mov cx, word [bp + 0x8]          ; 0x35ac
    mov dx, word [bp + 0x6]          ; 0x35af
@..dos_mem_loc_358c.l3:
    int 0x21 ; DOS function dispatcher
    mov dx, es                       ; 0x35b4
    pop es                           ; 0x35b6
    jae short @..dos_mem_loc_358c.l4 ; 0x35b7
    mov word [data_24d6], ax         ; 0x35b9
    mov ax, 0xffff                   ; 0x35bc
    mov dx, ax                       ; 0x35bf
@..dos_mem_loc_358c.l4:
    pop si                           ; 0x35c1
    pop bp                           ; 0x35c2
    ret                              ; 0x35c3
@..local.l182:
    mov dx, word [bp + 0x6]          ; 0x35c4
    int 0x21 ; DOS function dispatcher
    and ax, 0xff                     ; 0x35c9
    pop bp                           ; 0x35cc
    ret                              ; 0x35cd
    times 4 db 0
dos_mem_loc_35d2:
    mov bp, 0x38e                    ; 0x35d2
    test bp, bp                      ; 0x35d5
    jne short @..dos_mem_loc_35d2.l1 ; 0x35d7
    mov bp, ds                       ; 0x35d9
@..dos_mem_loc_35d2.l1:
    mov word [cs:data_33d0], ds      ; 0x35db
    mov bx, word [data_0002]         ; 0x35e0
    sub bx, bp                       ; 0x35e4
    cmp bx, strict word 0x1000       ; 0x35e6
    jbe short @..dos_mem_loc_35d2.l2 ; 0x35ea
    lea bx, word [bp + 0x1000]       ; 0x35ec
    mov ax, es                       ; 0x35f0
    sub bx, ax                       ; 0x35f2
    mov ah, 0x4a                     ; 0x35f4
    int 0x21 ; DOS resize memory block
    mov bx, 0x1000                   ; 0x35f8
@..dos_mem_loc_35d2.l2:
    mov es, bp                       ; 0x35fb
    mov word [es:data_24e4], ds      ; 0x35fd
    mov cl, data_0004                ; 0x3602
    shl bx, cl                       ; 0x3604
    db 0x26, 0x83, 0x3e, 0x18, 0x25, 0x00 ; cmp word [es:data_2518], 0
    je short @..dos_mem_loc_35d2.l4  ; 0x360c
    mov ax, word [es:data_2514]      ; 0x360e
    shl ax, 1                        ; 0x3612
    mov bx, word [es:data_2512]      ; 0x3614
    shl bx, cl                       ; 0x3619
    cmp bx, ax                       ; 0x361b
    ja short @..dos_mem_loc_35d2.l3  ; 0x361d
    mov bx, ax                       ; 0x361f
@..dos_mem_loc_35d2.l3:
    add bx, strict word 0x2afe       ; 0x3621
@..dos_mem_loc_35d2.l4:
    cli                              ; 0x3625
    mov ss, bp                       ; 0x3626
    mov sp, bx                       ; 0x3628
    sti                              ; 0x362a
    test bx, bx                      ; 0x362b
    jne short @..dos_mem_loc_35d2.l5 ; 0x362d
    mov bx, 0xffff                   ; 0x362f
@..dos_mem_loc_35d2.l5:
    mov word [es:data_24e0], bx      ; 0x3632
    db 0x26, 0x83, 0x3e, 0x18, 0x25, 0x00 ; cmp word [es:data_2518], 0
    je short @..dos_mem_loc_35d2.l7  ; 0x363d
    mov si, word [es:data_2516]      ; 0x363f
    mov ax, bx                       ; 0x3644
    inc ax                           ; 0x3646
    mov word [es:data_24d4], ax      ; 0x3647
    shl si, cl                       ; 0x364b
    add bx, si                       ; 0x364d
    jae short @..dos_mem_loc_35d2.l6 ; 0x364f
    mov bx, 0xffff                   ; 0x3651
@..dos_mem_loc_35d2.l6:
    mov word [es:data_24e0], bx      ; 0x3654
    add bx, byte 0x0f                ; 0x3659
    shr bx, cl                       ; 0x365c
    mov ax, es                       ; 0x365e
    add bx, ax                       ; 0x3660
    mov ax, ds                       ; 0x3662
    sub bx, ax                       ; 0x3664
    mov bp, es                       ; 0x3666
    mov es, ax                       ; 0x3668
    mov ah, 0x4a                     ; 0x366a
    int 0x21 ; DOS resize memory block
    jae short @..dos_mem_loc_35d2.l7 ; 0x366e
    mov al, 0xfe                     ; 0x3670
    jmp near @..dos_mem_loc_35d2.l17 ; 0x3672
@..dos_mem_loc_35d2.l7:
    mov es, bp                       ; 0x3675
    cld                              ; 0x3677
    mov di, data_2534                ; 0x3678
    mov cx, 0x2afe                   ; 0x367b
    sub cx, di                       ; 0x367e
    inc cx                           ; 0x3680
    shr cx, 1                        ; 0x3681
    jcxz @..dos_mem_loc_35d2.l8      ; 0x3683
    sub ax, ax                       ; 0x3685
    rep stosw                        ; 0x3687
@..dos_mem_loc_35d2.l8:
    mov es, word [data_002c]         ; 0x3689
    sub di, di                       ; 0x368d
    mov cx, 0x7fff                   ; 0x368f
@..dos_mem_loc_35d2.l9:
    mov ah, byte [es:di]             ; 0x3692
    cmp ah, 0x3d                     ; 0x3695
    je short @..dos_mem_loc_35d2.l11 ; 0x3698
    test ah, ah                      ; 0x369a
    je short @..dos_mem_loc_35d2.l10 ; 0x369c
    repne scasb                      ; 0x369e
    je short @..dos_mem_loc_35d2.l9  ; 0x36a0
@..dos_mem_loc_35d2.l10:
    mov cl, byte [data_0080]         ; 0x36a2
    sub ch, ch                       ; 0x36a6
    mov si, 0x81                     ; 0x36a8
    mov ax, 1                        ; 0x36ab
    jmp short @..dos_mem_loc_35d2.l12 ; 0x36ae
@..dos_mem_loc_35d2.l11:
    sub ax, ax                       ; 0x36b0
    stosb                            ; 0x36b2
    mov si, di                       ; 0x36b3
    mov di, es                       ; 0x36b5
    mov ds, di                       ; 0x36b7
@..dos_mem_loc_35d2.l12:
    push ax                          ; 0x36b9
    mov es, bp                       ; 0x36ba
    mov di, word [es:data_24d4]      ; 0x36bc
    push di                          ; 0x36c1
    jcxz @..dos_mem_loc_35d2.l14     ; 0x36c2
@..dos_mem_loc_35d2.l13:
    lodsb                            ; 0x36c4
    test al, al                      ; 0x36c5
    je short @..dos_mem_loc_35d2.l14 ; 0x36c7
    stosb                            ; 0x36c9
    loop @..dos_mem_loc_35d2.l13     ; 0x36ca
@..dos_mem_loc_35d2.l14:
    sub al, al                       ; 0x36cc
    stosb                            ; 0x36ce
    mov ds, bp                       ; 0x36cf
    inc di                           ; 0x36d1
    and di, strict word 0xfffe       ; 0x36d2
    mov word [data_24d4], di         ; 0x36d6
    mov word [data_24dc], di         ; 0x36da
    mov word [data_24de], 0x2afe     ; 0x36de
    cmp word [data_2518], byte 0     ; 0x36e4
    jne short @..dos_mem_loc_35d2.l15 ; 0x36e9
    mov word [data_24de], di         ; 0x36eb
@..dos_mem_loc_35d2.l15:
    mov ax, word [data_24de]         ; 0x36ef
    add ax, word [data_2514]         ; 0x36f2
    mov word [data_24de], ax         ; 0x36f6
    mov word [data_24d8], ds         ; 0x36f9
    mov word [data_24da], cs         ; 0x36fd
    call dos_file_loc_381d           ; 0x3701
    jb short @..dos_mem_loc_35d2.l16 ; 0x3704
    call loc_373f                    ; 0x3706
    jmp short @..dos_mem_loc_35d2.l17 ; 0x3709
@..dos_mem_loc_35d2.l16:
    mov ah, 9                        ; 0x370b
    mov dx, 0x24e6                   ; 0x370d
    int 0x21 ; DOS string output
    mov al, 0xfd                     ; 0x3712
    jmp short @..dos_mem_loc_35d2.l17 ; 0x3714
dos_proc_loc_3716:
    pop ax                           ; 0x3716
    pop ax                           ; 0x3717
@..dos_mem_loc_35d2.l17:
    mov ah, 0x4c                     ; 0x3718
    int 0x21 ; DOS exit with return code

    db 0x2e, 0xff, 0x2e, 0xce, 0x33
    times 4 db 0
    db 0x2e, 0x8f, 0x06, 0x21, 0x35, 0x2e, 0x8f, 0x06, 0x23, 0x35, 0x1f, 0xe8, 0x05, 0x00, 0x2e, 0xff
    db '.!5WV'
    db 0xcb, 0xb8, 0x00, 0x00, 0xc3

loc_373f:
    push bp                          ; 0x373f
    mov bp, sp                       ; 0x3740
    push di                          ; 0x3742
    push si                          ; 0x3743
    mov si, word [bp + 0x4]          ; 0x3744
    mov ax, 0                        ; 0x3747
    push ax                          ; 0x374a
    call dos_ioctl                   ; 0x374b
    pop cx                           ; 0x374e
    mov byte [data_251a], al         ; 0x374f
    mov ax, 1                        ; 0x3752
    push ax                          ; 0x3755
    call dos_ioctl                   ; 0x3756
    pop cx                           ; 0x3759
    mov byte [data_251b], al         ; 0x375a
    mov ax, data_0002                ; 0x375d
    push ax                          ; 0x3760
    call dos_ioctl                   ; 0x3761
    pop cx                           ; 0x3764
    mov byte [data_251c], al         ; 0x3765
    mov ax, word [bp + 0x6]          ; 0x3768
    shl ax, 1                        ; 0x376b
    inc ax                           ; 0x376d
    inc ax                           ; 0x376e
    push ax                          ; 0x376f
    call loc_3a05                    ; 0x3770
    pop cx                           ; 0x3773
    mov word [data_253c], ax         ; 0x3774
    mov ax, 0x2502                   ; 0x3777
    mov bx, word [data_253c]         ; 0x377a
    mov word [bx], 0x2502            ; 0x377e
    mov ax, word [bp + 0x6]          ; 0x3782
    mov word [data_253a], ax         ; 0x3785
    shl ax, 1                        ; 0x3788
    mov di, word [data_253c]         ; 0x378a
    add di, ax                       ; 0x378e
@..local.l183:
    cmp byte [si], 0x20              ; 0x3790
    je short @..local.l184           ; 0x3793
    cmp byte [si], 9                 ; 0x3795
    jne short @..local.l185          ; 0x3798
@..local.l184:
    inc si                           ; 0x379a
    jmp short @..local.l183          ; 0x379b
@..local.l185:
    cmp byte [si], 0                 ; 0x379d
    je short @..local.l190           ; 0x37a0
    mov word [di], si                ; 0x37a2
    inc di                           ; 0x37a4
    inc di                           ; 0x37a5
    inc word [data_253a]             ; 0x37a6
    mov ax, data_0002                ; 0x37aa
    push ax                          ; 0x37ad
    call loc_3a05                    ; 0x37ae
    pop cx                           ; 0x37b1
    cmp ax, strict word 0xffff       ; 0x37b2
    jne short @..local.l186          ; 0x37b5
    mov ax, 0xe                      ; 0x37b7
    push ax                          ; 0x37ba
    mov ax, 0x2503                   ; 0x37bb
    push ax                          ; 0x37be
    mov ax, data_0002                ; 0x37bf
    push ax                          ; 0x37c2
    call dos_file_loc_383a           ; 0x37c3
    add sp, byte 6                   ; 0x37c6
    mov ax, 0xc8                     ; 0x37c9
    push ax                          ; 0x37cc
    call dos_proc_loc_3716           ; 0x37cd
    pop cx                           ; 0x37d0
@..local.l186:
    inc si                           ; 0x37d1
    cmp byte [si], 0                 ; 0x37d2
    je short @..local.l189           ; 0x37d5
    mov al, byte [si]                ; 0x37d7
    cmp al, 0x20                     ; 0x37d9
    je short @..local.l187           ; 0x37db
    cmp al, 9                        ; 0x37dd
    jne short @..local.l188          ; 0x37df
@..local.l187:
    mov byte [si], 0                 ; 0x37e1
    inc si                           ; 0x37e4
    jmp short @..local.l189          ; 0x37e5
@..local.l188:
    jmp short @..local.l186          ; 0x37e7
@..local.l189:
    jmp short @..local.l183          ; 0x37e9
@..local.l190:
    mov word [di], 0                 ; 0x37eb
    push word [data_253c]            ; 0x37ef
    push word [data_253a]            ; 0x37f3
    call math_loc_12b5               ; 0x37f7
    add sp, byte 4                   ; 0x37fa
    mov ax, 0                        ; 0x37fd
    push ax                          ; 0x3800
    call dos_file_loc_380b           ; 0x3801
    pop cx                           ; 0x3804
    pop si                           ; 0x3805
    pop di                           ; 0x3806
    mov sp, bp                       ; 0x3807
    pop bp                           ; 0x3809
    ret                              ; 0x380a
dos_file_loc_380b:
    push bp                          ; 0x380b
    mov bp, sp                       ; 0x380c
    call [data_2500]                 ; 0x380e
    push word [bp + 0x4]             ; 0x3812
    call dos_proc_loc_3716           ; 0x3815
    pop cx                           ; 0x3818
    mov sp, bp                       ; 0x3819
    pop bp                           ; 0x381b
    ret                              ; 0x381c
dos_file_loc_381d:
    clc                              ; 0x381d
    ret                              ; 0x381e
    push bp                          ; 0x381f
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x3f                     ; 0x3822
    mov bx, word [bp + 0x4]          ; 0x3824
    jmp short @..dos_file_loc_3833.l3 ; 0x3827
    push bp                          ; 0x3829
    db 0x8b, 0xec ; mov bp, sp
    mov ah, 0x40                     ; 0x382c
    mov bx, word [bp + 0x4]          ; 0x382e
    jmp short @..dos_file_loc_3833.l3 ; 0x3831
dos_file_loc_3833:
    push bp                          ; 0x3833
    mov bp, sp                       ; 0x3834
    mov ah, 0x3f                     ; 0x3836
    jmp short @..dos_file_loc_3833.l1 ; 0x3838
dos_file_loc_383a:
    push bp                          ; 0x383a
    mov bp, sp                       ; 0x383b
    mov ah, 0x40                     ; 0x383d
@..dos_file_loc_3833.l1:
    mov bx, word [bp + 0x4]          ; 0x383f
    cmp byte [bx + 0x251a], 0        ; 0x3842
    je short @..dos_file_loc_3833.l3 ; 0x3847
    pop bp                           ; 0x3849
    cmp ah, 0x3f                     ; 0x384a
    je short @..dos_file_loc_3833.l2 ; 0x384d
    jmp [data_2530]                  ; 0x384f
@..dos_file_loc_3833.l2:
    jmp [bios_video_loc_252e]        ; 0x3853
@..dos_file_loc_3833.l3:
    mov dx, word [bp + 0x6]          ; 0x3857
    mov cx, word [bp + 0x8]          ; 0x385a
    int 0x21 ; DOS function dispatcher
    jae short @..dos_file_loc_3833.l4 ; 0x385f
    mov word [data_24d6], ax         ; 0x3861
    mov ax, 0xffff                   ; 0x3864
@..dos_file_loc_3833.l4:
    pop bp                           ; 0x3867
    ret                              ; 0x3868
dos_file_loc_3869:
    push bp                          ; 0x3869
    mov bp, sp                       ; 0x386a
    mov ah, 0x3e                     ; 0x386c
    mov bx, word [bp + 0x4]          ; 0x386e
    int 0x21 ; DOS close file handle
    jae short @..local.l191          ; 0x3873
    mov word [data_24d6], ax         ; 0x3875
    mov ax, 0xffff                   ; 0x3878
    pop bp                           ; 0x387b
    ret                              ; 0x387c
@..local.l191:
    sub ax, ax                       ; 0x387d
    pop bp                           ; 0x387f
    ret                              ; 0x3880
dos_file_loc_3881:
    push bp                          ; 0x3881
    mov bp, sp                       ; 0x3882
    mov ah, 0x42                     ; 0x3884
    mov al, byte [bp + 0xa]          ; 0x3886
    mov dx, word [bp + 0x6]          ; 0x3889
    mov cx, word [bp + 0x8]          ; 0x388c
    mov bx, word [bp + 0x4]          ; 0x388f
    int 0x21 ; DOS seek file (lseek)
    jae short @..dos_file_loc_3881.l1 ; 0x3894
    mov word [data_24d6], ax         ; 0x3896
    mov ax, 0xffff                   ; 0x3899
    mov dx, ax                       ; 0x389c
@..dos_file_loc_3881.l1:
    pop bp                           ; 0x389e
    ret                              ; 0x389f
dos_file_loc_38a0:
    push bp                          ; 0x38a0
    mov bp, sp                       ; 0x38a1
    mov ah, 0x41                     ; 0x38a3
    mov dx, word [bp + 0x4]          ; 0x38a5
    int 0x21 ; DOS delete file (handle)
    jae short @..local.l192          ; 0x38aa
    mov word [data_24d6], ax         ; 0x38ac
    mov ax, 0xffff                   ; 0x38af
    pop bp                           ; 0x38b2
    ret                              ; 0x38b3
@..local.l192:
    sub ax, ax                       ; 0x38b4
    pop bp                           ; 0x38b6
    ret                              ; 0x38b7

    db 0x55, 0x8b, 0xec, 0x57, 0xb4, 0x56, 0x8b, 0x56, 0x04, 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x7e, 0x06
    db 0xcd, 0x21, 0x5f, 0x73, 0x08, 0xa3, 0xd6, 0x24, 0xb8, 0xff, 0xff, 0x5d, 0xc3, 0x2b, 0xc0, 0x5d
    db 0xc3, 0x55, 0x8b, 0xec, 0x56, 0x8b, 0x36, 0xfc, 0x2a, 0x85, 0xf6, 0x75, 0x30, 0xb8, 0x04, 0x01
    db 0x50, 0xb8, 0x3e, 0x25, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x2c, 0xff, 0x83, 0xc4, 0x06, 0x8b, 0xf0
    db 0x85, 0xf6, 0x74, 0x0f, 0x80, 0xbc, 0x3d, 0x25, 0x0a, 0x75, 0x08, 0x4e, 0xa0, 0x32, 0x25, 0x88
    db 0x84, 0x3d, 0x25, 0xc7, 0x06, 0x42, 0x26, 0x3e, 0x25, 0x89, 0x36, 0xfc, 0x2a, 0x3b, 0x76, 0x08
    db 0x7e, 0x03, 0x8b, 0x76, 0x08, 0x85, 0xf6, 0x74, 0x0e, 0x56, 0xff, 0x76, 0x06, 0xff, 0x36, 0x42
    db 0x26, 0xe8, 0x74, 0x00, 0x83, 0xc4, 0x06, 0x01
    db '6B&)6'
    db 0xfc, 0x2a, 0x8b, 0xc6, 0x5e, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x57, 0x56, 0x8b, 0x7e
    db 0x06, 0x8b, 0x76, 0x08, 0xeb, 0x2e, 0x8b, 0xdf, 0x47, 0x80, 0x3f, 0x0a, 0x75, 0x26, 0x8b, 0xc7
    db 0x2b, 0x46, 0x06, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0xc7, 0xfe, 0x83, 0xc4, 0x06
    db 0xb8, 0x01, 0x00, 0x50, 0xb8, 0x33, 0x25, 0x50, 0xff, 0x76, 0x04, 0xe8, 0xb6, 0xfe, 0x83, 0xc4
    db 0x06, 0x89, 0x7e, 0x06, 0x8b, 0xc6, 0x4e, 0x85, 0xc0, 0x75, 0xcb, 0x3b, 0x7e, 0x06, 0x74, 0x12
    db 0x8b, 0xc7, 0x2b, 0x46, 0x06, 0x50, 0xff, 0x76, 0x06, 0xff, 0x76, 0x04, 0xe8, 0x95, 0xfe, 0x83
    db 0xc4, 0x06, 0x8b, 0x46, 0x08, 0x5e, 0x5f, 0x8b, 0xe5, 0x5d, 0xc3, 0x55, 0x8b, 0xec, 0x9c, 0xfc
    db 0x56, 0x57, 0x8c, 0xdf, 0x8e, 0xc7, 0x8b, 0x76, 0x04, 0x8b, 0x7e, 0x06, 0x8b, 0x4e, 0x08, 0x8c
    db 0xc0, 0x8c, 0xda, 0x3b, 0xc2, 0x75, 0x17, 0x3b, 0xfe, 0x74, 0x1f, 0x72, 0x11, 0xfd, 0x03, 0xf9
    db 0x03, 0xf1, 0x4f, 0x4e, 0xf6, 0xc1, 0x01, 0x74, 0x01, 0xa4, 0x4f, 0x4e, 0xeb, 0x06, 0xf6, 0xc1
    db 0x01, 0x74, 0x01, 0xa4, 0xd1, 0xe9, 0x74, 0x02, 0xf3, 0xa5, 0xfc, 0x5f, 0x5e, 0x9d, 0x5d, 0xc3

%include "vinstall/dos_ioctl.asm"

@..local.l193:
    sub ax, ax                       ; 0x3a01
    pop bp                           ; 0x3a03
    ret                              ; 0x3a04
loc_3a05:
    push bp                          ; 0x3a05
    mov bp, sp                       ; 0x3a06
    push di                          ; 0x3a08
    mov ax, word [bp + 0x4]          ; 0x3a09
    mov di, word [data_24d4]         ; 0x3a0c
    test ax, ax                      ; 0x3a10
    jge short @..local.l194          ; 0x3a12
    sub di, ax                       ; 0x3a14
    jb short @..local.l197           ; 0x3a16
    jmp short @..local.l195          ; 0x3a18
@..local.l194:
    add ax, di                       ; 0x3a1a
    jb short @..local.l197           ; 0x3a1c
@..local.l195:
    push ax                          ; 0x3a1e
    call dos_mem_loc_3a39            ; 0x3a1f
    pop cx                           ; 0x3a22
    test ax, ax                      ; 0x3a23
    jne short @..local.l196          ; 0x3a25
    mov ax, di                       ; 0x3a27
@..local.l196:
    pop di                           ; 0x3a29
    test ax, ax                      ; 0x3a2a
    pop bp                           ; 0x3a2c
    ret                              ; 0x3a2d
@..local.l197:
    mov word [data_24d6], 0xfff8     ; 0x3a2e
    mov ax, 0xffff                   ; 0x3a34
    jmp short @..local.l196          ; 0x3a37
dos_mem_loc_3a39:
    push bp                          ; 0x3a39
    mov bp, sp                       ; 0x3a3a
    mov ax, word [bp + 0x4]          ; 0x3a3c
    inc ax                           ; 0x3a3f
    and al, 0xfe                     ; 0x3a40
    cmp ax, word [data_24dc]         ; 0x3a42
    jb short @..local.l200           ; 0x3a46
    cmp word [data_2518], byte 0     ; 0x3a48
    jne short @..local.l198          ; 0x3a4d
    mov bx, sp                       ; 0x3a4f
    sub bx, word [data_2514]         ; 0x3a51
    cmp ax, bx                       ; 0x3a55
    jae short @..local.l200          ; 0x3a57
    mov word [data_24d4], ax         ; 0x3a59
    add ax, word [data_2514]         ; 0x3a5c
    mov word [data_24de], ax         ; 0x3a60
@..dos_mem_loc_3a39.l1:
    sub ax, ax                       ; 0x3a63
    pop bp                           ; 0x3a65
    ret                              ; 0x3a66
@..local.l198:
    cmp ax, word [data_24e0]         ; 0x3a67
    ja short @..local.l199           ; 0x3a6b
    cmp ax, word [data_24d4]         ; 0x3a6d
    jb short @..local.l199           ; 0x3a71
    mov word [data_24d4], ax         ; 0x3a73
    jmp short @..dos_mem_loc_3a39.l1 ; 0x3a76
@..local.l199:
    push ax                          ; 0x3a78
    mov bx, ax                       ; 0x3a79
    mov cx, data_0004                ; 0x3a7b
    shr bx, cl                       ; 0x3a7e
    and bx, strict word 0xfff        ; 0x3a80
    add bx, byte 0x41                ; 0x3a84
    and bx, strict word 0xffc0       ; 0x3a87
    push bx                          ; 0x3a8b
    push es                          ; 0x3a8c
    mov cx, ds                       ; 0x3a8d
    add bx, cx                       ; 0x3a8f
    mov es, word [data_24e4]         ; 0x3a91
    sub bx, word [data_24e4]         ; 0x3a95
    mov ah, 0x4a                     ; 0x3a99
    int 0x21 ; DOS resize memory block
    pop es                           ; 0x3a9d
    pop bx                           ; 0x3a9e
    pop ax                           ; 0x3a9f
    jb short @..local.l200           ; 0x3aa0
    mov word [data_24d4], ax         ; 0x3aa2
    test bx, 0xe000                  ; 0x3aa5
    jne short @..local.l200          ; 0x3aa9
    mov cx, data_0004                ; 0x3aab
    shl bx, cl                       ; 0x3aae
    mov word [data_24e0], bx         ; 0x3ab0
    sub ax, ax                       ; 0x3ab4
    pop bp                           ; 0x3ab6
    ret                              ; 0x3ab7
@..local.l200:
    mov word [data_24d6], 0xfff8     ; 0x3ab8
    mov ax, 0xffff                   ; 0x3abe
    test ax, ax                      ; 0x3ac1
    pop bp                           ; 0x3ac3
    ret                              ; 0x3ac4

    db 0x55, 0x8b, 0xec, 0x8b, 0xc4, 0x2b, 0x46, 0x04, 0xa3, 0x14, 0x25, 0x5d, 0xc3
    times 16 db 0
    db 0x0e, 0x00, 0x25, 0x00, 0x3c, 0x00, 0x53, 0x00, 0x6a, 0x00, 0x81, 0x00
    db '0-NO GRAPHICS BOARD   ', 0
    db '1-VGA/MCGA (256 Color)', 0
    db '2-EGA      (16 Color) ', 0
    db '3-CGA      (4 Color)  ', 0
    db '4-HERCULES B/W Mono   ', 0
    db '5-TANDY    (16 Color) ', 0
    db 0x9c, 0x00, 0xa0, 0x00, 0x4f, 0x4e, 0x20, 0x00, 0x4f, 0x46, 0x46, 0x00, 0xb4, 0x00, 0xc8, 0x00
    db 0xdc, 0x00, 0xf0, 0x00, 0x04, 0x01, 0x18, 0x01, 0x2c, 0x01, 0x40, 0x01
    db 'PC INTERNAL SPEAKER', 0
    db 'AD LIB BOARD       ', 0
    db 'COVOX SOUNDMASTER  ', 0
    db 'COVOX VOICEMASTER  ', 0
    db 'SOUND BLASTER      ', 0
    db 'ROLAND LAPC-1/MT-32', 0
    db 'COVOX SMII         ', 0
    db 'NONE               ', 0
    db 0x58, 0x01, 0x5c, 0x01, 0x4e, 0x4f, 0x20, 0x00, 0x59, 0x45, 0x53, 0x00, 0x6a, 0x01, 0x81, 0x01
    db 0x98, 0x01, 0xaf, 0x01, 0xc6, 0x01
    db 'Floppy 5.25L (360k)   ', 0
    db 'Floppy 5.25H (1.2Meg) ', 0
    db 'Floppy 3.5L  (720k)   ', 0
    db 'Floppy 3.5H  (1.44Meg)', 0
    db 'Hard (Fixed) Drive    ', 0
    times 4 db 0
    db 0x01, 0x00, 0x03, 0x00, 0x03, 0x00, 0x04, 0x00, 0x06, 0x00, 0x06, 0x00, 0x07, 0x00, 0x09, 0x00
    db 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x0c, 0x00, 0x0e, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0x01, 0x00
    db 0x02, 0x00, 0x02, 0x00, 0x04, 0x00, 0x05, 0x00, 0x05, 0x00, 0x07, 0x00, 0x08, 0x00, 0x08, 0x00
    db 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0d, 0x00, 0x0d, 0x00, 0x0f, 0x00, 0x10, 0x00, 0x10, 0x00
    db 0x00, 0x00, 0x01, 0x00, 0x02
    times 7 db 0
    db 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x06, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0b, 0x00
    db 0x0c, 0x00, 0x0c, 0x00, 0x0c, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x06, 0x00, 0x06, 0x00
    db 0x06, 0x00, 0x09, 0x00, 0x09, 0x00, 0x09, 0x00, 0x0a, 0x00, 0x0b, 0x00, 0x0c, 0x00, 0x0e, 0x00
    db 0x0e, 0x00, 0x0e, 0x00, 0x0f, 0x00, 0x10
    times 5 db 0
    db 0x01, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x03, 0x00, 0x03, 0x00, 0x03, 0x00, 0x04, 0x00
    db 0x04, 0x00, 0x04
    times 9 db 0
    db 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x02, 0x00
    db 0x01, 0x00, 0x03, 0x00, 0x05, 0x00, 0x07, 0x00, 0x0a, 0x00, 0x01, 0x00, 0x05, 0x00, 0x0b
    times 5 db 0
    db 0x01, 0x00, 0xc1, 0x08, 0xce, 0x08, 0xd0, 0x08, 0xd2, 0x08, 0x01, 0x00, 0xd4, 0x08, 0xde, 0x08
    db 0xe0, 0x08, 0xe2, 0x08, 0x01, 0x00, 0xe4, 0x08, 0xee, 0x08, 0xf0, 0x08, 0xf2, 0x08, 0x01, 0x00
    db 0xf4, 0x08, 0xfe, 0x08, 0x00, 0x09, 0x02, 0x09, 0x01, 0x00, 0x04, 0x09, 0x0e, 0x09, 0x10, 0x09
    db 0x12, 0x09, 0x01, 0x00, 0x14, 0x09, 0x1e, 0x09, 0x21, 0x09, 0x23, 0x09, 0x01, 0x00, 0x25, 0x09
    db 0x2f, 0x09, 0x31, 0x09, 0x3a, 0x09, 0x01, 0x00, 0x3d, 0x09, 0x47, 0x09, 0x49, 0x09, 0x52, 0x09
    db 0x01, 0x00, 0x55, 0x09, 0x5f, 0x09, 0x61, 0x09, 0x6a, 0x09, 0x01, 0x00, 0x6d, 0x09, 0x77, 0x09
    db 0x79, 0x09, 0x82, 0x09, 0x01, 0x00, 0x85, 0x09, 0x8f, 0x09, 0x91, 0x09, 0x9a, 0x09, 0x01, 0x00
    db 0x9d, 0x09, 0xa7, 0x09, 0xa9, 0x09, 0xb2, 0x09, 0x01, 0x00, 0xb5, 0x09, 0xbf, 0x09, 0xc1, 0x09
    db 0xca, 0x09, 0x02, 0x00, 0xcd, 0x09, 0xda, 0x09, 0xdc, 0x09, 0xde, 0x09, 0x02, 0x00, 0xe0, 0x09
    db 0xe8, 0x09, 0xea, 0x09, 0xec, 0x09, 0x02, 0x00, 0xee, 0x09, 0xf9, 0x09, 0xfb, 0x09, 0xfd, 0x09
    db 0x02, 0x00, 0xff, 0x09, 0x08, 0x0a, 0x0a, 0x0a, 0x0c, 0x0a, 0x02, 0x00, 0x0e, 0x0a, 0x19, 0x0a
    db 0x1b, 0x0a, 0x1d, 0x0a, 0x02, 0x00, 0x1f, 0x0a, 0x27, 0x0a, 0x2a, 0x0a, 0x2c, 0x0a, 0x02, 0x00
    db 0x2e, 0x0a, 0x3a, 0x0a, 0x3c, 0x0a, 0x3e, 0x0a, 0x02, 0x00, 0x40, 0x0a, 0x4c, 0x0a, 0x4e, 0x0a
    db 0x50, 0x0a, 0x03, 0x00, 0x52, 0x0a, 0x5a, 0x0a, 0x5c, 0x0a, 0x5e, 0x0a, 0x03, 0x00, 0x60, 0x0a
    db 0x6b, 0x0a, 0x6d, 0x0a, 0x6f, 0x0a, 0x03, 0x00, 0x71, 0x0a, 0x7c, 0x0a, 0x7e, 0x0a, 0x80, 0x0a
    db 0x03, 0x00, 0x82, 0x0a, 0x8d, 0x0a, 0x8f, 0x0a, 0x91, 0x0a, 0x03, 0x00, 0x93, 0x0a, 0x9e, 0x0a
    db 0xa0, 0x0a, 0xa2, 0x0a, 0x03, 0x00, 0xa4, 0x0a, 0xaf, 0x0a, 0xb1, 0x0a, 0xb3, 0x0a, 0x03, 0x00
    db 0xb5, 0x0a, 0xc0, 0x0a, 0xc2, 0x0a, 0xc4, 0x0a, 0x03, 0x00, 0xc6, 0x0a, 0xd1, 0x0a, 0xd3, 0x0a
    db 0xd5, 0x0a, 0x03, 0x00, 0xd7, 0x0a, 0xe2, 0x0a, 0xe4, 0x0a, 0xe6, 0x0a, 0x03, 0x00, 0xe8, 0x0a
    db 0xf5, 0x0a, 0xf7, 0x0a, 0xf9, 0x0a, 0x03, 0x00, 0xfb, 0x0a, 0x08, 0x0b, 0x0a, 0x0b, 0x0c, 0x0b
    db 0x03, 0x00, 0x0e, 0x0b, 0x1b, 0x0b, 0x1d, 0x0b, 0x1f, 0x0b, 0x03, 0x00, 0x21, 0x0b, 0x2e, 0x0b
    db 0x30, 0x0b, 0x32, 0x0b, 0x04, 0x00, 0x34, 0x0b, 0x3e, 0x0b, 0x47, 0x0b, 0x50, 0x0b, 0x04, 0x00
    db 0x53, 0x0b, 0x5d, 0x0b, 0x5f, 0x0b, 0x61, 0x0b, 0x04, 0x00, 0x63, 0x0b, 0x6d, 0x0b, 0x6f, 0x0b
    db 0x71, 0x0b, 0x04, 0x00, 0x73, 0x0b, 0x7d

leaf_loc_3f00:
    or di, word [bx + 0xb]           ; 0x3f00
    or word [bp + di], data_0004     ; 0x3f03
    or word [bp + di], byte 0x8d     ; 0x3f07
    or cx, word [bx - 0x6ef5]        ; 0x3f0a
    or ax, word [si]                 ; 0x3f0e
    add byte [bp + di - 0x62f5], dl  ; 0x3f10
    or bx, word [bx - 0x5ef5]        ; 0x3f14
    or ax, word [si]                 ; 0x3f18
    add byte [bp + di - 0x52f5], ah  ; 0x3f1a
    or bp, word [bx - 0x4ef5]        ; 0x3f1e
    or ax, word [si]                 ; 0x3f22
    add byte [bp + di - 0x42f5], dh  ; 0x3f24
    or di, word [bx - 0x3ef5]        ; 0x3f28
    or ax, word [si]                 ; 0x3f2c
    add bl, al                       ; 0x3f2e
    or cx, bp                        ; 0x3f30
    or cx, di                        ; 0x3f32
    or dx, cx                        ; 0x3f34
    or ax, word [si]                 ; 0x3f36
    add bl, dl                       ; 0x3f38
    or bx, bp                        ; 0x3f3a
    or sp, cx                        ; 0x3f3c
    or sp, bp                        ; 0x3f3e
    or ax, word [si]                 ; 0x3f40
    add bh, ah                       ; 0x3f42
    or si, cx                        ; 0x3f44
    or si, bx                        ; 0x3f46
    or si, bp                        ; 0x3f48
    or ax, word [si]                 ; 0x3f4a
    add bh, dh                       ; 0x3f4c
    or ax, word [bx + di]            ; 0x3f4e
    or al, 3                         ; 0x3f50
    or al, data_0005                 ; 0x3f52
    or al, data_0004                 ; 0x3f54
    add byte [bx], al                ; 0x3f56
    or al, 0x11                      ; 0x3f58
    or al, 0x15                      ; 0x3f5a
    or al, 0x19                      ; 0x3f5c
    or al, data_0004                 ; 0x3f5e
    add byte [bp + di], bl           ; 0x3f60
    or al, 0x25                      ; 0x3f62
    or al, 0x28                      ; 0x3f64
    or al, 0x2b                      ; 0x3f66
    or al, data_0004                 ; 0x3f68
    add byte [data_380c], ch         ; 0x3f6a
    or al, 0x3c                      ; 0x3f6e
    or al, 0x40                      ; 0x3f70
    or al, data_0004                 ; 0x3f72
    add byte [bp + si + 0xc], al     ; 0x3f74
    dec sp                           ; 0x3f77
    or al, 0x4e                      ; 0x3f78
    or al, 0x50                      ; 0x3f7a
    or al, data_0004                 ; 0x3f7c
    add byte [bp + si + 0xc], dl     ; 0x3f7e
    pop sp                           ; 0x3f81
    or al, 0x5f                      ; 0x3f82
    or al, 0x62                      ; 0x3f84
    or al, data_0004                 ; 0x3f86
    add byte [si + 0xc], ah          ; 0x3f88
    outsb                            ; 0x3f8b
    or al, 0x72                      ; 0x3f8c
    or al, 0x76                      ; 0x3f8e
    or al, data_0004                 ; 0x3f90
    add byte [bx + di + 0xc], bh     ; 0x3f92
    or word [si], byte 0x87          ; 0x3f95
    or al, 0x8b                      ; 0x3f98
    or al, data_0004                 ; 0x3f9a
    add byte [bp - 0x67f4], cl       ; 0x3f9c
    or al, 0x9e                      ; 0x3fa0
    or al, 0xa4                      ; 0x3fa2
    or al, data_0004                 ; 0x3fa4
    add byte [bx - 0x4ef4], ah       ; 0x3fa6
    or al, 0xb4                      ; 0x3faa
    or al, 0xb7                      ; 0x3fac
    or al, data_0004                 ; 0x3fae
    add byte [bx + di - 0x3cf4], bh  ; 0x3fb0
    or al, 0xc6                      ; 0x3fb4
    or al, 0xc9                      ; 0x3fb6
    or al, data_0004                 ; 0x3fb8
    add ah, cl                       ; 0x3fba
    or al, 0xd6                      ; 0x3fbc
    or al, 0xd9                      ; 0x3fbe
    or al, 0xdc                      ; 0x3fc0
    or al, data_0004                 ; 0x3fc2
    add dh, bl                       ; 0x3fc4
    or al, 0xe8                      ; 0x3fc6
    or al, 0xeb                      ; 0x3fc8
    or al, 0xee                      ; 0x3fca
    or al, data_0004                 ; 0x3fcc
    add al, dh                       ; 0x3fce
    or al, 0xfa                      ; 0x3fd0
    or al, 0xfd                      ; 0x3fd2
    or al, 0                         ; 0x3fd4
    or ax, strict word 4             ; 0x3fd6
    add cl, byte [di]                ; 0x3fd9
    or al, 0xd                       ; 0x3fdb
    adc byte [di], cl                ; 0x3fdd
    adc al, 0xd                      ; 0x3fdf
    add al, 0                        ; 0x3fe1
    pop ss                           ; 0x3fe3
    or ax, 0xd21                     ; 0x3fe4
    daa                              ; 0x3fe7
    or ax, 0xd2d                     ; 0x3fe8
    add al, 0                        ; 0x3feb
    xor byte [di], cl                ; 0x3fed
    cmp cl, byte [di]                ; 0x3fef
    cmp al, 0xd                      ; 0x3ff1
    ds or ax, data_0004              ; 0x3ff3
    inc ax                           ; 0x3ff7
    or ax, 0xd4a                     ; 0x3ff8
    dec bp                           ; 0x3ffb
    or ax, 0xd50                     ; 0x3ffc
    add ax, 0x5300                   ; 0x3fff
    or ax, 0xd5b                     ; 0x4002
    pop bp                           ; 0x4005
    or ax, 0xd5f                     ; 0x4006
    add ax, 0x6100                   ; 0x4009
    or ax, math_loc_0d6a             ; 0x400c
    insb                             ; 0x400f
    or ax, 0xd6e                     ; 0x4010
    add ax, 0x7000                   ; 0x4013
    or ax, 0xd7b                     ; 0x4016
    jge short @..leaf_loc_3f00.l1    ; 0x4019
    jg short @..leaf_loc_3f00.l2     ; 0x401b
    add ax, 0x8100                   ; 0x401d
    or ax, 0xd8c                     ; 0x4020
    mov cs, word [di]                ; 0x4023
    nop                              ; 0x4025
    db 0x0d, 0x05
@..leaf_loc_3f00.l1:
    db 0x00
    xchg dx, ax                      ; 0x4029
@..leaf_loc_3f00.l2:
    or ax, 0xd9d                     ; 0x402a
    lahf                             ; 0x402d
    or ax, 0xda1                     ; 0x402e
    add ax, 0xa300                   ; 0x4031
    or ax, 0xdae                     ; 0x4034
    mov al, 0xd                      ; 0x4037
    mov dl, 0xd                      ; 0x4039
    add ax, 0xb400                   ; 0x403b
    or ax, 0xdbf                     ; 0x403e
    ror word [di], 0xc3              ; 0x4041
    or ax, strict word 5             ; 0x4044
    lds cx, word [di]                ; 0x4047
    ror byte [di], 1                 ; 0x4049
    ror byte [di], cl                ; 0x404b
    aam 0xd                          ; 0x404d
    add ax, 0xd600                   ; 0x404f
    or ax, 0xde1                     ; 0x4052
    jcxz @..local.l201               ; 0x4055
    in ax, 0xd                       ; 0x4057
    add ax, 0xe700                   ; 0x4059
    or ax, 0xdf2                     ; 0x405c
    hlt                              ; 0x405f
    db 0x0d, 0xf6, 0x0d, 0x05
@..local.l201:
    add al, bh                       ; 0x4064
    or ax, 0xe05                     ; 0x4066
    pop es                           ; 0x4069
    push cs                          ; 0x406a
    or word [data_0005], cx          ; 0x406b
    or cx, word [data_0e18]          ; 0x406f
    sbb cl, byte [data_0e1c]         ; 0x4073
    add ax, 0x1e00                   ; 0x4077
    push cs                          ; 0x407a
    sub cx, word [data_0e2d]         ; 0x407b
    das                              ; 0x407f
    push cs                          ; 0x4080
    add ax, 0x3100                   ; 0x4081
    push cs                          ; 0x4084
    ds push cs                       ; 0x4085
    inc ax                           ; 0x4087
    push cs                          ; 0x4088
    inc dx                           ; 0x4089
    push cs                          ; 0x408a
    push es                          ; 0x408b
    add byte [si + 0xe], al          ; 0x408c
    dec si                           ; 0x408f
    push cs                          ; 0x4090
    push cx                          ; 0x4091
    push cs                          ; 0x4092
    push sp                          ; 0x4093
    push cs                          ; 0x4094
    push es                          ; 0x4095
    add byte [bx + 0xe], dl          ; 0x4096
    popaw                            ; 0x4099
    push cs                          ; 0x409a
    db 0x65, 0x0e ; push cs
    imul cx, word [data_0006], 0xe6c ; 0x409d
    jbe short @..local.l202          ; 0x40a3
    jp short @..local.l203           ; 0x40a5
    jle short @..local.l204          ; 0x40a7
    push es                          ; 0x40a9
    add byte [bx + di - 0x74f2], al  ; 0x40aa
    push cs                          ; 0x40ae
    lea cx, word [data_0e8f]         ; 0x40af
@..local.l202:
    push es                          ; 0x40b3
    db 0x00
@..local.l203:
    db 0x91, 0x0e
@..local.l204:
    db 0x9b
    push cs                          ; 0x40b8
    lahf                             ; 0x40b9
    push cs                          ; 0x40ba
    mov word [data_060e], ax         ; 0x40bb
    add byte [bp - 0x4ff2], ah       ; 0x40be
    push cs                          ; 0x40c2
    mov dl, 0xe                      ; 0x40c3
    mov ah, 0xe                      ; 0x40c5
    push es                          ; 0x40c7
    add byte [bp - 0x3ff2], dh       ; 0x40c8
    push cs                          ; 0x40cc
    les cx, word [data_0ec8]         ; 0x40cd
    push es                          ; 0x40d1
    add dl, cl                       ; 0x40d2
    push cs                          ; 0x40d4
    aam 0xe                          ; 0x40d5
    salc                             ; 0x40d7
    push cs                          ; 0x40d8
    fmul dword [data_0006]           ; 0x40d9
    fimul dword [data_0ee4]          ; 0x40dd
    out 0xe, ax                      ; 0x40e1
    jmp far 0xec00:data_060e         ; 0x40e3

    db 0x0e, 0xf6, 0x0e, 0xf8, 0x0e, 0xfa, 0x0e, 0x06, 0x00, 0xfc, 0x0e, 0x06, 0x0f, 0x08, 0x0f, 0x0a
    db 0x0f, 0x06, 0x00, 0x0c, 0x0f, 0x16, 0x0f, 0x18, 0x0f, 0x1a, 0x0f, 0x06, 0x00, 0x1c, 0x0f, 0x26
    db 0x0f, 0x2a, 0x0f, 0x2e, 0x0f, 0x06, 0x00, 0x30, 0x0f, 0x3a, 0x0f, 0x3d, 0x0f, 0x40, 0x0f, 0x06
    db 0x00, 0x42, 0x0f, 0x4c, 0x0f, 0x50, 0x0f, 0x54, 0x0f, 0x06, 0x00, 0x56, 0x0f, 0x60, 0x0f, 0x64
    db 0x0f, 0x68, 0x0f, 0x06, 0x00, 0x6a, 0x0f, 0x74, 0x0f, 0x77, 0x0f, 0x7a, 0x0f, 0x06, 0x00, 0x7c
    db 0x0f, 0x86, 0x0f, 0x8a, 0x0f, 0x8e, 0x0f, 0x06, 0x00, 0x90, 0x0f, 0x9a, 0x0f, 0x9c, 0x0f, 0x9e
    db 0x0f, 0x06, 0x00, 0xa0, 0x0f, 0xaa, 0x0f, 0xae, 0x0f, 0xb2, 0x0f, 0x06, 0x00, 0xb4, 0x0f, 0xbe
    db 0x0f, 0xc2, 0x0f, 0xc6, 0x0f, 0x06, 0x00, 0xc8, 0x0f, 0xd2, 0x0f, 0xd6, 0x0f, 0xda, 0x0f, 0x07
    db 0x00, 0xdc, 0x0f, 0xe6, 0x0f, 0xe8, 0x0f, 0xea, 0x0f, 0x07, 0x00, 0xec, 0x0f, 0xf7, 0x0f, 0xf9
    db 0x0f, 0xfb, 0x0f, 0x07, 0x00, 0xfd, 0x0f, 0x08, 0x10, 0x0a, 0x10, 0x0c, 0x10, 0x07, 0x00, 0x0e
    db 0x10, 0x19, 0x10, 0x1b, 0x10, 0x1d, 0x10, 0x07, 0x00, 0x1f, 0x10, 0x2a, 0x10, 0x2c, 0x10, 0x2e
    db 0x10, 0x07, 0x00, 0x30, 0x10, 0x3b, 0x10, 0x3d, 0x10, 0x3f, 0x10, 0x07, 0x00, 0x41, 0x10, 0x4c
    db 0x10, 0x4e, 0x10, 0x50, 0x10, 0x07, 0x00, 0x52, 0x10, 0x5d, 0x10, 0x5f, 0x10, 0x61, 0x10, 0x07
    db 0x00, 0x63, 0x10, 0x6e, 0x10, 0x70, 0x10, 0x72, 0x10, 0x07, 0x00, 0x74, 0x10, 0x81, 0x10, 0x83
    db 0x10, 0x85, 0x10, 0x07, 0x00, 0x87, 0x10, 0x94, 0x10, 0x96, 0x10, 0x98, 0x10, 0x07, 0x00, 0x9a
    db 0x10, 0xa7, 0x10, 0xa9, 0x10, 0xab, 0x10, 0x07, 0x00, 0xad, 0x10, 0xba, 0x10, 0xbc, 0x10, 0xbe
    db 0x10, 0x08, 0x00, 0xc0, 0x10, 0xcc, 0x10, 0xce, 0x10, 0xd0, 0x10, 0x08, 0x00, 0xd2, 0x10, 0xde
    db 0x10, 0xe0, 0x10, 0xe2, 0x10, 0x08, 0x00, 0xe4, 0x10, 0xf0, 0x10, 0xf2, 0x10, 0xf4, 0x10, 0x08
    db 0x00, 0xf6, 0x10, 0x02, 0x11, 0x04, 0x11, 0x06, 0x11, 0x08, 0x00, 0x08, 0x11, 0x14, 0x11, 0x16
    db 0x11, 0x18, 0x11, 0x08, 0x00, 0x1a, 0x11, 0x26, 0x11, 0x2d, 0x11, 0x34, 0x11, 0x08, 0x00, 0x38
    db 0x11, 0x44, 0x11, 0x47, 0x11, 0x4a, 0x11, 0x08, 0x00, 0x4d, 0x11, 0x59, 0x11, 0x5b, 0x11, 0x5d
    db 0x11, 0x08, 0x00, 0x5f, 0x11, 0x6b, 0x11, 0x6d, 0x11, 0x6f, 0x11, 0x08, 0x00, 0x71, 0x11, 0x7d
    db 0x11, 0x7f, 0x11, 0x81, 0x11, 0x08, 0x00, 0x83, 0x11, 0x8f, 0x11, 0x91, 0x11, 0x93, 0x11, 0x08
    db 0x00, 0x95, 0x11, 0xa1, 0x11, 0xa3, 0x11, 0xa5, 0x11, 0x08, 0x00, 0xa7, 0x11, 0xb3, 0x11, 0xb8
    db 0x11, 0xbd, 0x11, 0x08, 0x00, 0xc0, 0x11, 0xcc, 0x11, 0xd2, 0x11, 0xd8, 0x11, 0x08, 0x00, 0xdb
    db 0x11, 0xe7, 0x11, 0xed, 0x11, 0xf3, 0x11, 0x08, 0x00, 0xf6, 0x11, 0x02, 0x12, 0x06, 0x12, 0x0a
    db 0x12, 0x08, 0x00, 0x0d, 0x12, 0x19, 0x12, 0x1c, 0x12, 0x1f, 0x12, 0x08, 0x00, 0x21, 0x12, 0x2d
    db 0x12, 0x2f, 0x12, 0x31, 0x12, 0x08, 0x00, 0x33, 0x12, 0x3f, 0x12, 0x42, 0x12, 0x45, 0x12, 0x08
    db 0x00, 0x47, 0x12, 0x53, 0x12, 0x5b, 0x12, 0x63, 0x12, 0x08, 0x00, 0x66, 0x12, 0x72, 0x12, 0x79
    db 0x12, 0x80, 0x12, 0x08, 0x00, 0x83, 0x12, 0x8f, 0x12, 0x91, 0x12, 0x93, 0x12, 0x08, 0x00, 0x95
    db 0x12, 0xa1, 0x12, 0xa3, 0x12, 0xa5, 0x12, 0x08, 0x00, 0xa7, 0x12, 0xb3, 0x12, 0xb7, 0x12, 0xbb
    db 0x12, 0x08, 0x00, 0xbe, 0x12, 0xca, 0x12, 0xce, 0x12, 0xd2, 0x12, 0x08, 0x00, 0xd4, 0x12, 0xe0
    db 0x12, 0xe5, 0x12, 0xea, 0x12, 0x08, 0x00, 0xed, 0x12, 0xf9, 0x12, 0xfc, 0x12, 0xff, 0x12, 0x08
    db 0x00, 0x01, 0x13, 0x0d, 0x13, 0x0f, 0x13, 0x11, 0x13, 0x08, 0x00, 0x13, 0x13, 0x1f, 0x13, 0x23
    db 0x13, 0x27, 0x13, 0x08, 0x00, 0x2a, 0x13, 0x36, 0x13, 0x3b, 0x13, 0x40, 0x13, 0x08, 0x00, 0x43
    db 0x13, 0x4f, 0x13, 0x54, 0x13, 0x59, 0x13, 0x08, 0x00, 0x5c, 0x13, 0x68, 0x13, 0x6e, 0x13, 0x74
    db 0x13, 0x08, 0x00, 0x77, 0x13, 0x83, 0x13, 0x86, 0x13, 0x89, 0x13, 0x08, 0x00, 0x8c, 0x13, 0x98
    db 0x13, 0x9c, 0x13, 0xa0, 0x13, 0x08, 0x00, 0xa2, 0x13, 0xae, 0x13, 0xb2, 0x13, 0xb6, 0x13, 0x09
    db 0x00, 0xb8, 0x13, 0xc2, 0x13, 0xc4, 0x13, 0xc6, 0x13, 0x09, 0x00, 0xc8, 0x13, 0xd2, 0x13, 0xd6
    db 0x13, 0xda, 0x13, 0x09, 0x00, 0xdc, 0x13, 0xe6, 0x13, 0xe8, 0x13, 0xea, 0x13, 0x09, 0x00, 0xec
    db 0x13, 0xf6, 0x13, 0xf8, 0x13, 0xfa, 0x13, 0x0a, 0x00, 0xfc, 0x13, 0x06, 0x14, 0x09, 0x14, 0x0c
    db 0x14, 0x0a, 0x00, 0x0e, 0x14, 0x18, 0x14, 0x1a, 0x14, 0x1c, 0x14, 0x0a, 0x00, 0x1e, 0x14, 0x28
    db 0x14, 0x2a, 0x14, 0x2c, 0x14, 0x0a, 0x00, 0x2e, 0x14, 0x38, 0x14, 0x3b, 0x14, 0x3e, 0x14, 0xff
    db 0xff, 0x40, 0x14, 0x41, 0x14, 0x42, 0x14, 0x43, 0x14
    db 'PLAYBANE.BAT', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WROOT.EXE', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WINIT.OVR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WBASE.OVR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPCMK.OVR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPCVW.OVR', 0
    db 0x41, 0x43, 0x00, 0x2a, 0x00, 0x2a, 0x00
    db 'WMAZE.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WDOPT.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WTREA.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WMELE.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WPOPS.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WMEXE.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'WMNPC.OVR', 0
    db 0x43, 0x00
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'SCENARIO.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MSG.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MASTER.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MISC.HDR', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'PCFILE.DBS', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MSG.DBS', 0
    db 0x41, 0x43, 0x00, 0x2a, 0x00, 0x2a, 0x00
    db 'NEWGAME.DBS', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'CREDITS.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'EGA.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT0.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT1.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT2.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT3.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT4.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT1.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT2.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT3.EGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'DRAGONSC.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'GRAVEYRD.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'TITLEPAG.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MAZEDATA.EGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON00.PIC', 0
    db 'DEFGHIJK', 0
    db 'BCDEFGHI', 0
    db 0x42, 0x43, 0x00
    db 'MON01.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON02.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON03.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON04.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON05.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON06.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON07.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON08.PIC', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON09.PIC', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON10.PIC', 0
    db 0x4a, 0x00, 0x48, 0x00, 0x43, 0x00
    db 'MON11.PIC', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'MON12.PIC', 0
    db 0x46, 0x47, 0x4a, 0x00, 0x44, 0x45, 0x48, 0x00, 0x43, 0x00
    db 'MON13.PIC', 0
    db 0x45, 0x4a, 0x00, 0x43, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'MON14.PIC', 0
    db 0x46, 0x47, 0x49, 0x00, 0x44, 0x45, 0x47, 0x00, 0x43, 0x00
    db 'MON15.PIC', 0
    db 0x45, 0x00, 0x43, 0x00, 0x42, 0x00
    db 'MON16.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON17.PIC', 0
    db 0x44, 0x45, 0x46, 0x00, 0x42, 0x43, 0x44, 0x00, 0x42, 0x43, 0x00
    db 'MON18.PIC', 0
    db 0x44, 0x47, 0x4b, 0x00, 0x42, 0x45, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'MON19.PIC', 0
    db 'DEGIK', 0
    db 'BCEGI', 0
    db 0x42, 0x43, 0x00
    db 'MON20.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON21.PIC', 0
    db 0x44, 0x4b, 0x00, 0x42, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'MON22.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON23.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON24.PIC', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'MON25.PIC', 0
    db 0x44, 0x45, 0x47, 0x00, 0x42, 0x43, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'MON26.PIC', 0
    db 'DEFIJ', 0
    db 'BCDGH', 0
    db 0x42, 0x43, 0x00
    db 'MON27.PIC', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'MON28.PIC', 0
    db 0x45, 0x4a, 0x00, 0x43, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'CGA.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'HERC.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT0.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT1.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT2.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT3.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT4.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT1.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT2.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT3.CGA', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'DRAGONSC.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'GRAVEYRD.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'TITLEPAG.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MAZEDATA.CGA', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MON29.PIC', 0
    db 0x44, 0x4a, 0x00, 0x42, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'MON30.PIC', 0
    db 0x45, 0x46, 0x47, 0x00, 0x43, 0x44, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'MON31.PIC', 0
    db 0x44, 0x45, 0x46, 0x00, 0x42, 0x43, 0x44, 0x00, 0x42, 0x43, 0x00
    db 'MON32.PIC', 0
    db 0x45, 0x00, 0x43, 0x00, 0x42, 0x00
    db 'MON33.PIC', 0
    db 0x44, 0x46, 0x47, 0x00, 0x42, 0x44, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'MON34.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON35.PIC', 0
    db 0x46, 0x4a, 0x4b, 0x00, 0x44, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'MON36.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON37.PIC', 0
    db 0x46, 0x48, 0x00, 0x44, 0x46, 0x00, 0x43, 0x00
    db 'MON38.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON39.PIC', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'MON40.PIC', 0
    db 0x48, 0x00, 0x46, 0x00, 0x43, 0x00
    db 'MON41.PIC', 0
    db 0x47, 0x48, 0x49, 0x00, 0x45, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON42.PIC', 0
    db 0x48, 0x49, 0x00, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON43.PIC', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON44.PIC', 0
    db 0x47, 0x48, 0x49, 0x00, 0x45, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON45.PIC', 0
    db 0x47, 0x4b, 0x00, 0x45, 0x49, 0x00, 0x43, 0x00
    db 'MON46.PIC', 0
    db 0x47, 0x49, 0x4b, 0x00, 0x45, 0x47, 0x49, 0x00, 0x43, 0x00
    db 'MON47.PIC', 0
    db 0x4a, 0x00, 0x48, 0x00, 0x43, 0x00
    db 'MON48.PIC', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON49.PIC', 0
    db 0x49, 0x4a, 0x4b, 0x00, 0x47, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'MON50.PIC', 0
    db 0x49, 0x4a, 0x4b, 0x00, 0x47, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'TANDY.DRV', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT0.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT1.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT2.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT3.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WFONT4.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT1.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT2.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'WPORT3.T16', 0
    db 0x41, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'DRAGONSC.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'GRAVEYRD.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'TITLEPAG.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'MAZEDATA.T16', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND00.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND02.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND03.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND04.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND05.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND06.SND', 0
    db 'BDGHIJ', 0
    db 'ABEFGH', 0
    db 0x41, 0x42, 0x43, 0x00
    db 'SOUND07.SND', 0
    db 0x42, 0x45, 0x00, 0x41, 0x43, 0x00, 0x41, 0x42, 0x00
    db 'SOUND08.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND10.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND11.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND12.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND13.SND', 0
    db 0x42, 0x00, 0x41, 0x00, 0x41, 0x00
    db 'SOUND14.SND', 0
    db 0x44, 0x45, 0x46, 0x48, 0x00, 0x42, 0x43, 0x44, 0x46, 0x00, 0x42, 0x43, 0x00
    db 'SOUND15.SND', 0
    db 'DFGJK', 0
    db 'BDEHI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND16.SND', 0
    db 'DEFIK', 0
    db 'BCDGI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND17.SND', 0
    db 0x44, 0x45, 0x4b, 0x00, 0x42, 0x43, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'SOUND20.SND', 0
    db 0x48, 0x49, 0x00, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'SOUND21.SND', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'SOUND22.SND', 0
    db 0x44, 0x45, 0x00, 0x42, 0x43, 0x00, 0x42, 0x00
    db 'SOUND23.SND', 0
    db 'DEFGIJK', 0
    db 'BCDEGHI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND24.SND', 0
    db 'DEFIJK', 0
    db 'BCDGHI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND25.SND', 0
    db 0x44, 0x00, 0x42, 0x00, 0x42, 0x00
    db 'SOUND26.SND', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'SOUND27.SND', 0
    db 0x44, 0x45, 0x47, 0x00, 0x42, 0x43, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'SOUND28.SND', 0
    db 0x47, 0x4a, 0x4b, 0x00, 0x45, 0x48, 0x49, 0x00, 0x43, 0x00
    db 'SOUND29.SND', 0
    db 0x45, 0x46, 0x47, 0x4b, 0x00, 0x43, 0x44, 0x45, 0x49, 0x00, 0x42, 0x43, 0x00
    db 'SOUND30.SND', 0
    db 0x46, 0x48, 0x00, 0x44, 0x46, 0x00, 0x43, 0x00
    db 'SOUND31.SND', 0
    db 0x46, 0x00, 0x44, 0x00, 0x43, 0x00
    db 'SOUND32.SND', 0
    db 0x45, 0x46, 0x47, 0x00, 0x43, 0x44, 0x45, 0x00, 0x42, 0x43, 0x00
    db 'SOUND33.SND', 0
    db 0x44, 0x46, 0x47, 0x49, 0x00, 0x42, 0x44, 0x45, 0x47, 0x00, 0x42, 0x43, 0x00
    db 'SOUND34.SND', 0
    db 0x42, 0x47, 0x48, 0x49, 0x00, 0x41, 0x45, 0x46, 0x47, 0x00, 0x41, 0x43, 0x00
    db 'SOUND35.SND', 0
    db 'EGHIK', 0
    db 'CEFGI', 0
    db 0x42, 0x43, 0x00
    db 'SOUND36.SND', 0
    db 0x45, 0x4a, 0x00, 0x43, 0x48, 0x00, 0x42, 0x43, 0x00
    db 'SOUND37.SND', 0
    db 0x47, 0x49, 0x4a, 0x00, 0x45, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'SOUND38.SND', 0
    db 0x48, 0x49, 0x4a, 0x00, 0x46, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON52.PIC', 0
    db 0x49, 0x00, 0x47, 0x00, 0x43, 0x00
    db 'MON53.PIC', 0
    db 0x48, 0x49, 0x4a, 0x00, 0x46, 0x47, 0x48, 0x00, 0x43, 0x00
    db 'MON55.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON56.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON51.PIC', 0
    db 0x48, 0x49, 0x00, 0x46, 0x47, 0x00, 0x43, 0x00
    db 'MON54.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON57.PIC', 0
    db 0x4b, 0x00, 0x49, 0x00, 0x43, 0x00
    db 'MON58.PIC', 0
    db 0x47, 0x4b, 0x00, 0x45, 0x49, 0x00, 0x43
    times 5 db 0
    db 0x25, 0x63, 0x00, 0x20, 0x00, 0x20, 0x00, 0x20, 0x20, 0x20, 0x00
    db '                                                                               ', 0
    db '                                                                               ', 0
    db 'SCENARIO.HDR', 0
    db 'SYSTEM ERROR: UNABLE TO OPEN ', 0
    db ' - Press <RETURN>', 0
    db '*ERROR* INSTALL VERSION MISMATCH - Press <RETURN>', 0
    db 0x5c, 0x00
    db 'SAVEGAME.DBS', 0
    db '                                                                               ', 0
    db 'Please Insert ', 0
    db 'DESTINATION', 0
    db '*SOURCE*', 0
    db ' Disk (', 0
    db ') Into Drive ', 0
    db ' - Press <RETURN>', 0
    db 'pkunzip.exe', 0
    db 'pkunzip.exe', 0
    db 'pkunzip.exe ', 0
    db 0x20, 0x00, 0x6e, 0x75, 0x6c, 0x00, 0x61, 0x00, 0x63, 0x6f, 0x6e, 0x00, 0x61, 0x00
    db 'ERROR: UNABLE TO UNZIP -> ', 0
    db ' - Press <RETURN>', 0
    db 0x00, 0x20, 0x00, 0x41, 0x3a, 0x00, 0x42, 0x3a, 0x00, 0x41, 0x3a, 0x00, 0x00, 0x41, 0x3a, 0x00
    db 0x00, 0x41, 0x3a, 0x00, 0x00, 0x43, 0x3a, 0x00
    db 'DSAVANT', 0
    db 'ERROR: INVALID DESTINATION DRIVE -> (', 0
    db ') - Press <RETURN>', 0
    db 'ERROR: UNABLE TO CREATE DIRECTORY -> ', 0
    db ' - Press <RETURN>', 0
    db 'ERROR: UNABLE TO LOCATE DIRECTORY -> ', 0
    db ' - Press <RETURN>', 0
    db '****************************************************', 0
    db '*                 W I Z A R D R Y                  *', 0
    db '*           CRUSADERS OF THE DARK SAVANT           *', 0
    db '*               INSTALLATION PROGRAM    Ver#       *', 0
    db '****************************************************', 0
    db 0x2e, 0x00
    db 'Crusaders of the Dark Savant Application Software Copyright (C) 1992', 0
    db 'by David W. Bradley and Sir-Tech Software, Inc.', 0
    db 'All Logos, Printed Materials and Graphic Designs Copyright (C) 1992', 0
    db 'by Sir-Tech Software, Inc.', 0
    db 'All Rights Reserved. No part of this software or printed material may', 0
    db 'be reproduced in any way, or transmitted, in any form or by any means,', 0
    db 'electronic, mechanical, photocopying, recording, or otherwise without', 0
    db 'prior permission in writing  from the publisher,  except by reviewers,', 0
    db 'who may quote brief written passages and/or screen images to be print-', 0
    db 'ed in a magazine or newspaper.', 0
    db 0x00
    db 'Press <RETURN> to begin INSTALLATION PROCEDURE', 0
    db '****************************************************', 0
    db '*                 W I Z A R D R Y                  *', 0
    db '*           CRUSADERS OF THE DARK SAVANT           *', 0
    db '*               INSTALLATION PROGRAM               *', 0
    db '****************************************************', 0
    db 0x41, 0x3a, 0x00, 0x00
    db '                       Disk Drive Type      Drive Name  Path or Drive #2    ', 0
    db '                    ----------------------  ----------  --------------------', 0
    db '     SOURCE DRIVE:', 0
    db 'DESTINATION DRIVE:', 0
    db ' MEMORY EXPANSION>  EMS:      RamDisk:        RAM Name: ', 0
    db 'GRAPHIC MODE:                                     VIDEO ADJUSTMENT', 0
    db '                                                  ================', 0
    db '  Bright: ', 0
    db 'Contrast: ', 0
    db 'MOUSE: ', 0
    db 'SOUND: ', 0
    db 'FULL INSTALL   CONFIG ONLY    ABORT INSTALL', 0
    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0
    db '*ERROR* NO VIDEO CARD DETECTED - Press <RETURN>', 0
    db 'UNABLE TO COMPLETE INSTALLATION - Press <RETURN>', 0
    db 'ARROW KEY TO FIELD - <RETURN> TO CHANGE', 0
    db 'FULL INSTALL', 0
    db 'CONFIG ONLY', 0
    db 'ABORT INSTALL', 0
    db 'FULL INSTALL', 0
    db 'CONFIG ONLY', 0
    db 'ABORT INSTALL', 0
    db '01110', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'SOURCE PATH NOT ALLOWED - Press <RETURN>', 0
    db '00001', 0
    db '                                 ', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'WARNING! DRIVE CONFLICT WITH SOURCE - Press <RETURN>', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'BAD DRIVE SPECIFICATION - Press <RETURN>', 0
    db 'SOURCE AND DESTINATION DRIVE <MUST> DIFFER - Press <RETURN>', 0
    db 'Please specify a new SOURCE or DESTINATION Drive - Press <RETURN>', 0
    db '11 disks (5.25 @360k)', 0
    db '3 disks (5.25HD @1.2meg)', 0
    db '9 disks (3.5 @720k)', 0
    db '3 disks (3.5HD @1.44meg)', 0
    db 0x00
    db 'This Install requires ', 0
    db ' - Press <RETURN>', 0
    db 'Make sure you have NEWLY FORMATTED disks ready - Press <RETURN>', 0
    db 0x00, 0x00, 0x5c, 0x00, 0x5c, 0x00, 0x5c, 0x00, 0x5c, 0x00
    db 'CRUS01.ZIP', 0
    db 'CRUS01.ZIP', 0
    db 0x00
    db 'CRUS02.ZIP', 0
    db 0x00
    db 'CRUS04.ZIP', 0
    db 0x00
    db 'CRUS06.ZIP', 0
    db 0x00
    db 'CRUS03.ZIP', 0
    db 'CRUS03.ZIP', 0
    db 0x00
    db 'CRUS05.ZIP', 0
    db 0x00
    db 'CRUS07.ZIP', 0
    db 0x00
    db 'CRUS08.ZIP', 0
    db 0x00
    db 'CRUS07.ZIP', 0
    db 0x00
    db 'CRUS02.ZIP', 0
    db 'CRUS02.ZIP', 0
    db 0x00
    db 'CRUS04.ZIP', 0
    db 0x00
    db 'CRUS06.ZIP', 0
    db 0x00
    db 'CRUS03.ZIP', 0
    db 'CRUS03.ZIP', 0
    db 0x00
    db 'CRUS08.ZIP', 0
    db 0x00
    db 'CRUS05.ZIP', 0
    db 'CRUS05.ZIP', 0
    db 0x00
    db 'CRUS02.ZIP', 0
    db 0x00
    db 'CRUS06.ZIP', 0
    db 0x00
    db 'CRUS03.ZIP', 0
    db 'CRUS03.ZIP', 0
    db 0x00
    db 'CRUS04.ZIP', 0
    db 0x00
    db 'CRUS07.ZIP', 0
    db 0x00
    db 'CRUS08.ZIP', 0
    db 0x00
    db 'CRUS05.ZIP', 0
    db 'CRUS05.ZIP', 0
    db 0x00
    db 'SCENARIO.HDR', 0
    db 'UNABLE TO COMPLETE INSTALLATION - Press <RETURN>', 0
    db 'CRUSADERS OF THE DARK SAVANT INSTALLATION COMPLETE!', 0
    db 'To Play The Game, Type: WIZARDRY <cr>', 0
    db 0x00, 0x2e, 0x00, 0x2e
    times 15 db 0
    db 0x72
    times 4 db 0
    db 0x72, 0x2b, 0x00, 0x02, 0x00, 0x77, 0x00, 0x00, 0x01, 0x03, 0x77, 0x2b, 0x00, 0x02, 0x03, 0x61
    db 0x00, 0x00, 0x01, 0x09, 0x61, 0x2b, 0x00, 0x02, 0x09, 0x78, 0x00, 0x00, 0x01, 0x05, 0x78, 0x2b
    db 0x00, 0x02, 0x05
    times 12 db 0
    db 0x01, 0x00, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x01, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x02, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x03, 0x00, 0x01
    times 9 db 0
    db 0x01, 0x04, 0x00, 0x01
    times 198 db 0
    db 0x38, 0x25, 0x38, 0x25, 0x00
    db '         00000                  '
    db 0x90
    db '@@@@@@@@@@@@@@@'
    db 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c
    db '@@@@@@@'
    db 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
    db 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01
    db '@@@@@@'
    db 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x0a, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
    db 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02
    db '@@@@ ', 0
    db 0xfe, 0x2a
    times 12 db 0
    db 0xff, 0xff, 0x00, 0x00
    db '8087/80287 is required!'
    db 0x0d, 0x0a, 0x24, 0x3b, 0x35, 0x00
    db 'Too many args.', 0
    db 0x00, 0x01, 0x00, 0x08, 0x00, 0x01
    times 22 db 0
    db 0xd9, 0x36, 0x3e, 0x37, 0x0a, 0x0d

