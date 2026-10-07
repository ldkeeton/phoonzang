%include "structs/structs.inc"
%include "structs/data_3283.inc"
org 0
bits 16
data_01e1 equ 0x01e1
data_01e5 equ 0x01e5
data_01e9 equ 0x01e9
data_01f7 equ 0x01f7
data_01fb equ 0x01fb
data_01ff equ 0x01ff
data_0201 equ 0x0201
data_0203 equ 0x0203
data_0205 equ 0x0205
data_0206 equ 0x0206
data_020e equ 0x020e
data_0212 equ 0x0212
data_0216 equ 0x0216
data_021a equ 0x021a
data_021e equ 0x021e
data_0222 equ 0x0222
data_0226 equ 0x0226
data_0227 equ 0x0227
data_0228 equ 0x0228
data_027b equ 0x027b
data_0291 equ 0x0291
data_0295 equ 0x0295
data_0297 equ 0x0297
data_0299 equ 0x0299
data_0300 equ 0x0300
data_038f equ 0x038f
data_0391 equ 0x0391
data_0615 equ 0x0615
data_082e equ 0x082e
dos_con_loc_0a4f equ 0x0a4f
data_0caa equ 0x0caa
data_0cac equ 0x0cac
dos_con_loc_0cf6 equ 0x0cf6
dos_con_loc_0d06 equ 0x0d06
data_0f6d equ 0x0f6d
data_10ba equ 0x10ba
data_15ac equ 0x15ac
data_15ae equ 0x15ae
data_15b0 equ 0x15b0
data_15b2 equ 0x15b2
data_15b4 equ 0x15b4
data_15b6 equ 0x15b6
data_15b8 equ 0x15b8
data_15ba equ 0x15ba
data_15bc equ 0x15bc
data_15be equ 0x15be
data_15c0 equ 0x15c0
data_15c2 equ 0x15c2
data_1e5c equ 0x1e5c
data_1e5e equ 0x1e5e
data_1e64 equ 0x1e64
data_1e66 equ 0x1e66
data_1e68 equ 0x1e68
data_1ecd equ 0x1ecd
data_1ecf equ 0x1ecf
data_1ed1 equ 0x1ed1
data_1ed3 equ 0x1ed3
data_2041 equ 0x2041
dos_con_loc_22be equ 0x22be
data_23de equ 0x23de
data_23df equ 0x23df
bios_video_loc_28ba equ 0x28ba
dos_mem_loc_29bf equ 0x29bf
dos_con_loc_2a97 equ 0x2a97
data_2e2b equ 0x2e2b
data_2e2e equ 0x2e2e
data_2e53 equ 0x2e53
dos_con_loc_3153 equ 0x3153
data_326f equ 0x326f
data_3270 equ 0x3270
data_3282 equ 0x3282
data_3283 equ 0x3283
dos_con_loc_3ab7 equ 0x3ab7
dos_con_loc_3aee equ 0x3aee
dos_con_loc_3b5c equ 0x3b5c
data_3c8e equ 0x3c8e
dos_con_loc_3d39 equ 0x3d39
dos_con_loc_3efb equ 0x3efb
data_455a equ 0x455a
data_0229 equ 0x0229
data_0251 equ 0x0251
data_025b equ 0x025b
data_029b equ 0x029b
data_02d7 equ 0x02d7
data_0bc6 equ 0x0bc6
data_0bda equ 0x0bda
data_1dc4 equ 0x1dc4
data_1e4c equ 0x1e4c
data_381b equ 0x381b
data_4202 equ 0x4202
data_46d9 equ 0x46d9
data_46f1 equ 0x46f1

loc_0000:
    jmp near @..local.l1             ; 0x0000
@..local.l1:

    db 0xe8, 0xf2, 0x11, 0xcb, 0xe8, 0x62, 0x12, 0xcb, 0xe8, 0x09, 0x13, 0xcb, 0xe8, 0xf6, 0x12, 0xcb
    db 0xe8, 0xb3, 0x12, 0xcb, 0xe8, 0xb3, 0x21, 0xcb, 0xe8, 0x4e, 0x2d, 0xcb, 0xe8, 0xb0, 0x08, 0xcb
    db 0xe8, 0x88, 0x0b, 0xcb, 0xe8, 0x8d, 0x0f, 0xcb, 0xe8, 0x4f, 0x21, 0xcb, 0xe8, 0x61, 0x02, 0xcb
    db 0xe8, 0x11, 0x04, 0xcb, 0xe8, 0x22, 0x04, 0xcb, 0xe8, 0x39, 0x04, 0xcb, 0xe8, 0x54, 0x04, 0xcb
    db 0xe8, 0x6f, 0x04, 0xcb, 0xe8, 0x68, 0x06, 0xcb, 0xe8, 0x8b, 0x06, 0xcb, 0xe8, 0xd6, 0x06, 0xcb
    db 0xe8, 0x24, 0x07, 0xcb, 0xe8, 0xdc, 0x07, 0xcb, 0xe8, 0x27, 0x21, 0xcb, 0xe8, 0x38, 0x13, 0xcb
    db 0xe8, 0x63, 0x13, 0xcb, 0xe8, 0xcf, 0x03, 0xcb, 0xe8, 0x2e, 0x09, 0xcb, 0xe8, 0xb6, 0x24, 0xcb
    db 0xe8, 0x09, 0x27, 0xcb, 0xe8, 0x56, 0x27, 0xcb, 0xe8, 0x84, 0x27, 0xcb, 0xe8, 0x6e, 0x28, 0xcb
    db 0xe8, 0x70, 0x29, 0xcb, 0xe8, 0xe2, 0x2a, 0xcb, 0xe8, 0x80, 0x2b, 0xcb, 0xe8, 0xdd, 0x0e, 0xcb
    db 0xe8, 0x28, 0x2c, 0xcb, 0xe8, 0x6e, 0x2c, 0xcb, 0xe8, 0x31, 0x2a, 0xcb, 0xe8, 0xbd, 0x37, 0xcb
    db 0xe8, 0x5b, 0x2a, 0xcb, 0xe8, 0xfb, 0x3a, 0xcb, 0xe8, 0xc4, 0x3c, 0xcb, 0xe8, 0xc1, 0x3e, 0xcb
    db 0xe8, 0xa0, 0x40, 0xcb, 0xe8, 0xe0, 0x42, 0xcb, 0xe8, 0x69, 0x44, 0xcb, 0xe8, 0xd4, 0x44, 0xcb
    db 0xe8, 0xec, 0x44, 0xcb, 0xe8, 0x31, 0x45, 0xcb, 0xe8, 0xbc, 0x46, 0xcb, 0xe8, 0x4d, 0x47, 0xcb
    db 0xe8, 0x90, 0x47, 0xcb, 0xe8, 0xa4, 0x47, 0xcb, 0xe8, 0xb8, 0x47, 0xcb, 0x80, 0x41, 0x00, 0x00
    db 0x00, 0x10, 0x00, 0x00, 0x40, 0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x30, 0x05, 0x00, 0x00
    db 0xd0, 0x01
    times 17 db 0
    db 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00
    db 0x13, 0x01, 0x00, 0x00, 0x17, 0x01, 0x00, 0x00, 0x1b, 0x01, 0x00, 0x00, 0x1f, 0x01
    times 87 db 0
    db 0x04
    times 23 db 0
    db 0x01
    times 255 db 0

math_loc_0293:
    push bp                          ; 0x0293
    mov bp, sp                       ; 0x0294
    sub sp, byte 0x0c                ; 0x0296
    push ds                          ; 0x0299
    push es                          ; 0x029a
    push si                          ; 0x029b
    push di                          ; 0x029c
    mov es, ax                       ; 0x029d
    mov ds, ax                       ; 0x029f
    xor bx, bx                       ; 0x02a1
    mov ax, word [cs:data_0297]      ; 0x02a3
    mov cx, 0x140                    ; 0x02a7
    mul cx                           ; 0x02aa
    add ax, word [cs:data_0295]      ; 0x02ac
    mov di, ax                       ; 0x02b1
    mov word [bp - 0x0006], ax       ; 0x02b3
    xor ax, ax                       ; 0x02b6
    mov al, byte [bx]                ; 0x02b8
    mov word [bp - 0x0002], ax       ; 0x02ba
    mov al, byte [bx + 0x1]          ; 0x02bd
    mov word [bp - 0x0004], ax       ; 0x02c0
    mov cx, word [bx + 0xa]          ; 0x02c3
    add bx, byte 0x10                ; 0x02c6
    mov ax, word [bp + 0xc]          ; 0x02c9
    shl ax, 1                        ; 0x02cc
    add bx, ax                       ; 0x02ce
    mov al, byte [bx]                ; 0x02d0
    xor ah, ah                       ; 0x02d2
    mov word [bp - 0x000a], ax       ; 0x02d4
    mul cx                           ; 0x02d7
    add ax, 0x110                    ; 0x02d9
    mov si, ax                       ; 0x02dc
    xor ah, ah                       ; 0x02de
    mov al, byte [bx + 0x1]          ; 0x02e0
    add word [cs:data_0295], ax      ; 0x02e3
    mov word [bp - 0x000c], ax       ; 0x02e8
    xor bx, bx                       ; 0x02eb
    mov al, byte [bx + 0x7]          ; 0x02ed
    cbw                              ; 0x02f0
    add word [cs:data_0295], ax      ; 0x02f1
    mov al, byte [bx + 0x2]          ; 0x02f6
    test al, 1                       ; 0x02f9
    je short @..math_loc_0293.l1     ; 0x02fb
    jmp near @..math_loc_0293.l17    ; 0x02fd
@..math_loc_0293.l1:
    mov ax, word [cs:data_0299]      ; 0x0300
    or ax, ax                        ; 0x0304
    jne short @..math_loc_0293.l2    ; 0x0306
    mov al, byte [bx + 0x6]          ; 0x0308
    test al, 2                       ; 0x030b
    jne short @..math_loc_0293.l9    ; 0x030d
@..math_loc_0293.l2:
    xor ax, ax                       ; 0x030f
    mov al, byte [bx + 0x3]          ; 0x0311
    mov bx, word [bp - 0x000c]       ; 0x0314
    add bx, byte 7                   ; 0x0317
    mov cl, 3                        ; 0x031a
    shr bx, cl                       ; 0x031c
    sub ax, bx                       ; 0x031e
    mov word [bp - 0x000a], ax       ; 0x0320
    mov bx, word [cs:data_0291]      ; 0x0323
    mov dx, word [cs:math_loc_0293]  ; 0x0328
    mov dh, bl                       ; 0x032d
    mov ax, word [cs:data_01e5]      ; 0x032f
    mov es, ax                       ; 0x0333
@..math_loc_0293.l3:
    mov cx, word [bp - 0x000c]       ; 0x0335
@..math_loc_0293.l4:
    mov word [bp - 0x0008], cx       ; 0x0338
    lodsb                            ; 0x033b
    cmp cx, byte 9                   ; 0x033c
    jb short @..math_loc_0293.l5     ; 0x033f
    mov cx, 8                        ; 0x0341
@..math_loc_0293.l5:
    sub word [bp - 0x0008], cx       ; 0x0344
@..math_loc_0293.l6:
    shl al, 1                        ; 0x0347
    jb short @..math_loc_0293.l7     ; 0x0349
    mov byte [es:di], dh             ; 0x034b
    inc di                           ; 0x034e
    jmp short @..math_loc_0293.l8    ; 0x034f
@..math_loc_0293.l7:
    mov byte [es:di], dl             ; 0x0351
    inc di                           ; 0x0354
@..math_loc_0293.l8:
    loop @..math_loc_0293.l6         ; 0x0355
    mov cx, word [bp - 0x0008]       ; 0x0357
    or cx, cx                        ; 0x035a
    jne short @..math_loc_0293.l4    ; 0x035c
    add si, word [bp - 0x000a]       ; 0x035e
    add word [bp - 0x0006], strict word 0x140 ; 0x0361
    mov di, word [bp - 0x0006]       ; 0x0366
    dec word [bp - 0x0004]           ; 0x0369
    jne short @..math_loc_0293.l3    ; 0x036c
    jmp near @..math_loc_0293.l23    ; 0x036e
@..math_loc_0293.l9:
    mov ax, word [bp - 0x000a]       ; 0x0371
    mov cx, word [bx + 0xe]          ; 0x0374
    mul cx                           ; 0x0377
    add ax, word [bx + 0xc]          ; 0x0379
    mov bx, ax                       ; 0x037c
    mov ax, word [cs:data_0291]      ; 0x037e
    mov dx, word [cs:math_loc_0293]  ; 0x0382
    mov dh, al                       ; 0x0387
    mov ax, word [cs:data_01e5]      ; 0x0389
    mov es, ax                       ; 0x038d
@..math_loc_0293.l10:
    mov cx, word [bp - 0x0002]       ; 0x038f
@..math_loc_0293.l11:
    mov word [bp - 0x0008], cx       ; 0x0392
    lodsb                            ; 0x0395
    mov ah, byte [bx]                ; 0x0396
    inc bx                           ; 0x0398
    cmp cx, byte 9                   ; 0x0399
    jb short @..math_loc_0293.l12    ; 0x039c
    mov cx, 8                        ; 0x039e
@..math_loc_0293.l12:
    sub word [bp - 0x0008], cx       ; 0x03a1
@..math_loc_0293.l13:
    shl ah, 1                        ; 0x03a4
    jae short @..math_loc_0293.l15   ; 0x03a6
    shl al, 1                        ; 0x03a8
    jb short @..math_loc_0293.l14    ; 0x03aa
    mov byte [es:di], dh             ; 0x03ac
    inc di                           ; 0x03af
    jmp short @..math_loc_0293.l16   ; 0x03b0
@..math_loc_0293.l14:
    mov byte [es:di], dl             ; 0x03b2
    inc di                           ; 0x03b5
    jmp short @..math_loc_0293.l16   ; 0x03b6
@..math_loc_0293.l15:
    shl al, 1                        ; 0x03b8
    inc di                           ; 0x03ba
@..math_loc_0293.l16:
    loop @..math_loc_0293.l13        ; 0x03bb
    mov cx, word [bp - 0x0008]       ; 0x03bd
    or cx, cx                        ; 0x03c0
    jne short @..math_loc_0293.l11   ; 0x03c2
    add word [bp - 0x0006], strict word 0x140 ; 0x03c4
    mov di, word [bp - 0x0006]       ; 0x03c9
    dec word [bp - 0x0004]           ; 0x03cc
    jne short @..math_loc_0293.l10   ; 0x03cf
    jmp near @..math_loc_0293.l23    ; 0x03d1
@..math_loc_0293.l17:
    mov al, byte [bx + 0x6]          ; 0x03d4
    test al, 2                       ; 0x03d7
    jne short @..math_loc_0293.l19   ; 0x03d9
    mov ax, word [bp - 0x0002]       ; 0x03db
    sub ax, word [bp - 0x000c]       ; 0x03de
    mov word [bp - 0x000a], ax       ; 0x03e1
    mov ax, word [cs:data_01e5]      ; 0x03e4
    mov es, ax                       ; 0x03e8
@..math_loc_0293.l18:
    mov cx, word [bp - 0x000c]       ; 0x03ea
    rep movsb                        ; 0x03ed
    add si, word [bp - 0x000a]       ; 0x03ef
    add word [bp - 0x0006], strict word 0x140 ; 0x03f2
    mov di, word [bp - 0x0006]       ; 0x03f7
    dec word [bp - 0x0004]           ; 0x03fa
    jne short @..math_loc_0293.l18   ; 0x03fd
    jmp near @..math_loc_0293.l23    ; 0x03ff
@..math_loc_0293.l19:
    mov ax, word [bp - 0x0002]       ; 0x0402
    sub ax, word [bp - 0x000c]       ; 0x0405
    mov word [bp - 0x000a], ax       ; 0x0408
    mov ax, word [cs:data_01e5]      ; 0x040b
    mov es, ax                       ; 0x040f
@..math_loc_0293.l20:
    mov cx, word [bp - 0x000c]       ; 0x0411
@..math_loc_0293.l21:
    mov al, byte [si]                ; 0x0414
    cmp al, 0xff                     ; 0x0416
    je short @..math_loc_0293.l22    ; 0x0418
    mov byte [es:di], al             ; 0x041a
@..math_loc_0293.l22:
    inc si                           ; 0x041d
    inc di                           ; 0x041e
    loop @..math_loc_0293.l21        ; 0x041f
    add si, word [bp - 0x000a]       ; 0x0421
    add word [bp - 0x0006], strict word 0x140 ; 0x0424
    mov di, word [bp - 0x0006]       ; 0x0429
    dec word [bp - 0x0004]           ; 0x042c
    jne short @..math_loc_0293.l20   ; 0x042f
@..math_loc_0293.l23:
    pop di                           ; 0x0431
    pop si                           ; 0x0432
    pop es                           ; 0x0433
    pop ds                           ; 0x0434
    mov sp, bp                       ; 0x0435
    pop bp                           ; 0x0437
    ret                              ; 0x0438
leaf_loc_0439:
    push bp                          ; 0x0439
    mov bp, sp                       ; 0x043a
    mov ax, word [bp + 0xc]          ; 0x043c
    mov word [cs:data_0299], ax      ; 0x043f
    mov sp, bp                       ; 0x0443
    pop bp                           ; 0x0445
    ret                              ; 0x0446
loc_0447:
    push bp                          ; 0x0447
    mov bp, sp                       ; 0x0448
    mov ax, word [bp + 0xc]          ; 0x044a
    mov word [cs:math_loc_0293], ax  ; 0x044d
    mov ax, word [bp + 0xe]          ; 0x0451
    mov word [cs:data_0291], ax      ; 0x0454
    mov sp, bp                       ; 0x0458
    pop bp                           ; 0x045a
    ret                              ; 0x045b
math_loc_045c:
    push bp                          ; 0x045c
    mov bp, sp                       ; 0x045d
    push es                          ; 0x045f
    mov ax, ds                       ; 0x0460
    mov es, ax                       ; 0x0462
    mov ax, word [bp + 0xc]          ; 0x0464
    mov word [cs:data_0295], ax      ; 0x0467
    mov ax, word [bp + 0xe]          ; 0x046b
    mov word [cs:data_0297], ax      ; 0x046e
    pop es                           ; 0x0472
    mov sp, bp                       ; 0x0473
    pop bp                           ; 0x0475
    ret                              ; 0x0476
math_loc_0477:
    push bp                          ; 0x0477
    mov bp, sp                       ; 0x0478
    push es                          ; 0x047a
    mov ax, ds                       ; 0x047b
    mov es, ax                       ; 0x047d
    mov ax, word [cs:data_0295]      ; 0x047f
    mov bx, word [bp + 0xc]          ; 0x0483
    mov word [bx], ax                ; 0x0486
    mov ax, word [cs:data_0297]      ; 0x0488
    mov bx, word [bp + 0xe]          ; 0x048c
    mov word [bx], ax                ; 0x048f
    pop es                           ; 0x0491
    mov sp, bp                       ; 0x0492
    pop bp                           ; 0x0494
    ret                              ; 0x0495
math_loc_0496:
    push bp                          ; 0x0496
    mov bp, sp                       ; 0x0497
    push es                          ; 0x0499
    push di                          ; 0x049a
    mov ax, ds                       ; 0x049b
    mov es, ax                       ; 0x049d
    mov ax, word [cs:data_01e5]      ; 0x049f
    mov es, ax                       ; 0x04a3
    xor di, di                       ; 0x04a5
    mov ax, word [bp + 0xc]          ; 0x04a7
    mov cx, 0xfa00                   ; 0x04aa
    rep stosb                        ; 0x04ad
    pop di                           ; 0x04af
    pop es                           ; 0x04b0
    mov sp, bp                       ; 0x04b1
    pop bp                           ; 0x04b3
    ret                              ; 0x04b4
math_loc_04b5:
    push bp                          ; 0x04b5
    mov bp, sp                       ; 0x04b6
    sub sp, byte 0x10                ; 0x04b8
    push ds                          ; 0x04bb
    push es                          ; 0x04bc
    push di                          ; 0x04bd
    push si                          ; 0x04be
    mov ax, ds                       ; 0x04bf
    mov es, ax                       ; 0x04c1
    call bios_mouse_loc_1308         ; 0x04c3
    call leaf_loc_0516               ; 0x04c6
    mov ax, word [cs:data_01e5]      ; 0x04c9
    mov ds, ax                       ; 0x04cd
    mov ax, 0xa000                   ; 0x04cf
    mov es, ax                       ; 0x04d2
    mov ax, word [bp + 0xe]          ; 0x04d4
    mov bx, 0x140                    ; 0x04d7
    mul bx                           ; 0x04da
    add ax, word [bp + 0xc]          ; 0x04dc
    mov word [bp - 0x0002], ax       ; 0x04df
    mov ax, word [bp + 0x10]         ; 0x04e2
    sub ax, word [bp + 0xc]          ; 0x04e5
    inc ax                           ; 0x04e8
    mov word [bp - 0x0004], ax       ; 0x04e9
    mov ax, word [bp + 0x12]         ; 0x04ec
    sub ax, word [bp + 0xe]          ; 0x04ef
    inc ax                           ; 0x04f2
    mov dx, ax                       ; 0x04f3
@..math_loc_04b5.l1:
    mov di, word [bp - 0x0002]       ; 0x04f5
    add word [bp - 0x0002], strict word 0x140 ; 0x04f8
    mov si, di                       ; 0x04fd
    mov cx, word [bp - 0x0004]       ; 0x04ff
    rep movsb                        ; 0x0502
    dec dx                           ; 0x0504
    jne short @..math_loc_04b5.l1    ; 0x0505
    call math_loc_067f               ; 0x0507
    call bios_mouse_loc_12c9         ; 0x050a
    pop si                           ; 0x050d
    pop di                           ; 0x050e
    pop es                           ; 0x050f
    pop ds                           ; 0x0510
    mov sp, bp                       ; 0x0511
    pop bp                           ; 0x0513
    ret                              ; 0x0514
    db 0x00
leaf_loc_0516:
    cmp byte [cs:data_0228], 1       ; 0x0516
    jne short @..leaf_loc_0516.l1    ; 0x051c
    mov cx, word [cs:data_15ac]      ; 0x051e
    mov dx, word [cs:data_15ae]      ; 0x0523
    cmp word [bp + 0x10], cx         ; 0x0528
    jb short @..leaf_loc_0516.l1     ; 0x052b
    cmp word [bp + 0x12], dx         ; 0x052d
    jb short @..leaf_loc_0516.l1     ; 0x0530
    add cx, word [cs:data_15b8]      ; 0x0532
    dec cx                           ; 0x0537
    add dx, word [cs:data_15ba]      ; 0x0538
    dec dx                           ; 0x053d
    cmp cx, word [bp + 0xc]          ; 0x053e
    jb short @..leaf_loc_0516.l1     ; 0x0541
    cmp dx, word [bp + 0xe]          ; 0x0543
    jae short @..leaf_loc_0516.l2    ; 0x0546
@..leaf_loc_0516.l1:
    mov byte [cs:data_0615], 0       ; 0x0548
    jmp near @..leaf_loc_0516.l12    ; 0x054e
@..leaf_loc_0516.l2:
    mov byte [cs:data_0615], 1       ; 0x0551
    mov cx, word [cs:data_15ac]      ; 0x0557
    mov ax, cx                       ; 0x055c
    cmp word [bp + 0xc], cx          ; 0x055e
    jb short @..leaf_loc_0516.l3     ; 0x0561
    mov ax, word [bp + 0xc]          ; 0x0563
@..leaf_loc_0516.l3:
    mov word [bp - 0x0006], ax       ; 0x0566
    mov dx, word [cs:data_15ae]      ; 0x0569
    mov bx, dx                       ; 0x056e
    cmp word [bp + 0xe], dx          ; 0x0570
    jb short @..leaf_loc_0516.l4     ; 0x0573
    mov bx, word [bp + 0xe]          ; 0x0575
@..leaf_loc_0516.l4:
    mov word [bp - 0x0008], bx       ; 0x0578
    sub ax, cx                       ; 0x057b
    sub bx, dx                       ; 0x057d
    mov word [bp - 0x000a], ax       ; 0x057f
    mov word [bp - 0x000c], bx       ; 0x0582
    mov cx, word [cs:data_15b8]      ; 0x0585
    mov dx, word [cs:data_15ba]      ; 0x058a
    sub cx, ax                       ; 0x058f
    mov word [bp - 0x000e], cx       ; 0x0591
    sub dx, bx                       ; 0x0594
    mov word [bp - 0x0010], dx       ; 0x0596
    mov ax, word [bp - 0x0006]       ; 0x0599
    add ax, word [bp - 0x000e]       ; 0x059c
    dec ax                           ; 0x059f
    cmp ax, word [bp + 0x10]         ; 0x05a0
    jb short @..leaf_loc_0516.l5     ; 0x05a3
    mov ax, word [bp + 0x10]         ; 0x05a5
    sub ax, word [bp - 0x0006]       ; 0x05a8
    inc ax                           ; 0x05ab
    mov word [bp - 0x000e], ax       ; 0x05ac
@..leaf_loc_0516.l5:
    mov ax, word [bp - 0x0008]       ; 0x05af
    add ax, word [bp - 0x0010]       ; 0x05b2
    dec ax                           ; 0x05b5
    cmp ax, word [bp + 0x12]         ; 0x05b6
    jb short @..leaf_loc_0516.l6     ; 0x05b9
    mov ax, word [bp + 0x12]         ; 0x05bb
    sub ax, word [bp - 0x0008]       ; 0x05be
    inc ax                           ; 0x05c1
    mov word [bp - 0x0010], ax       ; 0x05c2
@..leaf_loc_0516.l6:
    mov ax, word [bp - 0x0008]       ; 0x05c5
    mov bx, 0x140                    ; 0x05c8
    mul bx                           ; 0x05cb
    add ax, word [bp - 0x0006]       ; 0x05cd
    mov si, ax                       ; 0x05d0
    mov ax, word [bp - 0x000c]       ; 0x05d2
    mov bx, word [cs:data_15b8]      ; 0x05d5
    mul bx                           ; 0x05da
    add ax, word [bp - 0x000a]       ; 0x05dc
    add ax, word [cs:data_15b4]      ; 0x05df
    mov di, ax                       ; 0x05e4
    mov ax, word [cs:data_01e5]      ; 0x05e6
    mov ds, ax                       ; 0x05ea
    mov ax, cs                       ; 0x05ec
    mov es, ax                       ; 0x05ee
    mov cx, word [bp - 0x0010]       ; 0x05f0
@..leaf_loc_0516.l7:
    push cx                          ; 0x05f3
    push si                          ; 0x05f4
    push di                          ; 0x05f5
    mov cx, word [bp - 0x000e]       ; 0x05f6
    rep movsb                        ; 0x05f9
    pop di                           ; 0x05fb
    add di, word [cs:data_15b8]      ; 0x05fc
    pop si                           ; 0x0601
    add si, strict word 0x140        ; 0x0602
    pop cx                           ; 0x0606
    loop @..leaf_loc_0516.l7         ; 0x0607
    mov ax, cs                       ; 0x0609
    mov es, ax                       ; 0x060b
    mov ax, word [cs:data_01e5]      ; 0x060d
    mov ds, ax                       ; 0x0611
    mov si, word [cs:data_15bc]      ; 0x0613
    mov di, word [cs:data_15b6]      ; 0x0618
    mov cx, word [cs:data_15ba]      ; 0x061d
@..leaf_loc_0516.l8:
    push cx                          ; 0x0622
    push si                          ; 0x0623
    mov cx, word [cs:data_15b8]      ; 0x0624
    rep movsb                        ; 0x0629
    pop si                           ; 0x062b
    add si, strict word 0x140        ; 0x062c
    pop cx                           ; 0x0630
    loop @..leaf_loc_0516.l8         ; 0x0631
    mov ax, word [cs:data_01e5]      ; 0x0633
    mov es, ax                       ; 0x0637
    mov di, word [cs:data_15bc]      ; 0x0639
    mov ax, word [cs:data_1e66]      ; 0x063e
    mov ds, ax                       ; 0x0642
    mov si, word [cs:data_1e64]      ; 0x0644
    mov cx, word [cs:data_15ba]      ; 0x0649
    mov ax, ds                       ; 0x064e
    or ax, si                        ; 0x0650
    jne short @..leaf_loc_0516.l9    ; 0x0652
    mov si, 0x1e69                   ; 0x0654
    mov ax, cs                       ; 0x0657
    mov ds, ax                       ; 0x0659
@..leaf_loc_0516.l9:
    push cx                          ; 0x065b
    push di                          ; 0x065c
    push si                          ; 0x065d
    mov cx, word [cs:data_15b8]      ; 0x065e
@..leaf_loc_0516.l10:
    mov al, byte [si]                ; 0x0663
    cmp al, 0xff                     ; 0x0665
    je short @..leaf_loc_0516.l11    ; 0x0667
    mov byte [es:di], al             ; 0x0669
@..leaf_loc_0516.l11:
    inc si                           ; 0x066c
    inc di                           ; 0x066d
    loop @..leaf_loc_0516.l10        ; 0x066e
    pop si                           ; 0x0670
    add si, word [cs:data_1e5c]      ; 0x0671
    pop di                           ; 0x0676
    add di, strict word 0x140        ; 0x0677
    pop cx                           ; 0x067b
    loop @..leaf_loc_0516.l9         ; 0x067c
@..leaf_loc_0516.l12:
    ret                              ; 0x067e
math_loc_067f:
    cmp byte [cs:data_0615], 0       ; 0x067f
    je short @..math_loc_067f.l2     ; 0x0685
    mov ax, word [cs:data_01e5]      ; 0x0687
    mov es, ax                       ; 0x068b
    mov ax, cs                       ; 0x068d
    mov ds, ax                       ; 0x068f
    mov di, word [cs:data_15bc]      ; 0x0691
    mov si, word [cs:data_15b6]      ; 0x0696
    mov cx, word [cs:data_15ba]      ; 0x069b
@..math_loc_067f.l1:
    push cx                          ; 0x06a0
    push di                          ; 0x06a1
    mov cx, word [cs:data_15b8]      ; 0x06a2
    rep movsb                        ; 0x06a7
    pop di                           ; 0x06a9
    add di, strict word 0x140        ; 0x06aa
    pop cx                           ; 0x06ae
    loop @..math_loc_067f.l1         ; 0x06af
@..math_loc_067f.l2:
    ret                              ; 0x06b1
math_loc_06b2:
    push bp                          ; 0x06b2
    mov bp, sp                       ; 0x06b3
    push ds                          ; 0x06b5
    push es                          ; 0x06b6
    mov ax, ds                       ; 0x06b7
    mov es, ax                       ; 0x06b9
    mov ax, word [cs:data_01e5]      ; 0x06bb
    mov ds, ax                       ; 0x06bf
    mov ax, word [bp + 0xe]          ; 0x06c1
    mov bx, 0x140                    ; 0x06c4
    mul bx                           ; 0x06c7
    add ax, word [bp + 0xc]          ; 0x06c9
    mov bx, ax                       ; 0x06cc
    mov ax, word [bp + 0x10]         ; 0x06ce
    mov byte [bx], al                ; 0x06d1
    pop es                           ; 0x06d3
    pop ds                           ; 0x06d4
    mov sp, bp                       ; 0x06d5
    pop bp                           ; 0x06d7
    ret                              ; 0x06d8
math_loc_06d9:
    push bp                          ; 0x06d9
    mov bp, sp                       ; 0x06da
    sub sp, byte 8                   ; 0x06dc
    push es                          ; 0x06df
    push di                          ; 0x06e0
    mov ax, ds                       ; 0x06e1
    mov es, ax                       ; 0x06e3
    mov ax, word [cs:data_01e5]      ; 0x06e5
    mov es, ax                       ; 0x06e9
    mov ax, word [bp + 0xe]          ; 0x06eb
    mov bx, 0x140                    ; 0x06ee
    mul bx                           ; 0x06f1
    add ax, word [bp + 0xc]          ; 0x06f3
    mov word [bp - 0x0002], ax       ; 0x06f6
    mov ax, word [bp + 0x12]         ; 0x06f9
    sub ax, word [bp + 0xe]          ; 0x06fc
    inc ax                           ; 0x06ff
    mov word [bp - 0x0004], ax       ; 0x0700
    mov ax, word [bp + 0x10]         ; 0x0703
    sub ax, word [bp + 0xc]          ; 0x0706
    inc ax                           ; 0x0709
    mov word [bp - 0x0006], ax       ; 0x070a
    mov ax, word [bp + 0x14]         ; 0x070d
@..math_loc_06d9.l1:
    mov di, word [bp - 0x0002]       ; 0x0710
    add word [bp - 0x0002], strict word 0x140 ; 0x0713
    mov cx, word [bp - 0x0006]       ; 0x0718
    rep stosb                        ; 0x071b
    dec word [bp - 0x0004]           ; 0x071d
    jne short @..math_loc_06d9.l1    ; 0x0720
    pop di                           ; 0x0722
    pop es                           ; 0x0723
    mov sp, bp                       ; 0x0724
    pop bp                           ; 0x0726
    ret                              ; 0x0727
string_loc_0728:
    push bp                          ; 0x0728
    mov bp, sp                       ; 0x0729
    sub sp, byte 8                   ; 0x072b
    push es                          ; 0x072e
    push ds                          ; 0x072f
    push di                          ; 0x0730
    mov ax, word [cs:data_01e5]      ; 0x0731
    mov es, ax                       ; 0x0735
    mov ds, ax                       ; 0x0737
    mov ax, word [bp + 0xe]          ; 0x0739
    mov bx, 0x140                    ; 0x073c
    mul bx                           ; 0x073f
    add ax, word [bp + 0xc]          ; 0x0741
    mov word [bp - 0x0002], ax       ; 0x0744
    mov ax, word [bp + 0x12]         ; 0x0747
    sub ax, word [bp + 0xe]          ; 0x074a
    inc ax                           ; 0x074d
    mov word [bp - 0x0004], ax       ; 0x074e
    mov ax, word [bp + 0x10]         ; 0x0751
    sub ax, word [bp + 0xc]          ; 0x0754
    inc ax                           ; 0x0757
    mov word [bp - 0x0006], ax       ; 0x0758
@..string_loc_0728.l1:
    mov di, word [bp - 0x0002]       ; 0x075b
    mov si, di                       ; 0x075e
    add word [bp - 0x0002], strict word 0x140 ; 0x0760
    mov cx, word [bp - 0x0006]       ; 0x0765
@..string_loc_0728.l2:
    lodsb                            ; 0x0768
    not al                           ; 0x0769
    stosb                            ; 0x076b
    loop @..string_loc_0728.l2       ; 0x076c
    dec word [bp - 0x0004]           ; 0x076e
    jne short @..string_loc_0728.l1  ; 0x0771
    pop di                           ; 0x0773
    pop ds                           ; 0x0774
    pop es                           ; 0x0775
    mov sp, bp                       ; 0x0776
    pop bp                           ; 0x0778
    ret                              ; 0x0779
%include "vga/dos_alloc_mem.asm"

%include "vga/dos_free_mem.asm"

%include "vga/dos_read_file.asm"

%include "vga/dos_write_file.asm"

    mov ax, cs                       ; 0x0a4f
    mov ds, ax                       ; 0x0a51
    mov dx, 0xb5f                    ; 0x0a53
    mov ah, 9                        ; 0x0a56
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0a5a
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with bad slot number.', 0
    db 0x0a, 0x24

dos_con_loc_0a8d:
    mov ax, cs                       ; 0x0a8d

    db 0x8e, 0xd8, 0xba, 0x9d, 0x0b, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a
    db 0x07
    db 'SAVE_SCREEN called with table full.', 0
    db 0x0a, 0x24
    times 232 db 0

dos_read_file_2:
    push bp                          ; 0x0bae
    mov bp, sp                       ; 0x0baf
    sub sp, byte 0x14                ; 0x0bb1
    push ds                          ; 0x0bb4
    push es                          ; 0x0bb5
    push di                          ; 0x0bb6
    push si                          ; 0x0bb7
    mov ax, ds                       ; 0x0bb8
    mov es, ax                       ; 0x0bba
    mov ax, word [bp + 0xe]          ; 0x0bbc
    cmp ax, strict word 0xa          ; 0x0bbf
    jb short @..dos_con_loc_0a4f.l1  ; 0x0bc2
    jmp near @..local.l2             ; 0x0bc4
@..dos_con_loc_0a4f.l1:
    shl ax, 1                        ; 0x0bc7
    mov word [bp - 0x0008], ax       ; 0x0bc9
    mov bx, data_0bc6                ; 0x0bcc
    add bx, ax                       ; 0x0bcf
    mov word [bp - 0x0002], bx       ; 0x0bd1
    mov ax, word [cs:bx]             ; 0x0bd4
    or ax, ax                        ; 0x0bd7
    jne short @..dos_con_loc_0a4f.l2 ; 0x0bd9
    jmp near @..dos_con_loc_0a4f.l3  ; 0x0bdb
@..dos_con_loc_0a4f.l2:
    mov ax, cs                       ; 0x0bde
    mov ds, ax                       ; 0x0be0
    mov dx, 0xe3c                    ; 0x0be2
    mov ah, 9                        ; 0x0be5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0be9
    int 0x21 ; DOS function dispatcher
@..dos_con_loc_0a4f.l3:
    mov ax, word [cs:data_0caa]      ; 0x0bee
    inc ax                           ; 0x0bf2
    mov word [cs:data_0caa], ax      ; 0x0bf3
    mov bx, word [bp - 0x0002]       ; 0x0bf7
    mov word [cs:bx], ax             ; 0x0bfa
    dec ax                           ; 0x0bfd
    mov cl, 2                        ; 0x0bfe
    shl ax, cl                       ; 0x0c00
    mov bx, data_0bda                ; 0x0c02
    add bx, ax                       ; 0x0c05
    mov word [bp - 0x0002], bx       ; 0x0c07
    mov ax, word [cs:data_0cac]      ; 0x0c0a
    mov word [cs:bx], ax             ; 0x0c0e
    mov ax, word [bp + 0x10]         ; 0x0c11
    or ax, ax                        ; 0x0c14
    je short @..dos_con_loc_0a4f.l4  ; 0x0c16
    jmp near @..dos_con_loc_0cf6.l2  ; 0x0c18
@..dos_con_loc_0a4f.l4:
    cld                              ; 0x0c1b
    mov cx, 0x1000                   ; 0x0c1c
    mov bx, word [cs:data_01e1]      ; 0x0c1f
    add bx, word [cs:data_0cac]      ; 0x0c24
    mov ds, bx                       ; 0x0c29
    xor dx, dx                       ; 0x0c2b
    mov bx, word [bp + 0xc]          ; 0x0c2d
    mov ah, 0x3f                     ; 0x0c30
    int 0x21 ; DOS read file (handle)
    mov bx, 0                        ; 0x0c34
    mov ax, word [bx]                ; 0x0c37
    mov cx, 6                        ; 0x0c39
    mul cx                           ; 0x0c3c
    add ax, strict word 4            ; 0x0c3e
    mov bx, word [bp - 0x0008]       ; 0x0c41
    add bx, strict word 0x27d        ; 0x0c44
    mov word [cs:bx], ax             ; 0x0c48
    mov bx, ax                       ; 0x0c4b
    sub bx, byte 6                   ; 0x0c4d
    mov cl, byte [bx + 0x5]          ; 0x0c50
    mov al, byte [bx + 0x4]          ; 0x0c53
    mul cl                           ; 0x0c56
    mov cl, 3                        ; 0x0c58
    shl ax, cl                       ; 0x0c5a
    mov cx, word [bx + 0x2]          ; 0x0c5c
    add ax, cx                       ; 0x0c5f
    push ax                          ; 0x0c61
    xor dx, dx                       ; 0x0c62
    mov ax, word [bx]                ; 0x0c64
    mov cx, 0x10                     ; 0x0c66
    mul cx                           ; 0x0c69
    pop cx                           ; 0x0c6b
    add ax, cx                       ; 0x0c6c
    adc dx, byte 0                   ; 0x0c6e
    push ax                          ; 0x0c71
    push dx                          ; 0x0c72
    sub ax, 0x1000                   ; 0x0c73
    sbb dx, byte 0                   ; 0x0c76
    mov word [bp - 0x0008], ax       ; 0x0c79
    mov word [bp - 0x0006], dx       ; 0x0c7c
    pop dx                           ; 0x0c7f
    pop ax                           ; 0x0c80
    add ax, strict word 0xf          ; 0x0c81
    adc dx, byte 0                   ; 0x0c84
    mov bx, 0x10                     ; 0x0c87
    div bx                           ; 0x0c8a
    mov bx, word [bp - 0x0002]       ; 0x0c8c
    mov word [cs:bx + 0x2], ax       ; 0x0c8f
    add word [cs:data_0cac], ax      ; 0x0c93
    mov ax, word [cs:data_0cac]      ; 0x0c98
    cmp ax, 0x4180                   ; 0x0c9c
    jae short @..dos_con_loc_0cf6.l1 ; 0x0c9f
    mov ax, ds                       ; 0x0ca1
    add ax, 0x100                    ; 0x0ca3
    mov ds, ax                       ; 0x0ca6
    mov dx, 0                        ; 0x0ca8
@..dos_read_file_2.l1:
    cmp word [bp - 0x0006], byte 0   ; 0x0cab
    je short @..dos_read_file_2.l2   ; 0x0caf
    dec word [bp - 0x0006]           ; 0x0cb1
    mov cx, 0x8000                   ; 0x0cb4
    xor dx, dx                       ; 0x0cb7
    mov bx, word [bp + 0xc]          ; 0x0cb9
    mov ah, 0x3f                     ; 0x0cbc
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x0cc0
    add ax, 0x800                    ; 0x0cc2
    mov ds, ax                       ; 0x0cc5
    mov cx, 0x8000                   ; 0x0cc7
    xor dx, dx                       ; 0x0cca
    mov bx, word [bp + 0xc]          ; 0x0ccc
    mov ah, 0x3f                     ; 0x0ccf
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x0cd3
    add ax, 0x800                    ; 0x0cd5
    mov ds, ax                       ; 0x0cd8
    jmp short @..dos_read_file_2.l1  ; 0x0cda
@..dos_read_file_2.l2:
    mov cx, word [bp - 0x0008]       ; 0x0cdc
    xor dx, dx                       ; 0x0cdf
    mov bx, word [bp + 0xc]          ; 0x0ce1
    mov ah, 0x3f                     ; 0x0ce4
    int 0x21 ; DOS read file (handle)
@..dos_read_file_2.l3:
    pop si                           ; 0x0ce8
    pop di                           ; 0x0ce9
    pop es                           ; 0x0cea
    pop ds                           ; 0x0ceb
    mov sp, bp                       ; 0x0cec
    pop bp                           ; 0x0cee
    ret                              ; 0x0cef
@..local.l2:

    db 0x8c, 0xc8, 0x8e, 0xd8, 0xba, 0x10, 0x0e, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21

@..dos_con_loc_0cf6.l1:
    mov ax, cs                       ; 0x0d00
    mov ds, ax                       ; 0x0d02
    mov dx, 0xe6b                    ; 0x0d04
    mov ah, 9                        ; 0x0d07
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0d0b
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

@..dos_con_loc_0cf6.l2:
    mov ax, word [bp + 0xc]          ; 0x0d9a
    shl ax, 1                        ; 0x0d9d
    mov si, 0x2c3                    ; 0x0d9f
    add si, ax                       ; 0x0da2
    mov ax, word [cs:si]             ; 0x0da4
    dec ax                           ; 0x0da7
    mov cl, 2                        ; 0x0da8
    shl ax, cl                       ; 0x0daa
    mov di, 0x2eb                    ; 0x0dac
    add di, ax                       ; 0x0daf
    mov si, word [cs:di]             ; 0x0db1
    mov ax, word [cs:di + 0x2]       ; 0x0db4
    mov word [cs:bx + 0x2], ax       ; 0x0db8
    mov word [bp - 0x0004], ax       ; 0x0dbc
    mov dx, word [cs:data_01e1]      ; 0x0dbf
    add dx, word [cs:data_0cac]      ; 0x0dc4
    mov word [bp - 0x000a], dx       ; 0x0dc9
    mov es, dx                       ; 0x0dcc
    add word [cs:data_0cac], ax      ; 0x0dce
    mov ax, word [cs:data_0203]      ; 0x0dd3
    mov ds, ax                       ; 0x0dd7
    mov ax, si                       ; 0x0dd9
    mov cl, 0xa                      ; 0x0ddb
    shr ax, cl                       ; 0x0ddd
    mov word [cs:data_3c8e], ax      ; 0x0ddf
    call dos_file_loc_3b90           ; 0x0de3
    and si, strict word 0x3ff        ; 0x0de6
    mov cl, 4                        ; 0x0dea
    shl si, cl                       ; 0x0dec
@..local.l3:
    test si, 0xc000                  ; 0x0dee
    je short @..local.l4             ; 0x0df2
    inc word [cs:data_3c8e]          ; 0x0df4
    mov ax, word [cs:data_3c8e]      ; 0x0df9
    call dos_file_loc_3b90           ; 0x0dfd
    sub si, strict word 0x4000       ; 0x0e00
@..local.l4:
    xor di, di                       ; 0x0e04
    mov cx, 0x10                     ; 0x0e06
    rep movsb                        ; 0x0e09
    mov ax, es                       ; 0x0e0b
    inc ax                           ; 0x0e0d
    mov es, ax                       ; 0x0e0e
    dec word [bp - 0x0004]           ; 0x0e10
    jne short @..local.l3            ; 0x0e13
    mov ax, word [bp - 0x000a]       ; 0x0e15
    mov ds, ax                       ; 0x0e18
    mov bx, 0                        ; 0x0e1a
    mov ax, word [bx]                ; 0x0e1d
    mov cx, 6                        ; 0x0e1f
    mul cx                           ; 0x0e22
    add ax, strict word 4            ; 0x0e24
    mov bx, word [bp - 0x0008]       ; 0x0e27
    add bx, strict word 0x27d        ; 0x0e2a
    mov word [cs:bx], ax             ; 0x0e2e
    jmp near @..dos_read_file_2.l3   ; 0x0e31
leaf_loc_0e34:
    push ax                          ; 0x0e34
    mov bx, data_029b                ; 0x0e35
    mov cx, 0x14                     ; 0x0e38
@..leaf_loc_0e34.l1:
    cmp ax, word [cs:bx]             ; 0x0e3b
    jae short @..leaf_loc_0e34.l2    ; 0x0e3e
    dec word [cs:bx]                 ; 0x0e40
@..leaf_loc_0e34.l2:
    inc bx                           ; 0x0e43
    inc bx                           ; 0x0e44
    loop @..leaf_loc_0e34.l1         ; 0x0e45
    mov bx, 0x2c3                    ; 0x0e47
    mov cx, 0xa                      ; 0x0e4a
@..leaf_loc_0e34.l3:
    cmp ax, word [cs:bx]             ; 0x0e4d
    jae short @..leaf_loc_0e34.l4    ; 0x0e50
    dec word [cs:bx]                 ; 0x0e52
@..leaf_loc_0e34.l4:
    inc bx                           ; 0x0e55
    inc bx                           ; 0x0e56
    loop @..leaf_loc_0e34.l3         ; 0x0e57
    mov bx, data_02d7                ; 0x0e59
    mov cx, 0xa                      ; 0x0e5c
@..leaf_loc_0e34.l5:
    cmp ax, word [cs:bx]             ; 0x0e5f
    jae short @..leaf_loc_0e34.l6    ; 0x0e62
    dec word [cs:bx]                 ; 0x0e64
@..leaf_loc_0e34.l6:
    inc bx                           ; 0x0e67
    inc bx                           ; 0x0e68
    loop @..leaf_loc_0e34.l5         ; 0x0e69
    pop ax                           ; 0x0e6b
    ret                              ; 0x0e6c
    times 4 db 0
loc_0e71:
    dec ax                           ; 0x0e71
    mov cl, 2                        ; 0x0e72
    shl ax, cl                       ; 0x0e74
    mov bx, 0x2eb                    ; 0x0e76
    add bx, ax                       ; 0x0e79
    mov word [bp - 0x0004], bx       ; 0x0e7b
    mov ax, word [cs:bx + 0x2]       ; 0x0e7e
    sub word [cs:data_0391], ax      ; 0x0e82
    mov word [bp - 0x0006], ax       ; 0x0e87
@..local.l5:
    mov bx, word [bp - 0x0004]       ; 0x0e8a
    mov di, word [cs:bx]             ; 0x0e8d
    mov dx, word [cs:data_0203]      ; 0x0e90
    mov es, dx                       ; 0x0e95
    mov ds, dx                       ; 0x0e97
    mov si, word [cs:bx + 0x4]       ; 0x0e99
    add dx, word [cs:data_01e1]      ; 0x0e9d
    mov cx, word [cs:bx + 0x6]       ; 0x0ea2
    or cx, cx                        ; 0x0ea6
    jne short @..local.l6            ; 0x0ea8
    jmp near @..local.l12            ; 0x0eaa
@..local.l6:
    push cx                          ; 0x0ead
    mov ax, si                       ; 0x0eae
    mov cl, 0xa                      ; 0x0eb0
    shr ax, cl                       ; 0x0eb2
    mov word [cs:data_0f6d], ax      ; 0x0eb4
    and si, strict word 0x3ff        ; 0x0eb8
    mov cl, 4                        ; 0x0ebc
    shl si, cl                       ; 0x0ebe
    mov ax, di                       ; 0x0ec0
    mov cl, 0xa                      ; 0x0ec2
    shr ax, cl                       ; 0x0ec4
    mov word [cs:dos_con_loc_0f6f], ax ; 0x0ec6
    and di, strict word 0x3ff        ; 0x0eca
    mov cl, 4                        ; 0x0ece
    shl di, cl                       ; 0x0ed0
    call loc_0f3b                    ; 0x0ed2
    pop cx                           ; 0x0ed5
@..local.l7:
    push cx                          ; 0x0ed6
    mov cx, 0x10                     ; 0x0ed7
    rep movsb                        ; 0x0eda
    xor dx, dx                       ; 0x0edc
    cmp di, strict word 0x4000       ; 0x0ede
    jne short @..local.l8            ; 0x0ee2
    inc word [cs:dos_con_loc_0f6f]   ; 0x0ee4
    inc dx                           ; 0x0ee9
@..local.l8:
    cmp si, strict word 0x4000       ; 0x0eea
    je short @..local.l9             ; 0x0eee
    cmp si, strict word 0x8000       ; 0x0ef0
    jne short @..local.l10           ; 0x0ef4
@..local.l9:
    inc word [cs:data_0f6d]          ; 0x0ef6
    inc dx                           ; 0x0efb
@..local.l10:
    or dx, dx                        ; 0x0efc
    je short @..local.l11            ; 0x0efe
    call loc_0f3b                    ; 0x0f00
@..local.l11:
    pop cx                           ; 0x0f03
    loop @..local.l7                 ; 0x0f04
    mov bx, word [bp - 0x0004]       ; 0x0f06
    mov cx, word [bp - 0x0006]       ; 0x0f09
    mov ax, word [cs:bx + 0x4]       ; 0x0f0c
    sub ax, cx                       ; 0x0f10
    mov word [cs:bx], ax             ; 0x0f12
    add ax, word [cs:bx + 0x6]       ; 0x0f15
    mov word [cs:bx + 0x4], ax       ; 0x0f19
    mov ax, word [cs:bx + 0x6]       ; 0x0f1d
    mov word [cs:bx + 0x2], ax       ; 0x0f21
    add bx, byte 4                   ; 0x0f25
    mov word [bp - 0x0004], bx       ; 0x0f28
    jmp near @..local.l5             ; 0x0f2b
@..local.l12:
    mov bx, word [bp - 0x0004]       ; 0x0f2e
    xor ax, ax                       ; 0x0f31
    mov word [cs:bx], ax             ; 0x0f33
    mov word [cs:bx + 0x2], ax       ; 0x0f36
    ret                              ; 0x0f3a
loc_0f3b:
    and di, strict word 0x3fff       ; 0x0f3b
    and si, strict word 0x3fff       ; 0x0f3f
    mov ah, 0x44                     ; 0x0f43
    mov al, 0                        ; 0x0f45
    mov bx, word [cs:dos_con_loc_0f6f] ; 0x0f47
    mov dx, word [cs:data_0201]      ; 0x0f4c
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, word [cs:data_0f6d]      ; 0x0f53
    je short @..local.l13            ; 0x0f58
    or si, strict word 0x4000        ; 0x0f5a
    mov ah, 0x44                     ; 0x0f5e
    mov al, 1                        ; 0x0f60
    mov bx, word [cs:data_0f6d]      ; 0x0f62
    mov dx, word [cs:data_0201]      ; 0x0f67
    int 0x67 ; EMS (Expanded Memory)
@..local.l13:
    ret                              ; 0x0f6e
dos_con_loc_0f6f:
    push bp                          ; 0x0f6f
    mov bp, sp                       ; 0x0f70
    sub sp, byte 8                   ; 0x0f72
    push ds                          ; 0x0f75
    push es                          ; 0x0f76
    push di                          ; 0x0f77
    push si                          ; 0x0f78
    mov ax, ds                       ; 0x0f79
    mov es, ax                       ; 0x0f7b
    mov ax, word [bp + 0xc]          ; 0x0f7d
    cmp ax, strict word 0xa          ; 0x0f80
    jb short @..dos_con_loc_0f6f.l1  ; 0x0f83
    jmp near @..dos_con_loc_0f6f.l3  ; 0x0f85
@..dos_con_loc_0f6f.l1:
    shl ax, 1                        ; 0x0f88
    mov word [bp - 0x0008], ax       ; 0x0f8a
    mov bx, data_0bc6                ; 0x0f8d
    add bx, ax                       ; 0x0f90
    mov ax, word [cs:bx]             ; 0x0f92
    or ax, ax                        ; 0x0f95
    jne short @..dos_con_loc_0f6f.l2 ; 0x0f97
    jmp near @..dos_con_loc_0f6f.l3  ; 0x0f99
@..dos_con_loc_0f6f.l2:
    mov word [cs:bx], 0              ; 0x0f9c
    mov cx, word [cs:data_0caa]      ; 0x0fa1
    dec cx                           ; 0x0fa6
    mov word [cs:data_0caa], cx      ; 0x0fa7
    call loc_43e1                    ; 0x0fac
@..dos_con_loc_0f6f.l3:
    pop si                           ; 0x0faf
    pop di                           ; 0x0fb0
    pop es                           ; 0x0fb1
    pop ds                           ; 0x0fb2
    mov sp, bp                       ; 0x0fb3
    pop bp                           ; 0x0fb5
    ret                              ; 0x0fb6
%include "vga/dos_print_str.asm"

    or al, byte [es:di]              ; 0x11b5
    stosb                            ; 0x11b8
    loop @..dos_print_str.l15        ; 0x11b9
    jmp short @..local.l15           ; 0x11bb
@..dos_con_loc_0fda.l1:
    mov al, byte [si]                ; 0x11bd
    dec si                           ; 0x11bf
    cmp al, 0xff                     ; 0x11c0
    je short @..dos_con_loc_0fda.l2  ; 0x11c2
    mov byte [es:di], ah             ; 0x11c4
@..dos_con_loc_0fda.l2:
    inc di                           ; 0x11c7
    loop @..dos_con_loc_0fda.l1      ; 0x11c8
    jmp short @..local.l15           ; 0x11ca
@..dos_con_loc_0fda.l3:
    mov al, byte [si]                ; 0x11cc
    dec si                           ; 0x11ce
    cmp al, 0xff                     ; 0x11cf
    je short @..dos_con_loc_0fda.l4  ; 0x11d1
    mov byte [es:di], al             ; 0x11d3
@..dos_con_loc_0fda.l4:
    inc di                           ; 0x11d6
    loop @..dos_con_loc_0fda.l3      ; 0x11d7
    jmp short @..local.l15           ; 0x11d9
@..local.l14:
    mov al, byte [si]                ; 0x11db
    dec si                           ; 0x11dd
    stosb                            ; 0x11de
    loop @..local.l14                ; 0x11df
@..local.l15:
    pop di                           ; 0x11e1
    add di, strict word 0x140        ; 0x11e2
    pop ax                           ; 0x11e6
    mov dx, word [bp - 0x0006]       ; 0x11e7
    add ax, dx                       ; 0x11ea
    pop si                           ; 0x11ec
    pop cx                           ; 0x11ed
    loop @..dos_print_str.l14        ; 0x11ee
@..local.l16:
    pop si                           ; 0x11f0
    pop di                           ; 0x11f1
    pop es                           ; 0x11f2
    pop ds                           ; 0x11f3
    mov sp, bp                       ; 0x11f4
    pop bp                           ; 0x11f6
    ret                              ; 0x11f7
%include "vga/mouse_init.asm"

mouse_init_2:
    push bp                          ; 0x126c
    mov bp, sp                       ; 0x126d
    push es                          ; 0x126f
    mov ax, ds                       ; 0x1270
    mov es, ax                       ; 0x1272
    cmp byte [cs:data_0228], 0       ; 0x1274
    je short @..mouse_init_2.l2      ; 0x127a
    mov byte [cs:data_0228], 0       ; 0x127c
    mov ax, 0                        ; 0x1282
    int 0x33 ; BIOS mouse
    push ds                          ; 0x1287
    push es                          ; 0x1288
    push di                          ; 0x1289
    push si                          ; 0x128a
    mov si, word [cs:data_15b4]      ; 0x128b
    mov ax, cs                       ; 0x1290
    mov ds, ax                       ; 0x1292
    mov ax, 0xa000                   ; 0x1294
    mov es, ax                       ; 0x1297
    mov di, word [cs:data_15bc]      ; 0x1299
    mov si, word [cs:data_15b4]      ; 0x129e
    mov cx, word [cs:data_15ba]      ; 0x12a3
@..mouse_init_2.l1:
    push cx                          ; 0x12a8
    push si                          ; 0x12a9
    push di                          ; 0x12aa
    mov cx, word [cs:data_15b8]      ; 0x12ab
    rep movsb                        ; 0x12b0
    pop di                           ; 0x12b2
    add di, strict word 0x140        ; 0x12b3
    pop si                           ; 0x12b7
    add si, word [cs:data_1e5c]      ; 0x12b8
    pop cx                           ; 0x12bd
    loop @..mouse_init_2.l1          ; 0x12be
    pop si                           ; 0x12c0
    pop di                           ; 0x12c1
    pop es                           ; 0x12c2
    pop ds                           ; 0x12c3
@..mouse_init_2.l2:
    pop es                           ; 0x12c4
    mov sp, bp                       ; 0x12c5
    pop bp                           ; 0x12c7
    ret                              ; 0x12c8
bios_mouse_loc_12c9:
    push ds                          ; 0x12c9
    push es                          ; 0x12ca
    push si                          ; 0x12cb
    push di                          ; 0x12cc
    cmp byte [cs:data_0226], 1       ; 0x12cd
    je short @..bios_mouse_loc_12c9.l1 ; 0x12d3
    cmp byte [cs:data_0228], 1       ; 0x12d5
    je short @..bios_mouse_loc_12c9.l2 ; 0x12db
@..bios_mouse_loc_12c9.l1:
    jmp near @..bios_mouse_loc_12c9.l4 ; 0x12dd
@..bios_mouse_loc_12c9.l2:
    mov ax, 3                        ; 0x12e0
    int 0x33 ; BIOS mouse
    shr cx, 1                        ; 0x12e5
    cmp word [cs:data_15ac], cx      ; 0x12e7
    jne short @..bios_mouse_loc_12c9.l3 ; 0x12ec
    cmp word [cs:data_15ae], dx      ; 0x12ee
    je short @..bios_mouse_loc_12c9.l4 ; 0x12f3
@..bios_mouse_loc_12c9.l3:
    shl cx, 1                        ; 0x12f5
    mov ax, cs                       ; 0x12f7
    push ax                          ; 0x12f9
    call math_loc_1e1a               ; 0x12fa
@..bios_mouse_loc_12c9.l4:
    mov byte [cs:data_0227], 0       ; 0x12fd
    pop di                           ; 0x1303
    pop si                           ; 0x1304
    pop es                           ; 0x1305
    pop ds                           ; 0x1306
    ret                              ; 0x1307
bios_mouse_loc_1308:
    cmp byte [cs:data_0228], 1       ; 0x1308
    jne short @..bios_mouse_loc_1308.l1 ; 0x130e
    mov byte [cs:data_0227], 1       ; 0x1310
@..bios_mouse_loc_1308.l1:
    ret                              ; 0x1316
bios_mouse_loc_1317:
    push bp                          ; 0x1317
    mov bp, sp                       ; 0x1318
    sub sp, byte 4                   ; 0x131a
    push ds                          ; 0x131d
    push si                          ; 0x131e
    push es                          ; 0x131f
    mov ax, ds                       ; 0x1320
    mov es, ax                       ; 0x1322
    mov word [bp - 0x0004], 1        ; 0x1324
    xor ax, ax                       ; 0x1329
    cmp byte [cs:data_0228], 0       ; 0x132b
    je short @..bios_mouse_loc_1317.l6 ; 0x1331
    mov bx, word [cs:data_1ecd]      ; 0x1333
    or bx, bx                        ; 0x1338
    je short @..bios_mouse_loc_1317.l1 ; 0x133a
    mov word [cs:data_1ecd], 0       ; 0x133c
    mov word [bp - 0x0002], bx       ; 0x1343
    mov cx, word [cs:data_1ecf]      ; 0x1346
    mov dx, word [cs:data_1ed1]      ; 0x134b
    jmp short @..bios_mouse_loc_1317.l2 ; 0x1350
@..bios_mouse_loc_1317.l1:
    mov ax, 3                        ; 0x1352
    int 0x33 ; BIOS mouse
    xor bx, bx                       ; 0x1357
    mov word [bp - 0x0002], bx       ; 0x1359
    shr cx, 1                        ; 0x135c
@..bios_mouse_loc_1317.l2:
    mov bx, cx                       ; 0x135e
    mov si, word [bp + 0xc]          ; 0x1360
@..bios_mouse_loc_1317.l3:
    cmp word [si], byte 0xff         ; 0x1363
    je short @..bios_mouse_loc_1317.l5 ; 0x1366
    cmp bx, word [si]                ; 0x1368
    jb short @..bios_mouse_loc_1317.l4 ; 0x136a
    cmp dx, word [si + 0x2]          ; 0x136c
    jb short @..bios_mouse_loc_1317.l4 ; 0x136f
    cmp word [si + 0x4], bx          ; 0x1371
    jb short @..bios_mouse_loc_1317.l4 ; 0x1374
    cmp word [si + 0x6], dx          ; 0x1376
    jb short @..bios_mouse_loc_1317.l4 ; 0x1379
    mov ax, word [bp - 0x0004]       ; 0x137b
    mov bx, word [bp - 0x0002]       ; 0x137e
    or bx, bx                        ; 0x1381
    je short @..bios_mouse_loc_1317.l6 ; 0x1383
    neg ax                           ; 0x1385
    jmp short @..bios_mouse_loc_1317.l6 ; 0x1387
@..bios_mouse_loc_1317.l4:
    add si, byte 8                   ; 0x1389
    inc word [bp - 0x0004]           ; 0x138c
    jmp short @..bios_mouse_loc_1317.l3 ; 0x138f
@..bios_mouse_loc_1317.l5:
    xor ax, ax                       ; 0x1391
@..bios_mouse_loc_1317.l6:
    pop es                           ; 0x1393
    pop si                           ; 0x1394
    pop ds                           ; 0x1395
    mov sp, bp                       ; 0x1396
    pop bp                           ; 0x1398
    ret                              ; 0x1399
bios_mouse_loc_139a:
    push bp                          ; 0x139a
    mov bp, sp                       ; 0x139b
    sub sp, byte 6                   ; 0x139d
    push es                          ; 0x13a0
    mov ax, ds                       ; 0x13a1
    mov es, ax                       ; 0x13a3
    cmp byte [cs:data_0228], 0       ; 0x13a5
    je short @..bios_mouse_loc_139a.l1 ; 0x13ab
    mov ax, 3                        ; 0x13ad
    int 0x33 ; BIOS mouse
    mov word [bp - 0x0002], bx       ; 0x13b2
    mov bx, word [bp + 0xc]          ; 0x13b5
    shr cx, 1                        ; 0x13b8
    mov word [bx], cx                ; 0x13ba
    mov bx, word [bp + 0xe]          ; 0x13bc
    mov word [bx], dx                ; 0x13bf
    mov ax, word [bp - 0x0002]       ; 0x13c1
@..bios_mouse_loc_139a.l1:
    pop es                           ; 0x13c4
    mov sp, bp                       ; 0x13c5
    pop bp                           ; 0x13c7
    ret                              ; 0x13c8
%include "vga/mouse_set_pos.asm"

@..local.l17:
    mov ax, cs                       ; 0x1476
    mov ds, ax                       ; 0x1478
    mov dx, 0x1586                   ; 0x147a
dos_con_loc_147d:
    mov ah, 9                        ; 0x147d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x1481
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Mouse pointer size out of range.', 0
    db 0x0a, 0x24
    times 8 db 0
    db 0xc4, 0x15, 0xc4, 0x19
    times 2212 db 0
    db 0x0a, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0x0a
    times 13 db 0
    db 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xb6, 0xb6, 0xb6, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x13
    db 0x15, 0xb6, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x15, 0x16, 0xb6, 0x00, 0xff, 0xff, 0xff
    db 0xff, 0x00, 0xb3, 0xb6, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x00, 0x00, 0xb3
    db 0xb6, 0xc1, 0x00, 0xff, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00
    db 0xb3, 0xc3, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xff
    times 7 db 0
    db 0xfc, 0x25, 0x0a, 0x00, 0x74, 0x34, 0x2e, 0x80, 0x3e, 0xd3, 0x1e, 0x00, 0x75, 0x29, 0x2e, 0xa2
    db 0xd3, 0x1e, 0x2e, 0x89, 0x1e, 0xcd, 0x1e, 0xd1, 0xe9, 0x2e, 0x89, 0x0e, 0xcf, 0x1e, 0x2e, 0x89
    db 0x16, 0xd1, 0x1e, 0x32, 0xc0, 0x2e, 0xa2, 0xd3, 0x1e, 0x2e, 0x3b, 0x0e, 0xac, 0x15, 0x75, 0x08
    db 0x2e, 0x3b, 0x16, 0xae, 0x15, 0x75, 0x01, 0xcb, 0xd1, 0xe1, 0x2e, 0xa0, 0x27, 0x02, 0x2e, 0x0a
    db 0x06, 0x26, 0x02, 0x74, 0x01, 0xcb

math_loc_1e1a:
    cmp byte [cs:data_1ed3], 0       ; 0x1e1a
    je short @..local.l18            ; 0x1e20
    retf                             ; 0x1e22
@..local.l18:
    mov al, 0xff                     ; 0x1e23
    mov byte [cs:data_1ed3], al      ; 0x1e25
    shr cx, 1                        ; 0x1e29
    mov word [cs:data_15b0], cx      ; 0x1e2b
    mov word [cs:data_15b2], dx      ; 0x1e30
math_loc_1e35:
    push bp                          ; 0x1e35
    mov bp, sp                       ; 0x1e36
    sub sp, byte 0x10                ; 0x1e38
    mov ax, word [cs:data_15b2]      ; 0x1e3b
    mov bx, 0xc8                     ; 0x1e3f
    sub bx, ax                       ; 0x1e42
    cmp bx, word [cs:data_1e5e]      ; 0x1e44
    jb short @..math_loc_1e35.l1     ; 0x1e49
    mov bx, word [cs:data_1e5e]      ; 0x1e4b
@..math_loc_1e35.l1:
    mov word [cs:data_15c0], bx      ; 0x1e50
    mov bx, 0x140                    ; 0x1e55
    mul bx                           ; 0x1e58
    mov bx, word [cs:data_15b0]      ; 0x1e5a
    add ax, bx                       ; 0x1e5f
    mov si, ax                       ; 0x1e61
    mov word [cs:data_15c2], ax      ; 0x1e63
    mov cx, 0x140                    ; 0x1e67
    sub cx, bx                       ; 0x1e6a
    cmp cx, word [cs:data_1e5c]      ; 0x1e6c
    jb short @..math_loc_1e35.l2     ; 0x1e71
    mov cx, word [cs:data_1e5c]      ; 0x1e73
@..math_loc_1e35.l2:
    mov word [cs:data_15be], cx      ; 0x1e78
    mov di, word [cs:data_15b6]      ; 0x1e7d
    mov ax, cs                       ; 0x1e82
    mov es, ax                       ; 0x1e84
    mov ax, 0xa000                   ; 0x1e86
    mov ds, ax                       ; 0x1e89
    mov cx, word [cs:data_15c0]      ; 0x1e8b
@..math_loc_1e35.l3:
    push cx                          ; 0x1e90
    push si                          ; 0x1e91
    mov cx, word [cs:data_15be]      ; 0x1e92
    rep movsb                        ; 0x1e97
    pop si                           ; 0x1e99
    add si, strict word 0x140        ; 0x1e9a
    pop cx                           ; 0x1e9e
    loop @..math_loc_1e35.l3         ; 0x1e9f
    mov ax, word [cs:data_15ae]      ; 0x1ea1
    cmp ax, strict word 0xffff       ; 0x1ea5
    jne short @..math_loc_1e35.l4    ; 0x1ea8
    jmp near @..math_loc_1e35.l12    ; 0x1eaa
@..math_loc_1e35.l4:
    add ax, word [cs:data_15ba]      ; 0x1ead
    dec ax                           ; 0x1eb2
    mov word [bp - 0x0002], ax       ; 0x1eb3
    mov ax, word [cs:data_15ac]      ; 0x1eb6
    add ax, word [cs:data_15b8]      ; 0x1eba
    dec ax                           ; 0x1ebf
    mov word [bp - 0x0004], ax       ; 0x1ec0
    mov cx, word [cs:data_15b0]      ; 0x1ec3
    mov dx, word [cs:data_15b2]      ; 0x1ec8
    cmp word [bp - 0x0004], cx       ; 0x1ecd
    jb short @..math_loc_1e35.l5     ; 0x1ed0
    cmp word [bp - 0x0002], dx       ; 0x1ed2
    jb short @..math_loc_1e35.l5     ; 0x1ed5
    add cx, word [cs:data_15be]      ; 0x1ed7
    dec cx                           ; 0x1edc
    add dx, word [cs:data_15c0]      ; 0x1edd
    dec dx                           ; 0x1ee2
    cmp cx, word [cs:data_15ac]      ; 0x1ee3
    jb short @..math_loc_1e35.l5     ; 0x1ee8
    cmp dx, word [cs:data_15ae]      ; 0x1eea
    jae short @..math_loc_1e35.l6    ; 0x1eef
@..math_loc_1e35.l5:
    mov byte [cs:data_1e68], 0       ; 0x1ef1
    jmp near @..math_loc_1e35.l12    ; 0x1ef7
@..math_loc_1e35.l6:
    mov byte [cs:data_1e68], 1       ; 0x1efa
    mov cx, word [cs:data_15b0]      ; 0x1f00
    mov ax, cx                       ; 0x1f05
    cmp word [cs:data_15ac], cx      ; 0x1f07
    jb short @..math_loc_1e35.l7     ; 0x1f0c
    mov ax, word [cs:data_15ac]      ; 0x1f0e
@..math_loc_1e35.l7:
    mov word [bp - 0x0006], ax       ; 0x1f12
    mov dx, word [cs:data_15b2]      ; 0x1f15
    mov bx, dx                       ; 0x1f1a
    cmp word [cs:data_15ae], dx      ; 0x1f1c
    jb short @..math_loc_1e35.l8     ; 0x1f21
    mov bx, word [cs:data_15ae]      ; 0x1f23
@..math_loc_1e35.l8:
    mov word [bp - 0x0008], bx       ; 0x1f28
    sub ax, cx                       ; 0x1f2b
    sub bx, dx                       ; 0x1f2d
    mov word [bp - 0x000a], ax       ; 0x1f2f
    mov word [bp - 0x000c], bx       ; 0x1f32
    mov cx, word [cs:data_15be]      ; 0x1f35
    mov dx, word [cs:data_15c0]      ; 0x1f3a
    sub cx, ax                       ; 0x1f3f
    mov word [bp - 0x000e], cx       ; 0x1f41
    sub dx, bx                       ; 0x1f44
    mov word [bp - 0x0010], dx       ; 0x1f46
    mov ax, word [bp - 0x0006]       ; 0x1f49
    add ax, word [bp - 0x000e]       ; 0x1f4c
    dec ax                           ; 0x1f4f
    cmp ax, word [bp - 0x0004]       ; 0x1f50
    jb short @..math_loc_1e35.l9     ; 0x1f53
    mov ax, word [bp - 0x0004]       ; 0x1f55
    sub ax, word [bp - 0x0006]       ; 0x1f58
    inc ax                           ; 0x1f5b
    mov word [bp - 0x000e], ax       ; 0x1f5c
@..math_loc_1e35.l9:
    mov ax, word [bp - 0x0008]       ; 0x1f5f
    add ax, word [bp - 0x0010]       ; 0x1f62
    dec ax                           ; 0x1f65
    cmp ax, word [bp - 0x0002]       ; 0x1f66
    jb short @..math_loc_1e35.l10    ; 0x1f69
    mov ax, word [bp - 0x0002]       ; 0x1f6b
    sub ax, word [bp - 0x0008]       ; 0x1f6e
    inc ax                           ; 0x1f71
    mov word [bp - 0x0010], ax       ; 0x1f72
@..math_loc_1e35.l10:
    mov ax, word [bp - 0x0008]       ; 0x1f75
    sub ax, word [cs:data_15ae]      ; 0x1f78
    mov bx, word [cs:data_15b8]      ; 0x1f7d
    mul bx                           ; 0x1f82
    add ax, word [bp - 0x0006]       ; 0x1f84
    sub ax, word [cs:data_15ac]      ; 0x1f87
    add ax, word [cs:data_15b4]      ; 0x1f8c
    mov si, ax                       ; 0x1f91
    mov ax, word [bp - 0x000c]       ; 0x1f93
    mov bx, word [cs:data_15be]      ; 0x1f96
    mul bx                           ; 0x1f9b
    add ax, word [bp - 0x000a]       ; 0x1f9d
    add ax, word [cs:data_15b6]      ; 0x1fa0
    mov di, ax                       ; 0x1fa5
    mov ax, cs                       ; 0x1fa7
    mov ds, ax                       ; 0x1fa9
    mov es, ax                       ; 0x1fab
    mov cx, word [bp - 0x0010]       ; 0x1fad
@..math_loc_1e35.l11:
    push cx                          ; 0x1fb0
    push si                          ; 0x1fb1
    push di                          ; 0x1fb2
    mov cx, word [bp - 0x000e]       ; 0x1fb3
    rep movsb                        ; 0x1fb6
    pop di                           ; 0x1fb8
    add di, word [cs:data_15be]      ; 0x1fb9
    pop si                           ; 0x1fbe
    add si, word [cs:data_15b8]      ; 0x1fbf
    pop cx                           ; 0x1fc4
    loop @..math_loc_1e35.l11        ; 0x1fc5
@..math_loc_1e35.l12:
    mov ax, 0xa000                   ; 0x1fc7
    mov es, ax                       ; 0x1fca
    mov di, word [cs:data_15c2]      ; 0x1fcc
    mov ax, word [cs:data_1e66]      ; 0x1fd1
    mov ds, ax                       ; 0x1fd5
    mov si, word [cs:data_1e64]      ; 0x1fd7
    mov cx, word [cs:data_15c0]      ; 0x1fdc
    mov ax, ds                       ; 0x1fe1
    or ax, si                        ; 0x1fe3
    jne short @..math_loc_1e35.l13   ; 0x1fe5
    mov si, 0x1e69                   ; 0x1fe7
    mov ax, cs                       ; 0x1fea
    mov ds, ax                       ; 0x1fec
@..math_loc_1e35.l13:
    push di                          ; 0x1fee
    push si                          ; 0x1fef
@..math_loc_1e35.l14:
    push cx                          ; 0x1ff0
    push di                          ; 0x1ff1
    push si                          ; 0x1ff2
    mov cx, word [cs:data_15be]      ; 0x1ff3
@..math_loc_1e35.l15:
    mov al, byte [si]                ; 0x1ff8
    cmp al, 0xff                     ; 0x1ffa
    je short @..math_loc_1e35.l16    ; 0x1ffc
    mov byte [es:di], al             ; 0x1ffe
@..math_loc_1e35.l16:
    inc si                           ; 0x2001
    inc di                           ; 0x2002
    loop @..math_loc_1e35.l15        ; 0x2003
    pop si                           ; 0x2005
    add si, word [cs:data_1e5c]      ; 0x2006
    pop di                           ; 0x200b
    add di, strict word 0x140        ; 0x200c
    pop cx                           ; 0x2010
    loop @..math_loc_1e35.l14        ; 0x2011
    pop bx                           ; 0x2013
    pop di                           ; 0x2014
    mov ax, word [cs:data_15ae]      ; 0x2015
    cmp ax, strict word 0xffff       ; 0x2019
    jne short @..math_loc_1e35.l17   ; 0x201c
    jmp near @..local.l32            ; 0x201e
@..math_loc_1e35.l17:
    mov si, word [cs:data_15b6]      ; 0x2021
    mov cx, word [cs:data_15c0]      ; 0x2026
@..math_loc_1e35.l18:
    push cx                          ; 0x202b
    push di                          ; 0x202c
    push si                          ; 0x202d
    push bx                          ; 0x202e
    mov cx, word [cs:data_15be]      ; 0x202f
@..local.l19:
    mov al, byte [bx]                ; 0x2034
    inc bx                           ; 0x2036
    cmp al, 0xff                     ; 0x2037
    jne short @..local.l20           ; 0x2039
    mov dl, byte [cs:si]             ; 0x203b
    mov byte [es:di], dl             ; 0x203e
@..local.l20:
    inc si                           ; 0x2041
    inc di                           ; 0x2042
    loop @..local.l19                ; 0x2043
    pop bx                           ; 0x2045
    add bx, word [cs:data_1e5c]      ; 0x2046
    pop si                           ; 0x204b
    add si, word [cs:data_15be]      ; 0x204c
    pop di                           ; 0x2051
    add di, strict word 0x140        ; 0x2052
    pop cx                           ; 0x2056
    loop @..math_loc_1e35.l18        ; 0x2057
    mov ax, cs                       ; 0x2059
    mov es, ax                       ; 0x205b
    mov ds, ax                       ; 0x205d
    mov di, data_1dc4                ; 0x205f
    mov cx, 0x88                     ; 0x2062
    mov al, 0xff                     ; 0x2065
    rep stosb                        ; 0x2067
    mov ax, word [cs:data_15b8]      ; 0x2069
    add ax, strict word 7            ; 0x206d
    mov cl, 3                        ; 0x2070
    shr ax, cl                       ; 0x2072
    mov word [bp - 0x0002], ax       ; 0x2074
    cmp byte [cs:data_1e68], 0       ; 0x2077
    je short @..local.l27            ; 0x207d
    mov ax, word [bp - 0x0008]       ; 0x207f
    sub ax, word [cs:data_15ae]      ; 0x2082
    mov bx, word [bp - 0x0002]       ; 0x2087
    mul bx                           ; 0x208a
    mov di, ax                       ; 0x208c
    add di, data_1dc4                ; 0x208e
    mov ax, word [bp - 0x0006]       ; 0x2092
    sub ax, word [cs:data_15ac]      ; 0x2095
    mov bx, data_1e4c                ; 0x209a
@..local.l21:
    cmp ax, strict word 8            ; 0x209d
    jb short @..local.l22            ; 0x20a0
    sub ax, strict word 8            ; 0x20a2
    inc di                           ; 0x20a5
    jmp short @..local.l21           ; 0x20a6
@..local.l22:
    mov cx, ax                       ; 0x20a8
    mov ah, 0xff                     ; 0x20aa
    shr ah, cl                       ; 0x20ac
    mov dx, word [bp - 0x000e]       ; 0x20ae
    add dx, cx                       ; 0x20b1
@..local.l23:
    cmp dx, byte 8                   ; 0x20b3
    jb short @..local.l24            ; 0x20b6
    not ah                           ; 0x20b8
    mov byte [bx], ah                ; 0x20ba
    inc bx                           ; 0x20bc
    mov ah, 0xff                     ; 0x20bd
    sub dx, byte 8                   ; 0x20bf
    je short @..local.l25            ; 0x20c2
    jmp short @..local.l23           ; 0x20c4
@..local.l24:
    mov al, 0xff                     ; 0x20c6
    mov cx, 8                        ; 0x20c8
    sub cx, dx                       ; 0x20cb
    shl al, cl                       ; 0x20cd
    and ah, al                       ; 0x20cf
    not ah                           ; 0x20d1
    mov byte [bx], ah                ; 0x20d3
    inc bx                           ; 0x20d5
@..local.l25:
    sub bx, data_1e4c                ; 0x20d6
    mov word [bp - 0x0004], bx       ; 0x20da
    mov cx, word [bp - 0x0010]       ; 0x20dd
@..local.l26:
    push cx                          ; 0x20e0
    push di                          ; 0x20e1
    mov si, data_1e4c                ; 0x20e2
    mov cx, word [bp - 0x0004]       ; 0x20e5
    rep movsb                        ; 0x20e8
    pop di                           ; 0x20ea
    add di, word [bp - 0x0002]       ; 0x20eb
    pop cx                           ; 0x20ee
    loop @..local.l26                ; 0x20ef
@..local.l27:
    mov bx, data_1dc4                ; 0x20f1
    mov si, word [cs:data_15b4]      ; 0x20f4
    mov di, word [cs:data_15bc]      ; 0x20f9
    mov ax, 0xa000                   ; 0x20fe
    mov es, ax                       ; 0x2101
    mov cx, word [cs:data_15ba]      ; 0x2103
@..local.l28:
    push cx                          ; 0x2108
    push si                          ; 0x2109
    push bx                          ; 0x210a
    push di                          ; 0x210b
    mov cx, word [cs:data_15b8]      ; 0x210c
@..local.l29:
    mov ah, byte [bx]                ; 0x2111
    inc bx                           ; 0x2113
    mov al, 9                        ; 0x2114
@..local.l30:
    dec al                           ; 0x2116
    je short @..local.l29            ; 0x2118
    shl ah, 1                        ; 0x211a
    jae short @..local.l31           ; 0x211c
    mov dl, byte [si]                ; 0x211e
    mov byte [es:di], dl             ; 0x2120
@..local.l31:
    inc di                           ; 0x2123
    inc si                           ; 0x2124
    loop @..local.l30                ; 0x2125
    pop di                           ; 0x2127
    add di, strict word 0x140        ; 0x2128
    pop bx                           ; 0x212c
    add bx, word [bp - 0x0002]       ; 0x212d
    pop si                           ; 0x2130
    add si, word [cs:data_15b8]      ; 0x2131
    pop cx                           ; 0x2136
    loop @..local.l28                ; 0x2137
@..local.l32:
    mov ax, word [cs:data_15b4]      ; 0x2139
    mov bx, word [cs:data_15b6]      ; 0x213d
    mov word [cs:data_15b6], ax      ; 0x2142
    mov word [cs:data_15b4], bx      ; 0x2146
    mov ax, word [cs:data_15b0]      ; 0x214b
    mov word [cs:data_15ac], ax      ; 0x214f
    mov ax, word [cs:data_15b2]      ; 0x2153
    mov word [cs:data_15ae], ax      ; 0x2157
    mov ax, word [cs:data_15c0]      ; 0x215b
    mov word [cs:data_15ba], ax      ; 0x215f
    mov ax, word [cs:data_15be]      ; 0x2163
    mov word [cs:data_15b8], ax      ; 0x2167
    mov ax, word [cs:data_15c2]      ; 0x216b
    mov word [cs:data_15bc], ax      ; 0x216f
    mov sp, bp                       ; 0x2173
    pop bp                           ; 0x2175
    xor al, al                       ; 0x2176
    mov byte [cs:data_1ed3], al      ; 0x2178
    retf                             ; 0x217c
loc_217d:
    mov word [cs:data_1ecd], 0       ; 0x217d
    ret                              ; 0x2184
loc_2185:
    push bp                          ; 0x2185
    mov bp, sp                       ; 0x2186
    sub sp, byte 8                   ; 0x2188
    push ds                          ; 0x218b
    push es                          ; 0x218c
    push di                          ; 0x218d
    push si                          ; 0x218e
    mov ax, ds                       ; 0x218f
    mov es, ax                       ; 0x2191
    mov ax, word [bp + 0xc]          ; 0x2193
    cmp ax, strict word 0x14         ; 0x2196
    jb short @..local.l33            ; 0x2199
    jmp near @..local.l35            ; 0x219b
@..local.l33:
    shl ax, 1                        ; 0x219e
    mov word [bp - 0x0008], ax       ; 0x21a0
    mov bx, data_0229                ; 0x21a3
    add bx, ax                       ; 0x21a6
    mov ax, word [cs:bx]             ; 0x21a8
    or ax, ax                        ; 0x21ab
    jne short @..local.l34           ; 0x21ad
    jmp near @..local.l35            ; 0x21af
@..local.l34:
    mov word [cs:bx], 0              ; 0x21b2
    mov cx, word [cs:data_0caa]      ; 0x21b7
    dec cx                           ; 0x21bc
    mov word [cs:data_0caa], cx      ; 0x21bd
    call loc_43e1                    ; 0x21c2
@..local.l35:
    pop si                           ; 0x21c5
    pop di                           ; 0x21c6
    pop es                           ; 0x21c7
    pop ds                           ; 0x21c8
    mov sp, bp                       ; 0x21c9
    pop bp                           ; 0x21cb
    ret                              ; 0x21cc
dos_read_file_3:
    push bp                          ; 0x21cd
    mov bp, sp                       ; 0x21ce
    sub sp, byte 8                   ; 0x21d0
    push ds                          ; 0x21d3
    push es                          ; 0x21d4
    push si                          ; 0x21d5
    push di                          ; 0x21d6
    mov ax, ds                       ; 0x21d7
    mov es, ax                       ; 0x21d9
    mov ax, word [bp + 0xe]          ; 0x21db
    shl ax, 1                        ; 0x21de
    mov bx, data_0229                ; 0x21e0
    add bx, ax                       ; 0x21e3
    mov word [bp - 0x0002], bx       ; 0x21e5
    mov ax, word [cs:bx]             ; 0x21e8
    or ax, ax                        ; 0x21eb
    je short @..dos_read_file_3.l1   ; 0x21ed
    jmp near @..local.l36            ; 0x21ef
@..dos_read_file_3.l1:
    mov ax, word [cs:data_0caa]      ; 0x21f2
    inc ax                           ; 0x21f6
    mov word [cs:data_0caa], ax      ; 0x21f7
    mov bx, word [bp - 0x0002]       ; 0x21fb
    mov word [cs:bx], ax             ; 0x21fe
    dec ax                           ; 0x2201
    mov cl, 2                        ; 0x2202
    shl ax, cl                       ; 0x2204
    mov bx, data_0bda                ; 0x2206
    add bx, ax                       ; 0x2209
    mov word [bp - 0x0002], bx       ; 0x220b
    mov ax, word [cs:data_0cac]      ; 0x220e
    mov word [cs:bx], ax             ; 0x2212
    mov ax, word [cs:data_01e9]      ; 0x2215
    mov ds, ax                       ; 0x2219
    xor dx, dx                       ; 0x221b
    mov cx, 4                        ; 0x221d
    mov bx, word [bp + 0xc]          ; 0x2220
    mov ah, 0x3f                     ; 0x2223
    int 0x21 ; DOS read file (handle)
    xor bx, bx                       ; 0x2227
    mov ax, word [bx]                ; 0x2229
    mov dx, word [bx + 0x2]          ; 0x222b
    mov word [bp - 0x0004], ax       ; 0x222e
    mov word [bp - 0x0006], dx       ; 0x2231
    mov cl, 4                        ; 0x2234
    add ax, strict word 0xf          ; 0x2236
    adc dx, byte 0                   ; 0x2239
    shr ax, cl                       ; 0x223c
    shl dl, cl                       ; 0x223e
    or ah, dl                        ; 0x2240
    add word [cs:data_0cac], ax      ; 0x2242
    mov bx, word [bp - 0x0002]       ; 0x2247
    mov word [cs:bx + 0x2], ax       ; 0x224a
    mov ax, word [cs:data_0cac]      ; 0x224e
    cmp ax, 0x4180                   ; 0x2252
    jb short @..dos_read_file_3.l2   ; 0x2255
    jmp near dos_con_loc_22ee        ; 0x2257
@..dos_read_file_3.l2:
    mov bx, word [bp - 0x0002]       ; 0x225a
    mov ax, word [cs:bx]             ; 0x225d
    add ax, word [cs:data_01e1]      ; 0x2260
    mov ds, ax                       ; 0x2265
@..dos_read_file_3.l3:
    mov cx, word [bp - 0x0004]       ; 0x2267
    mov dx, word [bp - 0x0006]       ; 0x226a
    mov bx, cx                       ; 0x226d
    or bx, dx                        ; 0x226f
    je short @..dos_read_file_3.l6   ; 0x2271
    or dx, dx                        ; 0x2273
    jne short @..dos_read_file_3.l4  ; 0x2275
    cmp cx, strict word 0x1000       ; 0x2277
    jae short @..dos_read_file_3.l4  ; 0x227b
    sub word [bp - 0x0004], cx       ; 0x227d
    jmp short @..dos_read_file_3.l5  ; 0x2280
@..dos_read_file_3.l4:
    sub cx, strict word 0x1000       ; 0x2282
    sbb dx, byte 0                   ; 0x2286
    mov word [bp - 0x0004], cx       ; 0x2289
    mov word [bp - 0x0006], dx       ; 0x228c
    mov cx, 0x1000                   ; 0x228f
@..dos_read_file_3.l5:
    xor dx, dx                       ; 0x2292
    mov bx, word [bp + 0xc]          ; 0x2294
    mov ah, 0x3f                     ; 0x2297
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x229b
    add ax, 0x100                    ; 0x229d
    mov ds, ax                       ; 0x22a0
    jmp short @..dos_read_file_3.l3  ; 0x22a2
@..dos_read_file_3.l6:
    pop di                           ; 0x22a4
    pop si                           ; 0x22a5
    pop es                           ; 0x22a6
    pop ds                           ; 0x22a7
    mov sp, bp                       ; 0x22a8
    pop bp                           ; 0x22aa
    ret                              ; 0x22ab
@..local.l36:
    mov ax, word [bp + 0xe]          ; 0x22ac
    mov bx, 0xa                      ; 0x22af
    div bx                           ; 0x22b2
    or byte [cs:data_23de], al       ; 0x22b4
    or byte [cs:data_23df], dl       ; 0x22b9
    mov ax, cs                       ; 0x22be
    mov ds, ax                       ; 0x22c0
    mov dx, 0x23ce                   ; 0x22c2
    mov ah, 9                        ; 0x22c5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x22c9
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Picture slot 00 not freed.', 0
    db 0x0a, 0x24

dos_con_loc_22ee:
    mov ax, cs                       ; 0x22ee

    db 0x8e, 0xd8, 0xba, 0xfe, 0x23, 0xb4, 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a
    db 0x07
    db 'Memory unavailable loading picture.', 0
    db 0x0a, 0x24, 0xef, 0x9f, 0x9d, 0x9c, 0x9b, 0xff, 0x9a, 0x99, 0x48, 0x8e, 0x8d, 0x8c, 0xff, 0xff
    db 0xff, 0xff, 0x38, 0xff, 0x4f, 0xff, 0x8b, 0xff, 0xff, 0xff, 0x37, 0xff, 0xff, 0x4e, 0xff, 0x89
    db 0x88, 0xff, 0x36, 0xff, 0xff, 0x4d, 0xff, 0xff, 0xff, 0x87, 0x35, 0xff, 0xff, 0xff, 0x4c, 0xff
    db 0xff, 0x86, 0x34, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x33, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xee, 0xaf, 0xfe, 0xfd, 0xff, 0xff, 0xff, 0xff, 0x5c, 0x7e, 0x7d, 0xff, 0xbf, 0xff
    db 0xff, 0xff, 0x46, 0xff, 0x7b, 0xff, 0xbe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0x85, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x4b, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xcb, 0xff, 0xae, 0xff, 0xfc, 0xfb, 0xff, 0xff, 0xed, 0xec, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0x5b, 0xe1, 0x70, 0x7a, 0xff, 0xbd, 0xff, 0x98, 0x45, 0xff, 0xff, 0x78, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0x84, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xf5, 0xff, 0xff, 0xad, 0xff, 0xff, 0xfa, 0xf9, 0xc8, 0xa2, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xc7, 0xeb, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x6d, 0xff, 0xbc
    db 0xff, 0x97, 0x44, 0xff, 0xff, 0xff, 0xff, 0xff, 0xbb, 0xff, 0x43, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x83, 0xff, 0xff, 0xff, 0x31, 0xff, 0xff
    db 0xff, 0xff, 0x1c, 0xff, 0xa6, 0xff, 0xac, 0xff, 0xff, 0xf8, 0xff, 0xf3, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xc6, 0xea, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xc5, 0xd5, 0xe6, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x6a, 0x67, 0xba, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xb9, 0xff, 0x42, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x82, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0x1a, 0xff, 0xff, 0xff, 0xff, 0xab, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0x29, 0xff, 0xf2, 0xff, 0xff, 0xff, 0xff, 0xff, 0x3c, 0xd4, 0xe8, 0xff, 0xff, 0xff
    db 0xff, 0xf7, 0xc3, 0xff, 0xe5, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x66
    db 0x64, 0xb8, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x81, 0x41, 0xff, 0xff, 0xff, 0xff, 0x30
    db 0xff, 0x80, 0x19, 0xff, 0xff, 0xa5, 0xff, 0xff, 0xaa, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0xf1, 0xff, 0xff, 0xff, 0xff, 0xff, 0x28, 0xff, 0xff, 0xf0, 0xff, 0xff
    db 0xff, 0xff, 0x2f, 0xff, 0xdf, 0xff, 0xff, 0xff, 0xff, 0xff, 0xc0, 0xff, 0xd1, 0xe4, 0xff, 0xff
    db 0xff, 0xf6, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x62, 0x60, 0xff, 0xff, 0xff, 0x40, 0xff, 0xff
    db 0xff, 0xff, 0x17, 0xff, 0xff, 0xff, 0xa4, 0xff, 0xff, 0xa9, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x15, 0xff, 0xff, 0x96, 0xff, 0xff, 0x27, 0xff, 0xff, 0xff, 0xff, 0xff
    db 0xff, 0xa8, 0xff, 0x26, 0xff, 0xde, 0x13, 0xff, 0x95, 0xff, 0xb6, 0x2d, 0x25, 0xdc, 0xda, 0x12
    db 0x94, 0xa7, 0x56, 0xb5, 0xb2, 0xff, 0xe3, 0xd7, 0x11, 0xff, 0x55, 0xff, 0xb1, 0xb0, 0xff, 0x52
    db 0x50, 0x10, 0x00

math_loc_2528:
    push bp                          ; 0x2528
    mov bp, sp                       ; 0x2529
    sub sp, byte 0x24                ; 0x252b
    push ds                          ; 0x252e
    push es                          ; 0x252f
    push si                          ; 0x2530
    push di                          ; 0x2531
    mov ax, ds                       ; 0x2532
    mov es, ax                       ; 0x2534
    call bios_mouse_loc_1308         ; 0x2536
    call leaf_loc_0516               ; 0x2539
@..math_loc_2528.l1:
    xor ax, ax                       ; 0x253c
    mov word [bp - 0x0022], ax       ; 0x253e
    mov ax, word [bp + 0xe]          ; 0x2541
    mov bx, 0x140                    ; 0x2544
    mul bx                           ; 0x2547
    add ax, word [bp + 0xc]          ; 0x2549
    mov word [bp - 0x0002], ax       ; 0x254c
    mov ax, word [bp + 0x10]         ; 0x254f
    sub ax, word [bp + 0xc]          ; 0x2552
    inc ax                           ; 0x2555
    mov word [bp - 0x0004], ax       ; 0x2556
    mov ax, word [bp + 0x12]         ; 0x2559
    sub ax, word [bp + 0xe]          ; 0x255c
    inc ax                           ; 0x255f
    mov word [bp - 0x0006], ax       ; 0x2560
    mov si, word [bp - 0x0002]       ; 0x2563
@..math_loc_2528.l2:
    mov cx, word [bp - 0x0004]       ; 0x2566
@..math_loc_2528.l3:
    push cx                          ; 0x2569
    les di, word [cs:data_01f7]      ; 0x256a
    mov cl, 3                        ; 0x256f
    mov dx, word [cs:data_01e5]      ; 0x2571
    mov ds, dx                       ; 0x2576
    xor ax, ax                       ; 0x2578
    mov al, byte [si]                ; 0x257a
    mov word [bp - 0x0014], ax       ; 0x257c
    mov bx, ax                       ; 0x257f
    shl ax, 1                        ; 0x2581
    add bx, ax                       ; 0x2583
    xor ax, ax                       ; 0x2585
    mov al, byte [es:bx + di]        ; 0x2587
    shr ax, cl                       ; 0x258a
    mov word [bp - 0x0008], ax       ; 0x258c
    mov al, byte [es:bx + di + 0x1]  ; 0x258f
    shr ax, cl                       ; 0x2593
    mov word [bp - 0x000a], ax       ; 0x2595
    mov al, byte [es:bx + di + 0x2]  ; 0x2598
    shr ax, cl                       ; 0x259c
    mov word [bp - 0x000c], ax       ; 0x259e
    mov dx, 0xa000                   ; 0x25a1
    mov ds, dx                       ; 0x25a4
    mov al, byte [si]                ; 0x25a6
    mov word [bp - 0x0024], ax       ; 0x25a8
    cmp ax, word [bp - 0x0014]       ; 0x25ab
    jne short @..math_loc_2528.l4    ; 0x25ae
    jmp near @..local.l37            ; 0x25b0
@..math_loc_2528.l4:
    mov bx, ax                       ; 0x25b3
    shl ax, 1                        ; 0x25b5
    add bx, ax                       ; 0x25b7
    xor ax, ax                       ; 0x25b9
    mov al, byte [es:bx + di]        ; 0x25bb
    shr ax, cl                       ; 0x25be
    mov word [bp - 0x000e], ax       ; 0x25c0
    mov al, byte [es:bx + di + 0x1]  ; 0x25c3
    shr ax, cl                       ; 0x25c7
    mov word [bp - 0x0010], ax       ; 0x25c9
    mov al, byte [es:bx + di + 0x2]  ; 0x25cc
    shr ax, cl                       ; 0x25d0
    mov word [bp - 0x0012], ax       ; 0x25d2
@..math_loc_2528.l5:
    mov ax, word [bp - 0x000e]       ; 0x25d5
    sub ax, word [bp - 0x0008]       ; 0x25d8
    jne short @..math_loc_2528.l6    ; 0x25db
    mov word [bp - 0x001c], ax       ; 0x25dd
    mov word [bp - 0x0016], ax       ; 0x25e0
    mov ax, word [bp - 0x0010]       ; 0x25e3
    sub ax, word [bp - 0x000a]       ; 0x25e6
    jne short @..math_loc_2528.l8    ; 0x25e9
    mov word [bp - 0x001e], ax       ; 0x25eb
    mov word [bp - 0x0018], ax       ; 0x25ee
    mov ax, word [bp - 0x0012]       ; 0x25f1
    sub ax, word [bp - 0x000c]       ; 0x25f4
    jne short @..math_loc_2528.l10   ; 0x25f7
    mov ax, word [bp - 0x0014]       ; 0x25f9
    mov byte [si], al                ; 0x25fc
    inc word [bp - 0x0022]           ; 0x25fe
    jmp near @..local.l37            ; 0x2601
@..math_loc_2528.l6:
    mov word [bp - 0x001c], ax       ; 0x2604
    or ax, ax                        ; 0x2607
    jns short @..math_loc_2528.l7    ; 0x2609
    neg ax                           ; 0x260b
@..math_loc_2528.l7:
    mov word [bp - 0x0016], ax       ; 0x260d
    mov ax, word [bp - 0x0010]       ; 0x2610
    sub ax, word [bp - 0x000a]       ; 0x2613
@..math_loc_2528.l8:
    mov word [bp - 0x001e], ax       ; 0x2616
    or ax, ax                        ; 0x2619
    jns short @..math_loc_2528.l9    ; 0x261b
    neg ax                           ; 0x261d
@..math_loc_2528.l9:
    mov word [bp - 0x0018], ax       ; 0x261f
    mov ax, word [bp - 0x0012]       ; 0x2622
    sub ax, word [bp - 0x000c]       ; 0x2625
@..math_loc_2528.l10:
    mov word [bp - 0x0020], ax       ; 0x2628
    or ax, ax                        ; 0x262b
    jns short @..math_loc_2528.l11   ; 0x262d
    neg ax                           ; 0x262f
@..math_loc_2528.l11:
    mov word [bp - 0x001a], ax       ; 0x2631
    mov ax, word [bp - 0x001a]       ; 0x2634
    cmp ax, word [bp - 0x0018]       ; 0x2637
    jae short @..math_loc_2528.l12   ; 0x263a
    jmp near @..math_loc_2528.l24    ; 0x263c
@..math_loc_2528.l12:
    cmp ax, word [bp - 0x0016]       ; 0x263f
    jb short @..math_loc_2528.l18    ; 0x2642
    mov bx, 0xffff                   ; 0x2644
    mov ax, word [bp - 0x0020]       ; 0x2647
    or ax, ax                        ; 0x264a
    jns short @..math_loc_2528.l13   ; 0x264c
    neg bx                           ; 0x264e
@..math_loc_2528.l13:
    add word [bp - 0x0012], bx       ; 0x2650
    mov bx, 0xffff                   ; 0x2653
    mov ax, word [bp - 0x0016]       ; 0x2656
    shl ax, 1                        ; 0x2659
    cmp ax, word [bp - 0x001a]       ; 0x265b
    jb short @..math_loc_2528.l15    ; 0x265e
    mov ax, word [bp - 0x001c]       ; 0x2660
    or ax, ax                        ; 0x2663
    jns short @..math_loc_2528.l14   ; 0x2665
    neg bx                           ; 0x2667
@..math_loc_2528.l14:
    add word [bp - 0x000e], bx       ; 0x2669
@..math_loc_2528.l15:
    mov bx, 0xffff                   ; 0x266c
    mov ax, word [bp - 0x0018]       ; 0x266f
    shl ax, 1                        ; 0x2672
    cmp ax, word [bp - 0x001a]       ; 0x2674
    jb short @..math_loc_2528.l17    ; 0x2677
    mov bx, 0xffff                   ; 0x2679
    mov ax, word [bp - 0x001e]       ; 0x267c
    or ax, ax                        ; 0x267f
    jns short @..math_loc_2528.l16   ; 0x2681
    neg bx                           ; 0x2683
@..math_loc_2528.l16:
    add word [bp - 0x0010], bx       ; 0x2685
@..math_loc_2528.l17:
    jmp near @..math_loc_2528.l30    ; 0x2688
@..math_loc_2528.l18:
    mov bx, 0xffff                   ; 0x268b
    mov ax, word [bp - 0x001c]       ; 0x268e
    or ax, ax                        ; 0x2691
    jns short @..math_loc_2528.l19   ; 0x2693
    neg bx                           ; 0x2695
@..math_loc_2528.l19:
    add word [bp - 0x000e], bx       ; 0x2697
    mov bx, 0xffff                   ; 0x269a
    mov ax, word [bp - 0x001a]       ; 0x269d
    shl ax, 1                        ; 0x26a0
    cmp ax, word [bp - 0x0016]       ; 0x26a2
    jb short @..math_loc_2528.l21    ; 0x26a5
    mov ax, word [bp - 0x0020]       ; 0x26a7
    or ax, ax                        ; 0x26aa
    jns short @..math_loc_2528.l20   ; 0x26ac
    neg bx                           ; 0x26ae
@..math_loc_2528.l20:
    add word [bp - 0x0012], bx       ; 0x26b0
@..math_loc_2528.l21:
    mov bx, 0xffff                   ; 0x26b3
    mov ax, word [bp - 0x0018]       ; 0x26b6
    shl ax, 1                        ; 0x26b9
    cmp ax, word [bp - 0x0016]       ; 0x26bb
    jb short @..math_loc_2528.l23    ; 0x26be
    mov ax, word [bp - 0x001e]       ; 0x26c0
    or ax, ax                        ; 0x26c3
    jns short @..math_loc_2528.l22   ; 0x26c5
    neg bx                           ; 0x26c7
@..math_loc_2528.l22:
    add word [bp - 0x0010], bx       ; 0x26c9
@..math_loc_2528.l23:
    jmp near @..math_loc_2528.l30    ; 0x26cc
@..math_loc_2528.l24:
    mov ax, word [bp - 0x0016]       ; 0x26cf
    cmp ax, word [bp - 0x0018]       ; 0x26d2
    jb short @..math_loc_2528.l25    ; 0x26d5
    jmp short @..math_loc_2528.l18   ; 0x26d7
@..math_loc_2528.l25:
    mov bx, 0xffff                   ; 0x26d9
    mov ax, word [bp - 0x001e]       ; 0x26dc
    or ax, ax                        ; 0x26df
    jns short @..math_loc_2528.l26   ; 0x26e1
    neg bx                           ; 0x26e3
@..math_loc_2528.l26:
    add word [bp - 0x0010], bx       ; 0x26e5
    mov bx, 0xffff                   ; 0x26e8
    mov ax, word [bp - 0x001a]       ; 0x26eb
    shl ax, 1                        ; 0x26ee
    cmp ax, word [bp - 0x0018]       ; 0x26f0
    jb short @..math_loc_2528.l28    ; 0x26f3
    mov ax, word [bp - 0x0020]       ; 0x26f5
    or ax, ax                        ; 0x26f8
    jns short @..math_loc_2528.l27   ; 0x26fa
    neg bx                           ; 0x26fc
@..math_loc_2528.l27:
    add word [bp - 0x0012], bx       ; 0x26fe
@..math_loc_2528.l28:
    mov bx, 0xffff                   ; 0x2701
    mov ax, word [bp - 0x0016]       ; 0x2704
    shl ax, 1                        ; 0x2707
    cmp ax, word [bp - 0x0018]       ; 0x2709
    jb short @..math_loc_2528.l30    ; 0x270c
    mov ax, word [bp - 0x001c]       ; 0x270e
    or ax, ax                        ; 0x2711
    jns short @..math_loc_2528.l29   ; 0x2713
    neg bx                           ; 0x2715
@..math_loc_2528.l29:
    add word [bp - 0x000e], bx       ; 0x2717
@..math_loc_2528.l30:
    mov bx, word [bp - 0x000e]       ; 0x271a
    mov cl, 6                        ; 0x271d
    shl bx, cl                       ; 0x271f
    mov ax, word [bp - 0x0010]       ; 0x2721
    mov cl, 3                        ; 0x2724
    shl ax, cl                       ; 0x2726
    add bx, ax                       ; 0x2728
    add bx, word [bp - 0x0012]       ; 0x272a
    add bx, strict word 0x2427       ; 0x272d
    mov al, byte [cs:bx]             ; 0x2731
    cmp al, 0xff                     ; 0x2734
    je short @..local.l39            ; 0x2736
    mov byte [si], al                ; 0x2738
    inc word [bp - 0x0022]           ; 0x273a
@..local.l37:
    inc si                           ; 0x273d
    pop cx                           ; 0x273e
    loop @..local.l38                ; 0x273f
    add word [bp - 0x0002], strict word 0x140 ; 0x2741
    mov si, word [bp - 0x0002]       ; 0x2746
    dec word [bp - 0x0006]           ; 0x2749
    je short @..local.l40            ; 0x274c
    jmp near @..math_loc_2528.l2     ; 0x274e
@..local.l38:
    jmp near @..math_loc_2528.l3     ; 0x2751
@..local.l39:
    jmp near @..math_loc_2528.l5     ; 0x2754
@..local.l40:
    mov ax, word [bp - 0x0022]       ; 0x2757
    or ax, ax                        ; 0x275a
    je short @..local.l42            ; 0x275c
    mov ax, word [bp + 0x14]         ; 0x275e
    or ax, ax                        ; 0x2761
    je short @..local.l41            ; 0x2763
    push word [bp + 0x14]            ; 0x2765
    call far [cs:data_01fb]          ; 0x2768
    pop ax                           ; 0x276d
@..local.l41:
    jmp near @..math_loc_2528.l1     ; 0x276e
@..local.l42:
    call math_loc_067f               ; 0x2771
    call bios_mouse_loc_12c9         ; 0x2774
    pop di                           ; 0x2777
    pop si                           ; 0x2778
    pop es                           ; 0x2779
    pop ds                           ; 0x277a
    mov sp, bp                       ; 0x277b
    pop bp                           ; 0x277d
    ret                              ; 0x277e
bios_video_loc_277f:
    push bp                          ; 0x277f
    mov bp, sp                       ; 0x2780
    push ds                          ; 0x2782
    push es                          ; 0x2783
    push si                          ; 0x2784
    push di                          ; 0x2785
    mov ax, ds                       ; 0x2786
    mov es, ax                       ; 0x2788
    mov ax, word [bp + 0xe]          ; 0x278a
    cmp ax, strict word 0xffff       ; 0x278d
    jne short @..bios_video_loc_277f.l1 ; 0x2790
    les di, word [cs:data_01f7]      ; 0x2792
    mov ax, word [bp + 0xc]          ; 0x2797
    mov bx, ax                       ; 0x279a
    shl ax, 1                        ; 0x279c
    add bx, ax                       ; 0x279e
    mov al, byte [es:bx + di]        ; 0x27a0
    mov dh, al                       ; 0x27a3
    mov al, byte [es:bx + di + 0x1]  ; 0x27a5
    mov ch, al                       ; 0x27a9
    mov al, byte [es:bx + di + 0x2]  ; 0x27ab
    mov cl, al                       ; 0x27af
    jmp short @..bios_video_loc_277f.l2 ; 0x27b1
@..bios_video_loc_277f.l1:
    mov cx, word [bp + 0x12]         ; 0x27b3
    mov bx, word [bp + 0x10]         ; 0x27b6
    mov ch, bl                       ; 0x27b9
    mov bx, word [bp + 0xe]          ; 0x27bb
    mov dh, bl                       ; 0x27be
@..bios_video_loc_277f.l2:
    mov bx, word [bp + 0xc]          ; 0x27c0
    mov ax, 0x1010                   ; 0x27c3
    int 0x10 ; BIOS video
    pop di                           ; 0x27c8
    pop si                           ; 0x27c9
    pop es                           ; 0x27ca
    pop ds                           ; 0x27cb
    mov sp, bp                       ; 0x27cc
    pop bp                           ; 0x27ce
    ret                              ; 0x27cf
bios_video_loc_27d0:
    push bp                          ; 0x27d0
    mov bp, sp                       ; 0x27d1
    push ds                          ; 0x27d3
    push es                          ; 0x27d4
    push si                          ; 0x27d5
    push di                          ; 0x27d6
    mov ax, ds                       ; 0x27d7
    mov es, ax                       ; 0x27d9
    mov bx, word [bp + 0xc]          ; 0x27db
    mov ax, 0x1015                   ; 0x27de
    int 0x10 ; BIOS video
    mov bx, word [bp + 0xe]          ; 0x27e3
    xor ah, ah                       ; 0x27e6
    mov al, dh                       ; 0x27e8
    mov word [bx], ax                ; 0x27ea
    mov al, ch                       ; 0x27ec
    mov bx, word [bp + 0x10]         ; 0x27ee
    mov word [bx], ax                ; 0x27f1
    mov al, cl                       ; 0x27f3
    mov bx, word [bp + 0x12]         ; 0x27f5
    mov word [bx], ax                ; 0x27f8
    pop di                           ; 0x27fa
    pop si                           ; 0x27fb
    pop es                           ; 0x27fc
    pop ds                           ; 0x27fd
    mov sp, bp                       ; 0x27fe
    pop bp                           ; 0x2800
    ret                              ; 0x2801
dos_free_mem_2:
    push bp                          ; 0x2802
    mov bp, sp                       ; 0x2803
    sub sp, byte 0x0a                ; 0x2805
    push ds                          ; 0x2808
    push es                          ; 0x2809
    push si                          ; 0x280a
    push di                          ; 0x280b
    mov ax, ds                       ; 0x280c
    mov es, ax                       ; 0x280e
    mov ah, 0x48                     ; 0x2810
    mov bx, 0x30                     ; 0x2812
    int 0x21 ; DOS allocate memory
    jae short @..dos_free_mem_2.l1   ; 0x2817
    jmp near bios_video_loc_28ba     ; 0x2819
@..dos_free_mem_2.l1:
    mov word [bp - 0x0002], ax       ; 0x281c
    mov ax, 0x1017                   ; 0x281f
    xor bx, bx                       ; 0x2822
    mov cx, 0x100                    ; 0x2824
    mov dx, word [bp - 0x0002]       ; 0x2827
    mov es, dx                       ; 0x282a
    xor dx, dx                       ; 0x282c
    int 0x10 ; BIOS video
    mov ax, word [bp - 0x0002]       ; 0x2830
    mov ds, ax                       ; 0x2833
@..dos_free_mem_2.l2:
    mov word [bp - 0x0004], 0        ; 0x2835
    mov ax, word [bp - 0x0002]       ; 0x283a
    mov ds, ax                       ; 0x283d
    xor si, si                       ; 0x283f
    les di, word [cs:data_01f7]      ; 0x2841
    mov cx, 0x100                    ; 0x2846
@..dos_free_mem_2.l3:
    push cx                          ; 0x2849
    mov cx, 3                        ; 0x284a
@..dos_free_mem_2.l4:
    mov al, byte [si]                ; 0x284d
    cmp al, byte [es:di]             ; 0x284f
    je short @..dos_free_mem_2.l6    ; 0x2852
    mov word [bp - 0x0004], 1        ; 0x2854
    cmp al, byte [es:di]             ; 0x2859
    jb short @..dos_free_mem_2.l5    ; 0x285c
    dec byte [si]                    ; 0x285e
    jmp short @..dos_free_mem_2.l6   ; 0x2860
@..dos_free_mem_2.l5:
    inc byte [si]                    ; 0x2862
@..dos_free_mem_2.l6:
    inc si                           ; 0x2864
    inc di                           ; 0x2865
    loop @..dos_free_mem_2.l4        ; 0x2866
    pop cx                           ; 0x2868
    loop @..dos_free_mem_2.l3        ; 0x2869
    mov ax, word [bp - 0x0004]       ; 0x286b
    or ax, ax                        ; 0x286e
    je short @..dos_free_mem_2.l10   ; 0x2870
    mov ax, word [bp - 0x0002]       ; 0x2872
    mov ds, ax                       ; 0x2875
    xor si, si                       ; 0x2877
    mov cx, data_0300                ; 0x2879
    mov dx, 0x3c8                    ; 0x287c
    mov al, 0                        ; 0x287f
    out dx, al                       ; 0x2881
@..dos_free_mem_2.l7:
    mov dx, 0x3da                    ; 0x2882
    in al, dx                        ; 0x2885
    test al, 1                       ; 0x2886
    jne short @..dos_free_mem_2.l7   ; 0x2888
@..dos_free_mem_2.l8:
    mov dx, 0x3da                    ; 0x288a
    in al, dx                        ; 0x288d
    test al, 1                       ; 0x288e
    je short @..dos_free_mem_2.l8    ; 0x2890
    lodsb                            ; 0x2892
    mov dx, 0x3c9                    ; 0x2893
    out dx, al                       ; 0x2896
    loop @..dos_free_mem_2.l7        ; 0x2897
    mov ax, word [bp + 0xc]          ; 0x2899
    or ax, ax                        ; 0x289c
    je short @..dos_free_mem_2.l9    ; 0x289e
    push ax                          ; 0x28a0
    call far [cs:data_01fb]          ; 0x28a1
    pop ax                           ; 0x28a6
@..dos_free_mem_2.l9:
    jmp short @..dos_free_mem_2.l2   ; 0x28a7
@..dos_free_mem_2.l10:
    mov bx, word [bp - 0x0002]       ; 0x28a9
    mov es, bx                       ; 0x28ac
    mov ah, 0x49                     ; 0x28ae
    int 0x21 ; DOS free memory
    pop di                           ; 0x28b2
    pop si                           ; 0x28b3
    pop es                           ; 0x28b4
    pop ds                           ; 0x28b5
    mov sp, bp                       ; 0x28b6
    pop bp                           ; 0x28b8
    ret                              ; 0x28b9
    mov ax, cs                       ; 0x28ba
    mov ds, ax                       ; 0x28bc
    mov dx, 0x29ca                   ; 0x28be
    mov ah, 9                        ; 0x28c1
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x28c5
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable in fade_in().', 0
    db 0x0a, 0x24

dos_free_mem_3:
    push bp                          ; 0x28f0
    mov bp, sp                       ; 0x28f1
    sub sp, byte 0x0a                ; 0x28f3
    push ds                          ; 0x28f6
    push es                          ; 0x28f7
    push si                          ; 0x28f8
    push di                          ; 0x28f9
    mov ax, ds                       ; 0x28fa
    mov es, ax                       ; 0x28fc
    lea di, word [bp - 0x000a]       ; 0x28fe
    mov ax, word [bp + 0xc]          ; 0x2901
    mov word [ss:di], ax             ; 0x2904
    add di, byte 2                   ; 0x2907
    mov ax, word [bp + 0xe]          ; 0x290a
    mov word [ss:di], ax             ; 0x290d
    add di, byte 2                   ; 0x2910
    mov ax, word [bp + 0x10]         ; 0x2913
    mov word [ss:di], ax             ; 0x2916
    mov ah, 0x48                     ; 0x2919
    mov bx, 0x30                     ; 0x291b
    int 0x21 ; DOS allocate memory
    jae short @..bios_video_loc_28ba.l1 ; 0x2920
    jmp near dos_mem_loc_29bf        ; 0x2922
@..bios_video_loc_28ba.l1:
    mov word [bp - 0x0002], ax       ; 0x2925
    mov ax, 0x1017                   ; 0x2928
    xor bx, bx                       ; 0x292b
    mov cx, 0x100                    ; 0x292d
    mov dx, word [bp - 0x0002]       ; 0x2930
    mov es, dx                       ; 0x2933
    xor dx, dx                       ; 0x2935
    int 0x10 ; BIOS video
@..bios_video_loc_28ba.l2:
    mov word [bp - 0x0004], 0        ; 0x2939
    mov ax, word [bp - 0x0002]       ; 0x293e
    mov ds, ax                       ; 0x2941
    xor si, si                       ; 0x2943
    mov cx, 0x100                    ; 0x2945
@..bios_video_loc_28ba.l3:
    push cx                          ; 0x2948
    mov cx, 3                        ; 0x2949
    lea di, word [bp - 0x000a]       ; 0x294c
@..bios_video_loc_28ba.l4:
    xor ax, ax                       ; 0x294f
    mov al, byte [si]                ; 0x2951
    cmp ax, word [ss:di]             ; 0x2953
    je short @..bios_video_loc_28ba.l6 ; 0x2956
    mov word [bp - 0x0004], 1        ; 0x2958
    cmp ax, word [ss:di]             ; 0x295d
    jb short @..bios_video_loc_28ba.l5 ; 0x2960
    dec byte [si]                    ; 0x2962
    jmp short @..bios_video_loc_28ba.l6 ; 0x2964
@..bios_video_loc_28ba.l5:
    inc byte [si]                    ; 0x2966
@..bios_video_loc_28ba.l6:
    inc di                           ; 0x2968
    inc di                           ; 0x2969
    inc si                           ; 0x296a
    loop @..bios_video_loc_28ba.l4   ; 0x296b
    pop cx                           ; 0x296d
    loop @..bios_video_loc_28ba.l3   ; 0x296e
    mov ax, word [bp - 0x0004]       ; 0x2970
    or ax, ax                        ; 0x2973
    je short @..bios_video_loc_28ba.l9 ; 0x2975
    mov ax, word [bp - 0x0002]       ; 0x2977
    mov ds, ax                       ; 0x297a
    xor si, si                       ; 0x297c
    mov cx, data_0300                ; 0x297e
    mov dx, 0x3c8                    ; 0x2981
    mov al, 0                        ; 0x2984
    out dx, al                       ; 0x2986
@..bios_video_loc_28ba.l7:
    mov dx, 0x3da                    ; 0x2987
    in al, dx                        ; 0x298a
    test al, 1                       ; 0x298b
    jne short @..bios_video_loc_28ba.l7 ; 0x298d
@..bios_video_loc_28ba.l8:
    mov dx, 0x3da                    ; 0x298f
    in al, dx                        ; 0x2992
    test al, 1                       ; 0x2993
    je short @..bios_video_loc_28ba.l8 ; 0x2995
    lodsb                            ; 0x2997
    mov dx, 0x3c9                    ; 0x2998
    out dx, al                       ; 0x299b
    loop @..bios_video_loc_28ba.l7   ; 0x299c
    mov ax, word [bp + 0x12]         ; 0x299e
    or ax, ax                        ; 0x29a1
    je short @..bios_video_loc_28ba.l2 ; 0x29a3
    push ax                          ; 0x29a5
    call far [cs:data_01fb]          ; 0x29a6
    pop ax                           ; 0x29ab
    jmp short @..bios_video_loc_28ba.l2 ; 0x29ac
@..bios_video_loc_28ba.l9:
    mov bx, word [bp - 0x0002]       ; 0x29ae
    mov es, bx                       ; 0x29b1
    mov ah, 0x49                     ; 0x29b3
    int 0x21 ; DOS free memory
    pop di                           ; 0x29b7
    pop si                           ; 0x29b8
    pop es                           ; 0x29b9
    pop ds                           ; 0x29ba
    mov sp, bp                       ; 0x29bb
    pop bp                           ; 0x29bd
    ret                              ; 0x29be
    mov ax, cs                       ; 0x29bf
    mov ds, ax                       ; 0x29c1
    mov dx, dos_mem_loc_2acf         ; 0x29c3
    mov ah, 9                        ; 0x29c6
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x29ca
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable in fade_out().', 0
    db 0x0a, 0x24

dos_free_mem_4:
    push bp                          ; 0x29f6
    mov bp, sp                       ; 0x29f7
    sub sp, byte 0x0a                ; 0x29f9
    push ds                          ; 0x29fc
    push es                          ; 0x29fd
    push si                          ; 0x29fe
    push di                          ; 0x29ff
    mov ax, ds                       ; 0x2a00
    mov es, ax                       ; 0x2a02
    mov ax, word [bp + 0xc]          ; 0x2a04
    cmp ax, strict word 0xffff       ; 0x2a07
    jne short @..dos_mem_loc_29bf.l3 ; 0x2a0a
    lds si, word [cs:data_01f7]      ; 0x2a0c
    mov cx, data_0300                ; 0x2a11
    mov dx, 0x3c8                    ; 0x2a14
    mov al, 0                        ; 0x2a17
    out dx, al                       ; 0x2a19
@..dos_mem_loc_29bf.l1:
    mov dx, 0x3da                    ; 0x2a1a
    in al, dx                        ; 0x2a1d
    test al, 1                       ; 0x2a1e
    jne short @..dos_mem_loc_29bf.l1 ; 0x2a20
@..dos_mem_loc_29bf.l2:
    mov dx, 0x3da                    ; 0x2a22
    in al, dx                        ; 0x2a25
    test al, 1                       ; 0x2a26
    je short @..dos_mem_loc_29bf.l2  ; 0x2a28
    lodsb                            ; 0x2a2a
    mov dx, 0x3c9                    ; 0x2a2b
    out dx, al                       ; 0x2a2e
    loop @..dos_mem_loc_29bf.l1      ; 0x2a2f
    jmp short @..dos_mem_loc_29bf.l8 ; 0x2a31
@..dos_mem_loc_29bf.l3:
    mov ah, 0x48                     ; 0x2a33
    mov bx, 0x30                     ; 0x2a35
    int 0x21 ; DOS allocate memory
    jae short @..dos_mem_loc_29bf.l4 ; 0x2a3a
    jmp near dos_con_loc_2a97        ; 0x2a3c
@..dos_mem_loc_29bf.l4:
    mov word [bp - 0x0002], ax       ; 0x2a3f
    mov ds, ax                       ; 0x2a42
    xor di, di                       ; 0x2a44
    mov ax, word [bp + 0xc]          ; 0x2a46
    mov bx, word [bp + 0xe]          ; 0x2a49
    mov dx, word [bp + 0x10]         ; 0x2a4c
    mov cx, 0x100                    ; 0x2a4f
@..dos_mem_loc_29bf.l5:
    mov byte [di], al                ; 0x2a52
    mov byte [di + 0x1], bl          ; 0x2a54
    mov byte [di + 0x2], dl          ; 0x2a57
    add di, byte 3                   ; 0x2a5a
    loop @..dos_mem_loc_29bf.l5      ; 0x2a5d
    mov ax, word [bp - 0x0002]       ; 0x2a5f
    mov ds, ax                       ; 0x2a62
    xor si, si                       ; 0x2a64
    mov cx, data_0300                ; 0x2a66
    mov dx, 0x3c8                    ; 0x2a69
    mov al, 0                        ; 0x2a6c
    out dx, al                       ; 0x2a6e
@..dos_mem_loc_29bf.l6:
    mov dx, 0x3da                    ; 0x2a6f
    in al, dx                        ; 0x2a72
    test al, 1                       ; 0x2a73
    jne short @..dos_mem_loc_29bf.l6 ; 0x2a75
@..dos_mem_loc_29bf.l7:
    mov dx, 0x3da                    ; 0x2a77
    in al, dx                        ; 0x2a7a
    test al, 1                       ; 0x2a7b
    je short @..dos_mem_loc_29bf.l7  ; 0x2a7d
    lodsb                            ; 0x2a7f
    mov dx, 0x3c9                    ; 0x2a80
    out dx, al                       ; 0x2a83
    loop @..dos_mem_loc_29bf.l6      ; 0x2a84
    mov bx, word [bp - 0x0002]       ; 0x2a86
    mov es, bx                       ; 0x2a89
    mov ah, 0x49                     ; 0x2a8b
    int 0x21 ; DOS free memory
@..dos_mem_loc_29bf.l8:
    pop di                           ; 0x2a8f
    pop si                           ; 0x2a90
    pop es                           ; 0x2a91
    pop ds                           ; 0x2a92
    mov sp, bp                       ; 0x2a93
    pop bp                           ; 0x2a95
    ret                              ; 0x2a96
    mov ax, cs                       ; 0x2a97
    mov ds, ax                       ; 0x2a99
    mov dx, 0x2ba7                   ; 0x2a9b
    mov ah, 9                        ; 0x2a9e
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x2aa2
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable in RESET_RGB().', 0
    db 0x0a, 0x24

dos_mem_loc_2acf:
    push bp                          ; 0x2acf
    mov bp, sp                       ; 0x2ad0
    sub sp, byte 8                   ; 0x2ad2
    push ds                          ; 0x2ad5
    push es                          ; 0x2ad6
    push di                          ; 0x2ad7
    push si                          ; 0x2ad8
    mov ax, ds                       ; 0x2ad9
    mov es, ax                       ; 0x2adb
    les di, word [cs:data_01f7]      ; 0x2add
    mov si, word [bp + 0xc]          ; 0x2ae2
    mov cx, data_0300                ; 0x2ae5
    rep movsb                        ; 0x2ae8
    mov ax, cs                       ; 0x2aea
    mov es, ax                       ; 0x2aec
    mov di, 0x2427                   ; 0x2aee
    mov si, word [bp + 0xe]          ; 0x2af1
    mov cx, 0x200                    ; 0x2af4
    rep movsb                        ; 0x2af7
    pop si                           ; 0x2af9
    pop di                           ; 0x2afa
    pop es                           ; 0x2afb
    pop ds                           ; 0x2afc
    mov sp, bp                       ; 0x2afd
    pop bp                           ; 0x2aff
    ret                              ; 0x2b00
dos_mem_loc_2b01:
    push bp                          ; 0x2b01
    mov bp, sp                       ; 0x2b02
    sub sp, byte 0x0a                ; 0x2b04
    push ds                          ; 0x2b07
    push es                          ; 0x2b08
    push si                          ; 0x2b09
    push di                          ; 0x2b0a
    mov ax, ds                       ; 0x2b0b
    mov es, ax                       ; 0x2b0d
    cmp word [bp + 0xc], byte 0      ; 0x2b0f
    je short @..dos_mem_loc_2b01.l3  ; 0x2b13
    cmp word [bp + 0xc], byte 1      ; 0x2b15
    je short @..dos_mem_loc_2b01.l4  ; 0x2b19
    cmp word [bp + 0xc], byte 3      ; 0x2b1b
    je short @..dos_mem_loc_2b01.l1  ; 0x2b1f
    mov ax, 0x4180                   ; 0x2b21
    sub ax, word [cs:data_0cac]      ; 0x2b24
    mov bx, 0x10                     ; 0x2b29
    mul bx                           ; 0x2b2c
    jmp short @..dos_mem_loc_2b01.l5 ; 0x2b2e
@..dos_mem_loc_2b01.l1:
    mov ah, 0x36                     ; 0x2b30
    mov dx, word [bp + 0xe]          ; 0x2b32
    int 0x21 ; DOS get disk free space
    cmp ax, strict word 0xffff       ; 0x2b37
    jne short @..dos_mem_loc_2b01.l2 ; 0x2b3a
    xor ax, ax                       ; 0x2b3c
    xor dx, dx                       ; 0x2b3e
    jmp short @..dos_mem_loc_2b01.l5 ; 0x2b40
@..dos_mem_loc_2b01.l2:
    mul cx                           ; 0x2b42
    mul bx                           ; 0x2b44
    jmp short @..dos_mem_loc_2b01.l5 ; 0x2b46
@..dos_mem_loc_2b01.l3:
    mov ah, 0x48                     ; 0x2b48
    mov bx, 0xffff                   ; 0x2b4a
    int 0x21 ; DOS allocate memory
    mov ax, 0x10                     ; 0x2b4f
    mul bx                           ; 0x2b52
    jmp short @..dos_mem_loc_2b01.l5 ; 0x2b54
@..dos_mem_loc_2b01.l4:
    mov ax, word [cs:data_01ff]      ; 0x2b56
    sub ax, word [cs:data_0391]      ; 0x2b5a
    mov bx, 0x10                     ; 0x2b5f
    mul bx                           ; 0x2b62
@..dos_mem_loc_2b01.l5:
    pop di                           ; 0x2b64
    pop si                           ; 0x2b65
    pop es                           ; 0x2b66
    pop ds                           ; 0x2b67
    mov sp, bp                       ; 0x2b68
    pop bp                           ; 0x2b6a
    ret                              ; 0x2b6b
mouse_set_pos_2:
    push bp                          ; 0x2b6c
    mov bp, sp                       ; 0x2b6d
    sub sp, byte 0x0a                ; 0x2b6f
    push ds                          ; 0x2b72
    push es                          ; 0x2b73
    push si                          ; 0x2b74
    push di                          ; 0x2b75
    mov ax, ds                       ; 0x2b76
    mov es, ax                       ; 0x2b78
    cmp byte [cs:data_0228], 1       ; 0x2b7a
    je short @..mouse_set_pos_2.l1   ; 0x2b80
    jmp near @..mouse_set_pos_2.l8   ; 0x2b82
@..mouse_set_pos_2.l1:
    mov byte [cs:data_0226], 1       ; 0x2b85
    mov ax, word [bp + 0xc]          ; 0x2b8b
    shl ax, 1                        ; 0x2b8e
    mov word [bp - 0x0002], ax       ; 0x2b90
    mov ax, word [bp + 0xe]          ; 0x2b93
    mov word [bp - 0x0004], ax       ; 0x2b96
    mov ax, 3                        ; 0x2b99
    int 0x33 ; BIOS mouse
    and cx, strict word 0xfffe       ; 0x2b9e
    mov word [bp - 0x0006], cx       ; 0x2ba2
    mov word [bp - 0x0008], dx       ; 0x2ba5
@..mouse_set_pos_2.l2:
    mov cx, word [bp - 0x0006]       ; 0x2ba8
    mov dx, word [bp - 0x0008]       ; 0x2bab
    cmp cx, word [bp - 0x0002]       ; 0x2bae
    jne short @..mouse_set_pos_2.l3  ; 0x2bb1
    cmp dx, word [bp - 0x0004]       ; 0x2bb3
    jne short @..mouse_set_pos_2.l3  ; 0x2bb6
    jmp short @..mouse_set_pos_2.l8  ; 0x2bb8
@..mouse_set_pos_2.l3:
    cmp cx, word [bp - 0x0002]       ; 0x2bba
    je short @..mouse_set_pos_2.l5   ; 0x2bbd
    js short @..mouse_set_pos_2.l4   ; 0x2bbf
    sub word [bp - 0x0006], byte 2   ; 0x2bc1
    jmp short @..mouse_set_pos_2.l5  ; 0x2bc5
@..mouse_set_pos_2.l4:
    add word [bp - 0x0006], byte 2   ; 0x2bc7
@..mouse_set_pos_2.l5:
    mov cx, word [bp - 0x0006]       ; 0x2bcb
    cmp dx, word [bp - 0x0004]       ; 0x2bce
    je short @..mouse_set_pos_2.l7   ; 0x2bd1
    js short @..mouse_set_pos_2.l6   ; 0x2bd3
    sub word [bp - 0x0008], byte 1   ; 0x2bd5
    jmp short @..mouse_set_pos_2.l7  ; 0x2bd9
@..mouse_set_pos_2.l6:
    add word [bp - 0x0008], byte 1   ; 0x2bdb
@..mouse_set_pos_2.l7:
    mov dx, word [bp - 0x0008]       ; 0x2bdf
    mov ax, cs                       ; 0x2be2
    push ax                          ; 0x2be4
    mov ax, 0                        ; 0x2be5
    call math_loc_1e1a               ; 0x2be8
    mov cx, word [bp - 0x0006]       ; 0x2beb
    mov dx, word [bp - 0x0008]       ; 0x2bee
    mov ax, 4                        ; 0x2bf1
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]         ; 0x2bf6
    or ax, ax                        ; 0x2bf9
    je short @..mouse_set_pos_2.l2   ; 0x2bfb
    push ax                          ; 0x2bfd
    call far [cs:data_01fb]          ; 0x2bfe
    pop ax                           ; 0x2c03
    jmp short @..mouse_set_pos_2.l2  ; 0x2c04
@..mouse_set_pos_2.l8:
    pop di                           ; 0x2c06
    pop si                           ; 0x2c07
    pop es                           ; 0x2c08
    pop ds                           ; 0x2c09
    mov sp, bp                       ; 0x2c0a
    pop bp                           ; 0x2c0c
    ret                              ; 0x2c0d
mouse_set_pos_3:
    push bp                          ; 0x2c0e
    mov bp, sp                       ; 0x2c0f
    sub sp, byte 0x0a                ; 0x2c11
    push ds                          ; 0x2c14
    push es                          ; 0x2c15
    push si                          ; 0x2c16
    push di                          ; 0x2c17
    mov ax, ds                       ; 0x2c18
    mov es, ax                       ; 0x2c1a
    cmp byte [cs:data_0228], 1       ; 0x2c1c
    je short @..mouse_set_pos_3.l1   ; 0x2c22
    jmp near @..mouse_set_pos_3.l9   ; 0x2c24
@..mouse_set_pos_3.l1:
    mov ax, word [bp + 0xc]          ; 0x2c27
    shl ax, 1                        ; 0x2c2a
    mov word [bp - 0x0002], ax       ; 0x2c2c
    mov ax, word [bp + 0xe]          ; 0x2c2f
    mov word [bp - 0x0004], ax       ; 0x2c32
    mov cx, word [cs:data_15ac]      ; 0x2c35
    shl cx, 1                        ; 0x2c3a
    mov dx, word [cs:data_15ae]      ; 0x2c3c
    mov word [bp - 0x0006], cx       ; 0x2c41
    mov word [bp - 0x0008], dx       ; 0x2c44
@..mouse_set_pos_3.l2:
    mov cx, word [bp - 0x0006]       ; 0x2c47
    mov dx, word [bp - 0x0008]       ; 0x2c4a
    cmp cx, word [bp - 0x0002]       ; 0x2c4d
    jne short @..mouse_set_pos_3.l3  ; 0x2c50
    cmp dx, word [bp - 0x0004]       ; 0x2c52
    jne short @..mouse_set_pos_3.l3  ; 0x2c55
    jmp short @..mouse_set_pos_3.l8  ; 0x2c57
@..mouse_set_pos_3.l3:
    cmp cx, word [bp - 0x0002]       ; 0x2c59
    je short @..mouse_set_pos_3.l5   ; 0x2c5c
    js short @..mouse_set_pos_3.l4   ; 0x2c5e
    sub word [bp - 0x0006], byte 2   ; 0x2c60
    jmp short @..mouse_set_pos_3.l5  ; 0x2c64
@..mouse_set_pos_3.l4:
    add word [bp - 0x0006], byte 2   ; 0x2c66
@..mouse_set_pos_3.l5:
    mov cx, word [bp - 0x0006]       ; 0x2c6a
    cmp dx, word [bp - 0x0004]       ; 0x2c6d
    je short @..mouse_set_pos_3.l7   ; 0x2c70
    js short @..mouse_set_pos_3.l6   ; 0x2c72
    sub word [bp - 0x0008], byte 1   ; 0x2c74
    jmp short @..mouse_set_pos_3.l7  ; 0x2c78
@..mouse_set_pos_3.l6:
    add word [bp - 0x0008], byte 1   ; 0x2c7a
@..mouse_set_pos_3.l7:
    mov dx, word [bp - 0x0008]       ; 0x2c7e
    mov ax, cs                       ; 0x2c81
    push ax                          ; 0x2c83
    mov ax, 0                        ; 0x2c84
    call math_loc_1e1a               ; 0x2c87
    mov cx, word [bp - 0x0006]       ; 0x2c8a
    mov dx, word [bp - 0x0008]       ; 0x2c8d
    mov ax, 4                        ; 0x2c90
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]         ; 0x2c95
    or ax, ax                        ; 0x2c98
    je short @..mouse_set_pos_3.l2   ; 0x2c9a
    push ax                          ; 0x2c9c
    call far [cs:data_01fb]          ; 0x2c9d
    pop ax                           ; 0x2ca2
    jmp short @..mouse_set_pos_3.l2  ; 0x2ca3
@..mouse_set_pos_3.l8:
    mov cx, word [bp - 0x0002]       ; 0x2ca5
    mov dx, word [bp - 0x0004]       ; 0x2ca8
    mov ax, 4                        ; 0x2cab
    int 0x33 ; BIOS mouse
    mov byte [cs:data_0226], 0       ; 0x2cb0
@..mouse_set_pos_3.l9:
    pop di                           ; 0x2cb6
    pop si                           ; 0x2cb7
    pop es                           ; 0x2cb8
    pop ds                           ; 0x2cb9
    mov sp, bp                       ; 0x2cba
    pop bp                           ; 0x2cbc
    ret                              ; 0x2cbd
loc_2cbe:
    push bp                          ; 0x2cbe
    mov bp, sp                       ; 0x2cbf
    sub sp, byte 8                   ; 0x2cc1
    push ds                          ; 0x2cc4
    push es                          ; 0x2cc5
    push di                          ; 0x2cc6
    push si                          ; 0x2cc7
    mov ax, ds                       ; 0x2cc8
    mov es, ax                       ; 0x2cca
    mov ax, word [bp + 0xc]          ; 0x2ccc
    neg ax                           ; 0x2ccf
    cmp ax, strict word 5            ; 0x2cd1
    jb short @..local.l43            ; 0x2cd4
    jmp near @..local.l45            ; 0x2cd6
@..local.l43:
    shl ax, 1                        ; 0x2cd9
    mov word [bp - 0x0008], ax       ; 0x2cdb
    mov bx, data_0251                ; 0x2cde
    add bx, ax                       ; 0x2ce1
    mov ax, word [cs:bx]             ; 0x2ce3
    or ax, ax                        ; 0x2ce6
    jne short @..local.l44           ; 0x2ce8
    jmp near @..local.l45            ; 0x2cea
@..local.l44:
    mov word [cs:bx], 0              ; 0x2ced
    mov cx, word [cs:data_0caa]      ; 0x2cf2
    dec cx                           ; 0x2cf7
    mov word [cs:data_0caa], cx      ; 0x2cf8
    call loc_43e1                    ; 0x2cfd
@..local.l45:
    pop si                           ; 0x2d00
    pop di                           ; 0x2d01
    pop es                           ; 0x2d02
    pop ds                           ; 0x2d03
    mov sp, bp                       ; 0x2d04
    pop bp                           ; 0x2d06
    ret                              ; 0x2d07
io_loc_2d08:
    push bp                          ; 0x2d08
    mov bp, sp                       ; 0x2d09
    sub sp, byte 8                   ; 0x2d0b
    push ds                          ; 0x2d0e
    push es                          ; 0x2d0f
    push di                          ; 0x2d10
    push si                          ; 0x2d11
    mov ax, ds                       ; 0x2d12
    mov es, ax                       ; 0x2d14
    lds si, word [cs:data_01f7]      ; 0x2d16
    mov di, word [bp + 0xc]          ; 0x2d1b
    mov cx, data_0300                ; 0x2d1e
    rep movsb                        ; 0x2d21
    pop si                           ; 0x2d23
    pop di                           ; 0x2d24
    pop es                           ; 0x2d25
    pop ds                           ; 0x2d26
    mov sp, bp                       ; 0x2d27
    pop bp                           ; 0x2d29
    ret                              ; 0x2d2a

    times 65 db 0

math_loc_2d6c:
    push bp                          ; 0x2d6c
    mov bp, sp                       ; 0x2d6d
    sub sp, byte 0x40                ; 0x2d6f
    push ds                          ; 0x2d72
    push es                          ; 0x2d73
    push si                          ; 0x2d74
    push di                          ; 0x2d75
    mov ax, ds                       ; 0x2d76
    mov es, ax                       ; 0x2d78
    mov ax, word [bp + 0x14]         ; 0x2d7a
    sub ax, word [bp + 0x12]         ; 0x2d7d
    jb short @..math_loc_2d6c.l1     ; 0x2d80
    mov ax, word [bp + 0x18]         ; 0x2d82
    sub ax, word [bp + 0x16]         ; 0x2d85
    jb short @..math_loc_2d6c.l1     ; 0x2d88
    mov ax, word [bp + 0x10]         ; 0x2d8a
    mov bx, 0x140                    ; 0x2d8d
    mul bx                           ; 0x2d90
    add ax, word [bp + 0xe]          ; 0x2d92
    mov word [bp - 0x0006], ax       ; 0x2d95
    mov ax, word [bp + 0xc]          ; 0x2d98
    shl ax, 1                        ; 0x2d9b
    mov bx, data_0229                ; 0x2d9d
    add bx, ax                       ; 0x2da0
    mov ax, word [cs:bx]             ; 0x2da2
    dec ax                           ; 0x2da5
    mov cl, 2                        ; 0x2da6
    shl ax, cl                       ; 0x2da8
    mov bx, data_0bda                ; 0x2daa
    add bx, ax                       ; 0x2dad
    mov ax, word [cs:bx]             ; 0x2daf
    add ax, word [cs:data_01e1]      ; 0x2db2
    mov word [bp - 0x0008], ax       ; 0x2db7
    mov ds, ax                       ; 0x2dba
    xor bx, bx                       ; 0x2dbc
    mov ax, word [bx]                ; 0x2dbe
    mov word [bp - 0x0012], ax       ; 0x2dc0
    mov si, word [bp + 0x1c]         ; 0x2dc3
    mov bx, word [bp - 0x0008]       ; 0x2dc6
    mov ds, bx                       ; 0x2dc9
    xor ah, ah                       ; 0x2dcb
    mov al, byte [ss:si]             ; 0x2dcd
    or al, al                        ; 0x2dd0
    je short @..math_loc_2d6c.l1     ; 0x2dd2
    call dos_con_loc_3131            ; 0x2dd4
    xor ah, ah                       ; 0x2dd7
    mov al, byte [bx + 0x2]          ; 0x2dd9
    mov word [bp - 0x0002], ax       ; 0x2ddc
    mov cx, ax                       ; 0x2ddf
    mov al, byte [bx + 0x3]          ; 0x2de1
    mov word [bp - 0x0004], ax       ; 0x2de4
    or ax, cx                        ; 0x2de7
    jne short @..math_loc_2d6c.l2    ; 0x2de9
@..math_loc_2d6c.l1:
    jmp near @..local.l82            ; 0x2deb
@..math_loc_2d6c.l2:
    mov word [bp - 0x003a], bx       ; 0x2dee
    mov ax, es                       ; 0x2df1
    mov word [bp - 0x0038], ax       ; 0x2df3
    mov ax, cs                       ; 0x2df6
    mov es, ax                       ; 0x2df8
    lea di, word [data_2e2b]         ; 0x2dfa
    xor ax, ax                       ; 0x2dfe
    mov cx, 0x14                     ; 0x2e00
    rep stosw                        ; 0x2e03
    lea di, word [data_2e53]         ; 0x2e05
    mov cx, 0x19                     ; 0x2e09
    rep stosb                        ; 0x2e0c
    mov bx, word [bp + 0x20]         ; 0x2e0e
    or bx, bx                        ; 0x2e11
    jne short @..math_loc_2d6c.l3    ; 0x2e13
    jmp near @..math_loc_2d6c.l7     ; 0x2e15
@..math_loc_2d6c.l3:
    cmp bx, byte 0x64                ; 0x2e18
    jae short @..math_loc_2d6c.l1    ; 0x2e1b
    mov ax, word [bp - 0x0002]       ; 0x2e1d
    mov cl, 3                        ; 0x2e20
    shl ax, cl                       ; 0x2e22
    mov cx, ax                       ; 0x2e24
    mov bx, word [bp + 0x20]         ; 0x2e26
    mul bx                           ; 0x2e29
    mov bx, 0x64                     ; 0x2e2b
    div bx                           ; 0x2e2e
    cmp dx, byte 0x32                ; 0x2e30
    jb short @..math_loc_2d6c.l4     ; 0x2e33
    inc ax                           ; 0x2e35
@..math_loc_2d6c.l4:
    or ax, ax                        ; 0x2e36
    je short @..math_loc_2d6c.l5     ; 0x2e38
    xor dx, dx                       ; 0x2e3a
    mov bx, ax                       ; 0x2e3c
    mov word [bp - 0x0034], ax       ; 0x2e3e
    mov ax, cx                       ; 0x2e41
    div bx                           ; 0x2e43
    mov di, data_2e2b                ; 0x2e45
    mov bx, word [bp - 0x0034]       ; 0x2e48
    shr bx, 1                        ; 0x2e4b
    mov word [bp - 0x003c], bx       ; 0x2e4d
    mov si, ax                       ; 0x2e50
    dec si                           ; 0x2e52
    mov word [bp - 0x0030], ax       ; 0x2e53
    mov word [bp - 0x0032], cx       ; 0x2e56
    call leaf_loc_319f               ; 0x2e59
@..math_loc_2d6c.l5:
    mov ax, word [bp - 0x0004]       ; 0x2e5c
    mov cl, 3                        ; 0x2e5f
    shl ax, cl                       ; 0x2e61
    mov cx, ax                       ; 0x2e63
    mov bx, word [bp + 0x20]         ; 0x2e65
    mul bx                           ; 0x2e68
    mov bx, 0x64                     ; 0x2e6a
    div bx                           ; 0x2e6d
    cmp dx, byte 0x32                ; 0x2e6f
    jb short @..math_loc_2d6c.l6     ; 0x2e72
    inc ax                           ; 0x2e74
@..math_loc_2d6c.l6:
    or ax, ax                        ; 0x2e75
    je short @..math_loc_2d6c.l7     ; 0x2e77
    xor dx, dx                       ; 0x2e79
    mov bx, ax                       ; 0x2e7b
    mov word [bp - 0x0034], ax       ; 0x2e7d
    mov ax, cx                       ; 0x2e80
    div bx                           ; 0x2e82
    mov di, data_2e53                ; 0x2e84
    mov bx, word [bp - 0x0034]       ; 0x2e87
    shr bx, 1                        ; 0x2e8a
    mov word [bp - 0x003c], bx       ; 0x2e8c
    mov si, ax                       ; 0x2e8f
    dec si                           ; 0x2e91
    mov word [bp - 0x0030], ax       ; 0x2e92
    mov word [bp - 0x0032], cx       ; 0x2e95
    call leaf_loc_319f               ; 0x2e98
@..math_loc_2d6c.l7:
    mov bx, word [bp - 0x003a]       ; 0x2e9b
    mov ax, word [bp - 0x0038]       ; 0x2e9e
    mov es, ax                       ; 0x2ea1
    mov ax, word [bp + 0x12]         ; 0x2ea3
    sub ax, word [bp + 0xe]          ; 0x2ea6
    jge short @..math_loc_2d6c.l8    ; 0x2ea9
    xor ax, ax                       ; 0x2eab
@..math_loc_2d6c.l8:
    mov word [bp - 0x0028], ax       ; 0x2ead
    mov ax, word [bp + 0xe]          ; 0x2eb0
    mov bx, word [bp - 0x0002]       ; 0x2eb3
    mov cl, 3                        ; 0x2eb6
    shl bx, cl                       ; 0x2eb8
    mov cx, bx                       ; 0x2eba
    dec bx                           ; 0x2ebc
    mov word [bp - 0x001e], bx       ; 0x2ebd
    add ax, bx                       ; 0x2ec0
    inc ax                           ; 0x2ec2
    sub ax, word [bp + 0x14]         ; 0x2ec3
    jge short @..math_loc_2d6c.l9    ; 0x2ec6
    xor ax, ax                       ; 0x2ec8
@..math_loc_2d6c.l9:
    mov word [bp - 0x002a], ax       ; 0x2eca
    add ax, word [bp - 0x0028]       ; 0x2ecd
    sub cx, ax                       ; 0x2ed0
    ja short @..math_loc_2d6c.l10    ; 0x2ed2
    jmp near @..local.l82            ; 0x2ed4
@..math_loc_2d6c.l10:
    mov word [bp - 0x0026], cx       ; 0x2ed7
    mov ax, word [bp + 0x16]         ; 0x2eda
    sub ax, word [bp + 0x10]         ; 0x2edd
    jge short @..math_loc_2d6c.l11   ; 0x2ee0
    xor ax, ax                       ; 0x2ee2
@..math_loc_2d6c.l11:
    mov word [bp - 0x0024], ax       ; 0x2ee4
    mov ax, word [bp + 0x10]         ; 0x2ee7
    mov bx, word [bp - 0x0004]       ; 0x2eea
    mov cl, 3                        ; 0x2eed
    shl bx, cl                       ; 0x2eef
    mov cx, bx                       ; 0x2ef1
    dec bx                           ; 0x2ef3
    add ax, bx                       ; 0x2ef4
    sub ax, word [bp + 0x18]         ; 0x2ef6
    jge short @..math_loc_2d6c.l12   ; 0x2ef9
    xor ax, ax                       ; 0x2efb
@..math_loc_2d6c.l12:
    mov word [bp - 0x002c], ax       ; 0x2efd
    add ax, word [bp - 0x0024]       ; 0x2f00
    sub cx, ax                       ; 0x2f03
    ja short @..math_loc_2d6c.l13    ; 0x2f05
    jmp near @..local.l82            ; 0x2f07
@..math_loc_2d6c.l13:
    mov ax, word [bp + 0x18]         ; 0x2f0a
    inc ax                           ; 0x2f0d
    mov cx, 0x140                    ; 0x2f0e
    mul cx                           ; 0x2f11
    mov word [bp - 0x0022], ax       ; 0x2f13
    mov ax, word [bp + 0x16]         ; 0x2f16
    mov cx, 0x140                    ; 0x2f19
    mul cx                           ; 0x2f1c
    mov word [bp - 0x002e], ax       ; 0x2f1e
    mov ax, word [bp + 0x1a]         ; 0x2f21
    and al, 1                        ; 0x2f24
    je short @..math_loc_2d6c.l14    ; 0x2f26
    jmp near @..local.l54            ; 0x2f28
@..math_loc_2d6c.l14:
    mov bx, word [bp - 0x001e]       ; 0x2f2b
    inc bx                           ; 0x2f2e
    mov word [bp - 0x003e], bx       ; 0x2f2f
    mov bx, data_2e2b                ; 0x2f32
    mov dl, 0x80                     ; 0x2f35
    xor ax, ax                       ; 0x2f37
    mov word [bp - 0x0030], ax       ; 0x2f39
    mov word [bp - 0x0040], ax       ; 0x2f3c
    mov cx, word [bp - 0x0028]       ; 0x2f3f
    or cx, cx                        ; 0x2f42
    je short @..math_loc_2d6c.l19    ; 0x2f44
@..math_loc_2d6c.l15:
    mov al, byte [cs:bx]             ; 0x2f46
    and al, dl                       ; 0x2f49
    jne short @..math_loc_2d6c.l16   ; 0x2f4b
    or byte [cs:bx], dl              ; 0x2f4d
    jmp short @..math_loc_2d6c.l17   ; 0x2f50
@..math_loc_2d6c.l16:
    inc word [bp - 0x0030]           ; 0x2f52
    inc cx                           ; 0x2f55
@..math_loc_2d6c.l17:
    ror dl, 1                        ; 0x2f56
    cmp dl, 0x80                     ; 0x2f58
    jne short @..math_loc_2d6c.l18   ; 0x2f5b
    inc bx                           ; 0x2f5d
@..math_loc_2d6c.l18:
    loop @..math_loc_2d6c.l15        ; 0x2f5e
@..math_loc_2d6c.l19:
    mov word [bp - 0x0032], bx       ; 0x2f60
    mov ax, word [bp - 0x0030]       ; 0x2f63
    mov word [bp - 0x0040], ax       ; 0x2f66
    add ax, word [bp - 0x0028]       ; 0x2f69
    mov bx, word [bp - 0x003e]       ; 0x2f6c
    cmp bx, ax                       ; 0x2f6f
    ja short @..local.l46            ; 0x2f71
    jmp near @..local.l82            ; 0x2f73
@..local.l46:
    sub bx, ax                       ; 0x2f76
    xor ax, ax                       ; 0x2f78
    mov word [bp - 0x0030], ax       ; 0x2f7a
    sub bx, word [bp - 0x0026]       ; 0x2f7d
    jbe short @..local.l53           ; 0x2f80
    mov word [bp - 0x0034], bx       ; 0x2f82
    mov cx, word [bp - 0x0026]       ; 0x2f85
    mov bx, word [bp - 0x0032]       ; 0x2f88
@..local.l47:
    mov al, byte [cs:bx]             ; 0x2f8b
    and al, dl                       ; 0x2f8e
    je short @..local.l48            ; 0x2f90
    inc word [bp - 0x0030]           ; 0x2f92
    mov ax, word [bp - 0x0030]       ; 0x2f95
    cmp ax, word [bp - 0x0034]       ; 0x2f98
    je short @..local.l50            ; 0x2f9b
    inc cx                           ; 0x2f9d
@..local.l48:
    ror dl, 1                        ; 0x2f9e
    cmp dl, 0x80                     ; 0x2fa0
    jne short @..local.l49           ; 0x2fa3
    inc bx                           ; 0x2fa5
@..local.l49:
    loop @..local.l47                ; 0x2fa6
@..local.l50:
    mov word [bp - 0x0032], bx       ; 0x2fa8
    mov ax, word [bp - 0x0030]       ; 0x2fab
    add ax, word [bp - 0x0040]       ; 0x2fae
    add ax, word [bp - 0x0028]       ; 0x2fb1
    add ax, word [bp - 0x0026]       ; 0x2fb4
    mov cx, word [bp - 0x003e]       ; 0x2fb7
    sub cx, ax                       ; 0x2fba
    jbe short @..local.l53           ; 0x2fbc
    mov bx, word [bp - 0x0032]       ; 0x2fbe
@..local.l51:
    or byte [cs:bx], dl              ; 0x2fc1
    ror dl, 1                        ; 0x2fc4
    cmp dl, 0x80                     ; 0x2fc6
    jne short @..local.l52           ; 0x2fc9
    inc bx                           ; 0x2fcb
@..local.l52:
    loop @..local.l51                ; 0x2fcc
@..local.l53:
    jmp near @..local.l67            ; 0x2fce
@..local.l54:
    mov bx, word [bp - 0x001e]       ; 0x2fd1
    inc bx                           ; 0x2fd4
    mov word [bp - 0x003e], bx       ; 0x2fd5
    mov bx, data_2e2b                ; 0x2fd8
    mov dl, 0x80                     ; 0x2fdb
    xor ax, ax                       ; 0x2fdd
    mov word [bp - 0x0030], ax       ; 0x2fdf
    mov word [bp - 0x0040], ax       ; 0x2fe2
    mov cx, word [bp - 0x002a]       ; 0x2fe5
    or cx, cx                        ; 0x2fe8
    je short @..local.l59            ; 0x2fea
@..local.l55:
    mov al, byte [cs:bx]             ; 0x2fec
    and al, dl                       ; 0x2fef
    jne short @..local.l56           ; 0x2ff1
    or byte [cs:bx], dl              ; 0x2ff3
    jmp short @..local.l57           ; 0x2ff6
@..local.l56:
    inc word [bp - 0x0030]           ; 0x2ff8
    inc cx                           ; 0x2ffb
@..local.l57:
    ror dl, 1                        ; 0x2ffc
    cmp dl, 0x80                     ; 0x2ffe
    jne short @..local.l58           ; 0x3001
    inc bx                           ; 0x3003
@..local.l58:
    loop @..local.l55                ; 0x3004
@..local.l59:
    mov word [bp - 0x0032], bx       ; 0x3006
    mov ax, word [bp - 0x0030]       ; 0x3009
    mov word [bp - 0x0040], ax       ; 0x300c
    add ax, word [bp - 0x002a]       ; 0x300f
    mov bx, word [bp - 0x003e]       ; 0x3012
    cmp bx, ax                       ; 0x3015
    ja short @..local.l60            ; 0x3017
    jmp near @..local.l82            ; 0x3019
@..local.l60:
    sub bx, ax                       ; 0x301c
    xor ax, ax                       ; 0x301e
    mov word [bp - 0x0030], ax       ; 0x3020
    sub bx, word [bp - 0x0026]       ; 0x3023
    jbe short @..local.l67           ; 0x3026
    mov word [bp - 0x0034], bx       ; 0x3028
    mov cx, word [bp - 0x0026]       ; 0x302b
    mov bx, word [bp - 0x0032]       ; 0x302e
@..local.l61:
    mov al, byte [cs:bx]             ; 0x3031
    and al, dl                       ; 0x3034
    je short @..local.l62            ; 0x3036
    inc word [bp - 0x0030]           ; 0x3038
    mov ax, word [bp - 0x0030]       ; 0x303b
    cmp ax, word [bp - 0x0034]       ; 0x303e
    je short @..local.l64            ; 0x3041
    inc cx                           ; 0x3043
@..local.l62:
    ror dl, 1                        ; 0x3044
    cmp dl, 0x80                     ; 0x3046
    jne short @..local.l63           ; 0x3049
    inc bx                           ; 0x304b
@..local.l63:
    loop @..local.l61                ; 0x304c
@..local.l64:
    mov word [bp - 0x0032], bx       ; 0x304e
    mov ax, word [bp - 0x0030]       ; 0x3051
    add ax, word [bp - 0x0040]       ; 0x3054
    add ax, word [bp - 0x002a]       ; 0x3057
    add ax, word [bp - 0x0026]       ; 0x305a
    mov cx, word [bp - 0x003e]       ; 0x305d
    sub cx, ax                       ; 0x3060
    jbe short @..local.l67           ; 0x3062
    mov bx, word [bp - 0x0032]       ; 0x3064
@..local.l65:
    or byte [cs:bx], dl              ; 0x3067
    ror dl, 1                        ; 0x306a
    cmp dl, 0x80                     ; 0x306c
    jne short @..local.l66           ; 0x306f
    inc bx                           ; 0x3071
@..local.l66:
    loop @..local.l65                ; 0x3072
@..local.l67:
    mov ax, word [bp + 0x1a]         ; 0x3074
    and al, 2                        ; 0x3077
    jne short @..local.l74           ; 0x3079
    mov bx, data_2e53                ; 0x307b
    mov dl, 0x80                     ; 0x307e
    xor ax, ax                       ; 0x3080
    mov word [bp - 0x0030], ax       ; 0x3082
    mov word [bp - 0x0040], ax       ; 0x3085
    mov cx, word [bp - 0x0024]       ; 0x3088
    or cx, cx                        ; 0x308b
    je short @..local.l72            ; 0x308d
@..local.l68:
    mov al, byte [cs:bx]             ; 0x308f
    and al, dl                       ; 0x3092
    jne short @..local.l69           ; 0x3094
    or byte [cs:bx], dl              ; 0x3096
    jmp short @..local.l70           ; 0x3099
@..local.l69:
    inc word [bp - 0x0030]           ; 0x309b
    inc cx                           ; 0x309e
@..local.l70:
    ror dl, 1                        ; 0x309f
    cmp dl, 0x80                     ; 0x30a1
    jne short @..local.l71           ; 0x30a4
    inc bx                           ; 0x30a6
@..local.l71:
    loop @..local.l68                ; 0x30a7
@..local.l72:
    mov ax, word [bp - 0x0030]       ; 0x30a9
    mov word [bp - 0x0040], ax       ; 0x30ac
    add ax, word [bp - 0x0024]       ; 0x30af
    mov bx, word [bp - 0x0004]       ; 0x30b2
    mov cl, 3                        ; 0x30b5
    shl bx, cl                       ; 0x30b7
    cmp bx, ax                       ; 0x30b9
    ja short @..local.l73            ; 0x30bb
    jmp near @..local.l82            ; 0x30bd
@..local.l73:
    jmp short @..local.l80           ; 0x30c0
@..local.l74:
    mov bx, data_2e53                ; 0x30c2
    mov dl, 0x80                     ; 0x30c5
    xor ax, ax                       ; 0x30c7
    mov word [bp - 0x0030], ax       ; 0x30c9
    mov word [bp - 0x0040], ax       ; 0x30cc
    mov cx, word [bp - 0x002c]       ; 0x30cf
    or cx, cx                        ; 0x30d2
    je short @..local.l79            ; 0x30d4
@..local.l75:
    mov al, byte [cs:bx]             ; 0x30d6
    and al, dl                       ; 0x30d9
    jne short @..local.l76           ; 0x30db
    or byte [cs:bx], dl              ; 0x30dd
    jmp short @..local.l77           ; 0x30e0
@..local.l76:
    inc word [bp - 0x0030]           ; 0x30e2
    inc cx                           ; 0x30e5
@..local.l77:
    ror dl, 1                        ; 0x30e6
    cmp dl, 0x80                     ; 0x30e8
    jne short @..local.l78           ; 0x30eb
    inc bx                           ; 0x30ed
@..local.l78:
    loop @..local.l75                ; 0x30ee
@..local.l79:
    mov ax, word [bp - 0x0030]       ; 0x30f0
    add ax, word [bp - 0x002c]       ; 0x30f3
    mov bx, word [bp - 0x0004]       ; 0x30f6
    mov cl, 3                        ; 0x30f9
    shl bx, cl                       ; 0x30fb
    cmp bx, ax                       ; 0x30fd
    jbe short @..local.l82           ; 0x30ff
@..local.l80:
    mov ax, word [bp + 0x20]         ; 0x3101
    mov bl, 0xc                      ; 0x3104
    div bl                           ; 0x3106
    xor ah, ah                       ; 0x3108
    mov word [bp - 0x0030], ax       ; 0x310a
@..local.l81:
    mov si, word [bp + 0x1c]         ; 0x310d
    mov bx, word [bp - 0x0008]       ; 0x3110
    mov ds, bx                       ; 0x3113
    xor ah, ah                       ; 0x3115
    mov al, byte [ss:si]             ; 0x3117
    or al, al                        ; 0x311a
    je short @..local.l82            ; 0x311c
    call dos_con_loc_3131            ; 0x311e
    call math_loc_31d9               ; 0x3121
    inc word [bp + 0x1c]             ; 0x3124
    jmp short @..local.l81           ; 0x3127
@..local.l82:
    pop di                           ; 0x3129
    pop si                           ; 0x312a
    pop es                           ; 0x312b
    pop ds                           ; 0x312c
    mov sp, bp                       ; 0x312d
    pop bp                           ; 0x312f
    ret                              ; 0x3130
dos_con_loc_3131:
    dec ax                           ; 0x3131
    cmp ax, word [bp - 0x0012]       ; 0x3132
    jb short @..dos_con_loc_3131.l1  ; 0x3135
    mov bl, 0xa                      ; 0x3137
    div bl                           ; 0x3139
    or byte [cs:data_326f], al       ; 0x313b
    or byte [cs:data_3270], dl       ; 0x3140
    mov ax, word [bp + 0xc]          ; 0x3145
    mov bl, 0xa                      ; 0x3148
    div bl                           ; 0x314a
    or byte [cs:data_3282], al       ; 0x314c
    or byte [cs:data_3283], dl       ; 0x3151
    mov bx, cs                       ; 0x3156
    mov ds, bx                       ; 0x3158
    mov dx, 0x3266                   ; 0x315a
    mov ah, 9                        ; 0x315d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3161
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Frame 00 too big in slot 00.', 0
    db 0x0a, 0x24

@..dos_con_loc_3131.l1:
    mov cl, 2                        ; 0x3188
    shl al, cl                       ; 0x318a
    mov bx, 2                        ; 0x318c
    add bx, ax                       ; 0x318f
    mov ax, word [bx]                ; 0x3191
    mov dx, word [bx + 0x2]          ; 0x3193
    mov bx, ds                       ; 0x3196
    add bx, dx                       ; 0x3198
    mov ds, bx                       ; 0x319a
    mov bx, ax                       ; 0x319c
    ret                              ; 0x319e
leaf_loc_319f:
    jmp short @..leaf_loc_319f.l2    ; 0x319f
@..leaf_loc_319f.l1:
    add si, word [bp - 0x0030]       ; 0x31a1
@..leaf_loc_319f.l2:
    add word [bp - 0x003c], dx       ; 0x31a4
    mov bx, word [bp - 0x003c]       ; 0x31a7
    cmp bx, word [bp - 0x0034]       ; 0x31aa
    jb short @..leaf_loc_319f.l3     ; 0x31ad
    sub bx, word [bp - 0x0034]       ; 0x31af
    mov word [bp - 0x003c], bx       ; 0x31b2
    inc si                           ; 0x31b5
@..leaf_loc_319f.l3:
    cmp si, word [bp - 0x0032]       ; 0x31b6
    jb short @..local.l83            ; 0x31b9
@..leaf_loc_319f.l4:
    ret                              ; 0x31bb
@..local.l83:
    test si, 0x8000                  ; 0x31bc
    jne short @..leaf_loc_319f.l4    ; 0x31c0
    mov cl, 3                        ; 0x31c2
    mov ax, si                       ; 0x31c4
    shr ax, cl                       ; 0x31c6
    mov bx, ax                       ; 0x31c8
    mov ax, si                       ; 0x31ca
    and al, 7                        ; 0x31cc
    mov cl, al                       ; 0x31ce
    mov al, 0x80                     ; 0x31d0
    shr al, cl                       ; 0x31d2
    or byte [cs:bx + di], al         ; 0x31d4
    jmp short @..leaf_loc_319f.l1    ; 0x31d7
math_loc_31d9:
    push es                          ; 0x31d9
    mov ax, word [cs:data_01e5]      ; 0x31da
    mov es, ax                       ; 0x31de
    mov ax, data_2e53                ; 0x31e0
    mov word [bp - 0x0036], ax       ; 0x31e3
    xor ax, ax                       ; 0x31e6
    mov word [bp - 0x003c], ax       ; 0x31e8
    mov word [bp - 0x003e], ax       ; 0x31eb
    mov ax, word [bp + 0x1a]         ; 0x31ee
    cmp al, 2                        ; 0x31f1
    jne short @..math_loc_31d9.l1    ; 0x31f3
    jmp near @..local.l111           ; 0x31f5
@..math_loc_31d9.l1:
    cmp al, 3                        ; 0x31f8
    jne short @..math_loc_31d9.l2    ; 0x31fa
    jmp near @..local.l136           ; 0x31fc
@..math_loc_31d9.l2:
    mov ax, word [bp - 0x0006]       ; 0x31ff
    mov word [bp - 0x000e], ax       ; 0x3202
    mov si, word [bx]                ; 0x3205
    add si, bx                       ; 0x3207
    mov word [bp - 0x000a], 1        ; 0x3209
    lea ax, word [bx + 0x4]          ; 0x320e
    mov word [bp - 0x000c], ax       ; 0x3211
    mov cx, word [bp - 0x0004]       ; 0x3214
    mov byte [bp - 0x003a], 0x80     ; 0x3217
    mov ax, word [bp + 0x1a]         ; 0x321b
    cmp al, 1                        ; 0x321e
    jne short @..math_loc_31d9.l3    ; 0x3220
    jmp near @..local.l86            ; 0x3222
@..math_loc_31d9.l3:
    mov ax, word [bp - 0x0028]       ; 0x3225
    add word [bp - 0x000e], ax       ; 0x3228
    mov ax, word [bp - 0x0024]       ; 0x322b
    mov bx, 0x140                    ; 0x322e
    mul bx                           ; 0x3231
    add word [bp - 0x000e], ax       ; 0x3233
@..math_loc_31d9.l4:
    mov ax, word [bp - 0x0022]       ; 0x3236
    mov di, word [bp - 0x000e]       ; 0x3239
    cmp di, ax                       ; 0x323c
    jb short @..math_loc_31d9.l5     ; 0x323e
    jmp near @..math_loc_31d9.l25    ; 0x3240
@..math_loc_31d9.l5:
    push cx                          ; 0x3243
    call math_loc_3340               ; 0x3244
    mov ax, data_2e2b                ; 0x3247
    mov word [bp - 0x0034], ax       ; 0x324a
    mov cx, word [bp - 0x0002]       ; 0x324d
@..math_loc_31d9.l6:
    push cx                          ; 0x3250
    call math_loc_3360               ; 0x3251
    mov bx, word [bp - 0x000c]       ; 0x3254
    mov al, byte [bx]                ; 0x3257
    and al, byte [bp - 0x000a]       ; 0x3259
    jne short @..math_loc_31d9.l7    ; 0x325c
    jmp near @..math_loc_31d9.l23    ; 0x325e
@..math_loc_31d9.l7:
    mov bx, word [bp - 0x0034]       ; 0x3261
    mov al, byte [cs:bx]             ; 0x3264
    cmp al, 0xff                     ; 0x3267
    jne short @..math_loc_31d9.l8    ; 0x3269
    add si, byte 0x40                ; 0x326b
    jmp near @..math_loc_31d9.l23    ; 0x326e
@..math_loc_31d9.l8:
    push di                          ; 0x3271
    push si                          ; 0x3272
    mov al, 0x80                     ; 0x3273
    mov byte [bp - 0x0038], al       ; 0x3275
    mov cx, 8                        ; 0x3278
@..math_loc_31d9.l9:
    cmp di, word [bp - 0x0022]       ; 0x327b
    jb short @..math_loc_31d9.l10    ; 0x327e
    jmp near @..math_loc_31d9.l22    ; 0x3280
@..math_loc_31d9.l10:
    mov bx, word [bp - 0x0036]       ; 0x3283
    mov al, byte [cs:bx]             ; 0x3286
    and al, byte [bp - 0x0038]       ; 0x3289
    je short @..math_loc_31d9.l11    ; 0x328c
    jmp near @..math_loc_31d9.l21    ; 0x328e
@..math_loc_31d9.l11:
    push cx                          ; 0x3291
    push di                          ; 0x3292
    mov al, 0x80                     ; 0x3293
    mov byte [bp - 0x0032], al       ; 0x3295
    mov cx, 8                        ; 0x3298
@..math_loc_31d9.l12:
    mov bx, word [bp - 0x0034]       ; 0x329b
    mov al, byte [cs:bx]             ; 0x329e
    and al, byte [bp - 0x0032]       ; 0x32a1
    jne short @..math_loc_31d9.l20   ; 0x32a4
    xor ah, ah                       ; 0x32a6
    mov al, byte [si]                ; 0x32a8
    cmp al, 0xff                     ; 0x32aa
    je short @..math_loc_31d9.l17    ; 0x32ac
    cmp byte [bp + 0x1e], 2          ; 0x32ae
    jne short @..math_loc_31d9.l14   ; 0x32b2
    mov al, byte [es:di]             ; 0x32b4
    mov bx, data_381b                ; 0x32b7
    add bx, ax                       ; 0x32ba
    add al, byte [si]                ; 0x32bc
    jb short @..math_loc_31d9.l13    ; 0x32be
    cmp al, byte [cs:bx]             ; 0x32c0
    jb short @..math_loc_31d9.l16    ; 0x32c3
@..math_loc_31d9.l13:
    mov al, byte [cs:bx]             ; 0x32c5
    jmp short @..math_loc_31d9.l16   ; 0x32c8
@..math_loc_31d9.l14:
    cmp byte [bp - 0x0030], 0        ; 0x32ca
    je short @..math_loc_31d9.l16    ; 0x32ce
    mov bx, data_381b                ; 0x32d0
    add bx, ax                       ; 0x32d3
    add al, byte [bp - 0x0030]       ; 0x32d5
    jb short @..math_loc_31d9.l15    ; 0x32d8
    cmp al, byte [cs:bx]             ; 0x32da
    jb short @..math_loc_31d9.l16    ; 0x32dd
@..math_loc_31d9.l15:
    mov al, byte [cs:bx]             ; 0x32df
@..math_loc_31d9.l16:
    mov byte [es:di], al             ; 0x32e2
@..math_loc_31d9.l17:
    inc si                           ; 0x32e5
    inc di                           ; 0x32e6
    ror byte [bp - 0x0032], 1        ; 0x32e7
    loop @..math_loc_31d9.l12        ; 0x32ea
@..math_loc_31d9.l18:
    pop di                           ; 0x32ec
    pop cx                           ; 0x32ed
    add di, strict word 0x140        ; 0x32ee
@..math_loc_31d9.l19:
    ror byte [bp - 0x0038], 1        ; 0x32f2
    loop @..math_loc_31d9.l9         ; 0x32f5
    jmp short @..math_loc_31d9.l22   ; 0x32f7
@..math_loc_31d9.l20:
    inc si                           ; 0x32f9
    ror byte [bp - 0x0032], 1        ; 0x32fa
    loop @..math_loc_31d9.l12        ; 0x32fd
    jmp short @..math_loc_31d9.l18   ; 0x32ff
@..math_loc_31d9.l21:
    add si, byte 8                   ; 0x3301
    jmp short @..math_loc_31d9.l19   ; 0x3304
@..math_loc_31d9.l22:
    pop si                           ; 0x3306
    add si, byte 0x40                ; 0x3307
    pop di                           ; 0x330a
@..math_loc_31d9.l23:
    add di, byte 8                   ; 0x330b
    sub di, word [bp - 0x003c]       ; 0x330e
    rol byte [bp - 0x000a], 1        ; 0x3311
    cmp byte [bp - 0x000a], 1        ; 0x3314
    jne short @..math_loc_31d9.l24   ; 0x3318
    inc word [bp - 0x000c]           ; 0x331a
@..math_loc_31d9.l24:
    inc word [bp - 0x0034]           ; 0x331d
    pop cx                           ; 0x3320
    loop @..local.l84                ; 0x3321
    pop cx                           ; 0x3323
    add word [bp - 0x000e], strict word 0xa00 ; 0x3324
    mov ax, word [bp - 0x003e]       ; 0x3329
    sub word [bp - 0x000e], ax       ; 0x332c
    inc word [bp - 0x0036]           ; 0x332f
    mov byte [bp - 0x003a], 0x80     ; 0x3332
    loop @..local.l85                ; 0x3336
@..math_loc_31d9.l25:
    pop es                           ; 0x3338
    ret                              ; 0x3339
@..local.l84:
    jmp near @..math_loc_31d9.l6     ; 0x333a
@..local.l85:
    jmp near @..math_loc_31d9.l4     ; 0x333d
math_loc_3340:
    mov al, 0x80                     ; 0x3340
    mov dl, al                       ; 0x3342
    xor ax, ax                       ; 0x3344
    mov word [bp - 0x003e], ax       ; 0x3346
    mov bx, word [bp - 0x0036]       ; 0x3349
    mov cx, 8                        ; 0x334c
@..math_loc_3340.l1:
    mov al, byte [cs:bx]             ; 0x334f
    and al, dl                       ; 0x3352
    je short @..math_loc_3340.l2     ; 0x3354
    add word [bp - 0x003e], strict word 0x140 ; 0x3356
@..math_loc_3340.l2:
    ror dl, 1                        ; 0x335b
    loop @..math_loc_3340.l1         ; 0x335d
    ret                              ; 0x335f
math_loc_3360:
    xor ax, ax                       ; 0x3360
    mov word [bp - 0x003c], ax       ; 0x3362
    mov dl, 0x80                     ; 0x3365
    mov bx, word [bp - 0x0034]       ; 0x3367
    mov cx, 8                        ; 0x336a
@..math_loc_3360.l1:
    mov al, byte [cs:bx]             ; 0x336d
    and al, dl                       ; 0x3370
    je short @..math_loc_3360.l2     ; 0x3372
    inc word [bp - 0x003c]           ; 0x3374
@..math_loc_3360.l2:
    ror dl, 1                        ; 0x3377
    loop @..math_loc_3360.l1         ; 0x3379
    ret                              ; 0x337b
@..local.l86:
    mov ax, word [bp - 0x002a]       ; 0x337c
    sub word [bp - 0x000e], ax       ; 0x337f
    mov ax, word [bp - 0x0024]       ; 0x3382
    mov bx, 0x140                    ; 0x3385
    mul bx                           ; 0x3388
    add word [bp - 0x000e], ax       ; 0x338a
@..local.l87:
    mov ax, word [bp - 0x0022]       ; 0x338d
    mov di, word [bp - 0x000e]       ; 0x3390
    add di, word [bp - 0x001e]       ; 0x3393
    cmp di, ax                       ; 0x3396
    jb short @..local.l88            ; 0x3398
    jmp near @..local.l108           ; 0x339a
@..local.l88:
    push cx                          ; 0x339d
    call math_loc_3340               ; 0x339e
    mov ax, data_2e2b                ; 0x33a1
    mov word [bp - 0x0034], ax       ; 0x33a4
    mov cx, word [bp - 0x0002]       ; 0x33a7
@..local.l89:
    push cx                          ; 0x33aa
    call math_loc_3360               ; 0x33ab
    mov bx, word [bp - 0x000c]       ; 0x33ae
    mov al, byte [bx]                ; 0x33b1
    and al, byte [bp - 0x000a]       ; 0x33b3
    jne short @..local.l90           ; 0x33b6
    jmp near @..local.l106           ; 0x33b8
@..local.l90:
    mov bx, word [bp - 0x0034]       ; 0x33bb
    mov al, byte [cs:bx]             ; 0x33be
    cmp al, 0xff                     ; 0x33c1
    jne short @..local.l91           ; 0x33c3
    add si, byte 0x40                ; 0x33c5
    jmp near @..local.l106           ; 0x33c8
@..local.l91:
    push di                          ; 0x33cb
    push si                          ; 0x33cc
    mov al, 0x80                     ; 0x33cd
    mov byte [bp - 0x0038], al       ; 0x33cf
    mov cx, 8                        ; 0x33d2
@..local.l92:
    cmp di, word [bp - 0x0022]       ; 0x33d5
    jb short @..local.l93            ; 0x33d8
    jmp near @..local.l105           ; 0x33da
@..local.l93:
    mov bx, word [bp - 0x0036]       ; 0x33dd
    mov al, byte [cs:bx]             ; 0x33e0
    and al, byte [bp - 0x0038]       ; 0x33e3
    je short @..local.l94            ; 0x33e6
    jmp near @..local.l104           ; 0x33e8
@..local.l94:
    push cx                          ; 0x33eb
    push di                          ; 0x33ec
    mov al, 0x80                     ; 0x33ed
    mov byte [bp - 0x0032], al       ; 0x33ef
    mov cx, 8                        ; 0x33f2
@..local.l95:
    mov bx, word [bp - 0x0034]       ; 0x33f5
    mov al, byte [cs:bx]             ; 0x33f8
    and al, byte [bp - 0x0032]       ; 0x33fb
    jne short @..local.l103          ; 0x33fe
    mov al, byte [si]                ; 0x3400
    cmp al, 0xff                     ; 0x3402
    je short @..local.l100           ; 0x3404
    cmp byte [bp + 0x1e], 2          ; 0x3406
    jne short @..local.l97           ; 0x340a
    mov al, byte [es:di]             ; 0x340c
    mov bx, data_381b                ; 0x340f
    add bx, ax                       ; 0x3412
    add al, byte [si]                ; 0x3414
    jb short @..local.l96            ; 0x3416
    cmp al, byte [cs:bx]             ; 0x3418
    jb short @..local.l99            ; 0x341b
@..local.l96:
    mov al, byte [cs:bx]             ; 0x341d
    jmp short @..local.l99           ; 0x3420
@..local.l97:
    cmp byte [bp - 0x0030], 0        ; 0x3422
    je short @..local.l99            ; 0x3426
    mov bx, data_381b                ; 0x3428
    add bx, ax                       ; 0x342b
    add al, byte [bp - 0x0030]       ; 0x342d
    jb short @..local.l98            ; 0x3430
    cmp al, byte [cs:bx]             ; 0x3432
    jb short @..local.l99            ; 0x3435
@..local.l98:
    mov al, byte [cs:bx]             ; 0x3437
@..local.l99:
    mov byte [es:di], al             ; 0x343a
@..local.l100:
    inc si                           ; 0x343d
    dec di                           ; 0x343e
    ror byte [bp - 0x0032], 1        ; 0x343f
    loop @..local.l95                ; 0x3442
@..local.l101:
    pop di                           ; 0x3444
    pop cx                           ; 0x3445
    add di, strict word 0x140        ; 0x3446
@..local.l102:
    ror byte [bp - 0x0038], 1        ; 0x344a
    loop @..local.l92                ; 0x344d
    jmp short @..local.l105          ; 0x344f
@..local.l103:
    inc si                           ; 0x3451
    ror byte [bp - 0x0032], 1        ; 0x3452
    loop @..local.l95                ; 0x3455
    jmp short @..local.l101          ; 0x3457
@..local.l104:
    add si, byte 8                   ; 0x3459
    jmp short @..local.l102          ; 0x345c
@..local.l105:
    pop si                           ; 0x345e
    add si, byte 0x40                ; 0x345f
    pop di                           ; 0x3462
@..local.l106:
    sub di, byte 8                   ; 0x3463
    add di, word [bp - 0x003c]       ; 0x3466
    rol byte [bp - 0x000a], 1        ; 0x3469
    cmp byte [bp - 0x000a], 1        ; 0x346c
    jne short @..local.l107          ; 0x3470
    inc word [bp - 0x000c]           ; 0x3472
@..local.l107:
    inc word [bp - 0x0034]           ; 0x3475
    pop cx                           ; 0x3478
    loop @..local.l109               ; 0x3479
    pop cx                           ; 0x347b
    add word [bp - 0x000e], strict word 0xa00 ; 0x347c
    mov ax, word [bp - 0x003e]       ; 0x3481
    sub word [bp - 0x000e], ax       ; 0x3484
    inc word [bp - 0x0036]           ; 0x3487
    mov byte [bp - 0x003a], 0x80     ; 0x348a
    loop @..local.l110               ; 0x348e
@..local.l108:
    pop es                           ; 0x3490
    ret                              ; 0x3491
@..local.l109:
    jmp near @..local.l89            ; 0x3492
@..local.l110:
    jmp near @..local.l87            ; 0x3495
@..local.l111:
    mov ax, word [bp - 0x0004]       ; 0x3498
    mov cx, 0xa00                    ; 0x349b
    mul cx                           ; 0x349e
    sub ax, 0x140                    ; 0x34a0
    add ax, word [bp - 0x0006]       ; 0x34a3
    mov word [bp - 0x000e], ax       ; 0x34a6
    mov si, word [bx]                ; 0x34a9
    add si, bx                       ; 0x34ab
    mov word [bp - 0x000a], 1        ; 0x34ad
    lea ax, word [bx + 0x4]          ; 0x34b2
    mov word [bp - 0x000c], ax       ; 0x34b5
    mov cx, word [bp - 0x0004]       ; 0x34b8
    mov byte [bp - 0x003a], 0x80     ; 0x34bb
    mov ax, word [bp - 0x0028]       ; 0x34bf
    add word [bp - 0x000e], ax       ; 0x34c2
    mov ax, word [bp - 0x002c]       ; 0x34c5
    mov bx, 0x140                    ; 0x34c8
    mul bx                           ; 0x34cb
    sub word [bp - 0x000e], ax       ; 0x34cd
@..local.l112:
    mov ax, word [bp - 0x002e]       ; 0x34d0
    mov di, word [bp - 0x000e]       ; 0x34d3
    cmp ax, di                       ; 0x34d6
    jbe short @..local.l113          ; 0x34d8
    jmp near @..local.l133           ; 0x34da
@..local.l113:
    push cx                          ; 0x34dd
    call math_loc_3340               ; 0x34de
    mov ax, data_2e2b                ; 0x34e1
    mov word [bp - 0x0034], ax       ; 0x34e4
    mov cx, word [bp - 0x0002]       ; 0x34e7
@..local.l114:
    push cx                          ; 0x34ea
    call math_loc_3360               ; 0x34eb
    mov bx, word [bp - 0x000c]       ; 0x34ee
    mov al, byte [bx]                ; 0x34f1
    and al, byte [bp - 0x000a]       ; 0x34f3
    jne short @..local.l115          ; 0x34f6
    jmp near @..local.l131           ; 0x34f8
@..local.l115:
    mov bx, word [bp - 0x0034]       ; 0x34fb
    mov al, byte [cs:bx]             ; 0x34fe
    cmp al, 0xff                     ; 0x3501
    jne short @..local.l116          ; 0x3503
    add si, byte 0x40                ; 0x3505
    jmp near @..local.l131           ; 0x3508
@..local.l116:
    push di                          ; 0x350b
    push si                          ; 0x350c
    mov al, 0x80                     ; 0x350d
    mov byte [bp - 0x0038], al       ; 0x350f
    mov cx, 8                        ; 0x3512
@..local.l117:
    cmp word [bp - 0x002e], di       ; 0x3515
    jbe short @..local.l118          ; 0x3518
    jmp near @..local.l130           ; 0x351a
@..local.l118:
    mov bx, word [bp - 0x0036]       ; 0x351d
    mov al, byte [cs:bx]             ; 0x3520
    and al, byte [bp - 0x0038]       ; 0x3523
    je short @..local.l119           ; 0x3526
    jmp near @..local.l129           ; 0x3528
@..local.l119:
    push cx                          ; 0x352b
    push di                          ; 0x352c
    mov al, 0x80                     ; 0x352d
    mov byte [bp - 0x0032], al       ; 0x352f
    mov cx, 8                        ; 0x3532
@..local.l120:
    mov bx, word [bp - 0x0034]       ; 0x3535
    mov al, byte [cs:bx]             ; 0x3538
    and al, byte [bp - 0x0032]       ; 0x353b
    jne short @..local.l128          ; 0x353e
    mov al, byte [si]                ; 0x3540
    cmp al, 0xff                     ; 0x3542
    je short @..local.l125           ; 0x3544
    cmp byte [bp + 0x1e], 2          ; 0x3546
    jne short @..local.l122          ; 0x354a
    mov al, byte [es:di]             ; 0x354c
    mov bx, data_381b                ; 0x354f
    add bx, ax                       ; 0x3552
    add al, byte [si]                ; 0x3554
    jb short @..local.l121           ; 0x3556
    cmp al, byte [cs:bx]             ; 0x3558
    jb short @..local.l124           ; 0x355b
@..local.l121:
    mov al, byte [cs:bx]             ; 0x355d
    jmp short @..local.l124          ; 0x3560
@..local.l122:
    cmp byte [bp - 0x0030], 0        ; 0x3562
    je short @..local.l124           ; 0x3566
    mov bx, data_381b                ; 0x3568
    add bx, ax                       ; 0x356b
    add al, byte [bp - 0x0030]       ; 0x356d
    jb short @..local.l123           ; 0x3570
    cmp al, byte [cs:bx]             ; 0x3572
    jb short @..local.l124           ; 0x3575
@..local.l123:
    mov al, byte [cs:bx]             ; 0x3577
@..local.l124:
    mov byte [es:di], al             ; 0x357a
@..local.l125:
    inc si                           ; 0x357d
    inc di                           ; 0x357e
    ror byte [bp - 0x0032], 1        ; 0x357f
    loop @..local.l120               ; 0x3582
@..local.l126:
    pop di                           ; 0x3584
    sub di, strict word 0x140        ; 0x3585
    pop cx                           ; 0x3589
@..local.l127:
    ror byte [bp - 0x0038], 1        ; 0x358a
    loop @..local.l117               ; 0x358d
    jmp short @..local.l130          ; 0x358f
@..local.l128:
    inc si                           ; 0x3591
    ror byte [bp - 0x0032], 1        ; 0x3592
    loop @..local.l120               ; 0x3595
    jmp short @..local.l126          ; 0x3597
@..local.l129:
    add si, byte 8                   ; 0x3599
    jmp short @..local.l127          ; 0x359c
@..local.l130:
    pop si                           ; 0x359e
    add si, byte 0x40                ; 0x359f
    pop di                           ; 0x35a2
@..local.l131:
    add di, byte 8                   ; 0x35a3
    sub di, word [bp - 0x003c]       ; 0x35a6
    rol byte [bp - 0x000a], 1        ; 0x35a9
    cmp byte [bp - 0x000a], 1        ; 0x35ac
    jne short @..local.l132          ; 0x35b0
    inc word [bp - 0x000c]           ; 0x35b2
@..local.l132:
    inc word [bp - 0x0034]           ; 0x35b5
    pop cx                           ; 0x35b8
    loop @..local.l134               ; 0x35b9
    pop cx                           ; 0x35bb
    sub word [bp - 0x000e], strict word 0xa00 ; 0x35bc
    mov ax, word [bp - 0x003e]       ; 0x35c1
    add word [bp - 0x000e], ax       ; 0x35c4
    inc word [bp - 0x0036]           ; 0x35c7
    mov byte [bp - 0x003a], 0x80     ; 0x35ca
    loop @..local.l135               ; 0x35ce
@..local.l133:
    pop es                           ; 0x35d0
    ret                              ; 0x35d1
@..local.l134:
    jmp near @..local.l114           ; 0x35d2
@..local.l135:
    jmp near @..local.l112           ; 0x35d5
@..local.l136:
    mov ax, word [bp - 0x0004]       ; 0x35d8
    mov cx, 0xa00                    ; 0x35db
    mul cx                           ; 0x35de
    sub ax, 0x140                    ; 0x35e0
    add ax, word [bp - 0x0006]       ; 0x35e3
    mov word [bp - 0x000e], ax       ; 0x35e6
    mov si, word [bx]                ; 0x35e9
    add si, bx                       ; 0x35eb
    mov word [bp - 0x000a], 1        ; 0x35ed
    lea ax, word [bx + 0x4]          ; 0x35f2
    mov word [bp - 0x000c], ax       ; 0x35f5
    mov cx, word [bp - 0x0004]       ; 0x35f8
    mov byte [bp - 0x003a], 0x80     ; 0x35fb
    mov ax, word [bp - 0x002a]       ; 0x35ff
    sub word [bp - 0x000e], ax       ; 0x3602
    mov ax, word [bp - 0x002c]       ; 0x3605
    mov bx, 0x140                    ; 0x3608
    mul bx                           ; 0x360b
    sub word [bp - 0x000e], ax       ; 0x360d
@..local.l137:
    mov ax, word [bp - 0x002e]       ; 0x3610
    mov di, word [bp - 0x000e]       ; 0x3613
    add di, word [bp - 0x001e]       ; 0x3616
    cmp ax, di                       ; 0x3619
    jb short @..local.l138           ; 0x361b
    jmp near @..local.l158           ; 0x361d
@..local.l138:
    push cx                          ; 0x3620
    call math_loc_3340               ; 0x3621
    mov ax, data_2e2b                ; 0x3624
    mov word [bp - 0x0034], ax       ; 0x3627
    mov cx, word [bp - 0x0002]       ; 0x362a
@..local.l139:
    push cx                          ; 0x362d
    call math_loc_3360               ; 0x362e
    mov bx, word [bp - 0x000c]       ; 0x3631
    mov al, byte [bx]                ; 0x3634
    and al, byte [bp - 0x000a]       ; 0x3636
    jne short @..local.l140          ; 0x3639
    jmp near @..local.l156           ; 0x363b
@..local.l140:
    mov bx, word [bp - 0x0034]       ; 0x363e
    mov al, byte [cs:bx]             ; 0x3641
    cmp al, 0xff                     ; 0x3644
    jne short @..local.l141          ; 0x3646
    add si, byte 0x40                ; 0x3648
    jmp near @..local.l156           ; 0x364b
@..local.l141:
    push di                          ; 0x364e
    push si                          ; 0x364f
    mov al, 0x80                     ; 0x3650
    mov byte [bp - 0x0038], al       ; 0x3652
    mov cx, 8                        ; 0x3655
@..local.l142:
    cmp word [bp - 0x002e], di       ; 0x3658
    jbe short @..local.l143          ; 0x365b
    jmp near @..local.l155           ; 0x365d
@..local.l143:
    mov bx, word [bp - 0x0036]       ; 0x3660
    mov al, byte [cs:bx]             ; 0x3663
    and al, byte [bp - 0x0038]       ; 0x3666
    je short @..local.l144           ; 0x3669
    jmp near @..local.l154           ; 0x366b
@..local.l144:
    push cx                          ; 0x366e
    push di                          ; 0x366f
    mov al, 0x80                     ; 0x3670
    mov byte [bp - 0x0032], al       ; 0x3672
    mov cx, 8                        ; 0x3675
@..local.l145:
    mov bx, word [bp - 0x0034]       ; 0x3678
    mov al, byte [cs:bx]             ; 0x367b
    and al, byte [bp - 0x0032]       ; 0x367e
    jne short @..local.l153          ; 0x3681
    mov al, byte [si]                ; 0x3683
    cmp al, 0xff                     ; 0x3685
    je short @..local.l150           ; 0x3687
    cmp byte [bp + 0x1e], 2          ; 0x3689
    jne short @..local.l147          ; 0x368d
    mov al, byte [es:di]             ; 0x368f
    mov bx, data_381b                ; 0x3692
    add bx, ax                       ; 0x3695
    add al, byte [si]                ; 0x3697
    jb short @..local.l146           ; 0x3699
    cmp al, byte [cs:bx]             ; 0x369b
    jb short @..local.l149           ; 0x369e
@..local.l146:
    mov al, byte [cs:bx]             ; 0x36a0
    jmp short @..local.l149          ; 0x36a3
@..local.l147:
    cmp byte [bp - 0x0030], 0        ; 0x36a5
    je short @..local.l149           ; 0x36a9
    mov bx, data_381b                ; 0x36ab
    add bx, ax                       ; 0x36ae
    add al, byte [bp - 0x0030]       ; 0x36b0
    jb short @..local.l148           ; 0x36b3
    cmp al, byte [cs:bx]             ; 0x36b5
    jb short @..local.l149           ; 0x36b8
@..local.l148:
    mov al, byte [cs:bx]             ; 0x36ba
@..local.l149:
    mov byte [es:di], al             ; 0x36bd
@..local.l150:
    inc si                           ; 0x36c0
    dec di                           ; 0x36c1
    ror byte [bp - 0x0032], 1        ; 0x36c2
    loop @..local.l145               ; 0x36c5
@..local.l151:
    pop di                           ; 0x36c7
    sub di, strict word 0x140        ; 0x36c8
    pop cx                           ; 0x36cc
@..local.l152:
    ror byte [bp - 0x0038], 1        ; 0x36cd
    loop @..local.l142               ; 0x36d0
    jmp short @..local.l155          ; 0x36d2
@..local.l153:
    inc si                           ; 0x36d4
    ror byte [bp - 0x0032], 1        ; 0x36d5
    loop @..local.l145               ; 0x36d8
    jmp short @..local.l151          ; 0x36da
@..local.l154:
    add si, byte 8                   ; 0x36dc
    jmp short @..local.l152          ; 0x36df
@..local.l155:
    pop si                           ; 0x36e1
    add si, byte 0x40                ; 0x36e2
    pop di                           ; 0x36e5
@..local.l156:
    sub di, byte 8                   ; 0x36e6
    add di, word [bp - 0x003c]       ; 0x36e9
    rol byte [bp - 0x000a], 1        ; 0x36ec
    cmp byte [bp - 0x000a], 1        ; 0x36ef
    jne short @..local.l157          ; 0x36f3
    inc word [bp - 0x000c]           ; 0x36f5
@..local.l157:
    inc word [bp - 0x0034]           ; 0x36f8
    pop cx                           ; 0x36fb
    loop @..local.l159               ; 0x36fc
    pop cx                           ; 0x36fe
    sub word [bp - 0x000e], strict word 0xa00 ; 0x36ff
    mov ax, word [bp - 0x003e]       ; 0x3704
    add word [bp - 0x000e], ax       ; 0x3707
    inc word [bp - 0x0036]           ; 0x370a
    mov byte [bp - 0x003a], 0x80     ; 0x370d
    loop @..local.l160               ; 0x3711
@..local.l158:
    pop es                           ; 0x3713
    ret                              ; 0x3714
@..local.l159:
    jmp near @..local.l139           ; 0x3715
@..local.l160:
    jmp near @..local.l137           ; 0x3718

    db 0x00, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f
    db 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f, 0x1f
    db '####++++++++////:::::::::::?????JJJJJJJJJJJOOOOO]]]]]]]]]]]]]]__oooooooooooooooowwwwwwww'
    db 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x7f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f
    db 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x8f, 0x93, 0x93, 0x93, 0x93, 0x96, 0x96, 0x96, 0x9f
    db 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0x9f, 0xa3, 0xa3, 0xa3, 0xa3, 0xa6, 0xa6, 0xa6, 0xaf
    db 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xaf, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7, 0xb7
    db 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xbf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf
    db 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xcf, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xd6, 0xdf
    db 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xdf, 0xe2, 0xe2, 0xe2, 0xe6, 0xe6, 0xe6, 0xe6, 0xef
    db 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xef, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xf5, 0xfe, 0xfe
    db 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xfe, 0xff

@..local.l161:
    mov ax, cs                       ; 0x381b
    mov ds, ax                       ; 0x381d
    mov dx, 0x392b                   ; 0x381f
dos_con_loc_3822:
    mov ah, 9                        ; 0x3822
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3826
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk in CACHEAREA().', 0
    db 0x0a, 0x24

dos_write_file_2:
    push bp                          ; 0x385f
    mov bp, sp                       ; 0x3860
    sub sp, byte 0x0e                ; 0x3862
    push es                          ; 0x3865
    push ds                          ; 0x3866
    push di                          ; 0x3867
    push si                          ; 0x3868
    mov ax, ds                       ; 0x3869
    mov es, ax                       ; 0x386b
    cmp word [bp + 0x14], byte 3     ; 0x386d
    jne short @..dos_con_loc_3822.l5 ; 0x3871
    mov ax, word [bp + 0x10]         ; 0x3873
    sub ax, word [bp + 0xc]          ; 0x3876
    inc ax                           ; 0x3879
    mov word [bp - 0x0006], ax       ; 0x387a
    mov bx, word [bp + 0x12]         ; 0x387d
    sub bx, word [bp + 0xe]          ; 0x3880
    inc bx                           ; 0x3883
    mov word [bp - 0x0004], bx       ; 0x3884
    mul bx                           ; 0x3887
    mov word [bp - 0x0008], ax       ; 0x3889
    mov word [bp - 0x000a], dx       ; 0x388c
    mov ax, word [bp + 0xe]          ; 0x388f
    mov bx, 0x140                    ; 0x3892
    mul bx                           ; 0x3895
    add ax, word [bp + 0xc]          ; 0x3897
    mov word [bp - 0x0002], ax       ; 0x389a
    lea bx, word [bp - 0x000a]       ; 0x389d
    mov dx, bx                       ; 0x38a0
    mov ax, ss                       ; 0x38a2
    mov ds, ax                       ; 0x38a4
    mov cx, 0xa                      ; 0x38a6
    mov bx, word [bp + 0x16]         ; 0x38a9
    mov ah, 0x40                     ; 0x38ac
    int 0x21 ; DOS write file (handle)
    jae short @..dos_con_loc_3822.l1 ; 0x38b0
    jmp near @..local.l161           ; 0x38b2
@..dos_con_loc_3822.l1:
    mov ax, word [cs:data_01e5]      ; 0x38b5
    mov ds, ax                       ; 0x38b9
    mov cx, word [bp - 0x0004]       ; 0x38bb
@..dos_con_loc_3822.l2:
    push cx                          ; 0x38be
    mov dx, word [bp - 0x0002]       ; 0x38bf
    add word [bp - 0x0002], strict word 0x140 ; 0x38c2
    mov cx, word [bp - 0x0006]       ; 0x38c7
    mov bx, word [bp + 0x16]         ; 0x38ca
    mov ah, 0x40                     ; 0x38cd
    int 0x21 ; DOS write file (handle)
    jae short @..dos_con_loc_3822.l3 ; 0x38d1
    jmp near @..local.l161           ; 0x38d3
@..dos_con_loc_3822.l3:
    cmp ax, word [bp - 0x0006]       ; 0x38d6
    je short @..dos_con_loc_3822.l4  ; 0x38d9
    jmp near @..local.l161           ; 0x38db
@..dos_con_loc_3822.l4:
    pop cx                           ; 0x38de
    loop @..dos_con_loc_3822.l2      ; 0x38df
    xor ax, ax                       ; 0x38e1
    mov dx, word [bp + 0x14]         ; 0x38e3
    jmp near @..dos_con_loc_3ab7.l1  ; 0x38e6
@..dos_con_loc_3822.l5:
    cmp word [bp + 0x14], byte 2     ; 0x38e9
    je short @..dos_con_loc_3822.l6  ; 0x38ed
    jmp near @..dos_con_loc_3822.l11 ; 0x38ef
@..dos_con_loc_3822.l6:
    mov ax, word [bp + 0x10]         ; 0x38f2
    sub ax, word [bp + 0xc]          ; 0x38f5
    inc ax                           ; 0x38f8
    mov word [bp - 0x0006], ax       ; 0x38f9
    mov bx, word [bp + 0x12]         ; 0x38fc
    sub bx, word [bp + 0xe]          ; 0x38ff
    inc bx                           ; 0x3902
    mov word [bp - 0x0004], bx       ; 0x3903
    mul bx                           ; 0x3906
    mov word [bp - 0x0008], ax       ; 0x3908
    mov word [bp - 0x000a], dx       ; 0x390b
    add ax, strict word 0xc          ; 0x390e
    add ax, strict word 0xf          ; 0x3911
    mov cl, 4                        ; 0x3914
    shr ax, cl                       ; 0x3916
    mov word [bp - 0x0002], ax       ; 0x3918
    add ax, word [cs:data_0cac]      ; 0x391b
    cmp ax, 0x4180                   ; 0x3920
    jbe short @..dos_con_loc_3822.l7 ; 0x3923
    jmp near dos_con_loc_3b1f        ; 0x3925
@..dos_con_loc_3822.l7:
    mov bx, word [cs:data_0cac]      ; 0x3928
    mov word [bp - 0x000e], bx       ; 0x392d
    mov word [cs:data_0cac], ax      ; 0x3930
    mov bx, data_025b                ; 0x3934
    mov cx, 0x10                     ; 0x3937
    xor dx, dx                       ; 0x393a
@..dos_con_loc_3822.l8:
    mov ax, word [cs:bx]             ; 0x393c
    or ax, ax                        ; 0x393f
    je short @..dos_con_loc_3822.l9  ; 0x3941
    inc dx                           ; 0x3943
    add bx, byte 2                   ; 0x3944
    loop @..dos_con_loc_3822.l8      ; 0x3947
    jmp near dos_con_loc_3b5c        ; 0x3949
@..dos_con_loc_3822.l9:
    mov word [bp - 0x000c], dx       ; 0x394c
    mov ax, word [cs:data_0caa]      ; 0x394f
    inc ax                           ; 0x3953
    mov word [cs:data_0caa], ax      ; 0x3954
    mov word [cs:bx], ax             ; 0x3958
    dec ax                           ; 0x395b
    mov cl, 2                        ; 0x395c
    shl ax, cl                       ; 0x395e
    mov bx, data_0bda                ; 0x3960
    add bx, ax                       ; 0x3963
    mov ax, word [bp - 0x000e]       ; 0x3965
    mov word [cs:bx], ax             ; 0x3968
    add ax, word [cs:data_01e1]      ; 0x396b
    mov es, ax                       ; 0x3970
    mov ax, word [bp - 0x0002]       ; 0x3972
    mov word [cs:bx + 0x2], ax       ; 0x3975
    mov ax, word [cs:data_01e5]      ; 0x3979
    mov ds, ax                       ; 0x397d
    mov ax, word [bp + 0xe]          ; 0x397f
    mov bx, 0x140                    ; 0x3982
    mul bx                           ; 0x3985
    add ax, word [bp + 0xc]          ; 0x3987
    mov word [bp - 0x0002], ax       ; 0x398a
    xor di, di                       ; 0x398d
    stosw                            ; 0x398f
    xor ax, ax                       ; 0x3990
    stosw                            ; 0x3992
    mov ax, word [bp - 0x0004]       ; 0x3993
    stosw                            ; 0x3996
    mov ax, word [bp - 0x0006]       ; 0x3997
    stosw                            ; 0x399a
    mov ax, word [bp - 0x0008]       ; 0x399b
    stosw                            ; 0x399e
    mov ax, word [bp - 0x000a]       ; 0x399f
    stosw                            ; 0x39a2
@..dos_con_loc_3822.l10:
    mov si, word [bp - 0x0002]       ; 0x39a3
    add word [bp - 0x0002], strict word 0x140 ; 0x39a6
    mov cx, word [bp - 0x0006]       ; 0x39ab
    rep movsb                        ; 0x39ae
    dec word [bp - 0x0004]           ; 0x39b0
    jne short @..dos_con_loc_3822.l10 ; 0x39b3
    mov ax, word [bp - 0x000c]       ; 0x39b5
    mov dx, word [bp + 0x14]         ; 0x39b8
    jmp near @..dos_con_loc_3ab7.l1  ; 0x39bb
@..dos_con_loc_3822.l11:
    mov ax, word [bp + 0x10]         ; 0x39be
    sub ax, word [bp + 0xc]          ; 0x39c1
    inc ax                           ; 0x39c4
    mov word [bp - 0x0006], ax       ; 0x39c5
    mov bx, word [bp + 0x12]         ; 0x39c8
    sub bx, word [bp + 0xe]          ; 0x39cb
    inc bx                           ; 0x39ce
    mov word [bp - 0x0004], bx       ; 0x39cf
    mul bx                           ; 0x39d2
    mov word [bp - 0x0008], ax       ; 0x39d4
    mov word [bp - 0x000a], dx       ; 0x39d7
    add ax, strict word 0xc          ; 0x39da
    add ax, strict word 0xf          ; 0x39dd
    mov cl, 4                        ; 0x39e0
    shr ax, cl                       ; 0x39e2
    mov word [bp - 0x0002], ax       ; 0x39e4
    add ax, word [cs:data_0391]      ; 0x39e7
    cmp ax, word [cs:data_01ff]      ; 0x39ec
    jbe short @..dos_con_loc_3822.l12 ; 0x39f1
    jmp near dos_con_loc_3ab7        ; 0x39f3
@..dos_con_loc_3822.l12:
    mov bx, word [cs:data_0391]      ; 0x39f6
    mov word [bp - 0x000e], bx       ; 0x39fb
    mov word [cs:data_0391], ax      ; 0x39fe
    mov bx, data_029b                ; 0x3a02
    mov cx, 0x14                     ; 0x3a05
    xor dx, dx                       ; 0x3a08
@..dos_con_loc_3822.l13:
    mov ax, word [cs:bx]             ; 0x3a0a
    or ax, ax                        ; 0x3a0d
    je short @..dos_con_loc_3822.l14 ; 0x3a0f
    inc dx                           ; 0x3a11
    add bx, byte 2                   ; 0x3a12
    loop @..dos_con_loc_3822.l13     ; 0x3a15
    jmp near dos_con_loc_3aee        ; 0x3a17
@..dos_con_loc_3822.l14:
    mov word [bp - 0x000c], dx       ; 0x3a1a
    mov ax, word [cs:data_038f]      ; 0x3a1d
    inc ax                           ; 0x3a21
    mov word [cs:data_038f], ax      ; 0x3a22
    mov word [cs:bx], ax             ; 0x3a26
    dec ax                           ; 0x3a29
    mov cl, 2                        ; 0x3a2a
    shl ax, cl                       ; 0x3a2c
    mov bx, 0x2eb                    ; 0x3a2e
    add bx, ax                       ; 0x3a31
    mov ax, word [bp - 0x000e]       ; 0x3a33
    mov word [cs:bx], ax             ; 0x3a36
    mov ax, word [bp - 0x0002]       ; 0x3a39
    mov word [cs:bx + 0x2], ax       ; 0x3a3c
    mov ax, word [cs:data_0203]      ; 0x3a40
    mov es, ax                       ; 0x3a44
    mov ax, word [bp - 0x000e]       ; 0x3a46
    mov di, ax                       ; 0x3a49
    and di, strict word 0x3ff        ; 0x3a4b
    mov cl, 4                        ; 0x3a4f
    shl di, cl                       ; 0x3a51
    mov cl, 0xa                      ; 0x3a53
    shr ax, cl                       ; 0x3a55
    mov word [cs:data_3c8e], ax      ; 0x3a57
    call dos_file_loc_3b90           ; 0x3a5b
    mov ax, word [cs:data_01e5]      ; 0x3a5e
    mov ds, ax                       ; 0x3a62
    mov ax, word [bp + 0xe]          ; 0x3a64
    mov bx, 0x140                    ; 0x3a67
    mul bx                           ; 0x3a6a
    add ax, word [bp + 0xc]          ; 0x3a6c
    mov word [bp - 0x0002], ax       ; 0x3a6f
    stosw                            ; 0x3a72
    xor ax, ax                       ; 0x3a73
    stosw                            ; 0x3a75
    mov ax, word [bp - 0x0004]       ; 0x3a76
    stosw                            ; 0x3a79
    mov ax, word [bp - 0x0006]       ; 0x3a7a
    stosw                            ; 0x3a7d
    mov ax, word [bp - 0x0008]       ; 0x3a7e
    stosw                            ; 0x3a81
    mov ax, word [bp - 0x000a]       ; 0x3a82
    stosw                            ; 0x3a85
@..local.l162:
    mov si, word [bp - 0x0002]       ; 0x3a86
    add word [bp - 0x0002], strict word 0x140 ; 0x3a89
    mov cx, word [bp - 0x0006]       ; 0x3a8e
    rep movsb                        ; 0x3a91
    test di, 0xc000                  ; 0x3a93
    je short @..local.l163           ; 0x3a97
    inc word [cs:data_3c8e]          ; 0x3a99
    mov ax, word [cs:data_3c8e]      ; 0x3a9e
    call dos_file_loc_3b90           ; 0x3aa2
    and di, strict word 0x3fff       ; 0x3aa5
@..local.l163:
    dec word [bp - 0x0004]           ; 0x3aa9
    jne short @..local.l162          ; 0x3aac
    mov ax, word [bp - 0x000c]       ; 0x3aae
    mov dx, word [bp + 0x14]         ; 0x3ab1
    jmp near @..dos_con_loc_3ab7.l1  ; 0x3ab4
    mov ax, cs                       ; 0x3ab7
    mov ds, ax                       ; 0x3ab9
    mov dx, 0x3bc7                   ; 0x3abb
    mov ah, 9                        ; 0x3abe
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3ac2
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

@..dos_con_loc_3ab7.l1:
    pop si                           ; 0x3ae6
    pop di                           ; 0x3ae7
    pop ds                           ; 0x3ae8
    pop es                           ; 0x3ae9
    mov sp, bp                       ; 0x3aea
    pop bp                           ; 0x3aec
    ret                              ; 0x3aed
    mov ax, cs                       ; 0x3aee
    mov ds, ax                       ; 0x3af0
    mov dx, 0x3bfe                   ; 0x3af2
    mov ah, 9                        ; 0x3af5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3af9
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS slots.', 0
    db 0x0a, 0x24

dos_con_loc_3b1f:
    mov ax, cs                       ; 0x3b1f
    mov ds, ax                       ; 0x3b21
    mov dx, 0x3c2f                   ; 0x3b23
    mov ah, 9                        ; 0x3b26
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3b2a
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE/PIC memory.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0x8a, 0x8c, 0xc8, 0x8e, 0xd8, 0xba, 0x6c, 0x3c, 0xb4
    db 0x09, 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE slots.', 0
    db 0x0a, 0x24, 0x00, 0x00

dos_file_loc_3b90:
    push ax                          ; 0x3b90
    mov ah, 0x44                     ; 0x3b91
    mov al, 0                        ; 0x3b93
    pop bx                           ; 0x3b95
    mov dx, word [cs:data_0201]      ; 0x3b96
    int 0x67 ; EMS (Expanded Memory)
    inc bx                           ; 0x3b9d
    mov ah, 0x44                     ; 0x3b9e
    mov al, 1                        ; 0x3ba0
    int 0x67 ; EMS (Expanded Memory)
    ret                              ; 0x3ba4
dos_read_file_4:
    push bp                          ; 0x3ba5
    mov bp, sp                       ; 0x3ba6
    sub sp, byte 0x0e                ; 0x3ba8
    push es                          ; 0x3bab
    push ds                          ; 0x3bac
    push di                          ; 0x3bad
    push si                          ; 0x3bae
    mov ax, ds                       ; 0x3baf
    mov es, ax                       ; 0x3bb1
    cmp word [bp + 0xe], byte 3      ; 0x3bb3
    jne short @..dos_read_file_4.l2  ; 0x3bb7
    lea bx, word [bp - 0x000a]       ; 0x3bb9
    mov dx, bx                       ; 0x3bbc
    mov ax, ss                       ; 0x3bbe
    mov ds, ax                       ; 0x3bc0
    mov cx, 0xa                      ; 0x3bc2
    mov bx, word [bp + 0x12]         ; 0x3bc5
    mov ah, 0x3f                     ; 0x3bc8
    int 0x21 ; DOS read file (handle)
    mov ax, word [cs:data_01e5]      ; 0x3bcc
    mov ds, ax                       ; 0x3bd0
    mov cx, word [bp - 0x0004]       ; 0x3bd2
@..dos_read_file_4.l1:
    push cx                          ; 0x3bd5
    mov dx, word [bp - 0x0002]       ; 0x3bd6
    add word [bp - 0x0002], strict word 0x140 ; 0x3bd9
    mov cx, word [bp - 0x0006]       ; 0x3bde
    mov bx, word [bp + 0x12]         ; 0x3be1
    mov ah, 0x3f                     ; 0x3be4
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x3be8
    loop @..dos_read_file_4.l1       ; 0x3be9
    jmp near @..dos_read_file_4.l9   ; 0x3beb
@..dos_read_file_4.l2:
    cmp word [bp + 0xe], byte 2      ; 0x3bee
    je short @..dos_read_file_4.l3   ; 0x3bf2
    jmp near @..dos_read_file_4.l6   ; 0x3bf4
@..dos_read_file_4.l3:
    mov ax, word [bp + 0xc]          ; 0x3bf7
    shl ax, 1                        ; 0x3bfa
    mov bx, data_025b                ; 0x3bfc
    add bx, ax                       ; 0x3bff
    mov ax, word [cs:bx]             ; 0x3c01
    dec ax                           ; 0x3c04
    mov cl, 2                        ; 0x3c05
    shl ax, cl                       ; 0x3c07
    mov bx, data_0bda                ; 0x3c09
    add bx, ax                       ; 0x3c0c
    mov ax, word [cs:bx]             ; 0x3c0e
    add ax, word [cs:data_01e1]      ; 0x3c11
    mov ds, ax                       ; 0x3c16
    mov ax, word [cs:data_01e5]      ; 0x3c18
    mov es, ax                       ; 0x3c1c
    xor si, si                       ; 0x3c1e
    lodsw                            ; 0x3c20
    mov word [bp - 0x0002], ax       ; 0x3c21
    lodsw                            ; 0x3c24
    lodsw                            ; 0x3c25
    mov word [bp - 0x0004], ax       ; 0x3c26
    lodsw                            ; 0x3c29
    mov word [bp - 0x0006], ax       ; 0x3c2a
    lodsw                            ; 0x3c2d
    lodsw                            ; 0x3c2e
@..dos_read_file_4.l4:
    mov di, word [bp - 0x0002]       ; 0x3c2f
    add word [bp - 0x0002], strict word 0x140 ; 0x3c32
    mov cx, word [bp - 0x0006]       ; 0x3c37
    rep movsb                        ; 0x3c3a
    dec word [bp - 0x0004]           ; 0x3c3c
    jne short @..dos_read_file_4.l4  ; 0x3c3f
    cmp word [bp + 0x10], byte 0     ; 0x3c41
    je short @..dos_read_file_4.l5   ; 0x3c45
    mov ax, word [bp + 0xc]          ; 0x3c47
    shl ax, 1                        ; 0x3c4a
    mov bx, data_025b                ; 0x3c4c
    add bx, ax                       ; 0x3c4f
    mov ax, word [cs:bx]             ; 0x3c51
    mov word [cs:bx], 0              ; 0x3c54
    dec word [cs:data_0caa]          ; 0x3c59
    call loc_43e1                    ; 0x3c5e
@..dos_read_file_4.l5:
    jmp near @..dos_read_file_4.l9   ; 0x3c61
@..dos_read_file_4.l6:
    mov ax, word [bp + 0xc]          ; 0x3c64
    shl ax, 1                        ; 0x3c67
    mov bx, data_029b                ; 0x3c69
    add bx, ax                       ; 0x3c6c
    mov ax, word [cs:bx]             ; 0x3c6e
    dec ax                           ; 0x3c71
    mov cl, 2                        ; 0x3c72
    shl ax, cl                       ; 0x3c74
    mov bx, 0x2eb                    ; 0x3c76
    add bx, ax                       ; 0x3c79
    mov ax, word [cs:bx]             ; 0x3c7b
    mov word [bp - 0x0002], ax       ; 0x3c7e
    mov cl, 0xa                      ; 0x3c81
    shr ax, cl                       ; 0x3c83
    mov word [cs:data_3c8e], ax      ; 0x3c85
    call dos_file_loc_3b90           ; 0x3c89
    mov si, word [bp - 0x0002]       ; 0x3c8c
    and si, strict word 0x3ff        ; 0x3c8f
    mov cl, 4                        ; 0x3c93
    shl si, cl                       ; 0x3c95
    mov ax, word [cs:data_01e5]      ; 0x3c97
    mov es, ax                       ; 0x3c9b
    mov ax, word [cs:data_0203]      ; 0x3c9d
    mov ds, ax                       ; 0x3ca1
    lodsw                            ; 0x3ca3
    mov word [bp - 0x0002], ax       ; 0x3ca4
    lodsw                            ; 0x3ca7
    lodsw                            ; 0x3ca8
    mov word [bp - 0x0004], ax       ; 0x3ca9
    lodsw                            ; 0x3cac
    mov word [bp - 0x0006], ax       ; 0x3cad
    lodsw                            ; 0x3cb0
    lodsw                            ; 0x3cb1
@..dos_read_file_4.l7:
    mov di, word [bp - 0x0002]       ; 0x3cb2
    add word [bp - 0x0002], strict word 0x140 ; 0x3cb5
    mov cx, word [bp - 0x0006]       ; 0x3cba
    rep movsb                        ; 0x3cbd
    test si, 0xc000                  ; 0x3cbf
    je short @..dos_read_file_4.l8   ; 0x3cc3
    inc word [cs:data_3c8e]          ; 0x3cc5
    mov ax, word [cs:data_3c8e]      ; 0x3cca
    call dos_file_loc_3b90           ; 0x3cce
    and si, strict word 0x3fff       ; 0x3cd1
@..dos_read_file_4.l8:
    dec word [bp - 0x0004]           ; 0x3cd5
    jne short @..dos_read_file_4.l7  ; 0x3cd8
    cmp word [bp + 0x10], byte 0     ; 0x3cda
    je short @..dos_read_file_4.l9   ; 0x3cde
    mov cx, word [cs:data_038f]      ; 0x3ce0
    dec cx                           ; 0x3ce5
    mov word [cs:data_038f], cx      ; 0x3ce6
    mov ax, word [bp + 0xc]          ; 0x3ceb
    shl ax, 1                        ; 0x3cee
    mov bx, data_029b                ; 0x3cf0
    add bx, ax                       ; 0x3cf3
    mov ax, word [cs:bx]             ; 0x3cf5
    mov word [cs:bx], 0              ; 0x3cf8
    call leaf_loc_0e34               ; 0x3cfd
    call loc_0e71                    ; 0x3d00
@..dos_read_file_4.l9:
    pop si                           ; 0x3d03
    pop di                           ; 0x3d04
    pop ds                           ; 0x3d05
    pop es                           ; 0x3d06
    mov sp, bp                       ; 0x3d07
    pop bp                           ; 0x3d09
    ret                              ; 0x3d0a
dos_file_loc_3d0b:
    push ds                          ; 0x3d0b
    push es                          ; 0x3d0c
    push si                          ; 0x3d0d
    push di                          ; 0x3d0e
    mov dx, word [cs:data_01e9]      ; 0x3d0f
    mov ds, dx                       ; 0x3d14
@..dos_file_loc_3d0b.l1:
    xor dx, dx                       ; 0x3d16
    mov cx, 0x1000                   ; 0x3d18
    mov bx, word [bp - 0x0002]       ; 0x3d1b
    mov ah, 0x3f                     ; 0x3d1e
    int 0x21 ; DOS read file (handle)
    or ax, ax                        ; 0x3d22
    je short @..dos_file_loc_3d0b.l2 ; 0x3d24
    mov cx, ax                       ; 0x3d26
    push ax                          ; 0x3d28
    mov bx, word [bp - 0x0004]       ; 0x3d29
    xor dx, dx                       ; 0x3d2c
    mov ah, 0x40                     ; 0x3d2e
    int 0x21 ; DOS write file (handle)
    jb short dos_con_loc_3d39        ; 0x3d32
    pop cx                           ; 0x3d34
    cmp cx, ax                       ; 0x3d35
    je short @..dos_file_loc_3d0b.l1 ; 0x3d37
    mov ax, cs                       ; 0x3d39
    mov ds, ax                       ; 0x3d3b
    mov dx, 0x3e49                   ; 0x3d3d
    mov ah, 9                        ; 0x3d40
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3d44
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk', 0
    db 0x0a, 0x24

@..dos_file_loc_3d0b.l2:
    pop di                           ; 0x3d6d
    pop si                           ; 0x3d6e
    pop es                           ; 0x3d6f
    pop ds                           ; 0x3d70
    ret                              ; 0x3d71
dos_read_file_5:
    push bp                          ; 0x3d72
    mov bp, sp                       ; 0x3d73
    sub sp, byte 0x14                ; 0x3d75
    push es                          ; 0x3d78
    push ds                          ; 0x3d79
    push di                          ; 0x3d7a
    push si                          ; 0x3d7b
    mov ax, ds                       ; 0x3d7c
    mov es, ax                       ; 0x3d7e
    mov ax, word [bp + 0xc]          ; 0x3d80
    test ah, 0x80                    ; 0x3d83
    je short @..dos_read_file_5.l1   ; 0x3d86
    dec word [cs:data_038f]          ; 0x3d88
    mov ax, word [bp + 0xe]          ; 0x3d8d
    shl ax, 1                        ; 0x3d90
    mov bx, 0x2c3                    ; 0x3d92
    add bx, ax                       ; 0x3d95
    mov ax, word [cs:bx]             ; 0x3d97
    mov word [cs:bx], 0              ; 0x3d9a
    call leaf_loc_0e34               ; 0x3d9f
    call loc_0e71                    ; 0x3da2
    jmp near @..dos_read_file_5.l8   ; 0x3da5
@..dos_read_file_5.l1:
    mov word [bp - 0x0002], ax       ; 0x3da8
    mov ax, word [bp + 0x10]         ; 0x3dab
    or ax, ax                        ; 0x3dae
    je short @..dos_read_file_5.l2   ; 0x3db0
    mov ax, word [bp + 0xe]          ; 0x3db2
    mov word [bp - 0x0004], ax       ; 0x3db5
    call dos_file_loc_3d0b           ; 0x3db8
    jmp near @..dos_read_file_5.l8   ; 0x3dbb
@..dos_read_file_5.l2:
    mov ax, word [bp + 0xe]          ; 0x3dbe
    shl ax, 1                        ; 0x3dc1
    mov bx, 0x2c3                    ; 0x3dc3
    add bx, ax                       ; 0x3dc6
    mov ax, word [cs:bx]             ; 0x3dc8
    or ax, ax                        ; 0x3dcb
    je short @..dos_read_file_5.l3   ; 0x3dcd
    jmp near @..local.l164           ; 0x3dcf
@..dos_read_file_5.l3:
    inc word [cs:data_038f]          ; 0x3dd2
    mov ax, word [cs:data_038f]      ; 0x3dd7
    mov word [cs:bx], ax             ; 0x3ddb
    dec ax                           ; 0x3dde
    mov cl, 2                        ; 0x3ddf
    shl ax, cl                       ; 0x3de1
    mov bx, 0x2eb                    ; 0x3de3
    add bx, ax                       ; 0x3de6
    mov word [bp - 0x0002], bx       ; 0x3de8
    mov ax, word [cs:data_0391]      ; 0x3deb
    mov word [cs:bx], ax             ; 0x3def
    mov ax, word [cs:data_01e9]      ; 0x3df2
    mov ds, ax                       ; 0x3df6
    xor dx, dx                       ; 0x3df8
    mov cx, 0x1000                   ; 0x3dfa
    mov bx, word [bp + 0xc]          ; 0x3dfd
    mov ah, 0x3f                     ; 0x3e00
    int 0x21 ; DOS read file (handle)
    mov bx, 0                        ; 0x3e04
    mov ax, word [bx]                ; 0x3e07
    mov cx, 6                        ; 0x3e09
    mul cx                           ; 0x3e0c
    add ax, strict word 4            ; 0x3e0e
    mov bx, ax                       ; 0x3e11
    sub bx, byte 6                   ; 0x3e13
    mov cl, byte [bx + 0x5]          ; 0x3e16
    mov al, byte [bx + 0x4]          ; 0x3e19
    mul cl                           ; 0x3e1c
    mov cl, 3                        ; 0x3e1e
    shl ax, cl                       ; 0x3e20
    mov cx, word [bx + 0x2]          ; 0x3e22
    add ax, cx                       ; 0x3e25
    push ax                          ; 0x3e27
    xor dx, dx                       ; 0x3e28
    mov ax, word [bx]                ; 0x3e2a
    mov cx, 0x10                     ; 0x3e2c
    mul cx                           ; 0x3e2f
    pop cx                           ; 0x3e31
    add cx, byte 0x0f                ; 0x3e32
    add ax, cx                       ; 0x3e35
    adc dx, byte 0                   ; 0x3e37
    mov word [bp - 0x0006], ax       ; 0x3e3a
    mov word [bp - 0x0008], dx       ; 0x3e3d
    mov cx, 0x10                     ; 0x3e40
    div cx                           ; 0x3e43
    mov di, word [cs:data_0391]      ; 0x3e45
    mov bx, word [bp - 0x0002]       ; 0x3e4a
    mov word [cs:bx + 0x2], ax       ; 0x3e4d
    add word [cs:data_0391], ax      ; 0x3e51
    mov ax, word [cs:data_0391]      ; 0x3e56
    cmp ax, word [cs:data_01ff]      ; 0x3e5a
    jbe short @..dos_read_file_5.l4  ; 0x3e5f
    jmp near @..dos_con_loc_3efb.l1  ; 0x3e61
@..dos_read_file_5.l4:
    mov ax, di                       ; 0x3e64
    mov cl, 0xa                      ; 0x3e66
    shr ax, cl                       ; 0x3e68
    mov word [cs:data_3c8e], ax      ; 0x3e6a
    call dos_file_loc_3b90           ; 0x3e6e
    and di, strict word 0x3ff        ; 0x3e71
    mov cl, 4                        ; 0x3e75
    shl di, cl                       ; 0x3e77
    xor si, si                       ; 0x3e79
    mov ax, word [cs:data_01e9]      ; 0x3e7b
    mov ds, ax                       ; 0x3e7f
    mov ax, word [cs:data_0203]      ; 0x3e81
    mov es, ax                       ; 0x3e85
    mov cx, 0x1000                   ; 0x3e87
    rep movsb                        ; 0x3e8a
    mov ax, word [bp - 0x0006]       ; 0x3e8c
    mov dx, word [bp - 0x0008]       ; 0x3e8f
    sub ax, 0x1000                   ; 0x3e92
    sbb dx, byte 0                   ; 0x3e95
    mov word [bp - 0x0006], ax       ; 0x3e98
    mov word [bp - 0x0008], dx       ; 0x3e9b
@..dos_read_file_5.l5:
    mov dx, di                       ; 0x3e9e
    test dx, 0xc000                  ; 0x3ea0
    je short @..dos_read_file_5.l6   ; 0x3ea4
    sub di, strict word 0x4000       ; 0x3ea6
    inc word [cs:data_3c8e]          ; 0x3eaa
    mov ax, word [cs:data_3c8e]      ; 0x3eaf
    call dos_file_loc_3b90           ; 0x3eb3
@..dos_read_file_5.l6:
    mov ax, word [bp - 0x0006]       ; 0x3eb6
    mov dx, word [bp - 0x0008]       ; 0x3eb9
    or ax, dx                        ; 0x3ebc
    je short @..dos_read_file_5.l8   ; 0x3ebe
    mov cx, 0x1000                   ; 0x3ec0
    mov ax, word [bp - 0x0006]       ; 0x3ec3
    or dx, dx                        ; 0x3ec6
    jne short @..dos_read_file_5.l7  ; 0x3ec8
    cmp ax, cx                       ; 0x3eca
    jae short @..dos_read_file_5.l7  ; 0x3ecc
    mov cx, ax                       ; 0x3ece
@..dos_read_file_5.l7:
    sub ax, cx                       ; 0x3ed0
    sbb dx, byte 0                   ; 0x3ed2
    mov word [bp - 0x0006], ax       ; 0x3ed5
    mov word [bp - 0x0008], dx       ; 0x3ed8
    mov dx, 0                        ; 0x3edb
    mov bx, word [bp + 0xc]          ; 0x3ede
    mov ah, 0x3f                     ; 0x3ee1
    push cx                          ; 0x3ee3
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x3ee6
    mov si, 0                        ; 0x3ee7
    rep movsb                        ; 0x3eea
    jmp short @..dos_read_file_5.l5  ; 0x3eec
@..dos_read_file_5.l8:
    pop si                           ; 0x3eee
    pop di                           ; 0x3eef
    pop ds                           ; 0x3ef0
    pop es                           ; 0x3ef1
    mov sp, bp                       ; 0x3ef2
    pop bp                           ; 0x3ef4
    ret                              ; 0x3ef5
@..local.l164:
    mov ax, cs                       ; 0x3ef6
    mov ds, ax                       ; 0x3ef8
    mov dx, 0x4006                   ; 0x3efa
    mov ah, 9                        ; 0x3efd
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3f01
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xb0

@..dos_con_loc_3efb.l1:
    mov ax, cs                       ; 0x3f3e
    mov ds, ax                       ; 0x3f40
    mov dx, 0x404e                   ; 0x3f42
dos_con_loc_3f45:
    mov ah, 9                        ; 0x3f45
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3f49
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Insufficient EMS.', 0
    db 0x0a, 0x24

loc_3f73:
    push bp                          ; 0x3f73
    mov bp, sp                       ; 0x3f74
    sub sp, byte 0x14                ; 0x3f76
    push es                          ; 0x3f79
    push ds                          ; 0x3f7a
    push di                          ; 0x3f7b
    push si                          ; 0x3f7c
    mov ax, ds                       ; 0x3f7d
    mov es, ax                       ; 0x3f7f
    mov ax, word [bp + 0xc]          ; 0x3f81
    test ah, 0x80                    ; 0x3f84
    je short @..dos_con_loc_3efb.l2  ; 0x3f87
    dec word [cs:data_038f]          ; 0x3f89
    mov ax, word [bp + 0xe]          ; 0x3f8e
    shl ax, 1                        ; 0x3f91
    mov bx, data_02d7                ; 0x3f93
    add bx, ax                       ; 0x3f96
    mov ax, word [cs:bx]             ; 0x3f98
    mov word [cs:bx], 0              ; 0x3f9b
    call leaf_loc_0e34               ; 0x3fa0
    call loc_0e71                    ; 0x3fa3
    jmp near @..dos_con_loc_3efb.l9  ; 0x3fa6
@..dos_con_loc_3efb.l2:
    mov word [bp - 0x0002], ax       ; 0x3fa9
    mov ax, word [bp + 0x10]         ; 0x3fac
    or ax, ax                        ; 0x3faf
    je short @..dos_con_loc_3efb.l3  ; 0x3fb1
    mov ax, word [bp + 0xe]          ; 0x3fb3
    mov word [bp - 0x0004], ax       ; 0x3fb6
    call dos_file_loc_3d0b           ; 0x3fb9
    jmp near @..dos_con_loc_3efb.l9  ; 0x3fbc
@..dos_con_loc_3efb.l3:
    mov ax, word [bp + 0xe]          ; 0x3fbf
    shl ax, 1                        ; 0x3fc2
    mov bx, data_02d7                ; 0x3fc4
    add bx, ax                       ; 0x3fc7
    mov ax, word [cs:bx]             ; 0x3fc9
    or ax, ax                        ; 0x3fcc
    je short @..dos_con_loc_3efb.l4  ; 0x3fce
    jmp near @..local.l165           ; 0x3fd0
@..dos_con_loc_3efb.l4:
    inc word [cs:data_038f]          ; 0x3fd3
    mov ax, word [cs:data_038f]      ; 0x3fd8
    mov word [cs:bx], ax             ; 0x3fdc
    dec ax                           ; 0x3fdf
    mov cl, 2                        ; 0x3fe0
    shl ax, cl                       ; 0x3fe2
    mov bx, 0x2eb                    ; 0x3fe4
    add bx, ax                       ; 0x3fe7
    mov word [bp - 0x0002], bx       ; 0x3fe9
    mov ax, word [cs:data_0391]      ; 0x3fec
    mov word [cs:bx], ax             ; 0x3ff0
    mov ax, 0xfa0                    ; 0x3ff3
    mov word [cs:bx + 0x2], ax       ; 0x3ff6
    mov di, word [cs:data_0391]      ; 0x3ffa
    add word [cs:data_0391], ax      ; 0x3fff
    mov ax, word [cs:data_0391]      ; 0x4004
    cmp ax, word [cs:data_01ff]      ; 0x4008
    jbe short @..dos_con_loc_3efb.l5 ; 0x400d
    jmp near @..dos_con_loc_4088.l1  ; 0x400f
@..dos_con_loc_3efb.l5:
    mov ax, 0xfa00                   ; 0x4012
    mov word [bp - 0x0006], ax       ; 0x4015
    mov ax, di                       ; 0x4018
    mov cl, 0xa                      ; 0x401a
    shr ax, cl                       ; 0x401c
    mov word [cs:data_3c8e], ax      ; 0x401e
    call dos_file_loc_3b90           ; 0x4022
    and di, strict word 0x3ff        ; 0x4025
    mov cl, 4                        ; 0x4029
    shl di, cl                       ; 0x402b
@..dos_con_loc_3efb.l6:
    mov dx, di                       ; 0x402d
    test dx, 0xc000                  ; 0x402f
    je short @..dos_con_loc_3efb.l7  ; 0x4033
    sub di, strict word 0x4000       ; 0x4035
    inc word [cs:data_3c8e]          ; 0x4039
    mov ax, word [cs:data_3c8e]      ; 0x403e
    call dos_file_loc_3b90           ; 0x4042
@..dos_con_loc_3efb.l7:
    mov ax, word [bp - 0x0006]       ; 0x4045
    or ax, ax                        ; 0x4048
    je short @..dos_con_loc_3efb.l9  ; 0x404a
    mov cx, 0x1000                   ; 0x404c
    cmp ax, cx                       ; 0x404f
    jae short @..dos_con_loc_3efb.l8 ; 0x4051
    mov cx, ax                       ; 0x4053
@..dos_con_loc_3efb.l8:
    sub ax, cx                       ; 0x4055
    mov word [bp - 0x0006], ax       ; 0x4057
    mov ax, word [cs:data_0203]      ; 0x405a
    mov es, ax                       ; 0x405e
    mov ax, word [cs:data_01e9]      ; 0x4060
    mov ds, ax                       ; 0x4064
    mov dx, 0                        ; 0x4066
    mov bx, word [bp + 0xc]          ; 0x4069
    mov ah, 0x3f                     ; 0x406c
    push cx                          ; 0x406e
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x4071
    mov si, 0                        ; 0x4072
    rep movsb                        ; 0x4075
    jmp short @..dos_con_loc_3efb.l6 ; 0x4077
@..dos_con_loc_3efb.l9:
    pop si                           ; 0x4079
    pop di                           ; 0x407a
    pop ds                           ; 0x407b
    pop es                           ; 0x407c
    mov sp, bp                       ; 0x407d
    pop bp                           ; 0x407f
    ret                              ; 0x4080
@..local.l165:
    mov ax, cs                       ; 0x4081
    mov ds, ax                       ; 0x4083
    mov dx, 0x4191                   ; 0x4085
dos_con_loc_4088:
    mov ah, 9                        ; 0x4088
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x408c
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xae

@..dos_con_loc_4088.l1:
    mov ax, cs                       ; 0x40cb
    mov ds, ax                       ; 0x40cd
    mov dx, 0x41db                   ; 0x40cf
dos_con_loc_40d2:
    mov ah, 9                        ; 0x40d2
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x40d6
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Insufficient EMS.', 0
    db 0x0a, 0x24
    times 84 db 0

dos_read_file_6:
    push bp                          ; 0x4156
    mov bp, sp                       ; 0x4157
    sub sp, byte 0x0a                ; 0x4159
    push ds                          ; 0x415c
    push es                          ; 0x415d
    push si                          ; 0x415e
    push di                          ; 0x415f
    mov ax, ds                       ; 0x4160
    mov es, ax                       ; 0x4162
    mov bx, word [bp + 0xe]          ; 0x4164
    shl bx, 1                        ; 0x4167
    shl bx, 1                        ; 0x4169
    add bx, data_4202                ; 0x416b
    mov word [bp - 0x0002], bx       ; 0x416f
    mov ax, word [cs:bx]             ; 0x4172
    or ax, ax                        ; 0x4175
    je short @..dos_con_loc_4088.l2  ; 0x4177
    jmp near @..local.l166           ; 0x4179
@..dos_con_loc_4088.l2:
    mov ax, word [cs:data_0caa]      ; 0x417c
    inc ax                           ; 0x4180
    mov word [cs:data_0caa], ax      ; 0x4181
    mov bx, word [bp - 0x0002]       ; 0x4185
    mov word [cs:bx], ax             ; 0x4188
    dec ax                           ; 0x418b
    mov cl, 2                        ; 0x418c
    shl ax, cl                       ; 0x418e
    mov bx, data_0bda                ; 0x4190
    add bx, ax                       ; 0x4193
    mov word [bp - 0x000a], bx       ; 0x4195
    mov ax, word [cs:data_0cac]      ; 0x4198
    mov word [cs:bx], ax             ; 0x419c
    mov ah, 0x42                     ; 0x419f
    mov al, 2                        ; 0x41a1
    mov bx, word [bp + 0xc]          ; 0x41a3
    xor cx, cx                       ; 0x41a6
    mov dx, cx                       ; 0x41a8
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax       ; 0x41ac
    mov word [bp - 0x0006], dx       ; 0x41af
    mov ah, 0x42                     ; 0x41b2
    mov al, 0                        ; 0x41b4
    mov bx, word [bp + 0xc]          ; 0x41b6
    xor cx, cx                       ; 0x41b9
    mov dx, cx                       ; 0x41bb
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [cs:data_01e9]      ; 0x41bf
    mov ds, ax                       ; 0x41c3
    xor dx, dx                       ; 0x41c5
    mov bx, word [bp + 0xc]          ; 0x41c7
    mov cx, 2                        ; 0x41ca
    mov ah, 0x3f                     ; 0x41cd
    int 0x21 ; DOS read file (handle)
    xor bx, bx                       ; 0x41d1
    mov ax, word [bx]                ; 0x41d3
    or ax, ax                        ; 0x41d5
    je short @..dos_con_loc_4088.l3  ; 0x41d7
    jmp near @..dos_con_loc_422f.l4  ; 0x41d9
@..dos_con_loc_4088.l3:
    mov bx, word [bp - 0x0002]       ; 0x41dc
    mov ax, word [bp - 0x0004]       ; 0x41df
    sub ax, strict word 2            ; 0x41e2
    mov word [cs:bx + 0x2], ax       ; 0x41e5
    add ax, strict word 0xf          ; 0x41e9
    mov cl, 4                        ; 0x41ec
    shr ax, cl                       ; 0x41ee
    mov bx, word [bp - 0x000a]       ; 0x41f0
    mov word [cs:bx + 0x2], ax       ; 0x41f3
    add ax, word [cs:data_0cac]      ; 0x41f7
    cmp ax, 0x4180                   ; 0x41fc
    jae short @..dos_con_loc_422f.l1 ; 0x41ff
    mov word [cs:data_0cac], ax      ; 0x4201
    mov ax, word [cs:bx]             ; 0x4205
    add ax, word [cs:data_01e1]      ; 0x4208
    mov ds, ax                       ; 0x420d
    xor dx, dx                       ; 0x420f
    mov bx, word [bp + 0xc]          ; 0x4211
    mov cx, word [bp - 0x0004]       ; 0x4214
    sub cx, byte 2                   ; 0x4217
    mov ah, 0x3f                     ; 0x421a
    int 0x21 ; DOS read file (handle)
    xor ax, ax                       ; 0x421e
@..dos_con_loc_4088.l4:
    pop di                           ; 0x4220
    pop si                           ; 0x4221
    pop es                           ; 0x4222
    pop ds                           ; 0x4223
    mov sp, bp                       ; 0x4224
    pop bp                           ; 0x4226
    ret                              ; 0x4227
@..local.l166:
    mov ax, cs                       ; 0x4228
    mov ds, ax                       ; 0x422a
    mov dx, 0x4338                   ; 0x422c
dos_con_loc_422f:
    mov ah, 9                        ; 0x422f

    db 0xcd, 0x21, 0xb8, 0x01, 0x4c, 0xcd, 0x21, 0x0d, 0x0a, 0x07
    db 'In LOAD_SO'

dos_read_file_7:
    push bp                          ; 0x4245
    dec si                           ; 0x4246
    inc sp                           ; 0x4247
    sub byte [bx + di], ch           ; 0x4248
    and byte [data_2e2e], ch         ; 0x424a
    and byte [bp + di + 0x6c], dh    ; 0x424e
    outsw                            ; 0x4251
    je short @..dos_con_loc_422f.l2  ; 0x4252
    popaw                            ; 0x4254
    insb                             ; 0x4255
    jb short @..dos_con_loc_422f.l7  ; 0x4256
    popaw                            ; 0x4258
    db 0x64, 0x79, 0x20 ; jns @..dos_con_loc_422f.l3
    jne short @..dos_con_loc_422f.l8 ; 0x425c
    db 0x65, 0x64, 0x2e, 0x00, 0x0a ; add byte [cs:bp + si], cl
    db 0x24
@..dos_con_loc_422f.l1:
    db 0x8c
    enter 0xd88e, 0xffba             ; 0x4265
    je short @..dos_con_loc_422f.l5  ; 0x4269
dos_con_loc_426b:
    mov ah, 9                        ; 0x426b
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x426f
    int 0x21 ; DOS function dispatcher
@..dos_con_loc_422f.l2:
    or ax, 0x70a                     ; 0x4274
    dec cx                           ; 0x4277
    outsb                            ; 0x4278
    and byte [si + 0x4f], cl         ; 0x4279
@..dos_con_loc_422f.l3:
    inc cx                           ; 0x427c
    inc sp                           ; 0x427d
    pop di                           ; 0x427e
    push bx                          ; 0x427f
    dec di                           ; 0x4280
    push bp                          ; 0x4281
    dec si                           ; 0x4282
    inc sp                           ; 0x4283
    sub byte [bx + di], ch           ; 0x4284
    and byte [data_2e2e], ch         ; 0x4286
    and byte [bp + 0x6f], ch         ; 0x428a
    je short @..dos_con_loc_422f.l6  ; 0x428d
    db 0x65, 0x6e ; outsb
    outsw                            ; 0x4291
    jne short @..dos_con_loc_422f.l10 ; 0x4292
    push 0x6d20                      ; 0x4294
    db 0x65, 0x6d ; insw
    outsw                            ; 0x4299
    jb short @..dos_con_loc_422f.l12 ; 0x429a
    add byte [cs:bp + si], cl        ; 0x429c
    db 0x24
@..dos_con_loc_422f.l4:
    db 0x8b
    enter 0xa12e, 0xffe9             ; 0x42a1
    add word [bp + 0x33d8], cx       ; 0x42a5
    ror byte [bp + di + 0xc5e], cl   ; 0x42a9
    db 0xb4
@..dos_con_loc_422f.l5:
    db 0x3f
@..dos_con_loc_422f.l6:
    int 0x21 ; DOS function dispatcher
    mov dx, 0x400                    ; 0x42b1
    mov bx, word [bp + 0xc]          ; 0x42b4
    mov cx, 0x1000                   ; 0x42b7
    mov ah, 0x3f                     ; 0x42ba
    db 0xcd
@..dos_con_loc_422f.l7:
    db 0x21
    mov si, 0x400                    ; 0x42be
    mov di, 0                        ; 0x42c1
    lodsw                            ; 0x42c4
    mov word [bp - 0x0004], ax       ; 0x42c5
    mov bx, word [bp - 0x0002]       ; 0x42c8
    mov word [cs:bx + 0x2], ax       ; 0x42cb
    db 0x05, 0x0f
@..dos_con_loc_422f.l8:
    db 0x00
    mov cl, 4                        ; 0x42d2
    shr ax, cl                       ; 0x42d4
    mov bx, word [bp - 0x000a]       ; 0x42d6
    mov word [cs:bx + 0x2], ax       ; 0x42d9
    add ax, word [cs:data_0cac]      ; 0x42dd
    cmp ax, 0x4180                   ; 0x42e2
    jb short @..dos_con_loc_422f.l9  ; 0x42e5
    jmp near @..dos_con_loc_422f.l1  ; 0x42e7
@..dos_con_loc_422f.l9:
    mov word [cs:data_0cac], ax      ; 0x42ea
    mov ax, word [cs:bx]             ; 0x42ee
    add ax, word [cs:data_01e1]      ; 0x42f1
    mov es, ax                       ; 0x42f6
    call dos_file_loc_4300           ; 0x42f8
@..dos_con_loc_422f.l10:
    xor ax, ax                       ; 0x42fb
    jmp near @..dos_con_loc_4088.l4  ; 0x42fd
dos_file_loc_4300:
    mov word [bp - 0x0002], 8        ; 0x4300
    lodsb                            ; 0x4305
@..dos_con_loc_422f.l11:
    cmp word [bp - 0x0004], byte 0   ; 0x4306
    je short @..dos_con_loc_422f.l13 ; 0x430a
    call dos_file_loc_4319           ; 0x430c
    mov byte [es:di], bl             ; 0x430f
    inc di                           ; 0x4312
    db 0xff, 0x4e
@..dos_con_loc_422f.l12:
    db 0xfc
    jmp short @..dos_con_loc_422f.l11 ; 0x4316
@..dos_con_loc_422f.l13:
    ret                              ; 0x4318
dos_file_loc_4319:
    mov cx, word [bp - 0x0002]       ; 0x4319
    xor bx, bx                       ; 0x431c
@..dos_file_loc_4319.l1:
    shl al, 1                        ; 0x431e
    jb short @..dos_file_loc_4319.l4 ; 0x4320
    test word [bx], 0x8000           ; 0x4322
    jne short @..dos_file_loc_4319.l2 ; 0x4326
    mov bx, word [bx]                ; 0x4328
    jmp short @..dos_file_loc_4319.l6 ; 0x432a
@..dos_file_loc_4319.l2:
    mov bx, word [bx]                ; 0x432c
    neg bx                           ; 0x432e
    shl bx, 1                        ; 0x4330
    shl bx, 1                        ; 0x4332
@..dos_file_loc_4319.l3:
    loop @..dos_file_loc_4319.l1     ; 0x4334
    mov cx, 8                        ; 0x4336
    lodsb                            ; 0x4339
    cmp si, strict word 0x1400       ; 0x433a
    jb short @..dos_file_loc_4319.l1 ; 0x433e
    push ax                          ; 0x4340
    push di                          ; 0x4341
    push bx                          ; 0x4342
    push cx                          ; 0x4343
    mov dx, 0x400                    ; 0x4344
    mov bx, word [bp + 0xc]          ; 0x4347
    mov cx, 0x1000                   ; 0x434a
    mov ah, 0x3f                     ; 0x434d
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4351
    pop cx                           ; 0x4354
    pop bx                           ; 0x4355
    pop di                           ; 0x4356
    pop ax                           ; 0x4357
    jmp short @..dos_file_loc_4319.l1 ; 0x4358
@..dos_file_loc_4319.l4:
    test word [bx + 0x2], 0x8000     ; 0x435a
    jne short @..dos_file_loc_4319.l5 ; 0x435f
    mov bx, word [bx + 0x2]          ; 0x4361
    jmp short @..dos_file_loc_4319.l6 ; 0x4364
@..dos_file_loc_4319.l5:
    mov bx, word [bx + 0x2]          ; 0x4366
    neg bx                           ; 0x4369
    shl bx, 1                        ; 0x436b
    shl bx, 1                        ; 0x436d
    jmp short @..dos_file_loc_4319.l3 ; 0x436f
@..dos_file_loc_4319.l6:
    dec cx                           ; 0x4371
    jne short @..dos_file_loc_4319.l7 ; 0x4372
    mov cx, 8                        ; 0x4374
    lodsb                            ; 0x4377
    cmp si, strict word 0x1400       ; 0x4378
    jb short @..dos_file_loc_4319.l7 ; 0x437c
    push ax                          ; 0x437e
    push di                          ; 0x437f
    push bx                          ; 0x4380
    push cx                          ; 0x4381
    mov dx, 0x400                    ; 0x4382
    mov bx, word [bp + 0xc]          ; 0x4385
    mov cx, 0x1000                   ; 0x4388
    mov ah, 0x3f                     ; 0x438b
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x438f
    pop cx                           ; 0x4392
    pop bx                           ; 0x4393
    pop di                           ; 0x4394
    pop ax                           ; 0x4395
@..dos_file_loc_4319.l7:
    mov word [bp - 0x0002], cx       ; 0x4396
    ret                              ; 0x4399
loc_439a:
    push bp                          ; 0x439a
    mov bp, sp                       ; 0x439b
    sub sp, byte 0x0a                ; 0x439d
    push ds                          ; 0x43a0
    push es                          ; 0x43a1
    push si                          ; 0x43a2
    push di                          ; 0x43a3
    mov ax, ds                       ; 0x43a4
    mov es, ax                       ; 0x43a6
    mov ax, word [bp + 0xc]          ; 0x43a8
    cmp ax, strict word 0x14         ; 0x43ab
    jb short @..local.l167           ; 0x43ae
    jmp near @..local.l169           ; 0x43b0
@..local.l167:
    shl ax, 1                        ; 0x43b3
    shl ax, 1                        ; 0x43b5
    mov bx, data_4202                ; 0x43b7
    add bx, ax                       ; 0x43ba
    mov ax, word [cs:bx]             ; 0x43bc
    or ax, ax                        ; 0x43bf
    jne short @..local.l168          ; 0x43c1
    jmp near @..local.l169           ; 0x43c3
@..local.l168:
    mov word [cs:bx], 0              ; 0x43c6
    mov cx, word [cs:data_0caa]      ; 0x43cb
    dec cx                           ; 0x43d0
    mov word [cs:data_0caa], cx      ; 0x43d1
    call loc_43e1                    ; 0x43d6
@..local.l169:
    pop di                           ; 0x43d9
    pop si                           ; 0x43da
    pop es                           ; 0x43db
    pop ds                           ; 0x43dc
    mov sp, bp                       ; 0x43dd
    pop bp                           ; 0x43df
    ret                              ; 0x43e0
loc_43e1:
    call leaf_loc_43f7               ; 0x43e1
    call dos_con_loc_440c            ; 0x43e4
    call dos_con_loc_4436            ; 0x43e7
    call dos_con_loc_4421            ; 0x43ea
    call dos_con_loc_444b            ; 0x43ed
    call dos_con_loc_4461            ; 0x43f0
    call leaf_loc_44a3               ; 0x43f3
    ret                              ; 0x43f6
leaf_loc_43f7:
    push ax                          ; 0x43f7
    mov bx, data_0bc6                ; 0x43f8
    mov cx, 0xa                      ; 0x43fb
@..leaf_loc_43f7.l1:
    cmp ax, word [cs:bx]             ; 0x43fe
    jae short @..leaf_loc_43f7.l2    ; 0x4401
    dec word [cs:bx]                 ; 0x4403
@..leaf_loc_43f7.l2:
    inc bx                           ; 0x4406
    inc bx                           ; 0x4407
    loop @..leaf_loc_43f7.l1         ; 0x4408
    pop ax                           ; 0x440a
    ret                              ; 0x440b
dos_con_loc_440c:
    push ax                          ; 0x440c
    mov bx, data_0229                ; 0x440d
    mov cx, 0x14                     ; 0x4410
@..dos_con_loc_440c.l1:
    cmp ax, word [cs:bx]             ; 0x4413
    jae short @..dos_con_loc_440c.l2 ; 0x4416
    dec word [cs:bx]                 ; 0x4418
@..dos_con_loc_440c.l2:
    inc bx                           ; 0x441b
    inc bx                           ; 0x441c
    loop @..dos_con_loc_440c.l1      ; 0x441d
    pop ax                           ; 0x441f
    ret                              ; 0x4420
dos_con_loc_4421:
    push ax                          ; 0x4421
    mov bx, data_025b                ; 0x4422
    mov cx, 0x10                     ; 0x4425
@..dos_con_loc_4421.l1:
    cmp ax, word [cs:bx]             ; 0x4428
    jae short @..dos_con_loc_4421.l2 ; 0x442b
    dec word [cs:bx]                 ; 0x442d
@..dos_con_loc_4421.l2:
    inc bx                           ; 0x4430
    inc bx                           ; 0x4431
    loop @..dos_con_loc_4421.l1      ; 0x4432
    pop ax                           ; 0x4434
    ret                              ; 0x4435
dos_con_loc_4436:
    push ax                          ; 0x4436
    mov bx, data_0251                ; 0x4437
    mov cx, 5                        ; 0x443a
@..dos_con_loc_4436.l1:
    cmp ax, word [cs:bx]             ; 0x443d
    jae short @..dos_con_loc_4436.l2 ; 0x4440
    dec word [cs:bx]                 ; 0x4442
@..dos_con_loc_4436.l2:
    inc bx                           ; 0x4445
    inc bx                           ; 0x4446
    loop @..dos_con_loc_4436.l1      ; 0x4447
    pop ax                           ; 0x4449
    ret                              ; 0x444a
dos_con_loc_444b:
    push ax                          ; 0x444b
    mov bx, data_4202                ; 0x444c
    mov cx, 0x14                     ; 0x444f
@..dos_con_loc_444b.l1:
    cmp ax, word [cs:bx]             ; 0x4452
    jae short @..dos_con_loc_444b.l2 ; 0x4455
    dec word [cs:bx]                 ; 0x4457
@..dos_con_loc_444b.l2:
    add bx, byte 4                   ; 0x445a
    loop @..dos_con_loc_444b.l1      ; 0x445d
    pop ax                           ; 0x445f
    ret                              ; 0x4460
dos_con_loc_4461:
    push ax                          ; 0x4461
    mov bx, data_46d9                ; 0x4462
    mov cx, 5                        ; 0x4465
@..dos_con_loc_4461.l1:
    cmp ax, word [cs:bx]             ; 0x4468
    jae short @..dos_con_loc_4461.l2 ; 0x446b
    dec word [cs:bx]                 ; 0x446d
    push ds                          ; 0x4470
    push ax                          ; 0x4471
    push bx                          ; 0x4472
    push cx                          ; 0x4473
    push dx                          ; 0x4474
    mov ax, cs                       ; 0x4475
    mov ds, ax                       ; 0x4477
    mov dx, 0x458c                   ; 0x4479
    mov ah, 9                        ; 0x447c
    int 0x21 ; DOS string output
    pop dx                           ; 0x4480
    pop cx                           ; 0x4481
    pop bx                           ; 0x4482
    pop ax                           ; 0x4483
    pop ds                           ; 0x4484
@..dos_con_loc_4461.l2:
    add bx, byte 4                   ; 0x4485
    loop @..dos_con_loc_4461.l1      ; 0x4488
    pop ax                           ; 0x448a
    ret                              ; 0x448b

    db 0x0d, 0x0a, 0x07
    db 'Score slot moved.', 0
    db 0x0a, 0x24

leaf_loc_44a3:
    dec ax                           ; 0x44a3
    mov cl, 2                        ; 0x44a4
    shl ax, cl                       ; 0x44a6
    mov bx, data_0bda                ; 0x44a8
    add bx, ax                       ; 0x44ab
    mov word [bp - 0x0004], bx       ; 0x44ad
    mov ax, word [cs:bx + 0x2]       ; 0x44b0
    sub word [cs:data_0cac], ax      ; 0x44b4
    mov word [bp - 0x0006], ax       ; 0x44b9
@..leaf_loc_44a3.l1:
    mov bx, word [bp - 0x0004]       ; 0x44bc
    mov dx, word [cs:bx]             ; 0x44bf
    add dx, word [cs:data_01e1]      ; 0x44c2
    mov es, dx                       ; 0x44c7
    mov dx, word [cs:bx + 0x4]       ; 0x44c9
    add dx, word [cs:data_01e1]      ; 0x44cd
    mov ds, dx                       ; 0x44d2
    mov cx, word [cs:bx + 0x6]       ; 0x44d4
    or cx, cx                        ; 0x44d8
    je short @..leaf_loc_44a3.l3     ; 0x44da
@..leaf_loc_44a3.l2:
    push cx                          ; 0x44dc
    mov cx, 0x10                     ; 0x44dd
    xor si, si                       ; 0x44e0
    xor di, di                       ; 0x44e2
    rep movsb                        ; 0x44e4
    mov cx, ds                       ; 0x44e6
    inc cx                           ; 0x44e8
    mov ds, cx                       ; 0x44e9
    mov cx, es                       ; 0x44eb
    inc cx                           ; 0x44ed
    mov es, cx                       ; 0x44ee
    pop cx                           ; 0x44f0
    loop @..leaf_loc_44a3.l2         ; 0x44f1
    mov bx, word [bp - 0x0004]       ; 0x44f3
    mov cx, word [bp - 0x0006]       ; 0x44f6
    mov ax, word [cs:bx + 0x4]       ; 0x44f9
    sub ax, cx                       ; 0x44fd
    mov word [cs:bx], ax             ; 0x44ff
    add ax, word [cs:bx + 0x6]       ; 0x4502
    mov word [cs:bx + 0x4], ax       ; 0x4506
    mov ax, word [cs:bx + 0x6]       ; 0x450a
    mov word [cs:bx + 0x2], ax       ; 0x450e
    add bx, byte 4                   ; 0x4512
    mov word [bp - 0x0004], bx       ; 0x4515
    jmp short @..leaf_loc_44a3.l1    ; 0x4518
@..leaf_loc_44a3.l3:
    mov bx, word [bp - 0x0004]       ; 0x451a
    xor ax, ax                       ; 0x451d
    mov word [cs:bx], ax             ; 0x451f
    mov word [cs:bx + 0x2], ax       ; 0x4522
    ret                              ; 0x4526
loc_4527:
    push bp                          ; 0x4527
    mov bp, sp                       ; 0x4528
    sub sp, byte 0x0a                ; 0x452a
    push ds                          ; 0x452d
    push es                          ; 0x452e
    push si                          ; 0x452f
    push di                          ; 0x4530
    mov ax, ds                       ; 0x4531
    mov es, ax                       ; 0x4533
    mov ax, word [bp + 0xc]          ; 0x4535
    cmp ax, strict word 0x14         ; 0x4538
    jb short @..local.l170           ; 0x453b
    jmp near @..local.l172           ; 0x453d
@..local.l170:
    shl ax, 1                        ; 0x4540
    shl ax, 1                        ; 0x4542
    mov bx, data_4202                ; 0x4544
    add bx, ax                       ; 0x4547
    mov ax, word [cs:bx + 0x2]       ; 0x4549
    mov word [bp - 0x0002], ax       ; 0x454d
    mov ax, word [cs:bx]             ; 0x4550
    or ax, ax                        ; 0x4553
    jne short @..local.l171          ; 0x4555
    jmp near @..local.l172           ; 0x4557
@..local.l171:
    dec ax                           ; 0x455a
    mov word [bp - 0x0004], ax       ; 0x455b
    push word [bp + 0x12]            ; 0x455e
    push word [bp + 0x10]            ; 0x4561
    push word [bp + 0xe]             ; 0x4564
    mov ax, word [bp - 0x0002]       ; 0x4567
    push ax                          ; 0x456a
    xor ax, ax                       ; 0x456b
    push ax                          ; 0x456d
    mov bx, data_0bda                ; 0x456e
    mov ax, word [bp - 0x0004]       ; 0x4571
    shl ax, 1                        ; 0x4574
    shl ax, 1                        ; 0x4576
    add bx, ax                       ; 0x4578
    mov ax, word [cs:bx]             ; 0x457a
    add ax, word [cs:data_01e1]      ; 0x457d
    push ax                          ; 0x4582
    xor ax, ax                       ; 0x4583
    push ax                          ; 0x4585
    call far [cs:data_021a]          ; 0x4586
    add sp, byte 0x0e                ; 0x458b
@..local.l172:
    pop di                           ; 0x458e
    pop si                           ; 0x458f
    pop es                           ; 0x4590
    pop ds                           ; 0x4591
    mov sp, bp                       ; 0x4592
    pop bp                           ; 0x4594
    ret                              ; 0x4595
loc_4596:
    push bp                          ; 0x4596
    mov bp, sp                       ; 0x4597
    push ds                          ; 0x4599
    push es                          ; 0x459a
    push si                          ; 0x459b
    push di                          ; 0x459c
    mov ax, ds                       ; 0x459d
    mov es, ax                       ; 0x459f
    push word [bp + 0xc]             ; 0x45a1
    call far [cs:data_0222]          ; 0x45a4
    pop cx                           ; 0x45a9
    pop di                           ; 0x45aa
    pop si                           ; 0x45ab
    pop es                           ; 0x45ac
    pop ds                           ; 0x45ad
    mov sp, bp                       ; 0x45ae
    pop bp                           ; 0x45b0
    ret                              ; 0x45b1
loc_45b2:
    push bp                          ; 0x45b2
    mov bp, sp                       ; 0x45b3
    sub sp, byte 0x0a                ; 0x45b5
    push ds                          ; 0x45b8
    push es                          ; 0x45b9
    push si                          ; 0x45ba
    push di                          ; 0x45bb
    mov ax, ds                       ; 0x45bc
    mov es, ax                       ; 0x45be
    xor ax, ax                       ; 0x45c0
    push ax                          ; 0x45c2
    push ax                          ; 0x45c3
    push ax                          ; 0x45c4
    push ax                          ; 0x45c5
    push ax                          ; 0x45c6
    push ax                          ; 0x45c7
    push ax                          ; 0x45c8
    call far [cs:data_021a]          ; 0x45c9
    add sp, byte 0x0e                ; 0x45ce
    pop di                           ; 0x45d1
    pop si                           ; 0x45d2
    pop es                           ; 0x45d3
    pop ds                           ; 0x45d4
    mov sp, bp                       ; 0x45d5
    pop bp                           ; 0x45d7
    ret                              ; 0x45d8

    times 34 db 0

dos_read_file_8:
    push bp                          ; 0x45fb
    mov bp, sp                       ; 0x45fc
    sub sp, byte 0x0e                ; 0x45fe
    push ds                          ; 0x4601
    push es                          ; 0x4602
    push si                          ; 0x4603
    push di                          ; 0x4604
    mov ax, ds                       ; 0x4605
    mov es, ax                       ; 0x4607
    mov bx, word [bp + 0x12]         ; 0x4609
    shl bx, 1                        ; 0x460c
    shl bx, 1                        ; 0x460e
    add bx, data_46d9                ; 0x4610
    mov word [bp - 0x0002], bx       ; 0x4614
    mov ax, word [cs:bx]             ; 0x4617
    or ax, ax                        ; 0x461a
    je short @..dos_read_file_8.l1   ; 0x461c
    jmp near @..local.l173           ; 0x461e
@..dos_read_file_8.l1:
    mov bx, word [bp + 0x12]         ; 0x4621
    shl bx, 1                        ; 0x4624
    add bx, data_46f1                ; 0x4626
    mov ax, word [bp + 0x10]         ; 0x462a
    mov word [cs:bx], ax             ; 0x462d
    mov ax, word [cs:data_0caa]      ; 0x4630
    inc ax                           ; 0x4634
    mov word [cs:data_0caa], ax      ; 0x4635
    mov bx, word [bp - 0x0002]       ; 0x4639
    mov word [cs:bx], ax             ; 0x463c
    dec ax                           ; 0x463f
    mov cl, 2                        ; 0x4640
    shl ax, cl                       ; 0x4642
    mov bx, data_0bda                ; 0x4644
    add bx, ax                       ; 0x4647
    mov word [bp - 0x000a], bx       ; 0x4649
    mov ax, word [cs:data_0cac]      ; 0x464c
    mov word [cs:bx], ax             ; 0x4650
    xor ax, ax                       ; 0x4653
    mov word [bp - 0x000c], ax       ; 0x4655
    mov word [bp - 0x000e], ax       ; 0x4658
    mov bx, word [bp - 0x0002]       ; 0x465b
    mov word [cs:bx + 0x2], ax       ; 0x465e
    mov bx, word [bp + 0xe]          ; 0x4662
    cmp bx, byte 0xff                ; 0x4665
    je short @..dos_read_file_8.l2   ; 0x4668
    mov ah, 0x42                     ; 0x466a
    mov al, 2                        ; 0x466c
    xor cx, cx                       ; 0x466e
    mov dx, cx                       ; 0x4670
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x000c], ax       ; 0x4674
    mov bx, word [bp - 0x0002]       ; 0x4677
    mov word [cs:bx + 0x2], ax       ; 0x467a
    add ax, strict word 0xf          ; 0x467e
    mov cl, 4                        ; 0x4681
    shr ax, cl                       ; 0x4683
    mov word [bp - 0x000e], ax       ; 0x4685
    mov ah, 0x42                     ; 0x4688
    mov al, 0                        ; 0x468a
    mov bx, word [bp + 0xe]          ; 0x468c
    xor cx, cx                       ; 0x468f
    mov dx, cx                       ; 0x4691
    int 0x21 ; DOS seek file (lseek)
@..dos_read_file_8.l2:
    mov ah, 0x42                     ; 0x4695
    mov al, 2                        ; 0x4697
    mov bx, word [bp + 0xc]          ; 0x4699
    xor cx, cx                       ; 0x469c
    mov dx, cx                       ; 0x469e
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax       ; 0x46a2
    mov word [bp - 0x0006], dx       ; 0x46a5
    mov ah, 0x42                     ; 0x46a8
    mov al, 0                        ; 0x46aa
    mov bx, word [bp + 0xc]          ; 0x46ac
    xor cx, cx                       ; 0x46af
    mov dx, cx                       ; 0x46b1
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [bp - 0x0004]       ; 0x46b5
    add ax, strict word 0xf          ; 0x46b8
    mov cl, 4                        ; 0x46bb
    shr ax, cl                       ; 0x46bd
    mov bx, word [bp - 0x000a]       ; 0x46bf
    add ax, word [bp - 0x000e]       ; 0x46c2
    mov word [cs:bx + 0x2], ax       ; 0x46c5
    add ax, word [cs:data_0cac]      ; 0x46c9
    cmp ax, 0x4180                   ; 0x46ce
    jb short @..dos_read_file_8.l3   ; 0x46d1
    jmp near @..dos_con_loc_4719.l1  ; 0x46d3
@..dos_read_file_8.l3:
    mov word [cs:data_0cac], ax      ; 0x46d6
    mov ax, word [cs:bx]             ; 0x46da
    add ax, word [cs:data_01e1]      ; 0x46dd
    mov ds, ax                       ; 0x46e2
    mov bx, word [bp + 0xe]          ; 0x46e4
    cmp bx, byte 0xff                ; 0x46e7
    je short @..dos_read_file_8.l4   ; 0x46ea
    xor dx, dx                       ; 0x46ec
    mov cx, word [bp - 0x000c]       ; 0x46ee
    mov ah, 0x3f                     ; 0x46f1
    int 0x21 ; DOS read file (handle)
@..dos_read_file_8.l4:
    mov bx, word [bp - 0x0002]       ; 0x46f5
    mov bx, word [cs:bx + 0x2]       ; 0x46f8
    mov dx, bx                       ; 0x46fc
    mov bx, word [bp + 0xc]          ; 0x46fe
    mov cx, word [bp - 0x0004]       ; 0x4701
    mov ah, 0x3f                     ; 0x4704
    int 0x21 ; DOS read file (handle)
    xor ax, ax                       ; 0x4708
    pop di                           ; 0x470a
    pop si                           ; 0x470b
    pop es                           ; 0x470c
    pop ds                           ; 0x470d
    mov sp, bp                       ; 0x470e
    pop bp                           ; 0x4710
    ret                              ; 0x4711
@..local.l173:
    mov ax, cs                       ; 0x4712
    mov ds, ax                       ; 0x4714
    mov dx, 0x4822                   ; 0x4716
dos_con_loc_4719:
    mov ah, 9                        ; 0x4719
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x471d
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... slot already used.', 0
    db 0x0a, 0x24

@..dos_con_loc_4719.l1:
    mov ax, cs                       ; 0x474e
    mov ds, ax                       ; 0x4750
    mov dx, 0x485e                   ; 0x4752
dos_con_loc_4755:
    mov ah, 9                        ; 0x4755
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4759
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... not enough memory.', 0
    db 0x0a, 0x24

loc_478a:
    push bp                          ; 0x478a
    mov bp, sp                       ; 0x478b
    sub sp, byte 0x0a                ; 0x478d
    push ds                          ; 0x4790
    push es                          ; 0x4791
    push si                          ; 0x4792
    push di                          ; 0x4793
    mov ax, ds                       ; 0x4794
    mov es, ax                       ; 0x4796
    mov bx, word [bp + 0xc]          ; 0x4798
    shl bx, 1                        ; 0x479b
    add bx, data_46f1                ; 0x479d
    mov ax, word [cs:bx]             ; 0x47a1
    mov word [bp - 0x0008], ax       ; 0x47a4
    mov bx, word [bp + 0xc]          ; 0x47a7
    shl bx, 1                        ; 0x47aa
    shl bx, 1                        ; 0x47ac
    add bx, data_46d9                ; 0x47ae
    mov word [bp - 0x0002], bx       ; 0x47b2
    mov ax, word [cs:bx + 0x2]       ; 0x47b5
    mov word [bp - 0x0006], ax       ; 0x47b9
    mov ax, word [cs:bx]             ; 0x47bc
    or ax, ax                        ; 0x47bf
    je short @..dos_con_loc_4719.l3  ; 0x47c1
    dec ax                           ; 0x47c3
    shl ax, 1                        ; 0x47c4
    shl ax, 1                        ; 0x47c6
    mov bx, data_0bda                ; 0x47c8
    add bx, ax                       ; 0x47cb
    mov word [bp - 0x0004], bx       ; 0x47cd
    push word [bp - 0x0008]          ; 0x47d0
    xor ax, ax                       ; 0x47d3
    cmp word [bp - 0x0006], byte 0   ; 0x47d5
    je short @..dos_con_loc_4719.l2  ; 0x47d9
    mov ax, word [cs:bx]             ; 0x47db
    add ax, word [cs:data_01e1]      ; 0x47de
@..dos_con_loc_4719.l2:
    push ax                          ; 0x47e3
    xor ax, ax                       ; 0x47e4
    push ax                          ; 0x47e6
    call far [cs:data_020e]          ; 0x47e7
    add sp, byte 6                   ; 0x47ec
    push word [bp + 0x10]            ; 0x47ef
    push word [bp + 0xe]             ; 0x47f2
    call far [cs:data_0216]          ; 0x47f5
    add sp, byte 4                   ; 0x47fa
    push word [bp + 0x12]            ; 0x47fd
    mov bx, word [bp - 0x0004]       ; 0x4800
    mov ax, word [cs:bx]             ; 0x4803
    add ax, word [cs:data_01e1]      ; 0x4806
    push ax                          ; 0x480b
    push word [bp - 0x0006]          ; 0x480c
    call far [cs:data_0206]          ; 0x480f
    add sp, byte 6                   ; 0x4814
@..dos_con_loc_4719.l3:
    pop di                           ; 0x4817
    pop si                           ; 0x4818
    pop es                           ; 0x4819
    pop ds                           ; 0x481a
    mov sp, bp                       ; 0x481b
    pop bp                           ; 0x481d
    ret                              ; 0x481e
loc_481f:
    push bp                          ; 0x481f
    mov bp, sp                       ; 0x4820
    sub sp, byte 0x0a                ; 0x4822
    push ds                          ; 0x4825
    push es                          ; 0x4826
    push si                          ; 0x4827
    push di                          ; 0x4828
    mov ax, ds                       ; 0x4829
    mov es, ax                       ; 0x482b
    mov ax, word [bp + 0xc]          ; 0x482d
    cmp ax, strict word 5            ; 0x4830
    jb short @..local.l174           ; 0x4833
    jmp near @..local.l176           ; 0x4835
@..local.l174:
    shl ax, 1                        ; 0x4838
    shl ax, 1                        ; 0x483a
    mov bx, data_46d9                ; 0x483c
    add bx, ax                       ; 0x483f
    mov ax, word [cs:bx]             ; 0x4841
    or ax, ax                        ; 0x4844
    jne short @..local.l175          ; 0x4846
    jmp near @..local.l176           ; 0x4848
@..local.l175:
    mov word [cs:bx], 0              ; 0x484b
    mov cx, word [cs:data_0caa]      ; 0x4850
    dec cx                           ; 0x4855
    mov word [cs:data_0caa], cx      ; 0x4856
    call loc_43e1                    ; 0x485b
@..local.l176:
    pop di                           ; 0x485e
    pop si                           ; 0x485f
    pop es                           ; 0x4860
    pop ds                           ; 0x4861
    mov sp, bp                       ; 0x4862
    pop bp                           ; 0x4864
    ret                              ; 0x4865
loc_4866:
    push bp                          ; 0x4866
    mov bp, sp                       ; 0x4867
    push ds                          ; 0x4869
    push es                          ; 0x486a
    push si                          ; 0x486b
    push di                          ; 0x486c
    mov ax, ds                       ; 0x486d
    mov es, ax                       ; 0x486f
    call far [cs:data_021e]          ; 0x4871
    pop di                           ; 0x4876
    pop si                           ; 0x4877
    pop es                           ; 0x4878
    pop ds                           ; 0x4879
    mov sp, bp                       ; 0x487a
    pop bp                           ; 0x487c
    ret                              ; 0x487d
loc_487e:
    push bp                          ; 0x487e
    mov bp, sp                       ; 0x487f
    push ds                          ; 0x4881
    push es                          ; 0x4882
    push si                          ; 0x4883
    push di                          ; 0x4884
    mov ax, ds                       ; 0x4885
    mov es, ax                       ; 0x4887
    call far [cs:data_0212]          ; 0x4889
    pop di                           ; 0x488e
    pop si                           ; 0x488f
    pop es                           ; 0x4890
    pop ds                           ; 0x4891
    mov sp, bp                       ; 0x4892
    pop bp                           ; 0x4894
    ret                              ; 0x4895
loc_4896:
    push bp                          ; 0x4896
    mov bp, sp                       ; 0x4897
    push ds                          ; 0x4899
    push es                          ; 0x489a
    push si                          ; 0x489b
    push di                          ; 0x489c
    mov ax, ds                       ; 0x489d
    mov es, ax                       ; 0x489f
    push word [bp + 0xe]             ; 0x48a1
    push word [bp + 0xc]             ; 0x48a4
    call far [cs:data_0216]          ; 0x48a7
    add sp, byte 4                   ; 0x48ac
    pop di                           ; 0x48af
    pop si                           ; 0x48b0
    pop es                           ; 0x48b1
    pop ds                           ; 0x48b2
    mov sp, bp                       ; 0x48b3
    pop bp                           ; 0x48b5
    ret                              ; 0x48b6
    db 0x00
