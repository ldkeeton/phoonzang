%include "structs/structs.inc"
%include "structs/data_4540.inc"
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
data_0391 equ 0x0391
data_0a48 equ 0x0a48
data_11cb equ 0x11cb
data_11cd equ 0x11cd
data_148e equ 0x148e
dos_con_loc_1501 equ 0x1501
data_1bd5 equ 0x1bd5
data_1bd7 equ 0x1bd7
data_1bd9 equ 0x1bd9
data_1bdb equ 0x1bdb
data_1bdd equ 0x1bdd
data_1be1 equ 0x1be1
data_1be3 equ 0x1be3
data_1be5 equ 0x1be5
data_1beb equ 0x1beb
data_1bed equ 0x1bed
data_1bef equ 0x1bef
data_1bf1 equ 0x1bf1
data_1bf3 equ 0x1bf3
data_1bf5 equ 0x1bf5
data_1bf7 equ 0x1bf7
data_1bf9 equ 0x1bf9
data_1bfb equ 0x1bfb
data_258d equ 0x258d
data_258f equ 0x258f
data_2591 equ 0x2591
data_2599 equ 0x2599
data_259b equ 0x259b
data_259d equ 0x259d
data_2b02 equ 0x2b02
data_2b04 equ 0x2b04
data_2b06 equ 0x2b06
data_2b08 equ 0x2b08
data_3296 equ 0x3296
data_3297 equ 0x3297
data_36dd equ 0x36dd
data_3705 equ 0x3705
data_3b21 equ 0x3b21
data_3b22 equ 0x3b22
data_3b34 equ 0x3b34
data_4540 equ 0x4540
dos_read_file_7 equ 0x4af7

loc_0000:
    jmp near @..local.l1             ; 0x0000
@..local.l1:
    call mouse_init                  ; 0x0003
    retf                             ; 0x0006

    db 0xe8, 0x06, 0x18, 0xcb, 0xe8, 0x01, 0x19, 0xcb, 0xe8, 0xee, 0x18, 0xcb, 0xe8, 0xab, 0x18, 0xcb
    db 0xe8, 0x6b, 0x30, 0xcb, 0xe8, 0x00, 0x36, 0xcb, 0xe8, 0xd1, 0x0d, 0xcb, 0xe8, 0xa9, 0x10, 0xcb
    db 0xe8, 0xae, 0x14, 0xcb, 0xe8, 0x07, 0x30, 0xcb, 0xe8, 0x61, 0x02, 0xcb, 0xe8, 0x11, 0x04, 0xcb
    db 0xe8, 0x28, 0x04, 0xcb, 0xe8, 0x3f, 0x04, 0xcb, 0xe8, 0x54, 0x04, 0xcb, 0xe8, 0x6b, 0x04, 0xcb
    db 0xe8, 0x85, 0x0b, 0xcb, 0xe8, 0xa8, 0x0b, 0xcb, 0xe8, 0xf3, 0x0b, 0xcb, 0xe8, 0x45, 0x0c, 0xcb
    db 0xe8, 0xfd, 0x0c, 0xcb, 0xe8, 0xdf, 0x2f, 0xcb, 0xe8, 0x30, 0x19, 0xcb, 0xe8, 0x5b, 0x19, 0xcb
    db 0xe8, 0xcf, 0x03, 0xcb, 0xe8, 0x4f, 0x0e, 0xcb, 0xe8, 0x6d, 0x31, 0xcb, 0xe8, 0x7e, 0x31, 0xcb
    db 0xe8, 0xc6, 0x31, 0xcb, 0xe8, 0xc3, 0x31, 0xcb, 0xe8, 0xc0, 0x31, 0xcb, 0xe8, 0xbd, 0x31, 0xcb
    db 0xe8, 0x94, 0x33, 0xcb, 0xe8, 0x32, 0x34, 0xcb, 0xe8, 0xfe, 0x13, 0xcb, 0xe8, 0xda, 0x34, 0xcb
    db 0xe8, 0x20, 0x35, 0xcb, 0xe8, 0xa6, 0x31, 0xcb, 0xe8, 0x6f, 0x40, 0xcb, 0xe8, 0x0d, 0x33, 0xcb
    db 0xe8, 0xad, 0x43, 0xcb, 0xe8, 0x76, 0x45, 0xcb, 0xe8, 0x73, 0x47, 0xcb, 0xe8, 0x52, 0x49, 0xcb
    db 0xe8, 0x92, 0x4b, 0xcb, 0xe8, 0x1b, 0x4d, 0xcb, 0xe8, 0x86, 0x4d, 0xcb, 0xe8, 0x9e, 0x4d, 0xcb
    db 0xe8, 0xe3, 0x4d, 0xcb, 0xe8, 0x6e, 0x4f, 0xcb, 0xe8, 0xff, 0x4f, 0xcb, 0xe8, 0x42, 0x50, 0xcb
    db 0xe8, 0x56, 0x50, 0xcb, 0xe8, 0x6a, 0x50, 0xcb, 0x80, 0x41, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
    db 0x40, 0x01, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x30, 0x05, 0x00, 0x00, 0xd0, 0x01
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
leaf_loc_0447:
    push bp                          ; 0x0447
    mov bp, sp                       ; 0x0448
    push es                          ; 0x044a
    mov ax, ds                       ; 0x044b
    mov es, ax                       ; 0x044d
    mov ax, word [bp + 0xc]          ; 0x044f
    mov word [cs:math_loc_0293], ax  ; 0x0452
    mov ax, word [bp + 0xe]          ; 0x0456
    mov word [cs:data_0291], ax      ; 0x0459
    pop es                           ; 0x045d
    mov sp, bp                       ; 0x045e
    pop bp                           ; 0x0460
    ret                              ; 0x0461
loc_0462:
    push bp                          ; 0x0462
    mov bp, sp                       ; 0x0463
    push es                          ; 0x0465
    mov ax, ds                       ; 0x0466
    mov es, ax                       ; 0x0468
    mov ax, word [bp + 0xc]          ; 0x046a
    mov word [cs:data_0295], ax      ; 0x046d
    mov ax, word [bp + 0xe]          ; 0x0471
    mov word [cs:data_0297], ax      ; 0x0474
    pop es                           ; 0x0478
    mov sp, bp                       ; 0x0479
    pop bp                           ; 0x047b
    ret                              ; 0x047c
math_loc_047d:
    push bp                          ; 0x047d
    mov bp, sp                       ; 0x047e
    mov ax, word [cs:data_0295]      ; 0x0480
    mov bx, word [bp + 0xc]          ; 0x0484
    mov word [bx], ax                ; 0x0487
    mov ax, word [cs:data_0297]      ; 0x0489
    mov bx, word [bp + 0xe]          ; 0x048d
    mov word [bx], ax                ; 0x0490
    mov sp, bp                       ; 0x0492
    pop bp                           ; 0x0494
    ret                              ; 0x0495
math_loc_0496:
    push bp                          ; 0x0496
    mov bp, sp                       ; 0x0497
    push es                          ; 0x0499
    push di                          ; 0x049a
    mov ax, word [cs:data_01e5]      ; 0x049b
    mov es, ax                       ; 0x049f
    xor di, di                       ; 0x04a1
    mov ax, word [bp + 0xc]          ; 0x04a3
    mov cx, 0xfa00                   ; 0x04a6
    rep stosb                        ; 0x04a9
    pop di                           ; 0x04ab
    pop es                           ; 0x04ac
    mov sp, bp                       ; 0x04ad
    pop bp                           ; 0x04af
    ret                              ; 0x04b0
loc_04b1:
    push bp                          ; 0x04b1
    mov bp, sp                       ; 0x04b2
    sub sp, byte 0x36                ; 0x04b4
    push ds                          ; 0x04b7
    push es                          ; 0x04b8
    push di                          ; 0x04b9
    push si                          ; 0x04ba
    xor ax, ax                       ; 0x04bb
    mov word [bp - 0x002e], ax       ; 0x04bd
    mov word [bp - 0x002a], ax       ; 0x04c0
    mov word [bp - 0x0036], ax       ; 0x04c3
    mov ax, ds                       ; 0x04c6
    mov es, ax                       ; 0x04c8
    call bios_mouse_loc_1900         ; 0x04ca
    call leaf_loc_0949               ; 0x04cd
    mov ax, word [cs:data_01e5]      ; 0x04d0
    mov ds, ax                       ; 0x04d4
    mov ax, 0xa000                   ; 0x04d6
    mov es, ax                       ; 0x04d9
    mov ax, word [bp + 0xe]          ; 0x04db
    mov bx, 0x50                     ; 0x04de
    mul bx                           ; 0x04e1
    mov bx, word [bp + 0xc]          ; 0x04e3
    mov cl, 2                        ; 0x04e6
    shr bx, cl                       ; 0x04e8
    add ax, bx                       ; 0x04ea
    mov word [bp - 0x0002], ax       ; 0x04ec
    mov cx, word [bp + 0xc]          ; 0x04ef
    and cl, 3                        ; 0x04f2
    shl cl, 1                        ; 0x04f5
    mov al, 0x80                     ; 0x04f7
    shr al, cl                       ; 0x04f9
    mov byte [bp - 0x0014], al       ; 0x04fb
    mov ax, word [bp + 0xe]          ; 0x04fe
    mov bx, 0x140                    ; 0x0501
    mul bx                           ; 0x0504
    add ax, word [bp + 0xc]          ; 0x0506
    mov word [bp - 0x0012], ax       ; 0x0509
    mov ax, word [bp + 0x10]         ; 0x050c
    sub ax, word [bp + 0xc]          ; 0x050f
    inc ax                           ; 0x0512
    mov word [bp - 0x0004], ax       ; 0x0513
    mov ax, word [bp + 0x12]         ; 0x0516
    sub ax, word [bp + 0xe]          ; 0x0519
    inc ax                           ; 0x051c
    mov word [bp - 0x0016], ax       ; 0x051d
    xor ax, ax                       ; 0x0520
    mov word [bp - 0x0026], ax       ; 0x0522
    mov ax, word [bp + 0x10]         ; 0x0525
    mov bx, word [bp + 0xc]          ; 0x0528
    mov dx, bx                       ; 0x052b
    sub ax, bx                       ; 0x052d
    inc ax                           ; 0x052f
    and dx, 3                        ; 0x0530
    je short @..local.l2             ; 0x0534
    inc word [bp - 0x0026]           ; 0x0536
@..local.l2:
    mov bx, 4                        ; 0x0539
    sub bx, dx                       ; 0x053c
    and bl, 3                        ; 0x053e
    mov dx, bx                       ; 0x0541
    mov word [bp - 0x0028], dx       ; 0x0543
    sub ax, dx                       ; 0x0546
    jae short @..local.l3            ; 0x0548
    add ax, dx                       ; 0x054a
    mov word [bp - 0x0028], ax       ; 0x054c
    mov byte [bp - 0x0036], 1        ; 0x054f
    jmp near @..local.l5             ; 0x0553
@..local.l3:
    mov dx, ax                       ; 0x0556
    shr ax, 1                        ; 0x0558
    shr ax, 1                        ; 0x055a
    add word [bp - 0x0026], ax       ; 0x055c
    mov word [bp - 0x002e], ax       ; 0x055f
    and dx, 3                        ; 0x0562
    je short @..local.l4             ; 0x0566
    inc word [bp - 0x0026]           ; 0x0568
@..local.l4:
    shl dx, 1                        ; 0x056b
    mov word [bp - 0x002a], dx       ; 0x056d
@..local.l5:
    mov ax, word [bp - 0x0016]       ; 0x0570
    mov bx, word [bp - 0x0026]       ; 0x0573
    mul bx                           ; 0x0576
    mov word [bp - 0x0024], ax       ; 0x0578
    shl ax, 1                        ; 0x057b
    mov word [bp - 0x0032], ax       ; 0x057d
    add ax, word [bp - 0x0024]       ; 0x0580
    mov word [bp - 0x0034], ax       ; 0x0583
    add ax, word [bp - 0x0024]       ; 0x0586
    add ax, strict word 0xf          ; 0x0589
    mov cl, 4                        ; 0x058c
    shr ax, cl                       ; 0x058e
    add ax, word [cs:data_11cd]      ; 0x0590
    cmp ax, 0x4180                   ; 0x0595
    jae short @..local.l6            ; 0x0598
    cmp byte [bp - 0x0036], 0        ; 0x059a
    jne short @..local.l6            ; 0x059e
    jmp near @..local.l12            ; 0x05a0
@..local.l6:
    jmp near @..local.l7             ; 0x05a3
@..local.l7:
    shl word [bp - 0x0004], 1        ; 0x05a6
    mov dx, 0x3ce                    ; 0x05a9
    mov al, 5                        ; 0x05ac
    out dx, al                       ; 0x05ae
    inc dx                           ; 0x05af
    mov al, 2                        ; 0x05b0
    out dx, al                       ; 0x05b2
    mov dx, 0x3ce                    ; 0x05b3
    mov al, 8                        ; 0x05b6
    out dx, al                       ; 0x05b8
    inc dx                           ; 0x05b9
@..local.l8:
    mov di, word [bp - 0x0002]       ; 0x05ba
    mov si, word [bp - 0x0012]       ; 0x05bd
    mov bx, dos_mem_loc_33b3         ; 0x05c0
    mov cl, 4                        ; 0x05c3
    test byte [bp - 0x0014], 0xaa    ; 0x05c5
    jne short @..local.l9            ; 0x05c9
    xor cl, cl                       ; 0x05cb
    inc word [bp - 0x0012]           ; 0x05cd
@..local.l9:
    mov dx, 0x3cf                    ; 0x05d0
    mov al, byte [bp - 0x0014]       ; 0x05d3
    out dx, al                       ; 0x05d6
    ror byte [bp - 0x0014], 1        ; 0x05d7
    cmp byte [bp - 0x0014], 0x80     ; 0x05da
    jne short @..local.l10           ; 0x05de
    inc word [bp - 0x0002]           ; 0x05e0
@..local.l10:
    mov dx, word [bp - 0x0016]       ; 0x05e3
@..local.l11:
    lodsb                            ; 0x05e6
    add si, strict word 0x13f        ; 0x05e7
    cs xlatb                         ; 0x05eb
    shr al, cl                       ; 0x05ed
    mov ch, byte [es:di]             ; 0x05ef
    mov byte [es:di], al             ; 0x05f2
    add di, byte 0x50                ; 0x05f5
    dec dx                           ; 0x05f8
    jne short @..local.l11           ; 0x05f9
    dec word [bp - 0x0004]           ; 0x05fb
    jne short @..local.l8            ; 0x05fe
    mov al, 0xff                     ; 0x0600
    mov dx, 0x3cf                    ; 0x0602
    out dx, al                       ; 0x0605
    mov dx, 0x3ce                    ; 0x0606
    mov al, 5                        ; 0x0609
    out dx, al                       ; 0x060b
    inc dx                           ; 0x060c
    mov al, 0                        ; 0x060d
    out dx, al                       ; 0x060f
    call math_loc_0b91               ; 0x0610
    call bios_mouse_loc_18c1         ; 0x0613
    pop si                           ; 0x0616
    pop di                           ; 0x0617
    pop es                           ; 0x0618
    pop ds                           ; 0x0619
    mov sp, bp                       ; 0x061a
    pop bp                           ; 0x061c
    ret                              ; 0x061d
@..local.l12:
    mov ax, word [cs:data_11cd]      ; 0x061e
    add ax, word [cs:data_01e1]      ; 0x0622
    mov es, ax                       ; 0x0627
    mov ax, 0xa000                   ; 0x0629
    mov ds, ax                       ; 0x062c
    xor di, di                       ; 0x062e
    mov cx, word [bp - 0x0032]       ; 0x0630
    xor ax, ax                       ; 0x0633
    rep stosw                        ; 0x0635
    mov dx, 0x3ce                    ; 0x0637
    mov al, 5                        ; 0x063a
    out dx, al                       ; 0x063c
    inc dx                           ; 0x063d
    mov al, 0                        ; 0x063e
    out dx, al                       ; 0x0640
    mov cx, word [bp - 0x0028]       ; 0x0641
    or cx, cx                        ; 0x0644
    jne short @..local.l13           ; 0x0646
    jmp near @..local.l18            ; 0x0648
@..local.l13:
    shl cx, 1                        ; 0x064b
    mov dx, 0x3ce                    ; 0x064d
    mov al, 4                        ; 0x0650
    out dx, al                       ; 0x0652
    inc dx                           ; 0x0653
    mov al, 0                        ; 0x0654
    out dx, al                       ; 0x0656
    xor di, di                       ; 0x0657
    mov si, word [bp - 0x0002]       ; 0x0659
    mov bx, word [bp - 0x0016]       ; 0x065c
@..local.l14:
    mov al, byte [si]                ; 0x065f
    shr al, cl                       ; 0x0661
    mov byte [es:di], al             ; 0x0663
    add si, byte 0x50                ; 0x0666
    add di, word [bp - 0x0026]       ; 0x0669
    dec bx                           ; 0x066c
    jne short @..local.l14           ; 0x066d
    mov dx, 0x3ce                    ; 0x066f
    mov al, 4                        ; 0x0672
    out dx, al                       ; 0x0674
    inc dx                           ; 0x0675
    mov al, 1                        ; 0x0676
    out dx, al                       ; 0x0678
    mov di, word [bp - 0x0024]       ; 0x0679
    mov si, word [bp - 0x0002]       ; 0x067c
    mov bx, word [bp - 0x0016]       ; 0x067f
@..local.l15:
    mov al, byte [si]                ; 0x0682
    shr al, cl                       ; 0x0684
    mov byte [es:di], al             ; 0x0686
    add si, byte 0x50                ; 0x0689
    add di, word [bp - 0x0026]       ; 0x068c
    dec bx                           ; 0x068f
    jne short @..local.l15           ; 0x0690
    mov dx, 0x3ce                    ; 0x0692
    mov al, 4                        ; 0x0695
    out dx, al                       ; 0x0697
    inc dx                           ; 0x0698
    mov al, 2                        ; 0x0699
    out dx, al                       ; 0x069b
    mov di, word [bp - 0x0032]       ; 0x069c
    mov si, word [bp - 0x0002]       ; 0x069f
    mov bx, word [bp - 0x0016]       ; 0x06a2
@..local.l16:
    mov al, byte [si]                ; 0x06a5
    shr al, cl                       ; 0x06a7
    mov byte [es:di], al             ; 0x06a9
    add si, byte 0x50                ; 0x06ac
    add di, word [bp - 0x0026]       ; 0x06af
    dec bx                           ; 0x06b2
    jne short @..local.l16           ; 0x06b3
    mov dx, 0x3ce                    ; 0x06b5
    mov al, 4                        ; 0x06b8
    out dx, al                       ; 0x06ba
    inc dx                           ; 0x06bb
    mov al, 3                        ; 0x06bc
    out dx, al                       ; 0x06be
    mov di, word [bp - 0x0034]       ; 0x06bf
    mov si, word [bp - 0x0002]       ; 0x06c2
    mov bx, word [bp - 0x0016]       ; 0x06c5
@..local.l17:
    mov al, byte [si]                ; 0x06c8
    shr al, cl                       ; 0x06ca
    mov byte [es:di], al             ; 0x06cc
    add si, byte 0x50                ; 0x06cf
    add di, word [bp - 0x0026]       ; 0x06d2
    dec bx                           ; 0x06d5
    jne short @..local.l17           ; 0x06d6
@..local.l18:
    mov cx, word [bp - 0x002a]       ; 0x06d8
    or cx, cx                        ; 0x06db
    jne short @..local.l19           ; 0x06dd
    jmp near @..local.l24            ; 0x06df
@..local.l19:
    mov di, word [bp - 0x0026]       ; 0x06e2
    dec di                           ; 0x06e5
    mov si, word [bp - 0x0002]       ; 0x06e6
    add si, di                       ; 0x06e9
    push si                          ; 0x06eb
    mov dx, 0x3ce                    ; 0x06ec
    mov al, 4                        ; 0x06ef
    out dx, al                       ; 0x06f1
    inc dx                           ; 0x06f2
    mov al, 0                        ; 0x06f3
    out dx, al                       ; 0x06f5
    pop si                           ; 0x06f6
    push si                          ; 0x06f7
    mov bx, word [bp - 0x0016]       ; 0x06f8
@..local.l20:
    mov al, byte [si]                ; 0x06fb
    shl al, cl                       ; 0x06fd
    mov byte [es:di], al             ; 0x06ff
    add si, byte 0x50                ; 0x0702
    add di, word [bp - 0x0026]       ; 0x0705
    dec bx                           ; 0x0708
    jne short @..local.l20           ; 0x0709
    mov dx, 0x3ce                    ; 0x070b
    mov al, 4                        ; 0x070e
    out dx, al                       ; 0x0710
    inc dx                           ; 0x0711
    mov al, 1                        ; 0x0712
    out dx, al                       ; 0x0714
    mov di, word [bp - 0x0026]       ; 0x0715
    dec di                           ; 0x0718
    add di, word [bp - 0x0024]       ; 0x0719
    pop si                           ; 0x071c
    push si                          ; 0x071d
    mov bx, word [bp - 0x0016]       ; 0x071e
@..local.l21:
    mov al, byte [si]                ; 0x0721
    shl al, cl                       ; 0x0723
    mov byte [es:di], al             ; 0x0725
    add si, byte 0x50                ; 0x0728
    add di, word [bp - 0x0026]       ; 0x072b
    dec bx                           ; 0x072e
    jne short @..local.l21           ; 0x072f
    mov dx, 0x3ce                    ; 0x0731
    mov al, 4                        ; 0x0734
    out dx, al                       ; 0x0736
    inc dx                           ; 0x0737
    mov al, 2                        ; 0x0738
    out dx, al                       ; 0x073a
    mov di, word [bp - 0x0026]       ; 0x073b
    dec di                           ; 0x073e
    add di, word [bp - 0x0032]       ; 0x073f
    pop si                           ; 0x0742
    push si                          ; 0x0743
    mov bx, word [bp - 0x0016]       ; 0x0744
@..local.l22:
    mov al, byte [si]                ; 0x0747
    shl al, cl                       ; 0x0749
    mov byte [es:di], al             ; 0x074b
    add si, byte 0x50                ; 0x074e
    add di, word [bp - 0x0026]       ; 0x0751
    dec bx                           ; 0x0754
    jne short @..local.l22           ; 0x0755
    mov dx, 0x3ce                    ; 0x0757
    mov al, 4                        ; 0x075a
    out dx, al                       ; 0x075c
    inc dx                           ; 0x075d
    mov al, 3                        ; 0x075e
    out dx, al                       ; 0x0760
    mov di, word [bp - 0x0026]       ; 0x0761
    dec di                           ; 0x0764
    add di, word [bp - 0x0034]       ; 0x0765
    pop si                           ; 0x0768
    mov bx, word [bp - 0x0016]       ; 0x0769
@..local.l23:
    mov al, byte [si]                ; 0x076c
    shl al, cl                       ; 0x076e
    mov byte [es:di], al             ; 0x0770
    add si, byte 0x50                ; 0x0773
    add di, word [bp - 0x0026]       ; 0x0776
    dec bx                           ; 0x0779
    jne short @..local.l23           ; 0x077a
@..local.l24:
    mov ax, word [cs:data_01e5]      ; 0x077c
    mov ds, ax                       ; 0x0780
    xor di, di                       ; 0x0782
    mov cx, word [bp - 0x0016]       ; 0x0784
@..local.l25:
    push cx                          ; 0x0787
    mov si, word [bp - 0x0012]       ; 0x0788
    add word [bp - 0x0012], strict word 0x140 ; 0x078b
    mov cx, word [bp - 0x0028]       ; 0x0790
    or cx, cx                        ; 0x0793
    je short @..local.l27            ; 0x0795
    mov byte [bp - 0x002c], cl       ; 0x0797
    mov cl, byte [es:di]             ; 0x079a
    mov bx, word [bp - 0x0024]       ; 0x079d
    mov ch, byte [es:bx + di]        ; 0x07a0
    add bx, word [bp - 0x0024]       ; 0x07a3
    mov dl, byte [es:bx + di]        ; 0x07a6
    add bx, word [bp - 0x0024]       ; 0x07a9
    mov dh, byte [es:bx + di]        ; 0x07ac
@..local.l26:
    mov bx, dos_mem_loc_33b3         ; 0x07af
    lodsb                            ; 0x07b2
    cs xlatb                         ; 0x07b3
    rcl al, 1                        ; 0x07b5
    rcl dh, 1                        ; 0x07b7
    rcl al, 1                        ; 0x07b9
    rcl dl, 1                        ; 0x07bb
    rcl al, 1                        ; 0x07bd
    rcl ch, 1                        ; 0x07bf
    rcl al, 1                        ; 0x07c1
    rcl cl, 1                        ; 0x07c3
    rcl al, 1                        ; 0x07c5
    rcl dh, 1                        ; 0x07c7
    rcl al, 1                        ; 0x07c9
    rcl dl, 1                        ; 0x07cb
    rcl al, 1                        ; 0x07cd
    rcl ch, 1                        ; 0x07cf
    rcl al, 1                        ; 0x07d1
    rcl cl, 1                        ; 0x07d3
    dec byte [bp - 0x002c]           ; 0x07d5
    jne short @..local.l26           ; 0x07d8
    mov byte [es:di], cl             ; 0x07da
    mov bx, word [bp - 0x0024]       ; 0x07dd
    mov byte [es:bx + di], ch        ; 0x07e0
    add bx, word [bp - 0x0024]       ; 0x07e3
    mov byte [es:bx + di], dl        ; 0x07e6
    add bx, word [bp - 0x0024]       ; 0x07e9
    mov byte [es:bx + di], dh        ; 0x07ec
    inc di                           ; 0x07ef
@..local.l27:
    mov ax, word [bp - 0x002e]       ; 0x07f0
    or ax, ax                        ; 0x07f3
    je short @..local.l30            ; 0x07f5
    mov word [bp - 0x002c], ax       ; 0x07f7
@..local.l28:
    xor cx, cx                       ; 0x07fa
    xor dx, dx                       ; 0x07fc
    mov byte [bp - 0x0030], 4        ; 0x07fe
@..local.l29:
    mov bx, dos_mem_loc_33b3         ; 0x0802
    lodsb                            ; 0x0805
    cs xlatb                         ; 0x0806
    rcl al, 1                        ; 0x0808
    rcl dh, 1                        ; 0x080a
    rcl al, 1                        ; 0x080c
    rcl dl, 1                        ; 0x080e
    rcl al, 1                        ; 0x0810
    rcl ch, 1                        ; 0x0812
    rcl al, 1                        ; 0x0814
    rcl cl, 1                        ; 0x0816
    rcl al, 1                        ; 0x0818
    rcl dh, 1                        ; 0x081a
    rcl al, 1                        ; 0x081c
    rcl dl, 1                        ; 0x081e
    rcl al, 1                        ; 0x0820
    rcl ch, 1                        ; 0x0822
    rcl al, 1                        ; 0x0824
    rcl cl, 1                        ; 0x0826
    dec byte [bp - 0x0030]           ; 0x0828
    jne short @..local.l29           ; 0x082b
    mov byte [es:di], cl             ; 0x082d
    mov bx, word [bp - 0x0024]       ; 0x0830
    mov byte [es:bx + di], ch        ; 0x0833
    add bx, word [bp - 0x0024]       ; 0x0836
    mov byte [es:bx + di], dl        ; 0x0839
    add bx, word [bp - 0x0024]       ; 0x083c
    mov byte [es:bx + di], dh        ; 0x083f
    inc di                           ; 0x0842
    dec word [bp - 0x002c]           ; 0x0843
    jne short @..local.l28           ; 0x0846
@..local.l30:
    mov ax, word [bp - 0x002a]       ; 0x0848
    mov byte [bp - 0x002c], al       ; 0x084b
    or al, al                        ; 0x084e
    je short @..local.l32            ; 0x0850
    xor ah, ah                       ; 0x0852
    shr ax, 1                        ; 0x0854
    dec ax                           ; 0x0856
    add si, ax                       ; 0x0857
    mov cl, byte [es:di]             ; 0x0859
    mov bx, word [bp - 0x0024]       ; 0x085c
    mov ch, byte [es:bx + di]        ; 0x085f
    add bx, word [bp - 0x0024]       ; 0x0862
    mov dl, byte [es:bx + di]        ; 0x0865
    add bx, word [bp - 0x0024]       ; 0x0868
    mov dh, byte [es:bx + di]        ; 0x086b
@..local.l31:
    mov bx, dos_mem_loc_33b3         ; 0x086e
    mov al, byte [si]                ; 0x0871
    dec si                           ; 0x0873
    cs xlatb                         ; 0x0874
    rcr al, 1                        ; 0x0876
    rcr cl, 1                        ; 0x0878
    rcr al, 1                        ; 0x087a
    rcr ch, 1                        ; 0x087c
    rcr al, 1                        ; 0x087e
    rcr dl, 1                        ; 0x0880
    rcr al, 1                        ; 0x0882
    rcr dh, 1                        ; 0x0884
    rcr al, 1                        ; 0x0886
    rcr cl, 1                        ; 0x0888
    rcr al, 1                        ; 0x088a
    rcr ch, 1                        ; 0x088c
    rcr al, 1                        ; 0x088e
    rcr dl, 1                        ; 0x0890
    rcr al, 1                        ; 0x0892
    rcr dh, 1                        ; 0x0894
    sub byte [bp - 0x002c], 2        ; 0x0896
    jne short @..local.l31           ; 0x089a
    mov byte [es:di], cl             ; 0x089c
    mov bx, word [bp - 0x0024]       ; 0x089f
    mov byte [es:bx + di], ch        ; 0x08a2
    add bx, word [bp - 0x0024]       ; 0x08a5
    mov byte [es:bx + di], dl        ; 0x08a8
    add bx, word [bp - 0x0024]       ; 0x08ab
    mov byte [es:bx + di], dh        ; 0x08ae
    inc di                           ; 0x08b1
@..local.l32:
    pop cx                           ; 0x08b2
    dec cx                           ; 0x08b3
    je short @..local.l33            ; 0x08b4
    jmp near @..local.l25            ; 0x08b6
@..local.l33:
    mov ax, 0xa000                   ; 0x08b9
    mov es, ax                       ; 0x08bc
    mov ax, word [cs:data_01e1]      ; 0x08be
    add ax, word [cs:data_11cd]      ; 0x08c2
    mov ds, ax                       ; 0x08c7
    xor si, si                       ; 0x08c9
    mov di, word [bp - 0x0002]       ; 0x08cb
    mov cx, word [bp - 0x0016]       ; 0x08ce
@..local.l34:
    push cx                          ; 0x08d1
    mov dx, 0x3c4                    ; 0x08d2
    mov al, 2                        ; 0x08d5
    out dx, al                       ; 0x08d7
    inc dx                           ; 0x08d8
    mov al, 1                        ; 0x08d9
    out dx, al                       ; 0x08db
    push si                          ; 0x08dc
    push di                          ; 0x08dd
    mov cx, word [bp - 0x0026]       ; 0x08de
    rep movsb                        ; 0x08e1
    pop di                           ; 0x08e3
    pop si                           ; 0x08e4
    mov dx, 0x3c4                    ; 0x08e5
    mov al, 2                        ; 0x08e8
    out dx, al                       ; 0x08ea
    inc dx                           ; 0x08eb
    mov al, 2                        ; 0x08ec
    out dx, al                       ; 0x08ee
    push si                          ; 0x08ef
    push di                          ; 0x08f0
    add si, word [bp - 0x0024]       ; 0x08f1
    mov cx, word [bp - 0x0026]       ; 0x08f4
    rep movsb                        ; 0x08f7
    pop di                           ; 0x08f9
    pop si                           ; 0x08fa
    mov dx, 0x3c4                    ; 0x08fb
    mov al, 2                        ; 0x08fe
    out dx, al                       ; 0x0900
    inc dx                           ; 0x0901
    mov al, 4                        ; 0x0902
    out dx, al                       ; 0x0904
    push si                          ; 0x0905
    push di                          ; 0x0906
    add si, word [bp - 0x0032]       ; 0x0907
    mov cx, word [bp - 0x0026]       ; 0x090a
    rep movsb                        ; 0x090d
    pop di                           ; 0x090f
    pop si                           ; 0x0910
    mov dx, 0x3c4                    ; 0x0911
    mov al, 2                        ; 0x0914
    out dx, al                       ; 0x0916
    inc dx                           ; 0x0917
    mov al, 8                        ; 0x0918
    out dx, al                       ; 0x091a
    push si                          ; 0x091b
    push di                          ; 0x091c
    add si, word [bp - 0x0034]       ; 0x091d
    mov cx, word [bp - 0x0026]       ; 0x0920
    rep movsb                        ; 0x0923
    pop di                           ; 0x0925
    pop si                           ; 0x0926
    add di, byte 0x50                ; 0x0927
    add si, word [bp - 0x0026]       ; 0x092a
    pop cx                           ; 0x092d
    loop @..local.l34                ; 0x092e
    mov dx, 0x3c4                    ; 0x0930
    mov al, 2                        ; 0x0933
    out dx, al                       ; 0x0935
    inc dx                           ; 0x0936
    mov al, 0xf                      ; 0x0937
    out dx, al                       ; 0x0939
    call math_loc_0b91               ; 0x093a
    call bios_mouse_loc_18c1         ; 0x093d
    pop si                           ; 0x0940
    pop di                           ; 0x0941
    pop es                           ; 0x0942
    pop ds                           ; 0x0943
    mov sp, bp                       ; 0x0944
    pop bp                           ; 0x0946
    ret                              ; 0x0947
    db 0x00
leaf_loc_0949:
    cmp byte [cs:data_0228], 1       ; 0x0949
    jne short @..leaf_loc_0949.l1    ; 0x094f
    mov cx, word [cs:data_1bd9]      ; 0x0951
    and cx, strict word 0xfffc       ; 0x0956
    mov dx, word [cs:data_1bdb]      ; 0x095a
    cmp word [bp + 0x10], cx         ; 0x095f
    jb short @..leaf_loc_0949.l1     ; 0x0962
    cmp word [bp + 0x12], dx         ; 0x0964
    jb short @..leaf_loc_0949.l1     ; 0x0967
    add cx, word [cs:data_1be1]      ; 0x0969
    add cx, word [cs:data_1be1]      ; 0x096e
    add cx, word [cs:data_1be1]      ; 0x0973
    add cx, word [cs:data_1be1]      ; 0x0978
    dec cx                           ; 0x097d
    add dx, word [cs:data_1be3]      ; 0x097e
    dec dx                           ; 0x0983
    cmp cx, word [bp + 0xc]          ; 0x0984
    jb short @..leaf_loc_0949.l1     ; 0x0987
    cmp dx, word [bp + 0xe]          ; 0x0989
    jae short @..leaf_loc_0949.l2    ; 0x098c
@..leaf_loc_0949.l1:
    mov byte [cs:data_0a48], 0       ; 0x098e
    jmp near @..leaf_loc_0949.l16    ; 0x0994
@..leaf_loc_0949.l2:
    mov byte [cs:data_0a48], 1       ; 0x0997
    mov cx, word [cs:data_1bd9]      ; 0x099d
    and cx, strict word 0xfffc       ; 0x09a2
    mov ax, cx                       ; 0x09a6
    cmp word [bp + 0xc], cx          ; 0x09a8
    jb short @..leaf_loc_0949.l3     ; 0x09ab
    mov ax, word [bp + 0xc]          ; 0x09ad
@..leaf_loc_0949.l3:
    mov word [bp - 0x0006], ax       ; 0x09b0
    mov dx, word [cs:data_1bdb]      ; 0x09b3
    mov bx, dx                       ; 0x09b8
    cmp word [bp + 0xe], dx          ; 0x09ba
    jb short @..leaf_loc_0949.l4     ; 0x09bd
    mov bx, word [bp + 0xe]          ; 0x09bf
@..leaf_loc_0949.l4:
    mov word [bp - 0x0008], bx       ; 0x09c2
    sub ax, cx                       ; 0x09c5
    sub bx, dx                       ; 0x09c7
    mov word [bp - 0x000a], ax       ; 0x09c9
    mov word [bp - 0x000c], bx       ; 0x09cc
    mov cx, word [cs:data_1be1]      ; 0x09cf
    shl cx, 1                        ; 0x09d4
    shl cx, 1                        ; 0x09d6
    mov dx, word [cs:data_1be3]      ; 0x09d8
    sub cx, ax                       ; 0x09dd
    mov word [bp - 0x000e], cx       ; 0x09df
    sub dx, bx                       ; 0x09e2
    mov word [bp - 0x0010], dx       ; 0x09e4
    mov ax, word [bp - 0x0006]       ; 0x09e7
    add ax, word [bp - 0x000e]       ; 0x09ea
    dec ax                           ; 0x09ed
    cmp ax, word [bp + 0x10]         ; 0x09ee
    jb short @..leaf_loc_0949.l5     ; 0x09f1
    mov ax, word [bp + 0x10]         ; 0x09f3
    sub ax, word [bp - 0x0006]       ; 0x09f6
    inc ax                           ; 0x09f9
    mov word [bp - 0x000e], ax       ; 0x09fa
@..leaf_loc_0949.l5:
    mov ax, word [bp - 0x0008]       ; 0x09fd
    add ax, word [bp - 0x0010]       ; 0x0a00
    dec ax                           ; 0x0a03
    cmp ax, word [bp + 0x12]         ; 0x0a04
    jb short @..leaf_loc_0949.l6     ; 0x0a07
    mov ax, word [bp + 0x12]         ; 0x0a09
    sub ax, word [bp - 0x0008]       ; 0x0a0c
    inc ax                           ; 0x0a0f
    mov word [bp - 0x0010], ax       ; 0x0a10
@..leaf_loc_0949.l6:
    mov ax, word [bp - 0x0008]       ; 0x0a13
    mov bx, 0x140                    ; 0x0a16
    mul bx                           ; 0x0a19
    add ax, word [bp - 0x0006]       ; 0x0a1b
    mov si, ax                       ; 0x0a1e
    mov ax, word [bp - 0x000c]       ; 0x0a20
    mov bx, word [cs:data_1be1]      ; 0x0a23
    mul bx                           ; 0x0a28
    mov bx, word [bp - 0x000a]       ; 0x0a2a
    shr bx, 1                        ; 0x0a2d
    shr bx, 1                        ; 0x0a2f
    add ax, bx                       ; 0x0a31
    add ax, word [cs:data_1bd5]      ; 0x0a33
    mov di, ax                       ; 0x0a38
    mov bx, word [bp - 0x000a]       ; 0x0a3a
    and bx, 3                        ; 0x0a3d
    shl bx, 1                        ; 0x0a41
    mov cx, 6                        ; 0x0a43
    sub cx, bx                       ; 0x0a46
    mov word [bp - 0x0020], cx       ; 0x0a48
    mov dx, 3                        ; 0x0a4b
    shl dx, cl                       ; 0x0a4e
    not dl                           ; 0x0a50
    mov byte [bp - 0x0022], dl       ; 0x0a52
    mov ax, word [cs:data_01e5]      ; 0x0a55
    mov ds, ax                       ; 0x0a59
    mov ax, cs                       ; 0x0a5b
    mov es, ax                       ; 0x0a5d
    mov cx, word [bp - 0x0010]       ; 0x0a5f
@..leaf_loc_0949.l7:
    push cx                          ; 0x0a62
    push si                          ; 0x0a63
    push di                          ; 0x0a64
    mov ax, word [bp - 0x0020]       ; 0x0a65
    mov word [bp - 0x001c], ax       ; 0x0a68
    mov ax, word [bp - 0x0022]       ; 0x0a6b
    mov word [bp - 0x001e], ax       ; 0x0a6e
    mov cx, word [bp - 0x000e]       ; 0x0a71
@..leaf_loc_0949.l8:
    push cx                          ; 0x0a74
    mov bx, dos_mem_loc_33b3         ; 0x0a75
    mov ah, byte [bp - 0x001c]       ; 0x0a78
    lodsb                            ; 0x0a7b
    call leaf_loc_3252               ; 0x0a7c
    mov bl, byte [bp - 0x001e]       ; 0x0a7f
    and byte [es:di], bl             ; 0x0a82
    or byte [es:di], dl              ; 0x0a85
    and byte [es:di + 0x120], bl     ; 0x0a88
    or byte [es:di + 0x120], dh      ; 0x0a8d
    and byte [es:di + 0x240], bl     ; 0x0a92
    or byte [es:di + 0x240], al      ; 0x0a97
    and byte [es:di + 0x360], bl     ; 0x0a9c
    or byte [es:di + 0x360], ah      ; 0x0aa1
    shr byte [bp - 0x001e], 1        ; 0x0aa6
    shr byte [bp - 0x001e], 1        ; 0x0aa9
    or byte [bp - 0x001e], 0xc0      ; 0x0aac
    sub byte [bp - 0x001c], 2        ; 0x0ab0
    jae short @..leaf_loc_0949.l9    ; 0x0ab4
    inc di                           ; 0x0ab6
    mov byte [bp - 0x001c], 6        ; 0x0ab7
    mov byte [bp - 0x001e], 0x3f     ; 0x0abb
@..leaf_loc_0949.l9:
    pop cx                           ; 0x0abf
    loop @..leaf_loc_0949.l8         ; 0x0ac0
    pop di                           ; 0x0ac2
    add di, word [cs:data_1be1]      ; 0x0ac3
    pop si                           ; 0x0ac8
    add si, strict word 0x140        ; 0x0ac9
    pop cx                           ; 0x0acd
    loop @..leaf_loc_0949.l7         ; 0x0ace
    mov cx, word [cs:data_1bd9]      ; 0x0ad0
    mov ax, cx                       ; 0x0ad5
    cmp word [bp + 0xc], cx          ; 0x0ad7
    jb short @..leaf_loc_0949.l10    ; 0x0ada
    mov ax, word [bp + 0xc]          ; 0x0adc
@..leaf_loc_0949.l10:
    mov word [bp - 0x0006], ax       ; 0x0adf
    mov ax, word [bp - 0x000a]       ; 0x0ae2
    mov cx, word [cs:data_1bdd]      ; 0x0ae5
    sub cx, ax                       ; 0x0aea
    mov word [bp - 0x000e], cx       ; 0x0aec
    mov ax, word [bp - 0x0006]       ; 0x0aef
    add ax, word [bp - 0x000e]       ; 0x0af2
    dec ax                           ; 0x0af5
    cmp ax, word [bp + 0x10]         ; 0x0af6
    jb short @..leaf_loc_0949.l11    ; 0x0af9
    mov ax, word [bp + 0x10]         ; 0x0afb
    sub ax, word [bp - 0x0006]       ; 0x0afe
    inc ax                           ; 0x0b01
    mov word [bp - 0x000e], ax       ; 0x0b02
@..leaf_loc_0949.l11:
    mov ax, cs                       ; 0x0b05
    mov es, ax                       ; 0x0b07
    mov ax, word [cs:data_01e5]      ; 0x0b09
    mov ds, ax                       ; 0x0b0d
    mov ax, word [cs:data_1bdb]      ; 0x0b0f
    mov bx, 0x140                    ; 0x0b13
    mul bx                           ; 0x0b16
    add ax, word [cs:data_1bd9]      ; 0x0b18
    mov si, ax                       ; 0x0b1d
    mov di, word [cs:data_1bd7]      ; 0x0b1f
    mov cx, word [cs:data_1be3]      ; 0x0b24
@..leaf_loc_0949.l12:
    push cx                          ; 0x0b29
    push si                          ; 0x0b2a
    mov cx, word [cs:data_1bdd]      ; 0x0b2b
    rep movsb                        ; 0x0b30
    pop si                           ; 0x0b32
    add si, strict word 0x140        ; 0x0b33
    pop cx                           ; 0x0b37
    loop @..leaf_loc_0949.l12        ; 0x0b38
    mov ax, word [cs:data_01e5]      ; 0x0b3a
    mov es, ax                       ; 0x0b3e
    mov ax, word [cs:data_1bdb]      ; 0x0b40
    mov bx, 0x140                    ; 0x0b44
    mul bx                           ; 0x0b47
    add ax, word [cs:data_1bd9]      ; 0x0b49
    mov di, ax                       ; 0x0b4e
    mov ax, word [cs:data_259b]      ; 0x0b50
    mov ds, ax                       ; 0x0b54
    mov si, word [cs:data_2599]      ; 0x0b56
    mov cx, word [cs:data_1be3]      ; 0x0b5b
    mov ax, ds                       ; 0x0b60
    or ax, si                        ; 0x0b62
    jne short @..leaf_loc_0949.l13   ; 0x0b64
    mov si, 0x259e                   ; 0x0b66
    mov ax, cs                       ; 0x0b69
    mov ds, ax                       ; 0x0b6b
@..leaf_loc_0949.l13:
    push cx                          ; 0x0b6d
    push di                          ; 0x0b6e
    push si                          ; 0x0b6f
    mov cx, word [cs:data_1bdd]      ; 0x0b70
@..leaf_loc_0949.l14:
    mov al, byte [si]                ; 0x0b75
    cmp al, 0xff                     ; 0x0b77
    je short @..leaf_loc_0949.l15    ; 0x0b79
    mov byte [es:di], al             ; 0x0b7b
@..leaf_loc_0949.l15:
    inc si                           ; 0x0b7e
    inc di                           ; 0x0b7f
    loop @..leaf_loc_0949.l14        ; 0x0b80
    pop si                           ; 0x0b82
    add si, word [cs:data_258d]      ; 0x0b83
    pop di                           ; 0x0b88
    add di, strict word 0x140        ; 0x0b89
    pop cx                           ; 0x0b8d
    loop @..leaf_loc_0949.l13        ; 0x0b8e
@..leaf_loc_0949.l16:
    ret                              ; 0x0b90
math_loc_0b91:
    cmp byte [cs:data_0a48], 0       ; 0x0b91
    je short @..math_loc_0b91.l2     ; 0x0b97
    mov ax, word [cs:data_01e5]      ; 0x0b99
    mov es, ax                       ; 0x0b9d
    mov ax, cs                       ; 0x0b9f
    mov ds, ax                       ; 0x0ba1
    mov ax, word [cs:data_1bdb]      ; 0x0ba3
    mov bx, 0x140                    ; 0x0ba7
    mul bx                           ; 0x0baa
    add ax, word [cs:data_1bd9]      ; 0x0bac
    mov di, ax                       ; 0x0bb1
    mov si, word [cs:data_1bd7]      ; 0x0bb3
    mov cx, word [cs:data_1be3]      ; 0x0bb8
@..math_loc_0b91.l1:
    push cx                          ; 0x0bbd
    push di                          ; 0x0bbe
    mov cx, word [cs:data_1bdd]      ; 0x0bbf
    rep movsb                        ; 0x0bc4
    pop di                           ; 0x0bc6
    add di, strict word 0x140        ; 0x0bc7
    pop cx                           ; 0x0bcb
    loop @..math_loc_0b91.l1         ; 0x0bcc
@..math_loc_0b91.l2:
    ret                              ; 0x0bce
math_loc_0bcf:
    push bp                          ; 0x0bcf
    mov bp, sp                       ; 0x0bd0
    push ds                          ; 0x0bd2
    push es                          ; 0x0bd3
    mov ax, ds                       ; 0x0bd4
    mov es, ax                       ; 0x0bd6
    mov ax, word [cs:data_01e5]      ; 0x0bd8
    mov ds, ax                       ; 0x0bdc
    mov ax, word [bp + 0xe]          ; 0x0bde
    mov bx, 0x140                    ; 0x0be1
    mul bx                           ; 0x0be4
    add ax, word [bp + 0xc]          ; 0x0be6
    mov bx, ax                       ; 0x0be9
    mov ax, word [bp + 0x10]         ; 0x0beb
    mov byte [bx], al                ; 0x0bee
    pop es                           ; 0x0bf0
    pop ds                           ; 0x0bf1
    mov sp, bp                       ; 0x0bf2
    pop bp                           ; 0x0bf4
    ret                              ; 0x0bf5
math_loc_0bf6:
    push bp                          ; 0x0bf6
    mov bp, sp                       ; 0x0bf7
    sub sp, byte 8                   ; 0x0bf9
    push es                          ; 0x0bfc
    push di                          ; 0x0bfd
    mov ax, ds                       ; 0x0bfe
    mov es, ax                       ; 0x0c00
    mov ax, word [cs:data_01e5]      ; 0x0c02
    mov es, ax                       ; 0x0c06
    mov ax, word [bp + 0xe]          ; 0x0c08
    mov bx, 0x140                    ; 0x0c0b
    mul bx                           ; 0x0c0e
    add ax, word [bp + 0xc]          ; 0x0c10
    mov word [bp - 0x0002], ax       ; 0x0c13
    mov ax, word [bp + 0x12]         ; 0x0c16
    sub ax, word [bp + 0xe]          ; 0x0c19
    inc ax                           ; 0x0c1c
    mov word [bp - 0x0004], ax       ; 0x0c1d
    mov ax, word [bp + 0x10]         ; 0x0c20
    sub ax, word [bp + 0xc]          ; 0x0c23
    inc ax                           ; 0x0c26
    mov word [bp - 0x0006], ax       ; 0x0c27
    mov ax, word [bp + 0x14]         ; 0x0c2a
@..math_loc_0bf6.l1:
    mov di, word [bp - 0x0002]       ; 0x0c2d
    add word [bp - 0x0002], strict word 0x140 ; 0x0c30
    mov cx, word [bp - 0x0006]       ; 0x0c35
    rep stosb                        ; 0x0c38
    dec word [bp - 0x0004]           ; 0x0c3a
    jne short @..math_loc_0bf6.l1    ; 0x0c3d
    pop di                           ; 0x0c3f
    pop es                           ; 0x0c40
    mov sp, bp                       ; 0x0c41
    pop bp                           ; 0x0c43
    ret                              ; 0x0c44
string_loc_0c45:
    push bp                          ; 0x0c45
    mov bp, sp                       ; 0x0c46
    sub sp, byte 8                   ; 0x0c48
    push es                          ; 0x0c4b
    push ds                          ; 0x0c4c
    push di                          ; 0x0c4d
    mov ax, ds                       ; 0x0c4e
    mov es, ax                       ; 0x0c50
    mov ax, word [cs:data_01e5]      ; 0x0c52
    mov es, ax                       ; 0x0c56
    mov ds, ax                       ; 0x0c58
    mov ax, word [bp + 0xe]          ; 0x0c5a
    mov bx, 0x140                    ; 0x0c5d
    mul bx                           ; 0x0c60
    add ax, word [bp + 0xc]          ; 0x0c62
    mov word [bp - 0x0002], ax       ; 0x0c65
    mov ax, word [bp + 0x12]         ; 0x0c68
    sub ax, word [bp + 0xe]          ; 0x0c6b
    inc ax                           ; 0x0c6e
    mov word [bp - 0x0004], ax       ; 0x0c6f
    mov ax, word [bp + 0x10]         ; 0x0c72
    sub ax, word [bp + 0xc]          ; 0x0c75
    inc ax                           ; 0x0c78
    mov word [bp - 0x0006], ax       ; 0x0c79
@..string_loc_0c45.l1:
    mov di, word [bp - 0x0002]       ; 0x0c7c
    mov si, di                       ; 0x0c7f
    add word [bp - 0x0002], strict word 0x140 ; 0x0c81
    mov cx, word [bp - 0x0006]       ; 0x0c86
@..string_loc_0c45.l2:
    lodsb                            ; 0x0c89
    not al                           ; 0x0c8a
    stosb                            ; 0x0c8c
    loop @..string_loc_0c45.l2       ; 0x0c8d
    dec word [bp - 0x0004]           ; 0x0c8f
    jne short @..string_loc_0c45.l1  ; 0x0c92
    pop di                           ; 0x0c94
    pop ds                           ; 0x0c95
    pop es                           ; 0x0c96
    mov sp, bp                       ; 0x0c97
    pop bp                           ; 0x0c99
    ret                              ; 0x0c9a
%include "ega/dos_alloc_mem.asm"

%include "ega/dos_free_mem.asm"

%include "ega/dos_read_file.asm"

%include "ega/dos_write_file.asm"

dos_con_loc_0f70:
    mov ax, cs                       ; 0x0f70
    mov ds, ax                       ; 0x0f72
    mov dx, 0x1080                   ; 0x0f74
    mov ah, 9                        ; 0x0f77
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0f7b
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with bad slot number.', 0
    db 0x0a, 0x24

dos_con_loc_0fae:
    mov ax, cs                       ; 0x0fae
    mov ds, ax                       ; 0x0fb0
    mov dx, 0x10be                   ; 0x0fb2
    mov ah, 9                        ; 0x0fb5
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0fb9
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'SAVE_SCREEN called with table full.', 0
    db 0x0a, 0x24
    times 232 db 0

dos_read_file_2:
    push bp                          ; 0x10cf
    mov bp, sp                       ; 0x10d0
    sub sp, byte 0x14                ; 0x10d2
    push ds                          ; 0x10d5
    push es                          ; 0x10d6
    push di                          ; 0x10d7
    push si                          ; 0x10d8
    mov ax, ds                       ; 0x10d9
    mov es, ax                       ; 0x10db
    mov ax, word [bp + 0xe]          ; 0x10dd
    cmp ax, strict word 0xa          ; 0x10e0
    jb short @..dos_read_file_2.l1   ; 0x10e3
    jmp near @..dos_read_file_2.l2   ; 0x10e5
@..dos_read_file_2.l1:
    shl ax, 1                        ; 0x10e8
    mov word [bp - 0x0008], ax       ; 0x10ea
    mov bx, 0x10e7                   ; 0x10ed
    add bx, ax                       ; 0x10f0
    mov word [bp - 0x0002], bx       ; 0x10f2
    mov ax, word [cs:bx]             ; 0x10f5
    or ax, ax                        ; 0x10f8
    jne short dos_con_loc_10ff       ; 0x10fa
    jmp near loc_110f                ; 0x10fc
dos_con_loc_10ff:
    mov ax, cs                       ; 0x10ff
    mov ds, ax                       ; 0x1101
    mov dx, 0x135d                   ; 0x1103
    mov ah, 9                        ; 0x1106
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x110a
    int 0x21 ; DOS function dispatcher
loc_110f:
    mov ax, word [cs:data_11cb]      ; 0x110f
    inc ax                           ; 0x1113
    mov word [cs:data_11cb], ax      ; 0x1114
    mov bx, word [bp - 0x0002]       ; 0x1118
    mov word [cs:bx], ax             ; 0x111b
    dec ax                           ; 0x111e
    mov cl, 2                        ; 0x111f
    shl ax, cl                       ; 0x1121
    mov bx, 0x10fb                   ; 0x1123
    add bx, ax                       ; 0x1126
    mov word [bp - 0x0002], bx       ; 0x1128
    mov ax, word [cs:data_11cd]      ; 0x112b
    mov word [cs:bx], ax             ; 0x112f
    mov ax, word [bp + 0x10]         ; 0x1132
    or ax, ax                        ; 0x1135
    je short loc_113c                ; 0x1137
    jmp near loc_12bb                ; 0x1139
loc_113c:
    cld                              ; 0x113c
    mov cx, 0x1000                   ; 0x113d
    mov bx, word [cs:data_01e1]      ; 0x1140
    add bx, word [cs:data_11cd]      ; 0x1145
    mov ds, bx                       ; 0x114a
    xor dx, dx                       ; 0x114c
    mov bx, word [bp + 0xc]          ; 0x114e
    mov ah, 0x3f                     ; 0x1151
    int 0x21 ; DOS read file (handle)
    mov bx, 0                        ; 0x1155
    mov ax, word [bx]                ; 0x1158
    mov cx, 6                        ; 0x115a
    mul cx                           ; 0x115d
    add ax, strict word 4            ; 0x115f
    mov bx, word [bp - 0x0008]       ; 0x1162
    add bx, strict word 0x27d        ; 0x1165
    mov word [cs:bx], ax             ; 0x1169
    mov bx, ax                       ; 0x116c
    sub bx, byte 6                   ; 0x116e
    mov cl, byte [bx + 0x5]          ; 0x1171
    mov al, byte [bx + 0x4]          ; 0x1174
    mul cl                           ; 0x1177
    mov cl, 3                        ; 0x1179
    shl ax, cl                       ; 0x117b
    mov cx, word [bx + 0x2]          ; 0x117d
    add ax, cx                       ; 0x1180
    push ax                          ; 0x1182
    xor dx, dx                       ; 0x1183
    mov ax, word [bx]                ; 0x1185
    mov cx, 0x10                     ; 0x1187
    mul cx                           ; 0x118a
    pop cx                           ; 0x118c
    add ax, cx                       ; 0x118d
    adc dx, byte 0                   ; 0x118f
    push ax                          ; 0x1192
    push dx                          ; 0x1193
    sub ax, 0x1000                   ; 0x1194
    sbb dx, byte 0                   ; 0x1197
    mov word [bp - 0x0008], ax       ; 0x119a
    mov word [bp - 0x0006], dx       ; 0x119d
    pop dx                           ; 0x11a0
    pop ax                           ; 0x11a1
    add ax, strict word 0xf          ; 0x11a2
    adc dx, byte 0                   ; 0x11a5
    mov bx, 0x10                     ; 0x11a8
    div bx                           ; 0x11ab
    mov bx, word [bp - 0x0002]       ; 0x11ad
    mov word [cs:bx + 0x2], ax       ; 0x11b0
    add word [cs:data_11cd], ax      ; 0x11b4
    mov ax, word [cs:data_11cd]      ; 0x11b9
    cmp ax, 0x4180                   ; 0x11bd
    jae short loc_1221               ; 0x11c0
    mov ax, ds                       ; 0x11c2
    add ax, 0x100                    ; 0x11c4
    mov ds, ax                       ; 0x11c7
    mov dx, 0                        ; 0x11c9
loc_11cc:
    cmp word [bp - 0x0006], byte 0   ; 0x11cc
    je short loc_11fd                ; 0x11d0
    dec word [bp - 0x0006]           ; 0x11d2
    mov cx, 0x8000                   ; 0x11d5
    xor dx, dx                       ; 0x11d8
    mov bx, word [bp + 0xc]          ; 0x11da
    mov ah, 0x3f                     ; 0x11dd
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x11e1
    add ax, 0x800                    ; 0x11e3
    mov ds, ax                       ; 0x11e6
    mov cx, 0x8000                   ; 0x11e8
    xor dx, dx                       ; 0x11eb
    mov bx, word [bp + 0xc]          ; 0x11ed
    mov ah, 0x3f                     ; 0x11f0
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x11f4
    add ax, 0x800                    ; 0x11f6
    mov ds, ax                       ; 0x11f9
    jmp short loc_11cc               ; 0x11fb
loc_11fd:
    mov cx, word [bp - 0x0008]       ; 0x11fd
    xor dx, dx                       ; 0x1200
    mov bx, word [bp + 0xc]          ; 0x1202
    mov ah, 0x3f                     ; 0x1205
    int 0x21 ; DOS read file (handle)
loc_1209:
    pop si                           ; 0x1209
    pop di                           ; 0x120a
    pop es                           ; 0x120b
    pop ds                           ; 0x120c
    mov sp, bp                       ; 0x120d
    pop bp                           ; 0x120f
    ret                              ; 0x1210
@..dos_read_file_2.l2:
    mov ax, cs                       ; 0x1211
    mov ds, ax                       ; 0x1213
    mov dx, 0x1331                   ; 0x1215
dos_con_loc_1218:
    mov ah, 9                        ; 0x1218
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x121c
    int 0x21 ; DOS function dispatcher
loc_1221:
    mov ax, cs                       ; 0x1221
    mov ds, ax                       ; 0x1223
    mov dx, 0x138c                   ; 0x1225
    mov ah, 9                        ; 0x1228
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x122c
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with bad slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'LOAD_MAZE called with filled slot number.', 0
    db 0x0a, 0x24, 0x0d, 0x0a, 0x07
    db 'oops... LOAD_MAZE filled its memory area.', 0
    db 0x0a, 0x24

loc_12bb:
    mov ax, word [bp + 0xc]          ; 0x12bb
    shl ax, 1                        ; 0x12be
    mov si, 0x2c3                    ; 0x12c0
    add si, ax                       ; 0x12c3
    mov ax, word [cs:si]             ; 0x12c5
    dec ax                           ; 0x12c8
    mov cl, 2                        ; 0x12c9
    shl ax, cl                       ; 0x12cb
    mov di, 0x2eb                    ; 0x12cd
    add di, ax                       ; 0x12d0
    mov si, word [cs:di]             ; 0x12d2
    mov ax, word [cs:di + 0x2]       ; 0x12d5
    mov word [cs:bx + 0x2], ax       ; 0x12d9
    mov word [bp - 0x0004], ax       ; 0x12dd
    mov dx, word [cs:data_01e1]      ; 0x12e0
    add dx, word [cs:data_11cd]      ; 0x12e5
    mov word [bp - 0x000a], dx       ; 0x12ea
    mov es, dx                       ; 0x12ed
    add word [cs:data_11cd], ax      ; 0x12ef
    mov ax, word [cs:data_0203]      ; 0x12f4
    mov ds, ax                       ; 0x12f8
    mov ax, si                       ; 0x12fa
    mov cl, 0xa                      ; 0x12fc
    shr ax, cl                       ; 0x12fe
    mov word [cs:data_4540], ax      ; 0x1300
    call dos_file_loc_4442           ; 0x1304
    and si, strict word 0x3ff        ; 0x1307
    mov cl, 4                        ; 0x130b
    shl si, cl                       ; 0x130d
loc_130f:
    test si, 0xc000                  ; 0x130f
    je short loc_1325                ; 0x1313
    inc word [cs:data_4540]          ; 0x1315
    mov ax, word [cs:data_4540]      ; 0x131a
    call dos_file_loc_4442           ; 0x131e
    sub si, strict word 0x4000       ; 0x1321
loc_1325:
    xor di, di                       ; 0x1325
    mov cx, 0x10                     ; 0x1327
    rep movsb                        ; 0x132a
    mov ax, es                       ; 0x132c
    inc ax                           ; 0x132e
    mov es, ax                       ; 0x132f
    dec word [bp - 0x0004]           ; 0x1331
    jne short loc_130f               ; 0x1334
    mov ax, word [bp - 0x000a]       ; 0x1336
    mov ds, ax                       ; 0x1339
    mov bx, 0                        ; 0x133b
    mov ax, word [bx]                ; 0x133e
    mov cx, 6                        ; 0x1340
    mul cx                           ; 0x1343
    add ax, strict word 4            ; 0x1345
    mov bx, word [bp - 0x0008]       ; 0x1348
    add bx, strict word 0x27d        ; 0x134b
    mov word [cs:bx], ax             ; 0x134f
    jmp near loc_1209                ; 0x1352
leaf_loc_1355:
    push ax                          ; 0x1355
    mov bx, 0x29b                    ; 0x1356
    mov cx, 0x14                     ; 0x1359
@..leaf_loc_1355.l1:
    cmp ax, word [cs:bx]             ; 0x135c
    jae short @..leaf_loc_1355.l2    ; 0x135f
    dec word [cs:bx]                 ; 0x1361
@..leaf_loc_1355.l2:
    inc bx                           ; 0x1364
    inc bx                           ; 0x1365
    loop @..leaf_loc_1355.l1         ; 0x1366
    mov bx, 0x2c3                    ; 0x1368
    mov cx, 0xa                      ; 0x136b
@..leaf_loc_1355.l3:
    cmp ax, word [cs:bx]             ; 0x136e
    jae short @..leaf_loc_1355.l4    ; 0x1371
    dec word [cs:bx]                 ; 0x1373
@..leaf_loc_1355.l4:
    inc bx                           ; 0x1376
    inc bx                           ; 0x1377
    loop @..leaf_loc_1355.l3         ; 0x1378
    mov bx, 0x2d7                    ; 0x137a
    mov cx, 0xa                      ; 0x137d
@..leaf_loc_1355.l5:
    cmp ax, word [cs:bx]             ; 0x1380
    jae short @..leaf_loc_1355.l6    ; 0x1383
    dec word [cs:bx]                 ; 0x1385
@..leaf_loc_1355.l6:
    inc bx                           ; 0x1388
    inc bx                           ; 0x1389
    loop @..leaf_loc_1355.l5         ; 0x138a
    pop ax                           ; 0x138c
    ret                              ; 0x138d
    times 4 db 0
loc_1392:
    dec ax                           ; 0x1392
    mov cl, 2                        ; 0x1393
    shl ax, cl                       ; 0x1395
    mov bx, 0x2eb                    ; 0x1397
    add bx, ax                       ; 0x139a
    mov word [bp - 0x0004], bx       ; 0x139c
    mov ax, word [cs:bx + 0x2]       ; 0x139f
    sub word [cs:data_0391], ax      ; 0x13a3
    mov word [bp - 0x0006], ax       ; 0x13a8
@..local.l35:
    mov bx, word [bp - 0x0004]       ; 0x13ab
    mov di, word [cs:bx]             ; 0x13ae
    mov dx, word [cs:data_0203]      ; 0x13b1
    mov es, dx                       ; 0x13b6
    mov ds, dx                       ; 0x13b8
    mov si, word [cs:bx + 0x4]       ; 0x13ba
    add dx, word [cs:data_01e1]      ; 0x13be
    mov cx, word [cs:bx + 0x6]       ; 0x13c3
    or cx, cx                        ; 0x13c7
    jne short @..local.l36           ; 0x13c9
    jmp near @..local.l42            ; 0x13cb
@..local.l36:
    push cx                          ; 0x13ce
    mov ax, si                       ; 0x13cf
    mov cl, 0xa                      ; 0x13d1
    shr ax, cl                       ; 0x13d3
    mov word [cs:data_148e], ax      ; 0x13d5
    and si, strict word 0x3ff        ; 0x13d9
    mov cl, 4                        ; 0x13dd
    shl si, cl                       ; 0x13df
    mov ax, di                       ; 0x13e1
    mov cl, 0xa                      ; 0x13e3
    shr ax, cl                       ; 0x13e5
    mov word [cs:dos_con_loc_1490], ax ; 0x13e7
    and di, strict word 0x3ff        ; 0x13eb
    mov cl, 4                        ; 0x13ef
    shl di, cl                       ; 0x13f1
    call loc_145c                    ; 0x13f3
    pop cx                           ; 0x13f6
@..local.l37:
    push cx                          ; 0x13f7
    mov cx, 0x10                     ; 0x13f8
    rep movsb                        ; 0x13fb
    xor dx, dx                       ; 0x13fd
    cmp di, strict word 0x4000       ; 0x13ff
    jne short @..local.l38           ; 0x1403
    inc word [cs:dos_con_loc_1490]   ; 0x1405
    inc dx                           ; 0x140a
@..local.l38:
    cmp si, strict word 0x4000       ; 0x140b
    je short @..local.l39            ; 0x140f
    cmp si, strict word 0x8000       ; 0x1411
    jne short @..local.l40           ; 0x1415
@..local.l39:
    inc word [cs:data_148e]          ; 0x1417
    inc dx                           ; 0x141c
@..local.l40:
    or dx, dx                        ; 0x141d
    je short @..local.l41            ; 0x141f
    call loc_145c                    ; 0x1421
@..local.l41:
    pop cx                           ; 0x1424
    loop @..local.l37                ; 0x1425
    mov bx, word [bp - 0x0004]       ; 0x1427
    mov cx, word [bp - 0x0006]       ; 0x142a
    mov ax, word [cs:bx + 0x4]       ; 0x142d
    sub ax, cx                       ; 0x1431
    mov word [cs:bx], ax             ; 0x1433
    add ax, word [cs:bx + 0x6]       ; 0x1436
    mov word [cs:bx + 0x4], ax       ; 0x143a
    mov ax, word [cs:bx + 0x6]       ; 0x143e
    mov word [cs:bx + 0x2], ax       ; 0x1442
    add bx, byte 4                   ; 0x1446
    mov word [bp - 0x0004], bx       ; 0x1449
    jmp near @..local.l35            ; 0x144c
@..local.l42:
    mov bx, word [bp - 0x0004]       ; 0x144f
    xor ax, ax                       ; 0x1452
    mov word [cs:bx], ax             ; 0x1454
    mov word [cs:bx + 0x2], ax       ; 0x1457
    ret                              ; 0x145b
loc_145c:
    and di, strict word 0x3fff       ; 0x145c
    and si, strict word 0x3fff       ; 0x1460
    mov ah, 0x44                     ; 0x1464
    mov al, 0                        ; 0x1466
    mov bx, word [cs:dos_con_loc_1490] ; 0x1468
    mov dx, word [cs:data_0201]      ; 0x146d
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, word [cs:data_148e]      ; 0x1474
    je short @..local.l43            ; 0x1479
    or si, strict word 0x4000        ; 0x147b
    mov ah, 0x44                     ; 0x147f
    mov al, 1                        ; 0x1481
    mov bx, word [cs:data_148e]      ; 0x1483
    mov dx, word [cs:data_0201]      ; 0x1488
    int 0x67 ; EMS (Expanded Memory)
@..local.l43:
    ret                              ; 0x148f
dos_con_loc_1490:
    push bp                          ; 0x1490
    mov bp, sp                       ; 0x1491
    sub sp, byte 8                   ; 0x1493
    push ds                          ; 0x1496
    push es                          ; 0x1497
    push di                          ; 0x1498
    push si                          ; 0x1499
    mov ax, ds                       ; 0x149a
    mov es, ax                       ; 0x149c
    mov ax, word [bp + 0xc]          ; 0x149e
    cmp ax, strict word 0xa          ; 0x14a1
    jb short @..dos_con_loc_1490.l1  ; 0x14a4
    jmp near @..dos_con_loc_1490.l3  ; 0x14a6
@..dos_con_loc_1490.l1:
    shl ax, 1                        ; 0x14a9
    mov word [bp - 0x0008], ax       ; 0x14ab
    mov bx, 0x10e7                   ; 0x14ae
    add bx, ax                       ; 0x14b1
    mov ax, word [cs:bx]             ; 0x14b3
    or ax, ax                        ; 0x14b6
    jne short @..dos_con_loc_1490.l2 ; 0x14b8
    jmp near @..dos_con_loc_1490.l3  ; 0x14ba
@..dos_con_loc_1490.l2:
    mov word [cs:bx], 0              ; 0x14bd
    mov cx, word [cs:data_11cb]      ; 0x14c2
    dec cx                           ; 0x14c7
    mov word [cs:data_11cb], cx      ; 0x14c8
    call loc_4c93                    ; 0x14cd
@..dos_con_loc_1490.l3:
    pop si                           ; 0x14d0
    pop di                           ; 0x14d1
    pop es                           ; 0x14d2
    pop ds                           ; 0x14d3
    mov sp, bp                       ; 0x14d4
    pop bp                           ; 0x14d6
    ret                              ; 0x14d7
%include "ega/dos_print_str.asm"

    or al, byte [es:di]              ; 0x16d6
    stosb                            ; 0x16d9
    loop @..dos_print_str.l15        ; 0x16da
    jmp short @..dos_print_str.l21   ; 0x16dc
@..dos_print_str.l16:
    mov al, byte [si]                ; 0x16de
    dec si                           ; 0x16e0
    cmp al, 0xff                     ; 0x16e1
    je short @..dos_print_str.l17    ; 0x16e3
    mov byte [es:di], ah             ; 0x16e5
@..dos_print_str.l17:
    inc di                           ; 0x16e8
    loop @..dos_print_str.l16        ; 0x16e9
    jmp short @..dos_print_str.l21   ; 0x16eb
@..dos_print_str.l18:
    mov al, byte [si]                ; 0x16ed
    dec si                           ; 0x16ef
    cmp al, 0xff                     ; 0x16f0
    je short @..dos_print_str.l19    ; 0x16f2
    mov byte [es:di], al             ; 0x16f4
@..dos_print_str.l19:
    inc di                           ; 0x16f7
    loop @..dos_print_str.l18        ; 0x16f8
    jmp short @..dos_print_str.l21   ; 0x16fa
@..dos_print_str.l20:
    mov al, byte [si]                ; 0x16fc
    dec si                           ; 0x16fe
    stosb                            ; 0x16ff
    loop @..dos_print_str.l20        ; 0x1700
@..dos_print_str.l21:
    pop di                           ; 0x1702
    add di, strict word 0x140        ; 0x1703
    pop ax                           ; 0x1707
    mov dx, word [bp - 0x0006]       ; 0x1708
    add ax, dx                       ; 0x170b
    pop si                           ; 0x170d
    pop cx                           ; 0x170e
    loop @..dos_print_str.l14        ; 0x170f
@..dos_print_str.l22:
    pop si                           ; 0x1711
    pop di                           ; 0x1712
    pop es                           ; 0x1713
    pop ds                           ; 0x1714
    mov sp, bp                       ; 0x1715
    pop bp                           ; 0x1717
    ret                              ; 0x1718
%include "ega/mouse_init.asm"

string_loc_17a1:
    push es                          ; 0x17a1
    push di                          ; 0x17a2
    mov ax, cs                       ; 0x17a3
    mov es, ax                       ; 0x17a5
    mov cx, 0x100                    ; 0x17a7
    mov di, 0x2a02                   ; 0x17aa
    xor al, al                       ; 0x17ad
    rep stosb                        ; 0x17af
    mov cx, 0x400                    ; 0x17b1
    mov di, 0x2602                   ; 0x17b4
    xor al, al                       ; 0x17b7
    rep stosb                        ; 0x17b9
    xor di, di                       ; 0x17bb
    mov bx, dos_mem_loc_33b3         ; 0x17bd
    mov cx, word [cs:data_2591]      ; 0x17c0
@..string_loc_17a1.l1:
    push cx                          ; 0x17c5
    mov cx, word [cs:data_258d]      ; 0x17c6
    mov word [bp - 0x0002], cx       ; 0x17cb
    mov al, 6                        ; 0x17ce
    mov byte [bp - 0x0004], al       ; 0x17d0
@..string_loc_17a1.l2:
    lodsb                            ; 0x17d3
    mov ah, byte [bp - 0x0004]       ; 0x17d4
    call leaf_loc_3245               ; 0x17d7
    or byte [cs:di + 0x2a02], ch     ; 0x17da
    or byte [cs:di + 0x2602], dl     ; 0x17df
    or byte [cs:di + 0x2702], dh     ; 0x17e4
    or byte [cs:di + 0x2802], al     ; 0x17e9
    or byte [cs:di + 0x2902], ah     ; 0x17ee
    sub byte [bp - 0x0004], 2        ; 0x17f3
    jae short @..string_loc_17a1.l3  ; 0x17f7
    inc di                           ; 0x17f9
    mov byte [bp - 0x0004], 6        ; 0x17fa
@..string_loc_17a1.l3:
    dec word [bp - 0x0002]           ; 0x17fe
    jne short @..string_loc_17a1.l2  ; 0x1801
    cmp byte [bp - 0x0004], 6        ; 0x1803
    je short @..string_loc_17a1.l4   ; 0x1807
    inc di                           ; 0x1809
@..string_loc_17a1.l4:
    pop cx                           ; 0x180a
    loop @..string_loc_17a1.l1       ; 0x180b
    pop di                           ; 0x180d
    pop es                           ; 0x180e
    ret                              ; 0x180f
mouse_init_2:
    push bp                          ; 0x1810
    mov bp, sp                       ; 0x1811
    push es                          ; 0x1813
    mov ax, ds                       ; 0x1814
    mov es, ax                       ; 0x1816
    cmp byte [cs:data_0228], 0       ; 0x1818
    je short @..mouse_init_2.l1      ; 0x181e
    mov byte [cs:data_0228], 0       ; 0x1820
    mov ax, 0                        ; 0x1826
    int 0x33 ; BIOS mouse
    push ds                          ; 0x182b
    push es                          ; 0x182c
    push di                          ; 0x182d
    push si                          ; 0x182e
    mov ax, cs                       ; 0x182f
    mov ds, ax                       ; 0x1831
    mov ax, 0xa000                   ; 0x1833
    mov es, ax                       ; 0x1836
    mov si, word [cs:data_1bd5]      ; 0x1838
    mov dx, 0x3c4                    ; 0x183d
    mov al, 2                        ; 0x1840
    out dx, al                       ; 0x1842
    inc dx                           ; 0x1843
    mov al, 1                        ; 0x1844
    out dx, al                       ; 0x1846
    call bios_mouse_loc_189f         ; 0x1847
    mov si, word [cs:data_1bd5]      ; 0x184a
    add si, strict word 0x120        ; 0x184f
    mov dx, 0x3c4                    ; 0x1853
    mov al, 2                        ; 0x1856
    out dx, al                       ; 0x1858
    inc dx                           ; 0x1859
    mov al, 2                        ; 0x185a
    out dx, al                       ; 0x185c
    call bios_mouse_loc_189f         ; 0x185d
    mov si, word [cs:data_1bd5]      ; 0x1860
    add si, strict word 0x240        ; 0x1865
    mov dx, 0x3c4                    ; 0x1869
    mov al, 2                        ; 0x186c
    out dx, al                       ; 0x186e
    inc dx                           ; 0x186f
    mov al, 4                        ; 0x1870
    out dx, al                       ; 0x1872
    call bios_mouse_loc_189f         ; 0x1873
    mov si, word [cs:data_1bd5]      ; 0x1876
    add si, strict word 0x360        ; 0x187b
    mov dx, 0x3c4                    ; 0x187f
    mov al, 2                        ; 0x1882
    out dx, al                       ; 0x1884
    inc dx                           ; 0x1885
    mov al, 8                        ; 0x1886
    out dx, al                       ; 0x1888
    call bios_mouse_loc_189f         ; 0x1889
    mov dx, 0x3c4                    ; 0x188c
    mov al, 2                        ; 0x188f
    out dx, al                       ; 0x1891
    inc dx                           ; 0x1892
    mov al, 0xf                      ; 0x1893
    out dx, al                       ; 0x1895
    pop si                           ; 0x1896
    pop di                           ; 0x1897
    pop es                           ; 0x1898
    pop ds                           ; 0x1899
@..mouse_init_2.l1:
    pop es                           ; 0x189a
    mov sp, bp                       ; 0x189b
    pop bp                           ; 0x189d
    ret                              ; 0x189e
bios_mouse_loc_189f:
    mov di, word [cs:data_1be5]      ; 0x189f
    mov cx, word [cs:data_1be3]      ; 0x18a4
@..bios_mouse_loc_189f.l1:
    push cx                          ; 0x18a9
    push si                          ; 0x18aa
    push di                          ; 0x18ab
    mov cx, word [cs:data_1be1]      ; 0x18ac
    rep movsb                        ; 0x18b1
    pop di                           ; 0x18b3
    add di, byte 0x50                ; 0x18b4
    pop si                           ; 0x18b7
    add si, word [cs:data_1be1]      ; 0x18b8
    pop cx                           ; 0x18bd
    loop @..bios_mouse_loc_189f.l1   ; 0x18be
    ret                              ; 0x18c0
bios_mouse_loc_18c1:
    push ds                          ; 0x18c1
    push es                          ; 0x18c2
    push si                          ; 0x18c3
    push di                          ; 0x18c4
    cmp byte [cs:data_0226], 1       ; 0x18c5
    je short @..bios_mouse_loc_18c1.l1 ; 0x18cb
    cmp byte [cs:data_0228], 1       ; 0x18cd
    je short @..bios_mouse_loc_18c1.l2 ; 0x18d3
@..bios_mouse_loc_18c1.l1:
    jmp near @..bios_mouse_loc_18c1.l4 ; 0x18d5
@..bios_mouse_loc_18c1.l2:
    mov ax, 3                        ; 0x18d8
    int 0x33 ; BIOS mouse
    shr cx, 1                        ; 0x18dd
    cmp word [cs:data_1bd9], cx      ; 0x18df
    jne short @..bios_mouse_loc_18c1.l3 ; 0x18e4
    cmp word [cs:data_1bdb], dx      ; 0x18e6
    je short @..bios_mouse_loc_18c1.l4 ; 0x18eb
@..bios_mouse_loc_18c1.l3:
    shl cx, 1                        ; 0x18ed
    mov ax, cs                       ; 0x18ef
    push ax                          ; 0x18f1
    call math_loc_2a4f               ; 0x18f2
@..bios_mouse_loc_18c1.l4:
    mov byte [cs:data_0227], 0       ; 0x18f5
    pop di                           ; 0x18fb
    pop si                           ; 0x18fc
    pop es                           ; 0x18fd
    pop ds                           ; 0x18fe
    ret                              ; 0x18ff
bios_mouse_loc_1900:
    cmp byte [cs:data_0228], 1       ; 0x1900
    jne short @..bios_mouse_loc_1900.l1 ; 0x1906
    mov byte [cs:data_0227], 1       ; 0x1908
@..bios_mouse_loc_1900.l1:
    ret                              ; 0x190e
bios_mouse_loc_190f:
    push bp                          ; 0x190f
    mov bp, sp                       ; 0x1910
    sub sp, byte 4                   ; 0x1912
    push ds                          ; 0x1915
    push si                          ; 0x1916
    push es                          ; 0x1917
    mov ax, ds                       ; 0x1918
    mov es, ax                       ; 0x191a
    mov word [bp - 0x0004], 1        ; 0x191c
    xor ax, ax                       ; 0x1921
    cmp byte [cs:data_0228], 0       ; 0x1923
    je short @..bios_mouse_loc_190f.l6 ; 0x1929
    mov bx, word [cs:data_2b02]      ; 0x192b
    or bx, bx                        ; 0x1930
    je short @..bios_mouse_loc_190f.l1 ; 0x1932
    mov word [cs:data_2b02], 0       ; 0x1934
    mov word [bp - 0x0002], bx       ; 0x193b
    mov cx, word [cs:data_2b04]      ; 0x193e
    mov dx, word [cs:data_2b06]      ; 0x1943
    jmp short @..bios_mouse_loc_190f.l2 ; 0x1948
@..bios_mouse_loc_190f.l1:
    mov ax, 3                        ; 0x194a
    int 0x33 ; BIOS mouse
    xor bx, bx                       ; 0x194f
    mov word [bp - 0x0002], bx       ; 0x1951
    shr cx, 1                        ; 0x1954
@..bios_mouse_loc_190f.l2:
    mov bx, cx                       ; 0x1956
    mov si, word [bp + 0xc]          ; 0x1958
@..bios_mouse_loc_190f.l3:
    cmp word [si], byte 0xff         ; 0x195b
    je short @..bios_mouse_loc_190f.l5 ; 0x195e
    cmp bx, word [si]                ; 0x1960
    jb short @..bios_mouse_loc_190f.l4 ; 0x1962
    cmp dx, word [si + 0x2]          ; 0x1964
    jb short @..bios_mouse_loc_190f.l4 ; 0x1967
    cmp word [si + 0x4], bx          ; 0x1969
    jb short @..bios_mouse_loc_190f.l4 ; 0x196c
    cmp word [si + 0x6], dx          ; 0x196e
    jb short @..bios_mouse_loc_190f.l4 ; 0x1971
    mov ax, word [bp - 0x0004]       ; 0x1973
    mov bx, word [bp - 0x0002]       ; 0x1976
    or bx, bx                        ; 0x1979
    je short @..bios_mouse_loc_190f.l6 ; 0x197b
    neg ax                           ; 0x197d
    jmp short @..bios_mouse_loc_190f.l6 ; 0x197f
@..bios_mouse_loc_190f.l4:
    add si, byte 8                   ; 0x1981
    inc word [bp - 0x0004]           ; 0x1984
    jmp short @..bios_mouse_loc_190f.l3 ; 0x1987
@..bios_mouse_loc_190f.l5:
    xor ax, ax                       ; 0x1989
@..bios_mouse_loc_190f.l6:
    pop es                           ; 0x198b
    pop si                           ; 0x198c
    pop ds                           ; 0x198d
    mov sp, bp                       ; 0x198e
    pop bp                           ; 0x1990
    ret                              ; 0x1991
bios_mouse_loc_1992:
    push bp                          ; 0x1992
    mov bp, sp                       ; 0x1993
    sub sp, byte 6                   ; 0x1995
    push es                          ; 0x1998
    mov ax, ds                       ; 0x1999
    mov es, ax                       ; 0x199b
    cmp byte [cs:data_0228], 0       ; 0x199d
    je short @..bios_mouse_loc_1992.l1 ; 0x19a3
    mov ax, 3                        ; 0x19a5
    int 0x33 ; BIOS mouse
    mov word [bp - 0x0002], bx       ; 0x19aa
    mov bx, word [bp + 0xc]          ; 0x19ad
    shr cx, 1                        ; 0x19b0
    mov word [bx], cx                ; 0x19b2
    mov bx, word [bp + 0xe]          ; 0x19b4
    mov word [bx], dx                ; 0x19b7
    mov ax, word [bp - 0x0002]       ; 0x19b9
@..bios_mouse_loc_1992.l1:
    pop es                           ; 0x19bc
    mov sp, bp                       ; 0x19bd
    pop bp                           ; 0x19bf
    ret                              ; 0x19c0
%include "ega/mouse_set_pos.asm"

dos_con_loc_1a9f:
    mov ax, cs                       ; 0x1a9f
    mov ds, ax                       ; 0x1aa1
    mov dx, 0x1baf                   ; 0x1aa3
    mov ah, 9                        ; 0x1aa6
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x1aaa
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Mouse pointer size out of range.', 0
    db 0x0a, 0x24, 0xfd, 0x1b, 0x7d, 0x20
    times 2484 db 0
    db 0x0a, 0x00, 0x03, 0x00, 0x0a, 0x00, 0x0a, 0x00, 0x03, 0x00, 0x0a
    times 13 db 0
    db 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xb6, 0xb6, 0xb6, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x13
    db 0x15, 0xb6, 0x00, 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x15, 0x16, 0xb6, 0x00, 0xff, 0xff, 0xff
    db 0xff, 0x00, 0xb3, 0xb6, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0x00, 0xb3, 0x00, 0x00, 0xb3
    db 0xb6, 0xc1, 0x00, 0xff, 0xff, 0x00, 0x00, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff
    db 0xff, 0xff, 0xff, 0xff, 0x00, 0xb3, 0xb6, 0xc1, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00
    db 0xb3, 0xc3, 0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00, 0x00, 0xff
    times 1287 db 0
    db 0xfc, 0x25, 0x0a, 0x00, 0x74, 0x34, 0x2e, 0x80, 0x3e, 0x08, 0x2b, 0x00, 0x75, 0x29, 0x2e, 0xa2
    db 0x08, 0x2b, 0x2e, 0x89, 0x1e, 0x02, 0x2b, 0xd1, 0xe9, 0x2e, 0x89, 0x0e, 0x04, 0x2b, 0x2e, 0x89
    db 0x16, 0x06, 0x2b, 0x32, 0xc0, 0x2e, 0xa2, 0x08, 0x2b, 0x2e, 0x3b, 0x0e, 0xd9, 0x1b, 0x75, 0x08
    db 0x2e, 0x3b, 0x16, 0xdb, 0x1b, 0x75, 0x01, 0xcb, 0xd1, 0xe1, 0x2e, 0xa0, 0x27, 0x02, 0x2e, 0x0a
    db 0x06, 0x26, 0x02, 0x74, 0x01, 0xcb

math_loc_2a4f:
    cmp byte [cs:data_2b08], 0       ; 0x2a4f
    je short @..math_loc_2a4f.l1     ; 0x2a55
    retf                             ; 0x2a57
@..math_loc_2a4f.l1:
    mov al, 0xff                     ; 0x2a58
    mov byte [cs:data_2b08], al      ; 0x2a5a
    shr cx, 1                        ; 0x2a5e
    mov word [cs:data_1beb], cx      ; 0x2a60
    mov word [cs:data_1bed], dx      ; 0x2a65
math_loc_2a6a:
    push bp                          ; 0x2a6a
    mov bp, sp                       ; 0x2a6b
    sub sp, byte 0x10                ; 0x2a6d
    mov ax, word [cs:data_1bed]      ; 0x2a70
    mov bx, 0xc8                     ; 0x2a74
    sub bx, ax                       ; 0x2a77
    cmp bx, word [cs:data_2591]      ; 0x2a79
    jb short @..math_loc_2a6a.l1     ; 0x2a7e
    mov bx, word [cs:data_2591]      ; 0x2a80
@..math_loc_2a6a.l1:
    mov word [cs:data_1bf5], bx      ; 0x2a85
    mov bx, 0x50                     ; 0x2a8a
    mul bx                           ; 0x2a8d
    mov bx, word [cs:data_1beb]      ; 0x2a8f
    mov cl, 2                        ; 0x2a94
    shr bx, cl                       ; 0x2a96
    add ax, bx                       ; 0x2a98
    mov word [cs:data_1bf7], ax      ; 0x2a9a
    mov ax, word [cs:data_1beb]      ; 0x2a9e
    and ax, strict word 3            ; 0x2aa2
    shl ax, 1                        ; 0x2aa5
    mov word [cs:data_1bf9], ax      ; 0x2aa7
    mov ax, 0x140                    ; 0x2aab
    mov bx, word [cs:data_1beb]      ; 0x2aae
    sub ax, bx                       ; 0x2ab3
    cmp ax, word [cs:data_258d]      ; 0x2ab5
    jb short @..math_loc_2a6a.l2     ; 0x2aba
    mov ax, word [cs:data_258d]      ; 0x2abc
    mov word [cs:data_1bfb], 0       ; 0x2ac0
    jmp short @..math_loc_2a6a.l3    ; 0x2ac7
@..math_loc_2a6a.l2:
    mov word [cs:data_1bfb], 0xff    ; 0x2ac9
@..math_loc_2a6a.l3:
    mov word [cs:data_1bef], ax      ; 0x2ad0
    add ax, strict word 3            ; 0x2ad4
    mov cl, 2                        ; 0x2ad7
    shr ax, cl                       ; 0x2ad9
    mov word [cs:data_1bf1], ax      ; 0x2adb
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word [cs:data_1bfb], 0
    jne short @..math_loc_2a6a.l4    ; 0x2ae5
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word [cs:data_1bf9], 0
    je short @..math_loc_2a6a.l4     ; 0x2aed
    inc ax                           ; 0x2aef
@..math_loc_2a6a.l4:
    mov word [cs:data_1bf3], ax      ; 0x2af0
    mov di, word [cs:data_1bd7]      ; 0x2af4
    mov ax, cs                       ; 0x2af9
    mov es, ax                       ; 0x2afb
    mov ax, 0xa000                   ; 0x2afd
    mov ds, ax                       ; 0x2b00
    mov dx, 0x3ce                    ; 0x2b02
    mov al, 5                        ; 0x2b05
    out dx, al                       ; 0x2b07
    inc dx                           ; 0x2b08
    mov al, 0                        ; 0x2b09
    out dx, al                       ; 0x2b0b
    mov ah, 0                        ; 0x2b0c
    xor di, di                       ; 0x2b0e
    call io_loc_2f46                 ; 0x2b10
    mov ah, 1                        ; 0x2b13
    mov di, 0x120                    ; 0x2b15
    call io_loc_2f46                 ; 0x2b18
    mov di, 0x240                    ; 0x2b1b
    mov ah, 2                        ; 0x2b1e
    call io_loc_2f46                 ; 0x2b20
    mov di, 0x360                    ; 0x2b23
    mov ah, 3                        ; 0x2b26
    call io_loc_2f46                 ; 0x2b28
    mov ax, word [cs:data_1bdb]      ; 0x2b2b
    cmp ax, strict word 0xffff       ; 0x2b2f
    jne short @..math_loc_2a6a.l5    ; 0x2b32
    jmp near @..math_loc_2a6a.l13    ; 0x2b34
@..math_loc_2a6a.l5:
    add ax, word [cs:data_1be3]      ; 0x2b37
    dec ax                           ; 0x2b3c
    mov word [bp - 0x0002], ax       ; 0x2b3d
    mov ax, word [cs:data_1bd9]      ; 0x2b40
    mov cl, 2                        ; 0x2b44
    shr ax, cl                       ; 0x2b46
    add ax, word [cs:data_1be1]      ; 0x2b48
    dec ax                           ; 0x2b4d
    mov word [bp - 0x0004], ax       ; 0x2b4e
    mov cx, word [cs:data_1beb]      ; 0x2b51
    shr cx, 1                        ; 0x2b56
    shr cx, 1                        ; 0x2b58
    mov dx, word [cs:data_1bed]      ; 0x2b5a
    cmp word [bp - 0x0004], cx       ; 0x2b5f
    jb short @..math_loc_2a6a.l6     ; 0x2b62
    cmp word [bp - 0x0002], dx       ; 0x2b64
    jb short @..math_loc_2a6a.l6     ; 0x2b67
    add cx, word [cs:data_1bf3]      ; 0x2b69
    dec cx                           ; 0x2b6e
    add dx, word [cs:data_1bf5]      ; 0x2b6f
    dec dx                           ; 0x2b74
    mov ax, word [cs:data_1bd9]      ; 0x2b75
    shr ax, 1                        ; 0x2b79
    shr ax, 1                        ; 0x2b7b
    cmp cx, ax                       ; 0x2b7d
    jb short @..math_loc_2a6a.l6     ; 0x2b7f
    cmp dx, word [cs:data_1bdb]      ; 0x2b81
    jae short @..math_loc_2a6a.l7    ; 0x2b86
@..math_loc_2a6a.l6:
    mov byte [cs:data_259d], 0       ; 0x2b88
    jmp near @..math_loc_2a6a.l13    ; 0x2b8e
@..math_loc_2a6a.l7:
    mov byte [cs:data_259d], 1       ; 0x2b91
    mov cx, word [cs:data_1beb]      ; 0x2b97
    shr cx, 1                        ; 0x2b9c
    shr cx, 1                        ; 0x2b9e
    mov ax, cx                       ; 0x2ba0
    mov bx, word [cs:data_1bd9]      ; 0x2ba2
    shr bx, 1                        ; 0x2ba7
    shr bx, 1                        ; 0x2ba9
    cmp bx, cx                       ; 0x2bab
    jb short @..math_loc_2a6a.l8     ; 0x2bad
    mov ax, word [cs:data_1bd9]      ; 0x2baf
    shr ax, 1                        ; 0x2bb3
    shr ax, 1                        ; 0x2bb5
@..math_loc_2a6a.l8:
    mov word [bp - 0x0006], ax       ; 0x2bb7
    mov dx, word [cs:data_1bed]      ; 0x2bba
    mov bx, dx                       ; 0x2bbf
    cmp word [cs:data_1bdb], dx      ; 0x2bc1
    jb short @..math_loc_2a6a.l9     ; 0x2bc6
    mov bx, word [cs:data_1bdb]      ; 0x2bc8
@..math_loc_2a6a.l9:
    mov word [bp - 0x0008], bx       ; 0x2bcd
    sub ax, cx                       ; 0x2bd0
    sub bx, dx                       ; 0x2bd2
    mov word [bp - 0x000a], ax       ; 0x2bd4
    mov word [bp - 0x000c], bx       ; 0x2bd7
    mov cx, word [cs:data_1bf3]      ; 0x2bda
    mov dx, word [cs:data_1bf5]      ; 0x2bdf
    sub cx, ax                       ; 0x2be4
    mov word [bp - 0x000e], cx       ; 0x2be6
    sub dx, bx                       ; 0x2be9
    mov word [bp - 0x0010], dx       ; 0x2beb
    mov ax, word [bp - 0x0006]       ; 0x2bee
    add ax, word [bp - 0x000e]       ; 0x2bf1
    dec ax                           ; 0x2bf4
    cmp ax, word [bp - 0x0004]       ; 0x2bf5
    jb short @..math_loc_2a6a.l10    ; 0x2bf8
    mov ax, word [bp - 0x0004]       ; 0x2bfa
    sub ax, word [bp - 0x0006]       ; 0x2bfd
    inc ax                           ; 0x2c00
    mov word [bp - 0x000e], ax       ; 0x2c01
@..math_loc_2a6a.l10:
    mov ax, word [bp - 0x0008]       ; 0x2c04
    add ax, word [bp - 0x0010]       ; 0x2c07
    dec ax                           ; 0x2c0a
    cmp ax, word [bp - 0x0002]       ; 0x2c0b
    jb short @..math_loc_2a6a.l11    ; 0x2c0e
    mov ax, word [bp - 0x0002]       ; 0x2c10
    sub ax, word [bp - 0x0008]       ; 0x2c13
    inc ax                           ; 0x2c16
    mov word [bp - 0x0010], ax       ; 0x2c17
@..math_loc_2a6a.l11:
    mov ax, word [bp - 0x0008]       ; 0x2c1a
    sub ax, word [cs:data_1bdb]      ; 0x2c1d
    mov bx, word [cs:data_1be1]      ; 0x2c22
    mul bx                           ; 0x2c27
    add ax, word [bp - 0x0006]       ; 0x2c29
    mov bx, word [cs:data_1bd9]      ; 0x2c2c
    shr bx, 1                        ; 0x2c31
    shr bx, 1                        ; 0x2c33
    sub ax, bx                       ; 0x2c35
    add ax, word [cs:data_1bd5]      ; 0x2c37
    mov si, ax                       ; 0x2c3c
    mov ax, word [bp - 0x000c]       ; 0x2c3e
    mov bx, word [cs:data_1bf3]      ; 0x2c41
    mul bx                           ; 0x2c46
    add ax, word [bp - 0x000a]       ; 0x2c48
    add ax, word [cs:data_1bd7]      ; 0x2c4b
    mov di, ax                       ; 0x2c50
    mov ax, cs                       ; 0x2c52
    mov ds, ax                       ; 0x2c54
    mov es, ax                       ; 0x2c56
    mov cx, word [bp - 0x0010]       ; 0x2c58
@..math_loc_2a6a.l12:
    push cx                          ; 0x2c5b
    push si                          ; 0x2c5c
    push di                          ; 0x2c5d
    mov ax, si                       ; 0x2c5e
    mov bx, di                       ; 0x2c60
    mov cx, word [bp - 0x000e]       ; 0x2c62
    rep movsb                        ; 0x2c65
    add ax, 0x120                    ; 0x2c67
    add bx, strict word 0x120        ; 0x2c6a
    mov si, ax                       ; 0x2c6e
    mov di, bx                       ; 0x2c70
    mov cx, word [bp - 0x000e]       ; 0x2c72
    rep movsb                        ; 0x2c75
    add ax, 0x120                    ; 0x2c77
    add bx, strict word 0x120        ; 0x2c7a
    mov si, ax                       ; 0x2c7e
    mov di, bx                       ; 0x2c80
    mov cx, word [bp - 0x000e]       ; 0x2c82
    rep movsb                        ; 0x2c85
    add ax, 0x120                    ; 0x2c87
    add bx, strict word 0x120        ; 0x2c8a
    mov si, ax                       ; 0x2c8e
    mov di, bx                       ; 0x2c90
    mov cx, word [bp - 0x000e]       ; 0x2c92
    rep movsb                        ; 0x2c95
    pop di                           ; 0x2c97
    add di, word [cs:data_1bf3]      ; 0x2c98
    pop si                           ; 0x2c9d
    add si, word [cs:data_1be1]      ; 0x2c9e
    pop cx                           ; 0x2ca3
    loop @..math_loc_2a6a.l12        ; 0x2ca4
@..math_loc_2a6a.l13:
    mov ax, 0xa000                   ; 0x2ca6
    mov es, ax                       ; 0x2ca9
    mov si, 0x2602                   ; 0x2cab
    mov ax, cs                       ; 0x2cae
    mov ds, ax                       ; 0x2cb0
    xor si, si                       ; 0x2cb2
    mov ah, 1                        ; 0x2cb4
    call io_loc_2f70                 ; 0x2cb6
    mov si, 0x100                    ; 0x2cb9
    mov ah, 2                        ; 0x2cbc
    call io_loc_2f70                 ; 0x2cbe
    mov si, 0x200                    ; 0x2cc1
    mov ah, 4                        ; 0x2cc4
    call io_loc_2f70                 ; 0x2cc6
    mov si, 0x300                    ; 0x2cc9
    mov ah, 8                        ; 0x2ccc
    call io_loc_2f70                 ; 0x2cce
    mov dx, 0x3ce                    ; 0x2cd1
    mov al, 8                        ; 0x2cd4
    out dx, al                       ; 0x2cd6
    inc dx                           ; 0x2cd7
    mov al, 0xff                     ; 0x2cd8
    out dx, al                       ; 0x2cda
    mov dx, 0x3c4                    ; 0x2cdb
    mov al, 2                        ; 0x2cde
    out dx, al                       ; 0x2ce0
    inc dx                           ; 0x2ce1
    mov al, 0xf                      ; 0x2ce2
    out dx, al                       ; 0x2ce4
    mov ax, word [cs:data_1bdb]      ; 0x2ce5
    cmp ax, strict word 0xffff       ; 0x2ce9
    jne short @..math_loc_2a6a.l14   ; 0x2cec
    jmp near @..math_loc_2a6a.l23    ; 0x2cee
@..math_loc_2a6a.l14:
    mov ah, 1                        ; 0x2cf1
    xor si, si                       ; 0x2cf3
    call io_loc_2e7d                 ; 0x2cf5
    mov ah, 2                        ; 0x2cf8
    mov si, 0x120                    ; 0x2cfa
    call io_loc_2e7d                 ; 0x2cfd
    mov ah, 4                        ; 0x2d00
    mov si, 0x240                    ; 0x2d02
    call io_loc_2e7d                 ; 0x2d05
    mov ah, 8                        ; 0x2d08
    mov si, 0x360                    ; 0x2d0a
    call io_loc_2e7d                 ; 0x2d0d
    mov dx, 0x3ce                    ; 0x2d10
    mov al, 8                        ; 0x2d13
    out dx, al                       ; 0x2d15
    inc dx                           ; 0x2d16
    mov al, 0xff                     ; 0x2d17
    out dx, al                       ; 0x2d19
    mov dx, 0x3c4                    ; 0x2d1a
    mov al, 2                        ; 0x2d1d
    out dx, al                       ; 0x2d1f
    inc dx                           ; 0x2d20
    mov al, 0xf                      ; 0x2d21
    out dx, al                       ; 0x2d23
    mov ax, cs                       ; 0x2d24
    mov es, ax                       ; 0x2d26
    mov ds, ax                       ; 0x2d28
    mov di, 0x24fd                   ; 0x2d2a
    mov cx, 0x80                     ; 0x2d2d
    mov al, 0xff                     ; 0x2d30
    rep stosb                        ; 0x2d32
    mov ax, word [cs:data_1be1]      ; 0x2d34
    add ax, strict word 7            ; 0x2d38
    mov cl, 3                        ; 0x2d3b
    shr ax, cl                       ; 0x2d3d
    mov word [bp - 0x0002], ax       ; 0x2d3f
    cmp byte [cs:data_259d], 0       ; 0x2d42
    jne short @..math_loc_2a6a.l15   ; 0x2d48
    jmp near @..math_loc_2a6a.l22    ; 0x2d4a
@..math_loc_2a6a.l15:
    mov ax, word [bp - 0x0008]       ; 0x2d4d
    sub ax, word [cs:data_1bdb]      ; 0x2d50
    mov bx, word [bp - 0x0002]       ; 0x2d55
    mul bx                           ; 0x2d58
    mov di, ax                       ; 0x2d5a
    add di, strict word 0x24fd       ; 0x2d5c
    mov ax, word [bp - 0x0006]       ; 0x2d60
    mov bx, word [cs:data_1bd9]      ; 0x2d63
    shr bx, 1                        ; 0x2d68
    shr bx, 1                        ; 0x2d6a
    sub ax, bx                       ; 0x2d6c
    mov bx, 0x257d                   ; 0x2d6e
@..math_loc_2a6a.l16:
    cmp ax, strict word 8            ; 0x2d71
    jb short @..math_loc_2a6a.l17    ; 0x2d74
    sub ax, strict word 8            ; 0x2d76
    inc di                           ; 0x2d79
    jmp short @..math_loc_2a6a.l16   ; 0x2d7a
@..math_loc_2a6a.l17:
    mov cx, ax                       ; 0x2d7c
    mov ah, 0xff                     ; 0x2d7e
    shr ah, cl                       ; 0x2d80
    mov dx, word [bp - 0x000e]       ; 0x2d82
    add dx, cx                       ; 0x2d85
@..math_loc_2a6a.l18:
    cmp dx, byte 8                   ; 0x2d87
    jb short @..math_loc_2a6a.l19    ; 0x2d8a
    not ah                           ; 0x2d8c
    mov byte [bx], ah                ; 0x2d8e
    inc bx                           ; 0x2d90
    mov ah, 0xff                     ; 0x2d91
    sub dx, byte 8                   ; 0x2d93
    je short @..math_loc_2a6a.l20    ; 0x2d96
    jmp short @..math_loc_2a6a.l18   ; 0x2d98
@..math_loc_2a6a.l19:
    mov al, 0xff                     ; 0x2d9a
    mov cx, 8                        ; 0x2d9c
    sub cx, dx                       ; 0x2d9f
    shl al, cl                       ; 0x2da1
    and ah, al                       ; 0x2da3
    not ah                           ; 0x2da5
    mov byte [bx], ah                ; 0x2da7
    inc bx                           ; 0x2da9
@..math_loc_2a6a.l20:
    sub bx, strict word 0x257d       ; 0x2daa
    mov word [bp - 0x0004], bx       ; 0x2dae
    mov cx, word [bp - 0x0010]       ; 0x2db1
@..math_loc_2a6a.l21:
    push cx                          ; 0x2db4
    push di                          ; 0x2db5
    mov si, 0x257d                   ; 0x2db6
    mov cx, word [bp - 0x0004]       ; 0x2db9
    rep movsb                        ; 0x2dbc
    pop di                           ; 0x2dbe
    add di, word [bp - 0x0002]       ; 0x2dbf
    pop cx                           ; 0x2dc2
    loop @..math_loc_2a6a.l21        ; 0x2dc3
@..math_loc_2a6a.l22:
    mov ax, 0xa000                   ; 0x2dc5
    mov es, ax                       ; 0x2dc8
    mov si, word [cs:data_1bd5]      ; 0x2dca
    mov ah, 1                        ; 0x2dcf
    call io_loc_2e35                 ; 0x2dd1
    mov si, word [cs:data_1bd5]      ; 0x2dd4
    add si, strict word 0x120        ; 0x2dd9
    mov ah, 2                        ; 0x2ddd
    call io_loc_2e35                 ; 0x2ddf
    mov si, word [cs:data_1bd5]      ; 0x2de2
    add si, strict word 0x240        ; 0x2de7
    mov ah, 4                        ; 0x2deb
    call io_loc_2e35                 ; 0x2ded
    mov si, word [cs:data_1bd5]      ; 0x2df0
    add si, strict word 0x360        ; 0x2df5
    mov ah, 8                        ; 0x2df9
    call io_loc_2e35                 ; 0x2dfb
    mov dx, 0x3c4                    ; 0x2dfe
    mov al, 2                        ; 0x2e01
    out dx, al                       ; 0x2e03
    inc dx                           ; 0x2e04
    mov al, 0xf                      ; 0x2e05
    out dx, al                       ; 0x2e07
@..math_loc_2a6a.l23:
    mov ax, word [cs:data_1bd5]      ; 0x2e08
    mov bx, word [cs:data_1bd7]      ; 0x2e0c
    mov word [cs:data_1bd7], ax      ; 0x2e11
    mov word [cs:data_1bd5], bx      ; 0x2e15
    mov ax, cs                       ; 0x2e1a
    mov ds, ax                       ; 0x2e1c
    mov es, ax                       ; 0x2e1e
    mov si, data_1beb                ; 0x2e20
    mov di, data_1bd9                ; 0x2e23
    mov cx, 9                        ; 0x2e26
    rep movsw                        ; 0x2e29
    mov sp, bp                       ; 0x2e2b
    pop bp                           ; 0x2e2d
    xor al, al                       ; 0x2e2e
    mov byte [cs:data_2b08], al      ; 0x2e30
    retf                             ; 0x2e34
io_loc_2e35:
    mov dx, 0x3c4                    ; 0x2e35
    mov al, 2                        ; 0x2e38
    out dx, al                       ; 0x2e3a
    inc dx                           ; 0x2e3b
    mov al, ah                       ; 0x2e3c
    out dx, al                       ; 0x2e3e
    mov bx, 0x24fd                   ; 0x2e3f
    mov di, word [cs:data_1be5]      ; 0x2e42
    mov cx, word [cs:data_1be3]      ; 0x2e47
@..io_loc_2e35.l1:
    push cx                          ; 0x2e4c
    push si                          ; 0x2e4d
    push bx                          ; 0x2e4e
    push di                          ; 0x2e4f
    mov cx, word [cs:data_1be1]      ; 0x2e50
@..io_loc_2e35.l2:
    mov ah, byte [bx]                ; 0x2e55
    inc bx                           ; 0x2e57
    mov al, 9                        ; 0x2e58
@..io_loc_2e35.l3:
    dec al                           ; 0x2e5a
    je short @..io_loc_2e35.l2       ; 0x2e5c
    shl ah, 1                        ; 0x2e5e
    jae short @..io_loc_2e35.l4      ; 0x2e60
    mov dl, byte [si]                ; 0x2e62
    mov byte [es:di], dl             ; 0x2e64
@..io_loc_2e35.l4:
    inc di                           ; 0x2e67
    inc si                           ; 0x2e68
    loop @..io_loc_2e35.l3           ; 0x2e69
    pop di                           ; 0x2e6b
    add di, byte 0x50                ; 0x2e6c
    pop bx                           ; 0x2e6f
    add bx, word [bp - 0x0002]       ; 0x2e70
    pop si                           ; 0x2e73
    add si, word [cs:data_1be1]      ; 0x2e74
    pop cx                           ; 0x2e79
    loop @..io_loc_2e35.l1           ; 0x2e7a
    ret                              ; 0x2e7c
io_loc_2e7d:
    mov dx, 0x3c4                    ; 0x2e7d
    mov al, 2                        ; 0x2e80
    out dx, al                       ; 0x2e82
    inc dx                           ; 0x2e83
    mov al, ah                       ; 0x2e84
    out dx, al                       ; 0x2e86
    add si, word [cs:data_1bd7]      ; 0x2e87
    mov di, word [cs:data_1bf7]      ; 0x2e8c
    mov bx, 0x2a02                   ; 0x2e91
    mov cx, word [cs:data_1bf5]      ; 0x2e94
    mov dx, 0x3ce                    ; 0x2e99
    mov al, 8                        ; 0x2e9c
    out dx, al                       ; 0x2e9e
    inc dx                           ; 0x2e9f
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word [cs:data_1bf9], 0
    je short @..io_loc_2e7d.l1       ; 0x2ea6
    jmp short @..io_loc_2e7d.l3      ; 0x2ea8
@..io_loc_2e7d.l1:
    push cx                          ; 0x2eaa
    push di                          ; 0x2eab
    push si                          ; 0x2eac
    push bx                          ; 0x2ead
    mov cx, word [cs:data_1bf1]      ; 0x2eae
@..io_loc_2e7d.l2:
    mov al, byte [bx]                ; 0x2eb3
    not al                           ; 0x2eb5
    out dx, al                       ; 0x2eb7
    mov al, byte [cs:si]             ; 0x2eb8
    mov ah, byte [es:di]             ; 0x2ebb
    mov byte [es:di], al             ; 0x2ebe
    inc si                           ; 0x2ec1
    inc bx                           ; 0x2ec2
    inc di                           ; 0x2ec3
    loop @..io_loc_2e7d.l2           ; 0x2ec4
    pop bx                           ; 0x2ec6
    add bx, word [cs:data_258f]      ; 0x2ec7
    pop si                           ; 0x2ecc
    add si, word [cs:data_1bf3]      ; 0x2ecd
    pop di                           ; 0x2ed2
    add di, byte 0x50                ; 0x2ed3
    pop cx                           ; 0x2ed6
    loop @..io_loc_2e7d.l1           ; 0x2ed7
    ret                              ; 0x2ed9
@..io_loc_2e7d.l3:
    push cx                          ; 0x2eda
    push di                          ; 0x2edb
    push si                          ; 0x2edc
    push bx                          ; 0x2edd
    mov cx, word [cs:data_1bf9]      ; 0x2ede
    mov al, byte [bx]                ; 0x2ee3
    not al                           ; 0x2ee5
    mov ah, 0xff                     ; 0x2ee7
    shr ax, cl                       ; 0x2ee9
    out dx, al                       ; 0x2eeb
    mov al, byte [si]                ; 0x2eec
    mov ah, byte [es:di]             ; 0x2eee
    mov byte [es:di], al             ; 0x2ef1
    inc di                           ; 0x2ef4
    inc si                           ; 0x2ef5
    mov ax, word [cs:data_1bf1]      ; 0x2ef6
    dec ax                           ; 0x2efa
    je short @..io_loc_2e7d.l5       ; 0x2efb
@..io_loc_2e7d.l4:
    push ax                          ; 0x2efd
    mov ah, byte [bx]                ; 0x2efe
    mov al, byte [bx + 0x1]          ; 0x2f00
    not ax                           ; 0x2f03
    shr ax, cl                       ; 0x2f05
    out dx, al                       ; 0x2f07
    mov al, byte [cs:si]             ; 0x2f08
    mov ah, byte [es:di]             ; 0x2f0b
    mov byte [es:di], al             ; 0x2f0e
    inc si                           ; 0x2f11
    inc bx                           ; 0x2f12
    inc di                           ; 0x2f13
    pop ax                           ; 0x2f14
    dec ax                           ; 0x2f15
    jne short @..io_loc_2e7d.l4      ; 0x2f16
@..io_loc_2e7d.l5:
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word [cs:data_1bfb], 0
    jne short @..io_loc_2e7d.l6      ; 0x2f1e
    mov ah, byte [bx]                ; 0x2f20
    xor al, al                       ; 0x2f22
    not ax                           ; 0x2f24
    shr ax, cl                       ; 0x2f26
    out dx, al                       ; 0x2f28
    mov al, byte [cs:si]             ; 0x2f29
    mov ah, byte [es:di]             ; 0x2f2c
    mov byte [es:di], al             ; 0x2f2f
@..io_loc_2e7d.l6:
    pop bx                           ; 0x2f32
    add bx, word [cs:data_258f]      ; 0x2f33
    pop si                           ; 0x2f38
    add si, word [cs:data_1bf3]      ; 0x2f39
    pop di                           ; 0x2f3e
    add di, byte 0x50                ; 0x2f3f
    pop cx                           ; 0x2f42
    loop @..io_loc_2e7d.l3           ; 0x2f43
    ret                              ; 0x2f45
io_loc_2f46:
    mov si, word [cs:data_1bf7]      ; 0x2f46
    add di, word [cs:data_1bd7]      ; 0x2f4b
    mov cx, word [cs:data_1bf5]      ; 0x2f50
    mov dx, 0x3ce                    ; 0x2f55
    mov al, 4                        ; 0x2f58
    out dx, al                       ; 0x2f5a
    inc dx                           ; 0x2f5b
    mov al, ah                       ; 0x2f5c
    out dx, al                       ; 0x2f5e
@..io_loc_2f46.l1:
    push cx                          ; 0x2f5f
    push si                          ; 0x2f60
    mov cx, word [cs:data_1bf3]      ; 0x2f61
    rep movsb                        ; 0x2f66
    pop si                           ; 0x2f68
    add si, byte 0x50                ; 0x2f69
    pop cx                           ; 0x2f6c
    loop @..io_loc_2f46.l1           ; 0x2f6d
    ret                              ; 0x2f6f
io_loc_2f70:
    mov dx, 0x3c4                    ; 0x2f70
    mov al, 2                        ; 0x2f73
    out dx, al                       ; 0x2f75
    inc dx                           ; 0x2f76
    mov al, ah                       ; 0x2f77
    out dx, al                       ; 0x2f79
    add si, strict word 0x2602       ; 0x2f7a
    mov cx, word [cs:data_1bf5]      ; 0x2f7e
    mov di, word [cs:data_1bf7]      ; 0x2f83
    mov bx, 0x2a02                   ; 0x2f88
    mov dx, 0x3ce                    ; 0x2f8b
    mov al, 8                        ; 0x2f8e
    out dx, al                       ; 0x2f90
    inc dx                           ; 0x2f91
    db 0x2e, 0x83, 0x3e, 0xf9, 0x1b, 0x00 ; cmp word [cs:data_1bf9], 0
    je short @..io_loc_2f70.l1       ; 0x2f98
    jmp short @..io_loc_2f70.l3      ; 0x2f9a
@..io_loc_2f70.l1:
    push cx                          ; 0x2f9c
    push di                          ; 0x2f9d
    push si                          ; 0x2f9e
    push bx                          ; 0x2f9f
    mov cx, word [cs:data_1bf1]      ; 0x2fa0
@..io_loc_2f70.l2:
    mov al, byte [bx]                ; 0x2fa5
    out dx, al                       ; 0x2fa7
    mov al, byte [si]                ; 0x2fa8
    mov ah, byte [es:di]             ; 0x2faa
    mov byte [es:di], al             ; 0x2fad
    inc si                           ; 0x2fb0
    inc bx                           ; 0x2fb1
    inc di                           ; 0x2fb2
    loop @..io_loc_2f70.l2           ; 0x2fb3
    pop bx                           ; 0x2fb5
    add bx, word [cs:data_258f]      ; 0x2fb6
    pop si                           ; 0x2fbb
    add si, word [cs:data_258f]      ; 0x2fbc
    pop di                           ; 0x2fc1
    add di, byte 0x50                ; 0x2fc2
    pop cx                           ; 0x2fc5
    loop @..io_loc_2f70.l1           ; 0x2fc6
    ret                              ; 0x2fc8
@..io_loc_2f70.l3:
    push cx                          ; 0x2fc9
    push di                          ; 0x2fca
    push si                          ; 0x2fcb
    push bx                          ; 0x2fcc
    mov cx, word [cs:data_1bf9]      ; 0x2fcd
    mov al, byte [bx]                ; 0x2fd2
    shr al, cl                       ; 0x2fd4
    out dx, al                       ; 0x2fd6
    mov al, byte [si]                ; 0x2fd7
    shr al, cl                       ; 0x2fd9
    mov ah, byte [es:di]             ; 0x2fdb
    mov byte [es:di], al             ; 0x2fde
    inc di                           ; 0x2fe1
    mov ax, word [cs:data_1bf1]      ; 0x2fe2
    dec ax                           ; 0x2fe6
    je short @..io_loc_2f70.l5       ; 0x2fe7
@..io_loc_2f70.l4:
    push ax                          ; 0x2fe9
    mov ah, byte [bx]                ; 0x2fea
    mov al, byte [bx + 0x1]          ; 0x2fec
    shr ax, cl                       ; 0x2fef
    out dx, al                       ; 0x2ff1
    mov ah, byte [si]                ; 0x2ff2
    mov al, byte [si + 0x1]          ; 0x2ff4
    shr ax, cl                       ; 0x2ff7
    mov ah, byte [es:di]             ; 0x2ff9
    mov byte [es:di], al             ; 0x2ffc
    inc si                           ; 0x2fff
    inc bx                           ; 0x3000
    inc di                           ; 0x3001
    pop ax                           ; 0x3002
    dec ax                           ; 0x3003
    jne short @..io_loc_2f70.l4      ; 0x3004
@..io_loc_2f70.l5:
    db 0x2e, 0x83, 0x3e, 0xfb, 0x1b, 0x00 ; cmp word [cs:data_1bfb], 0
    jne short @..io_loc_2f70.l6      ; 0x300c
    mov ah, byte [bx]                ; 0x300e
    xor al, al                       ; 0x3010
    shr ax, cl                       ; 0x3012
    out dx, al                       ; 0x3014
    mov ah, byte [si]                ; 0x3015
    xor al, al                       ; 0x3017
    shr ax, cl                       ; 0x3019
    mov ah, byte [es:di]             ; 0x301b
    mov byte [es:di], al             ; 0x301e
@..io_loc_2f70.l6:
    pop bx                           ; 0x3021
    add bx, word [cs:data_258f]      ; 0x3022
    pop si                           ; 0x3027
    add si, word [cs:data_258f]      ; 0x3028
    pop di                           ; 0x302d
    add di, byte 0x50                ; 0x302e
    pop cx                           ; 0x3031
    loop @..io_loc_2f70.l3           ; 0x3032
    ret                              ; 0x3034
loc_3035:
    mov word [cs:data_2b02], 0       ; 0x3035
    ret                              ; 0x303c
loc_303d:
    push bp                          ; 0x303d
    mov bp, sp                       ; 0x303e
    sub sp, byte 8                   ; 0x3040
    push ds                          ; 0x3043
    push es                          ; 0x3044
    push di                          ; 0x3045
    push si                          ; 0x3046
    mov ax, ds                       ; 0x3047
    mov es, ax                       ; 0x3049
    mov ax, word [bp + 0xc]          ; 0x304b
    cmp ax, strict word 0x14         ; 0x304e
    jb short @..local.l44            ; 0x3051
    jmp near @..local.l46            ; 0x3053
@..local.l44:
    shl ax, 1                        ; 0x3056
    mov word [bp - 0x0008], ax       ; 0x3058
    mov bx, 0x229                    ; 0x305b
    add bx, ax                       ; 0x305e
    mov ax, word [cs:bx]             ; 0x3060
    or ax, ax                        ; 0x3063
    jne short @..local.l45           ; 0x3065
    jmp near @..local.l46            ; 0x3067
@..local.l45:
    mov word [cs:bx], 0              ; 0x306a
    mov cx, word [cs:data_11cb]      ; 0x306f
    dec cx                           ; 0x3074
    mov word [cs:data_11cb], cx      ; 0x3075
    call loc_4c93                    ; 0x307a
@..local.l46:
    pop si                           ; 0x307d
    pop di                           ; 0x307e
    pop es                           ; 0x307f
    pop ds                           ; 0x3080
    mov sp, bp                       ; 0x3081
    pop bp                           ; 0x3083
    ret                              ; 0x3084
dos_read_file_3:
    push bp                          ; 0x3085
    mov bp, sp                       ; 0x3086
    sub sp, byte 8                   ; 0x3088
    push ds                          ; 0x308b
    push es                          ; 0x308c
    push si                          ; 0x308d
    push di                          ; 0x308e
    mov ax, ds                       ; 0x308f
    mov es, ax                       ; 0x3091
    mov ax, word [bp + 0xe]          ; 0x3093
    shl ax, 1                        ; 0x3096
    mov bx, 0x229                    ; 0x3098
    add bx, ax                       ; 0x309b
    mov word [bp - 0x0002], bx       ; 0x309d
    mov ax, word [cs:bx]             ; 0x30a0
    or ax, ax                        ; 0x30a3
    je short @..dos_read_file_3.l1   ; 0x30a5
    jmp near @..dos_read_file_3.l7   ; 0x30a7
@..dos_read_file_3.l1:
    mov ax, word [cs:data_11cb]      ; 0x30aa
    inc ax                           ; 0x30ae
    mov word [cs:data_11cb], ax      ; 0x30af
    mov bx, word [bp - 0x0002]       ; 0x30b3
    mov word [cs:bx], ax             ; 0x30b6
    dec ax                           ; 0x30b9
    mov cl, 2                        ; 0x30ba
    shl ax, cl                       ; 0x30bc
    mov bx, 0x10fb                   ; 0x30be
    add bx, ax                       ; 0x30c1
    mov word [bp - 0x0002], bx       ; 0x30c3
    mov ax, word [cs:data_11cd]      ; 0x30c6
    mov word [cs:bx], ax             ; 0x30ca
    mov ax, word [cs:data_01e9]      ; 0x30cd
    mov ds, ax                       ; 0x30d1
    xor dx, dx                       ; 0x30d3
    mov cx, 4                        ; 0x30d5
    mov bx, word [bp + 0xc]          ; 0x30d8
    mov ah, 0x3f                     ; 0x30db
    int 0x21 ; DOS read file (handle)
    xor bx, bx                       ; 0x30df
    mov ax, word [bx]                ; 0x30e1
    mov dx, word [bx + 0x2]          ; 0x30e3
    mov word [bp - 0x0004], ax       ; 0x30e6
    mov word [bp - 0x0006], dx       ; 0x30e9
    mov cl, 4                        ; 0x30ec
    add ax, strict word 0xf          ; 0x30ee
    adc dx, byte 0                   ; 0x30f1
    shr ax, cl                       ; 0x30f4
    shl dl, cl                       ; 0x30f6
    or ah, dl                        ; 0x30f8
    add word [cs:data_11cd], ax      ; 0x30fa
    mov bx, word [bp - 0x0002]       ; 0x30ff
    mov word [cs:bx + 0x2], ax       ; 0x3102
    mov ax, word [cs:data_11cd]      ; 0x3106
    cmp ax, 0x4180                   ; 0x310a
    jb short @..dos_read_file_3.l2   ; 0x310d
    jmp near @..dos_read_file_3.l8   ; 0x310f
@..dos_read_file_3.l2:
    mov bx, word [bp - 0x0002]       ; 0x3112
    mov ax, word [cs:bx]             ; 0x3115
    add ax, word [cs:data_01e1]      ; 0x3118
    mov ds, ax                       ; 0x311d
@..dos_read_file_3.l3:
    mov cx, word [bp - 0x0004]       ; 0x311f
    mov dx, word [bp - 0x0006]       ; 0x3122
    mov bx, cx                       ; 0x3125
    or bx, dx                        ; 0x3127
    je short @..dos_read_file_3.l6   ; 0x3129
    or dx, dx                        ; 0x312b
    jne short @..dos_read_file_3.l4  ; 0x312d
    cmp cx, strict word 0x1000       ; 0x312f
    jae short @..dos_read_file_3.l4  ; 0x3133
    sub word [bp - 0x0004], cx       ; 0x3135
    jmp short @..dos_read_file_3.l5  ; 0x3138
@..dos_read_file_3.l4:
    sub cx, strict word 0x1000       ; 0x313a
    sbb dx, byte 0                   ; 0x313e
    mov word [bp - 0x0004], cx       ; 0x3141
    mov word [bp - 0x0006], dx       ; 0x3144
    mov cx, 0x1000                   ; 0x3147
@..dos_read_file_3.l5:
    xor dx, dx                       ; 0x314a
    mov bx, word [bp + 0xc]          ; 0x314c
    mov ah, 0x3f                     ; 0x314f
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x3153
    add ax, 0x100                    ; 0x3155
    mov ds, ax                       ; 0x3158
    jmp short @..dos_read_file_3.l3  ; 0x315a
@..dos_read_file_3.l6:
    pop di                           ; 0x315c
    pop si                           ; 0x315d
    pop es                           ; 0x315e
    pop ds                           ; 0x315f
    mov sp, bp                       ; 0x3160
    pop bp                           ; 0x3162
    ret                              ; 0x3163
@..dos_read_file_3.l7:
    mov ax, word [bp + 0xe]          ; 0x3164
    mov bx, 0xa                      ; 0x3167
    div bx                           ; 0x316a
    or byte [cs:data_3296], al       ; 0x316c
    or byte [cs:data_3297], dl       ; 0x3171
    mov ax, cs                       ; 0x3176
    mov ds, ax                       ; 0x3178
    mov dx, 0x3286                   ; 0x317a
dos_con_loc_317d:
    mov ah, 9                        ; 0x317d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3181
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Picture slot 00 not freed.', 0
    db 0x0a, 0x24

@..dos_read_file_3.l8:
    mov ax, cs                       ; 0x31a6
    mov ds, ax                       ; 0x31a8
    mov dx, 0x32b6                   ; 0x31aa
dos_con_loc_31ad:
    mov ah, 9                        ; 0x31ad
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x31b1
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Memory unavailable loading picture.', 0
    db 0x0a, 0x24

string_loc_31df:
    jmp near loc_04b1                ; 0x31df

    db 0x05, 0x00, 0x08, 0x0a, 0x0a, 0xaa, 0x11, 0x2a, 0x13, 0x22, 0x16, 0x2f, 0x19, 0xff, 0x1a, 0x7f
    db 0x1c, 0x77

leaf_loc_31f4:
    push bp                          ; 0x31f4
    mov bp, sp                       ; 0x31f5
    sub sp, byte 8                   ; 0x31f7
    push ds                          ; 0x31fa
    push es                          ; 0x31fb
    push si                          ; 0x31fc
    push di                          ; 0x31fd
    mov ax, ds                       ; 0x31fe
    mov es, ax                       ; 0x3200
    mov bx, dos_mem_loc_33b3         ; 0x3202
    add bx, word [bp + 0xc]          ; 0x3205
    mov ax, word [bp + 0xe]          ; 0x3208
    cmp ax, strict word 0xffff       ; 0x320b
    jne short @..leaf_loc_31f4.l1    ; 0x320e
    mov word [cs:bx], 0xff           ; 0x3210
    jmp short @..leaf_loc_31f4.l4    ; 0x3215
@..leaf_loc_31f4.l1:
    mov si, 0x32e2                   ; 0x3217
    mov ax, 8                        ; 0x321a
    shl ax, 1                        ; 0x321d
    add si, ax                       ; 0x321f
    mov ax, word [bp + 0xe]          ; 0x3221
    mov cx, 8                        ; 0x3224
@..leaf_loc_31f4.l2:
    cmp byte [cs:si], al             ; 0x3227
    jbe short @..leaf_loc_31f4.l3    ; 0x322a
    sub si, byte 2                   ; 0x322c
    loop @..leaf_loc_31f4.l2         ; 0x322f
@..leaf_loc_31f4.l3:
    mov al, byte [cs:si + 0x1]       ; 0x3231
    mov byte [cs:bx], al             ; 0x3235
@..leaf_loc_31f4.l4:
    pop di                           ; 0x3238
    pop si                           ; 0x3239
    pop es                           ; 0x323a
    pop ds                           ; 0x323b
    mov sp, bp                       ; 0x323c
    pop bp                           ; 0x323e
    ret                              ; 0x323f
leaf_loc_3240:
    ret                              ; 0x3240
leaf_loc_3241:
    ret                              ; 0x3241
leaf_loc_3242:
    ret                              ; 0x3242
leaf_loc_3243:
    ret                              ; 0x3243
leaf_loc_3244:
    ret                              ; 0x3244
leaf_loc_3245:
    push bx                          ; 0x3245
    cmp al, 0xff                     ; 0x3246
    jne short loc_3253               ; 0x3248
    xor cx, cx                       ; 0x324a
    xor ax, ax                       ; 0x324c
    xor dx, dx                       ; 0x324e
    pop bx                           ; 0x3250
    ret                              ; 0x3251
leaf_loc_3252:
    push bx                          ; 0x3252
loc_3253:
    push ax                          ; 0x3253
    cs xlatb                         ; 0x3254
    mov ah, al                       ; 0x3256
    and al, 1                        ; 0x3258
    mov dl, al                       ; 0x325a
    mov al, ah                       ; 0x325c
    and al, 2                        ; 0x325e
    shr al, 1                        ; 0x3260
    mov dh, al                       ; 0x3262
    mov al, ah                       ; 0x3264
    and al, 4                        ; 0x3266
    shr al, 1                        ; 0x3268
    shr al, 1                        ; 0x326a
    mov bl, al                       ; 0x326c
    mov al, ah                       ; 0x326e
    and al, 8                        ; 0x3270
    mov cl, 3                        ; 0x3272
    shr al, cl                       ; 0x3274
    mov bh, al                       ; 0x3276
    mov al, ah                       ; 0x3278
    and al, 0x10                     ; 0x327a
    mov cl, 3                        ; 0x327c
    shr al, cl                       ; 0x327e
    or dl, al                        ; 0x3280
    mov al, ah                       ; 0x3282
    and al, 0x20                     ; 0x3284
    mov cl, 4                        ; 0x3286
    shr al, cl                       ; 0x3288
    or dh, al                        ; 0x328a
    mov al, ah                       ; 0x328c
    and al, 0x40                     ; 0x328e
    mov cl, 5                        ; 0x3290
    shr al, cl                       ; 0x3292
    or bl, al                        ; 0x3294
    mov al, ah                       ; 0x3296
    and al, 0x80                     ; 0x3298
    mov cl, 6                        ; 0x329a
    shr al, cl                       ; 0x329c
    or bh, al                        ; 0x329e
    pop ax                           ; 0x32a0
    mov cl, ah                       ; 0x32a1
    mov ch, 3                        ; 0x32a3
    shl ch, cl                       ; 0x32a5
    shl dl, cl                       ; 0x32a7
    shl dh, cl                       ; 0x32a9
    shl bl, cl                       ; 0x32ab
    shl bh, cl                       ; 0x32ad
    mov ax, bx                       ; 0x32af
    pop bx                           ; 0x32b1
    ret                              ; 0x32b2

    db 0x00, 0x11, 0x19, 0x19, 0x18, 0x18, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x00
    db 0x11, 0x19, 0x14, 0x14
    db 'DDDDLL'
    db 0xcc, 0xcc, 0x04, 0x04, 0x0c, 0x0c, 0x08, 0x08, 0x00, 0x00, 0x14, 0x45, 0x45, 0x44, 0x4d, 0xdd
    db 0xdd, 0x04, 0x45, 0x45, 0x5d, 0x5c, 0x16, 0x66, 0x66, 0x6e, 0x6e, 0xee, 0x06, 0x0e, 0x0e, 0x08
    db 0x08, 0x5c, 0x9d, 0x8d, 0x8d, 0xce, 0x59, 0x56, 0x5e, 0x6d, 0xde, 0xce, 0xce, 0x08, 0x08, 0x00
    db 0x00, 0x7f, 0xff, 0x07, 0x0f, 0x0f, 0x15, 0x15, 0x15
    db 'UUUY]F'
    db 0x05, 0xce, 0xce, 0x08, 0x08, 0x27, 0xaf, 0x19, 0x19, 0x19, 0x19, 0x18, 0x18, 0x18, 0x18, 0x18
    db 0x01, 0x01, 0x01, 0x01, 0x09, 0x09, 0x09, 0x09, 0x08, 0x08, 0x08, 0x08, 0x00, 0x00, 0x00, 0x01
    db 0x09, 0x09, 0x09, 0xad, 0x08, 0x08, 0x08, 0x17, 0x17, 0x1f
    db "''''//"
    db 0xaf, 0x2d, 0x02, 0x0f, 0xad, 0x08, 0x08, 0x1c, 0x1c, 0x48, 0x48, 0x14, 0x14
    db '4"""*'
    db 0x02, 0x0a, 0x0a, 0x08, 0x08, 0x8d, 0x04, 0x04, 0x0d, 0x34, 0x3c, 0xbc, 0x13, 0x33, 0x33, 0x3b
    db 0xbb, 0xbb, 0x03, 0x0b, 0x08
    db 'UUUYYY]]'
    db 0x12, 0x12, 0x1a, 0x1a, 0x28, 0x28, 0x28, 0x02, 0x5d, 0x5d, 0x9d, 0x9d, 0x9d, 0x8d, 0x8d, 0x8d
    db 0x0d, 0x0d, 0x0d, 0x0d, 0x08, 0x08, 0x08, 0x00, 0x1d, 0x5d, 0x5d, 0x9d, 0x9d, 0x05, 0x8d, 0x15
    db 0x14, 0x14, 0x14, 0x1d, 0x1d, 0x1d, 0x1c, 0x1c, 0x09, 0x09, 0x08, 0x59, 0x1d, 0x9d, 0x8d, 0x9d
    db 0x48, 0x8d, 0x8d, 0x8d, 0x0d, 0x0d, 0x08, 0x00, 0x1c, 0x48, 0x48, 0x04, 0x04, 0x0c, 0x12, 0x23
    db 0x23, 0x2b, 0xab, 0xab, 0x02, 0x0b, 0x08, 0x2d

dos_mem_loc_33b3:
    push bp                          ; 0x33b3
    mov bp, sp                       ; 0x33b4
    sub sp, byte 0x0a                ; 0x33b6
    push ds                          ; 0x33b9
    push es                          ; 0x33ba
    push si                          ; 0x33bb
    push di                          ; 0x33bc
    mov ax, ds                       ; 0x33bd
    mov es, ax                       ; 0x33bf
    cmp word [bp + 0xc], byte 0      ; 0x33c1
    je short @..dos_mem_loc_33b3.l3  ; 0x33c5
    cmp word [bp + 0xc], byte 1      ; 0x33c7
    je short @..dos_mem_loc_33b3.l4  ; 0x33cb
    cmp word [bp + 0xc], byte 3      ; 0x33cd
    je short @..dos_mem_loc_33b3.l1  ; 0x33d1
    mov ax, 0x4180                   ; 0x33d3
    sub ax, word [cs:data_11cd]      ; 0x33d6
    mov bx, 0x10                     ; 0x33db
    mul bx                           ; 0x33de
    jmp short @..dos_mem_loc_33b3.l5 ; 0x33e0
@..dos_mem_loc_33b3.l1:
    mov ah, 0x36                     ; 0x33e2
    mov dx, word [bp + 0xe]          ; 0x33e4
    int 0x21 ; DOS get disk free space
    cmp ax, strict word 0xffff       ; 0x33e9
    jne short @..dos_mem_loc_33b3.l2 ; 0x33ec
    xor ax, ax                       ; 0x33ee
    xor dx, dx                       ; 0x33f0
    jmp short @..dos_mem_loc_33b3.l5 ; 0x33f2
@..dos_mem_loc_33b3.l2:
    mul cx                           ; 0x33f4
    mul bx                           ; 0x33f6
    jmp short @..dos_mem_loc_33b3.l5 ; 0x33f8
@..dos_mem_loc_33b3.l3:
    mov ah, 0x48                     ; 0x33fa
    mov bx, 0xffff                   ; 0x33fc
    int 0x21 ; DOS allocate memory
    mov ax, 0x10                     ; 0x3401
    mul bx                           ; 0x3404
    jmp short @..dos_mem_loc_33b3.l5 ; 0x3406
@..dos_mem_loc_33b3.l4:
    mov ax, word [cs:data_01ff]      ; 0x3408
    sub ax, word [cs:data_0391]      ; 0x340c
    mov bx, 0x10                     ; 0x3411
    mul bx                           ; 0x3414
@..dos_mem_loc_33b3.l5:
    pop di                           ; 0x3416
    pop si                           ; 0x3417
    pop es                           ; 0x3418
    pop ds                           ; 0x3419
    mov sp, bp                       ; 0x341a
    pop bp                           ; 0x341c
    ret                              ; 0x341d
mouse_set_pos_2:
    push bp                          ; 0x341e
    mov bp, sp                       ; 0x341f
    sub sp, byte 0x0a                ; 0x3421
    push ds                          ; 0x3424
    push es                          ; 0x3425
    push si                          ; 0x3426
    push di                          ; 0x3427
    mov ax, ds                       ; 0x3428
    mov es, ax                       ; 0x342a
    cmp byte [cs:data_0228], 1       ; 0x342c
    je short @..mouse_set_pos_2.l1   ; 0x3432
    jmp near @..mouse_set_pos_2.l8   ; 0x3434
@..mouse_set_pos_2.l1:
    mov byte [cs:data_0226], 1       ; 0x3437
    mov ax, word [bp + 0xc]          ; 0x343d
    shl ax, 1                        ; 0x3440
    mov word [bp - 0x0002], ax       ; 0x3442
    mov ax, word [bp + 0xe]          ; 0x3445
    mov word [bp - 0x0004], ax       ; 0x3448
    mov ax, 3                        ; 0x344b
    int 0x33 ; BIOS mouse
    and cx, strict word 0xfffe       ; 0x3450
    mov word [bp - 0x0006], cx       ; 0x3454
    mov word [bp - 0x0008], dx       ; 0x3457
@..mouse_set_pos_2.l2:
    mov cx, word [bp - 0x0006]       ; 0x345a
    mov dx, word [bp - 0x0008]       ; 0x345d
    cmp cx, word [bp - 0x0002]       ; 0x3460
    jne short @..mouse_set_pos_2.l3  ; 0x3463
    cmp dx, word [bp - 0x0004]       ; 0x3465
    jne short @..mouse_set_pos_2.l3  ; 0x3468
    jmp short @..mouse_set_pos_2.l8  ; 0x346a
@..mouse_set_pos_2.l3:
    cmp cx, word [bp - 0x0002]       ; 0x346c
    je short @..mouse_set_pos_2.l5   ; 0x346f
    js short @..mouse_set_pos_2.l4   ; 0x3471
    sub word [bp - 0x0006], byte 2   ; 0x3473
    jmp short @..mouse_set_pos_2.l5  ; 0x3477
@..mouse_set_pos_2.l4:
    add word [bp - 0x0006], byte 2   ; 0x3479
@..mouse_set_pos_2.l5:
    mov cx, word [bp - 0x0006]       ; 0x347d
    cmp dx, word [bp - 0x0004]       ; 0x3480
    je short @..mouse_set_pos_2.l7   ; 0x3483
    js short @..mouse_set_pos_2.l6   ; 0x3485
    sub word [bp - 0x0008], byte 1   ; 0x3487
    jmp short @..mouse_set_pos_2.l7  ; 0x348b
@..mouse_set_pos_2.l6:
    add word [bp - 0x0008], byte 1   ; 0x348d
@..mouse_set_pos_2.l7:
    mov dx, word [bp - 0x0008]       ; 0x3491
    mov ax, cs                       ; 0x3494
    push ax                          ; 0x3496
    mov ax, 0                        ; 0x3497
    call math_loc_2a4f               ; 0x349a
    mov cx, word [bp - 0x0006]       ; 0x349d
    mov dx, word [bp - 0x0008]       ; 0x34a0
    mov ax, 4                        ; 0x34a3
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]         ; 0x34a8
    or ax, ax                        ; 0x34ab
    je short @..mouse_set_pos_2.l2   ; 0x34ad
    push ax                          ; 0x34af
    call far [cs:data_01fb]          ; 0x34b0
    pop ax                           ; 0x34b5
    jmp short @..mouse_set_pos_2.l2  ; 0x34b6
@..mouse_set_pos_2.l8:
    pop di                           ; 0x34b8
    pop si                           ; 0x34b9
    pop es                           ; 0x34ba
    pop ds                           ; 0x34bb
    mov sp, bp                       ; 0x34bc
    pop bp                           ; 0x34be
    ret                              ; 0x34bf
mouse_set_pos_3:
    push bp                          ; 0x34c0
    mov bp, sp                       ; 0x34c1
    sub sp, byte 0x0a                ; 0x34c3
    push ds                          ; 0x34c6
    push es                          ; 0x34c7
    push si                          ; 0x34c8
    push di                          ; 0x34c9
    mov ax, ds                       ; 0x34ca
    mov es, ax                       ; 0x34cc
    cmp byte [cs:data_0228], 1       ; 0x34ce
    je short @..mouse_set_pos_3.l1   ; 0x34d4
    jmp near @..mouse_set_pos_3.l9   ; 0x34d6
@..mouse_set_pos_3.l1:
    mov ax, word [bp + 0xc]          ; 0x34d9
    shl ax, 1                        ; 0x34dc
    mov word [bp - 0x0002], ax       ; 0x34de
    mov ax, word [bp + 0xe]          ; 0x34e1
    mov word [bp - 0x0004], ax       ; 0x34e4
    mov cx, word [cs:data_1bd9]      ; 0x34e7
    shl cx, 1                        ; 0x34ec
    mov dx, word [cs:data_1bdb]      ; 0x34ee
    mov word [bp - 0x0006], cx       ; 0x34f3
    mov word [bp - 0x0008], dx       ; 0x34f6
@..mouse_set_pos_3.l2:
    mov cx, word [bp - 0x0006]       ; 0x34f9
    mov dx, word [bp - 0x0008]       ; 0x34fc
    cmp cx, word [bp - 0x0002]       ; 0x34ff
    jne short @..mouse_set_pos_3.l3  ; 0x3502
    cmp dx, word [bp - 0x0004]       ; 0x3504
    jne short @..mouse_set_pos_3.l3  ; 0x3507
    jmp short @..mouse_set_pos_3.l8  ; 0x3509
@..mouse_set_pos_3.l3:
    cmp cx, word [bp - 0x0002]       ; 0x350b
    je short @..mouse_set_pos_3.l5   ; 0x350e
    js short @..mouse_set_pos_3.l4   ; 0x3510
    sub word [bp - 0x0006], byte 2   ; 0x3512
    jmp short @..mouse_set_pos_3.l5  ; 0x3516
@..mouse_set_pos_3.l4:
    add word [bp - 0x0006], byte 2   ; 0x3518
@..mouse_set_pos_3.l5:
    mov cx, word [bp - 0x0006]       ; 0x351c
    cmp dx, word [bp - 0x0004]       ; 0x351f
    je short @..mouse_set_pos_3.l7   ; 0x3522
    js short @..mouse_set_pos_3.l6   ; 0x3524
    sub word [bp - 0x0008], byte 1   ; 0x3526
    jmp short @..mouse_set_pos_3.l7  ; 0x352a
@..mouse_set_pos_3.l6:
    add word [bp - 0x0008], byte 1   ; 0x352c
@..mouse_set_pos_3.l7:
    mov dx, word [bp - 0x0008]       ; 0x3530
    mov ax, cs                       ; 0x3533
    push ax                          ; 0x3535
    mov ax, 0                        ; 0x3536
    call math_loc_2a4f               ; 0x3539
    mov cx, word [bp - 0x0006]       ; 0x353c
    mov dx, word [bp - 0x0008]       ; 0x353f
    mov ax, 4                        ; 0x3542
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]         ; 0x3547
    or ax, ax                        ; 0x354a
    je short @..mouse_set_pos_3.l2   ; 0x354c
    push ax                          ; 0x354e
    call far [cs:data_01fb]          ; 0x354f
    pop ax                           ; 0x3554
    jmp short @..mouse_set_pos_3.l2  ; 0x3555
@..mouse_set_pos_3.l8:
    mov cx, word [bp - 0x0002]       ; 0x3557
    mov dx, word [bp - 0x0004]       ; 0x355a
    mov ax, 4                        ; 0x355d
    int 0x33 ; BIOS mouse
    mov byte [cs:data_0226], 0       ; 0x3562
@..mouse_set_pos_3.l9:
    pop di                           ; 0x3568
    pop si                           ; 0x3569
    pop es                           ; 0x356a
    pop ds                           ; 0x356b
    mov sp, bp                       ; 0x356c
    pop bp                           ; 0x356e
    ret                              ; 0x356f
loc_3570:
    push bp                          ; 0x3570
    mov bp, sp                       ; 0x3571
    sub sp, byte 8                   ; 0x3573
    push ds                          ; 0x3576
    push es                          ; 0x3577
    push di                          ; 0x3578
    push si                          ; 0x3579
    mov ax, ds                       ; 0x357a
    mov es, ax                       ; 0x357c
    mov ax, word [bp + 0xc]          ; 0x357e
    neg ax                           ; 0x3581
    cmp ax, strict word 5            ; 0x3583
    jb short @..local.l47            ; 0x3586
    jmp near @..local.l49            ; 0x3588
@..local.l47:
    shl ax, 1                        ; 0x358b
    mov word [bp - 0x0008], ax       ; 0x358d
    mov bx, 0x251                    ; 0x3590
    add bx, ax                       ; 0x3593
    mov ax, word [cs:bx]             ; 0x3595
    or ax, ax                        ; 0x3598
    jne short @..local.l48           ; 0x359a
    jmp near @..local.l49            ; 0x359c
@..local.l48:
    mov word [cs:bx], 0              ; 0x359f
    mov cx, word [cs:data_11cb]      ; 0x35a4
    dec cx                           ; 0x35a9
    mov word [cs:data_11cb], cx      ; 0x35aa
    call loc_4c93                    ; 0x35af
@..local.l49:
    pop si                           ; 0x35b2
    pop di                           ; 0x35b3
    pop es                           ; 0x35b4
    pop ds                           ; 0x35b5
    mov sp, bp                       ; 0x35b6
    pop bp                           ; 0x35b8
    ret                              ; 0x35b9
io_loc_35ba:
    push bp                          ; 0x35ba
    mov bp, sp                       ; 0x35bb
    sub sp, byte 8                   ; 0x35bd
    push ds                          ; 0x35c0
    push es                          ; 0x35c1
    push di                          ; 0x35c2
    push si                          ; 0x35c3
    mov ax, ds                       ; 0x35c4
    mov es, ax                       ; 0x35c6
    lds si, word [cs:data_01f7]      ; 0x35c8
    mov di, word [bp + 0xc]          ; 0x35cd
    mov cx, 0x300                    ; 0x35d0
    rep movsb                        ; 0x35d3
    pop si                           ; 0x35d5
    pop di                           ; 0x35d6
    pop es                           ; 0x35d7
    pop ds                           ; 0x35d8
    mov sp, bp                       ; 0x35d9
    pop bp                           ; 0x35db
    ret                              ; 0x35dc

    times 65 db 0

math_loc_361e:
    push bp                          ; 0x361e
    mov bp, sp                       ; 0x361f
    sub sp, byte 0x40                ; 0x3621
    push ds                          ; 0x3624
    push es                          ; 0x3625
    push si                          ; 0x3626
    push di                          ; 0x3627
    mov ax, ds                       ; 0x3628
    mov es, ax                       ; 0x362a
    mov ax, word [bp + 0x14]         ; 0x362c
    sub ax, word [bp + 0x12]         ; 0x362f
    jb short @..math_loc_361e.l1     ; 0x3632
    mov ax, word [bp + 0x18]         ; 0x3634
    sub ax, word [bp + 0x16]         ; 0x3637
    jb short @..math_loc_361e.l1     ; 0x363a
    mov ax, word [bp + 0x10]         ; 0x363c
    mov bx, 0x140                    ; 0x363f
    mul bx                           ; 0x3642
    add ax, word [bp + 0xe]          ; 0x3644
    mov word [bp - 0x0006], ax       ; 0x3647
    mov ax, word [bp + 0xc]          ; 0x364a
    shl ax, 1                        ; 0x364d
    mov bx, 0x229                    ; 0x364f
    add bx, ax                       ; 0x3652
    mov ax, word [cs:bx]             ; 0x3654
    dec ax                           ; 0x3657
    mov cl, 2                        ; 0x3658
    shl ax, cl                       ; 0x365a
    mov bx, 0x10fb                   ; 0x365c
    add bx, ax                       ; 0x365f
    mov ax, word [cs:bx]             ; 0x3661
    add ax, word [cs:data_01e1]      ; 0x3664
    mov word [bp - 0x0008], ax       ; 0x3669
    mov ds, ax                       ; 0x366c
    xor bx, bx                       ; 0x366e
    mov ax, word [bx]                ; 0x3670
    mov word [bp - 0x0012], ax       ; 0x3672
    mov si, word [bp + 0x1c]         ; 0x3675
    mov bx, word [bp - 0x0008]       ; 0x3678
    mov ds, bx                       ; 0x367b
    xor ah, ah                       ; 0x367d
    mov al, byte [ss:si]             ; 0x367f
    or al, al                        ; 0x3682
    je short @..math_loc_361e.l1     ; 0x3684
    call dos_con_loc_39e3            ; 0x3686
    xor ah, ah                       ; 0x3689
    mov al, byte [bx + 0x2]          ; 0x368b
    mov word [bp - 0x0002], ax       ; 0x368e
    mov cx, ax                       ; 0x3691
    mov al, byte [bx + 0x3]          ; 0x3693
    mov word [bp - 0x0004], ax       ; 0x3696
    or ax, cx                        ; 0x3699
    jne short @..math_loc_361e.l2    ; 0x369b
@..math_loc_361e.l1:
    jmp near @..math_loc_361e.l56    ; 0x369d
@..math_loc_361e.l2:
    mov word [bp - 0x003a], bx       ; 0x36a0
    mov ax, es                       ; 0x36a3
    mov word [bp - 0x0038], ax       ; 0x36a5
    mov ax, cs                       ; 0x36a8
    mov es, ax                       ; 0x36aa
    lea di, word [data_36dd]         ; 0x36ac
    xor ax, ax                       ; 0x36b0
    mov cx, 0x14                     ; 0x36b2
    rep stosw                        ; 0x36b5
    lea di, word [data_3705]         ; 0x36b7
    mov cx, 0x19                     ; 0x36bb
    rep stosb                        ; 0x36be
    mov bx, word [bp + 0x20]         ; 0x36c0
    or bx, bx                        ; 0x36c3
    jne short @..math_loc_361e.l3    ; 0x36c5
    jmp near @..math_loc_361e.l7     ; 0x36c7
@..math_loc_361e.l3:
    cmp bx, byte 0x64                ; 0x36ca
    jae short @..math_loc_361e.l1    ; 0x36cd
    mov ax, word [bp - 0x0002]       ; 0x36cf
    mov cl, 3                        ; 0x36d2
    shl ax, cl                       ; 0x36d4
    mov cx, ax                       ; 0x36d6
    mov bx, word [bp + 0x20]         ; 0x36d8
    mul bx                           ; 0x36db
    mov bx, 0x64                     ; 0x36dd
    div bx                           ; 0x36e0
    cmp dx, byte 0x32                ; 0x36e2
    jb short @..math_loc_361e.l4     ; 0x36e5
    inc ax                           ; 0x36e7
@..math_loc_361e.l4:
    or ax, ax                        ; 0x36e8
    je short @..math_loc_361e.l5     ; 0x36ea
    xor dx, dx                       ; 0x36ec
    mov bx, ax                       ; 0x36ee
    mov word [bp - 0x0034], ax       ; 0x36f0
    mov ax, cx                       ; 0x36f3
    div bx                           ; 0x36f5
    mov di, data_36dd                ; 0x36f7
    mov bx, word [bp - 0x0034]       ; 0x36fa
    shr bx, 1                        ; 0x36fd
    mov word [bp - 0x003c], bx       ; 0x36ff
    mov si, ax                       ; 0x3702
    dec si                           ; 0x3704
    mov word [bp - 0x0030], ax       ; 0x3705
    mov word [bp - 0x0032], cx       ; 0x3708
    call leaf_loc_3a51               ; 0x370b
@..math_loc_361e.l5:
    mov ax, word [bp - 0x0004]       ; 0x370e
    mov cl, 3                        ; 0x3711
    shl ax, cl                       ; 0x3713
    mov cx, ax                       ; 0x3715
    mov bx, word [bp + 0x20]         ; 0x3717
    mul bx                           ; 0x371a
    mov bx, 0x64                     ; 0x371c
    div bx                           ; 0x371f
    cmp dx, byte 0x32                ; 0x3721
    jb short @..math_loc_361e.l6     ; 0x3724
    inc ax                           ; 0x3726
@..math_loc_361e.l6:
    or ax, ax                        ; 0x3727
    je short @..math_loc_361e.l7     ; 0x3729
    xor dx, dx                       ; 0x372b
    mov bx, ax                       ; 0x372d
    mov word [bp - 0x0034], ax       ; 0x372f
    mov ax, cx                       ; 0x3732
    div bx                           ; 0x3734
    mov di, data_3705                ; 0x3736
    mov bx, word [bp - 0x0034]       ; 0x3739
    shr bx, 1                        ; 0x373c
    mov word [bp - 0x003c], bx       ; 0x373e
    mov si, ax                       ; 0x3741
    dec si                           ; 0x3743
    mov word [bp - 0x0030], ax       ; 0x3744
    mov word [bp - 0x0032], cx       ; 0x3747
    call leaf_loc_3a51               ; 0x374a
@..math_loc_361e.l7:
    mov bx, word [bp - 0x003a]       ; 0x374d
    mov ax, word [bp - 0x0038]       ; 0x3750
    mov es, ax                       ; 0x3753
    mov ax, word [bp + 0x12]         ; 0x3755
    sub ax, word [bp + 0xe]          ; 0x3758
    jge short @..math_loc_361e.l8    ; 0x375b
    xor ax, ax                       ; 0x375d
@..math_loc_361e.l8:
    mov word [bp - 0x0028], ax       ; 0x375f
    mov ax, word [bp + 0xe]          ; 0x3762
    mov bx, word [bp - 0x0002]       ; 0x3765
    mov cl, 3                        ; 0x3768
    shl bx, cl                       ; 0x376a
    mov cx, bx                       ; 0x376c
    dec bx                           ; 0x376e
    mov word [bp - 0x001e], bx       ; 0x376f
    add ax, bx                       ; 0x3772
    inc ax                           ; 0x3774
    sub ax, word [bp + 0x14]         ; 0x3775
    jge short @..math_loc_361e.l9    ; 0x3778
    xor ax, ax                       ; 0x377a
@..math_loc_361e.l9:
    mov word [bp - 0x002a], ax       ; 0x377c
    add ax, word [bp - 0x0028]       ; 0x377f
    sub cx, ax                       ; 0x3782
    ja short @..math_loc_361e.l10    ; 0x3784
    jmp near @..math_loc_361e.l56    ; 0x3786
@..math_loc_361e.l10:
    mov word [bp - 0x0026], cx       ; 0x3789
    mov ax, word [bp + 0x16]         ; 0x378c
    sub ax, word [bp + 0x10]         ; 0x378f
    jge short @..math_loc_361e.l11   ; 0x3792
    xor ax, ax                       ; 0x3794
@..math_loc_361e.l11:
    mov word [bp - 0x0024], ax       ; 0x3796
    mov ax, word [bp + 0x10]         ; 0x3799
    mov bx, word [bp - 0x0004]       ; 0x379c
    mov cl, 3                        ; 0x379f
    shl bx, cl                       ; 0x37a1
    mov cx, bx                       ; 0x37a3
    dec bx                           ; 0x37a5
    add ax, bx                       ; 0x37a6
    sub ax, word [bp + 0x18]         ; 0x37a8
    jge short @..math_loc_361e.l12   ; 0x37ab
    xor ax, ax                       ; 0x37ad
@..math_loc_361e.l12:
    mov word [bp - 0x002c], ax       ; 0x37af
    add ax, word [bp - 0x0024]       ; 0x37b2
    sub cx, ax                       ; 0x37b5
    ja short @..math_loc_361e.l13    ; 0x37b7
    jmp near @..math_loc_361e.l56    ; 0x37b9
@..math_loc_361e.l13:
    mov ax, word [bp + 0x18]         ; 0x37bc
    inc ax                           ; 0x37bf
    mov cx, 0x140                    ; 0x37c0
    mul cx                           ; 0x37c3
    mov word [bp - 0x0022], ax       ; 0x37c5
    mov ax, word [bp + 0x16]         ; 0x37c8
    mov cx, 0x140                    ; 0x37cb
    mul cx                           ; 0x37ce
    mov word [bp - 0x002e], ax       ; 0x37d0
    mov ax, word [bp + 0x1a]         ; 0x37d3
    and al, 1                        ; 0x37d6
    je short @..math_loc_361e.l14    ; 0x37d8
    jmp near @..math_loc_361e.l28    ; 0x37da
@..math_loc_361e.l14:
    mov bx, word [bp - 0x001e]       ; 0x37dd
    inc bx                           ; 0x37e0
    mov word [bp - 0x003e], bx       ; 0x37e1
    mov bx, data_36dd                ; 0x37e4
    mov dl, 0x80                     ; 0x37e7
    xor ax, ax                       ; 0x37e9
    mov word [bp - 0x0030], ax       ; 0x37eb
    mov word [bp - 0x0040], ax       ; 0x37ee
    mov cx, word [bp - 0x0028]       ; 0x37f1
    or cx, cx                        ; 0x37f4
    je short @..math_loc_361e.l19    ; 0x37f6
@..math_loc_361e.l15:
    mov al, byte [cs:bx]             ; 0x37f8
    and al, dl                       ; 0x37fb
    jne short @..math_loc_361e.l16   ; 0x37fd
    or byte [cs:bx], dl              ; 0x37ff
    jmp short @..math_loc_361e.l17   ; 0x3802
@..math_loc_361e.l16:
    inc word [bp - 0x0030]           ; 0x3804
    inc cx                           ; 0x3807
@..math_loc_361e.l17:
    ror dl, 1                        ; 0x3808
    cmp dl, 0x80                     ; 0x380a
    jne short @..math_loc_361e.l18   ; 0x380d
    inc bx                           ; 0x380f
@..math_loc_361e.l18:
    loop @..math_loc_361e.l15        ; 0x3810
@..math_loc_361e.l19:
    mov word [bp - 0x0032], bx       ; 0x3812
    mov ax, word [bp - 0x0030]       ; 0x3815
    mov word [bp - 0x0040], ax       ; 0x3818
    add ax, word [bp - 0x0028]       ; 0x381b
    mov bx, word [bp - 0x003e]       ; 0x381e
    cmp bx, ax                       ; 0x3821
    ja short @..math_loc_361e.l20    ; 0x3823
    jmp near @..math_loc_361e.l56    ; 0x3825
@..math_loc_361e.l20:
    sub bx, ax                       ; 0x3828
    xor ax, ax                       ; 0x382a
    mov word [bp - 0x0030], ax       ; 0x382c
    sub bx, word [bp - 0x0026]       ; 0x382f
    jbe short @..math_loc_361e.l27   ; 0x3832
    mov word [bp - 0x0034], bx       ; 0x3834
    mov cx, word [bp - 0x0026]       ; 0x3837
    mov bx, word [bp - 0x0032]       ; 0x383a
@..math_loc_361e.l21:
    mov al, byte [cs:bx]             ; 0x383d
    and al, dl                       ; 0x3840
    je short @..math_loc_361e.l22    ; 0x3842
    inc word [bp - 0x0030]           ; 0x3844
    mov ax, word [bp - 0x0030]       ; 0x3847
    cmp ax, word [bp - 0x0034]       ; 0x384a
    je short @..math_loc_361e.l24    ; 0x384d
    inc cx                           ; 0x384f
@..math_loc_361e.l22:
    ror dl, 1                        ; 0x3850
    cmp dl, 0x80                     ; 0x3852
    jne short @..math_loc_361e.l23   ; 0x3855
    inc bx                           ; 0x3857
@..math_loc_361e.l23:
    loop @..math_loc_361e.l21        ; 0x3858
@..math_loc_361e.l24:
    mov word [bp - 0x0032], bx       ; 0x385a
    mov ax, word [bp - 0x0030]       ; 0x385d
    add ax, word [bp - 0x0040]       ; 0x3860
    add ax, word [bp - 0x0028]       ; 0x3863
    add ax, word [bp - 0x0026]       ; 0x3866
    mov cx, word [bp - 0x003e]       ; 0x3869
    sub cx, ax                       ; 0x386c
    jbe short @..math_loc_361e.l27   ; 0x386e
    mov bx, word [bp - 0x0032]       ; 0x3870
@..math_loc_361e.l25:
    or byte [cs:bx], dl              ; 0x3873
    ror dl, 1                        ; 0x3876
    cmp dl, 0x80                     ; 0x3878
    jne short @..math_loc_361e.l26   ; 0x387b
    inc bx                           ; 0x387d
@..math_loc_361e.l26:
    loop @..math_loc_361e.l25        ; 0x387e
@..math_loc_361e.l27:
    jmp near @..math_loc_361e.l41    ; 0x3880
@..math_loc_361e.l28:
    mov bx, word [bp - 0x001e]       ; 0x3883
    inc bx                           ; 0x3886
    mov word [bp - 0x003e], bx       ; 0x3887
    mov bx, data_36dd                ; 0x388a
    mov dl, 0x80                     ; 0x388d
    xor ax, ax                       ; 0x388f
    mov word [bp - 0x0030], ax       ; 0x3891
    mov word [bp - 0x0040], ax       ; 0x3894
    mov cx, word [bp - 0x002a]       ; 0x3897
    or cx, cx                        ; 0x389a
    je short @..math_loc_361e.l33    ; 0x389c
@..math_loc_361e.l29:
    mov al, byte [cs:bx]             ; 0x389e
    and al, dl                       ; 0x38a1
    jne short @..math_loc_361e.l30   ; 0x38a3
    or byte [cs:bx], dl              ; 0x38a5
    jmp short @..math_loc_361e.l31   ; 0x38a8
@..math_loc_361e.l30:
    inc word [bp - 0x0030]           ; 0x38aa
    inc cx                           ; 0x38ad
@..math_loc_361e.l31:
    ror dl, 1                        ; 0x38ae
    cmp dl, 0x80                     ; 0x38b0
    jne short @..math_loc_361e.l32   ; 0x38b3
    inc bx                           ; 0x38b5
@..math_loc_361e.l32:
    loop @..math_loc_361e.l29        ; 0x38b6
@..math_loc_361e.l33:
    mov word [bp - 0x0032], bx       ; 0x38b8
    mov ax, word [bp - 0x0030]       ; 0x38bb
    mov word [bp - 0x0040], ax       ; 0x38be
    add ax, word [bp - 0x002a]       ; 0x38c1
    mov bx, word [bp - 0x003e]       ; 0x38c4
    cmp bx, ax                       ; 0x38c7
    ja short @..math_loc_361e.l34    ; 0x38c9
    jmp near @..math_loc_361e.l56    ; 0x38cb
@..math_loc_361e.l34:
    sub bx, ax                       ; 0x38ce
    xor ax, ax                       ; 0x38d0
    mov word [bp - 0x0030], ax       ; 0x38d2
    sub bx, word [bp - 0x0026]       ; 0x38d5
    jbe short @..math_loc_361e.l41   ; 0x38d8
    mov word [bp - 0x0034], bx       ; 0x38da
    mov cx, word [bp - 0x0026]       ; 0x38dd
    mov bx, word [bp - 0x0032]       ; 0x38e0
@..math_loc_361e.l35:
    mov al, byte [cs:bx]             ; 0x38e3
    and al, dl                       ; 0x38e6
    je short @..math_loc_361e.l36    ; 0x38e8
    inc word [bp - 0x0030]           ; 0x38ea
    mov ax, word [bp - 0x0030]       ; 0x38ed
    cmp ax, word [bp - 0x0034]       ; 0x38f0
    je short @..math_loc_361e.l38    ; 0x38f3
    inc cx                           ; 0x38f5
@..math_loc_361e.l36:
    ror dl, 1                        ; 0x38f6
    cmp dl, 0x80                     ; 0x38f8
    jne short @..math_loc_361e.l37   ; 0x38fb
    inc bx                           ; 0x38fd
@..math_loc_361e.l37:
    loop @..math_loc_361e.l35        ; 0x38fe
@..math_loc_361e.l38:
    mov word [bp - 0x0032], bx       ; 0x3900
    mov ax, word [bp - 0x0030]       ; 0x3903
    add ax, word [bp - 0x0040]       ; 0x3906
    add ax, word [bp - 0x002a]       ; 0x3909
    add ax, word [bp - 0x0026]       ; 0x390c
    mov cx, word [bp - 0x003e]       ; 0x390f
    sub cx, ax                       ; 0x3912
    jbe short @..math_loc_361e.l41   ; 0x3914
    mov bx, word [bp - 0x0032]       ; 0x3916
@..math_loc_361e.l39:
    or byte [cs:bx], dl              ; 0x3919
    ror dl, 1                        ; 0x391c
    cmp dl, 0x80                     ; 0x391e
    jne short @..math_loc_361e.l40   ; 0x3921
    inc bx                           ; 0x3923
@..math_loc_361e.l40:
    loop @..math_loc_361e.l39        ; 0x3924
@..math_loc_361e.l41:
    mov ax, word [bp + 0x1a]         ; 0x3926
    and al, 2                        ; 0x3929
    jne short @..math_loc_361e.l48   ; 0x392b
    mov bx, data_3705                ; 0x392d
    mov dl, 0x80                     ; 0x3930
    xor ax, ax                       ; 0x3932
    mov word [bp - 0x0030], ax       ; 0x3934
    mov word [bp - 0x0040], ax       ; 0x3937
    mov cx, word [bp - 0x0024]       ; 0x393a
    or cx, cx                        ; 0x393d
    je short @..math_loc_361e.l46    ; 0x393f
@..math_loc_361e.l42:
    mov al, byte [cs:bx]             ; 0x3941
    and al, dl                       ; 0x3944
    jne short @..math_loc_361e.l43   ; 0x3946
    or byte [cs:bx], dl              ; 0x3948
    jmp short @..math_loc_361e.l44   ; 0x394b
@..math_loc_361e.l43:
    inc word [bp - 0x0030]           ; 0x394d
    inc cx                           ; 0x3950
@..math_loc_361e.l44:
    ror dl, 1                        ; 0x3951
    cmp dl, 0x80                     ; 0x3953
    jne short @..math_loc_361e.l45   ; 0x3956
    inc bx                           ; 0x3958
@..math_loc_361e.l45:
    loop @..math_loc_361e.l42        ; 0x3959
@..math_loc_361e.l46:
    mov ax, word [bp - 0x0030]       ; 0x395b
    mov word [bp - 0x0040], ax       ; 0x395e
    add ax, word [bp - 0x0024]       ; 0x3961
    mov bx, word [bp - 0x0004]       ; 0x3964
    mov cl, 3                        ; 0x3967
    shl bx, cl                       ; 0x3969
    cmp bx, ax                       ; 0x396b
    ja short @..math_loc_361e.l47    ; 0x396d
    jmp near @..math_loc_361e.l56    ; 0x396f
@..math_loc_361e.l47:
    jmp short @..math_loc_361e.l54   ; 0x3972
@..math_loc_361e.l48:
    mov bx, data_3705                ; 0x3974
    mov dl, 0x80                     ; 0x3977
    xor ax, ax                       ; 0x3979
    mov word [bp - 0x0030], ax       ; 0x397b
    mov word [bp - 0x0040], ax       ; 0x397e
    mov cx, word [bp - 0x002c]       ; 0x3981
    or cx, cx                        ; 0x3984
    je short @..math_loc_361e.l53    ; 0x3986
@..math_loc_361e.l49:
    mov al, byte [cs:bx]             ; 0x3988
    and al, dl                       ; 0x398b
    jne short @..math_loc_361e.l50   ; 0x398d
    or byte [cs:bx], dl              ; 0x398f
    jmp short @..math_loc_361e.l51   ; 0x3992
@..math_loc_361e.l50:
    inc word [bp - 0x0030]           ; 0x3994
    inc cx                           ; 0x3997
@..math_loc_361e.l51:
    ror dl, 1                        ; 0x3998
    cmp dl, 0x80                     ; 0x399a
    jne short @..math_loc_361e.l52   ; 0x399d
    inc bx                           ; 0x399f
@..math_loc_361e.l52:
    loop @..math_loc_361e.l49        ; 0x39a0
@..math_loc_361e.l53:
    mov ax, word [bp - 0x0030]       ; 0x39a2
    add ax, word [bp - 0x002c]       ; 0x39a5
    mov bx, word [bp - 0x0004]       ; 0x39a8
    mov cl, 3                        ; 0x39ab
    shl bx, cl                       ; 0x39ad
    cmp bx, ax                       ; 0x39af
    jbe short @..math_loc_361e.l56   ; 0x39b1
@..math_loc_361e.l54:
    mov ax, word [bp + 0x20]         ; 0x39b3
    mov bl, 0xc                      ; 0x39b6
    div bl                           ; 0x39b8
    xor ah, ah                       ; 0x39ba
    mov word [bp - 0x0030], ax       ; 0x39bc
@..math_loc_361e.l55:
    mov si, word [bp + 0x1c]         ; 0x39bf
    mov bx, word [bp - 0x0008]       ; 0x39c2
    mov ds, bx                       ; 0x39c5
    xor ah, ah                       ; 0x39c7
    mov al, byte [ss:si]             ; 0x39c9
    or al, al                        ; 0x39cc
    je short @..math_loc_361e.l56    ; 0x39ce
    call dos_con_loc_39e3            ; 0x39d0
    call math_loc_3a8b               ; 0x39d3
    inc word [bp + 0x1c]             ; 0x39d6
    jmp short @..math_loc_361e.l55   ; 0x39d9
@..math_loc_361e.l56:
    pop di                           ; 0x39db
    pop si                           ; 0x39dc
    pop es                           ; 0x39dd
    pop ds                           ; 0x39de
    mov sp, bp                       ; 0x39df
    pop bp                           ; 0x39e1
    ret                              ; 0x39e2
dos_con_loc_39e3:
    dec ax                           ; 0x39e3
    cmp ax, word [bp - 0x0012]       ; 0x39e4
    jb short @..dos_con_loc_39e3.l1  ; 0x39e7
    mov bl, 0xa                      ; 0x39e9
    div bl                           ; 0x39eb
    or byte [cs:data_3b21], al       ; 0x39ed
    or byte [cs:data_3b22], dl       ; 0x39f2
    mov ax, word [bp + 0xc]          ; 0x39f7
    mov bl, 0xa                      ; 0x39fa
    div bl                           ; 0x39fc
    or byte [cs:data_3b34], al       ; 0x39fe
    or byte [cs:0x3b35], dl          ; 0x3a03
    mov bx, cs                       ; 0x3a08
    mov ds, bx                       ; 0x3a0a
    mov dx, 0x3b18                   ; 0x3a0c
dos_con_loc_3a0f:
    mov ah, 9                        ; 0x3a0f
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x3a13
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Frame 00 too big in slot 00.', 0
    db 0x0a, 0x24

@..dos_con_loc_39e3.l1:
    mov cl, 2                        ; 0x3a3a
    shl al, cl                       ; 0x3a3c
    mov bx, 2                        ; 0x3a3e
    add bx, ax                       ; 0x3a41
    mov ax, word [bx]                ; 0x3a43
    mov dx, word [bx + 0x2]          ; 0x3a45
    mov bx, ds                       ; 0x3a48
    add bx, dx                       ; 0x3a4a
    mov ds, bx                       ; 0x3a4c
    mov bx, ax                       ; 0x3a4e
    ret                              ; 0x3a50
leaf_loc_3a51:
    jmp short @..leaf_loc_3a51.l2    ; 0x3a51
@..leaf_loc_3a51.l1:
    add si, word [bp - 0x0030]       ; 0x3a53
@..leaf_loc_3a51.l2:
    add word [bp - 0x003c], dx       ; 0x3a56
    mov bx, word [bp - 0x003c]       ; 0x3a59
    cmp bx, word [bp - 0x0034]       ; 0x3a5c
    jb short @..leaf_loc_3a51.l3     ; 0x3a5f
    sub bx, word [bp - 0x0034]       ; 0x3a61
    mov word [bp - 0x003c], bx       ; 0x3a64
    inc si                           ; 0x3a67
@..leaf_loc_3a51.l3:
    cmp si, word [bp - 0x0032]       ; 0x3a68
    jb short @..leaf_loc_3a51.l5     ; 0x3a6b
@..leaf_loc_3a51.l4:
    ret                              ; 0x3a6d
@..leaf_loc_3a51.l5:
    test si, 0x8000                  ; 0x3a6e
    jne short @..leaf_loc_3a51.l4    ; 0x3a72
    mov cl, 3                        ; 0x3a74
    mov ax, si                       ; 0x3a76
    shr ax, cl                       ; 0x3a78
    mov bx, ax                       ; 0x3a7a
    mov ax, si                       ; 0x3a7c
    and al, 7                        ; 0x3a7e
    mov cl, al                       ; 0x3a80
    mov al, 0x80                     ; 0x3a82
    shr al, cl                       ; 0x3a84
    or byte [cs:bx + di], al         ; 0x3a86
    jmp short @..leaf_loc_3a51.l1    ; 0x3a89
math_loc_3a8b:
    push es                          ; 0x3a8b
    mov ax, word [cs:data_01e5]      ; 0x3a8c
    mov es, ax                       ; 0x3a90
    mov ax, data_3705                ; 0x3a92
    mov word [bp - 0x0036], ax       ; 0x3a95
    xor ax, ax                       ; 0x3a98
    mov word [bp - 0x003c], ax       ; 0x3a9a
    mov word [bp - 0x003e], ax       ; 0x3a9d
    mov ax, word [bp + 0x1a]         ; 0x3aa0
    cmp al, 2                        ; 0x3aa3
    jne short @..math_loc_3a8b.l1    ; 0x3aa5
    jmp near @..math_loc_3a8b.l53    ; 0x3aa7
@..math_loc_3a8b.l1:
    cmp al, 3                        ; 0x3aaa
    jne short @..math_loc_3a8b.l2    ; 0x3aac
    jmp near @..math_loc_3a8b.l78    ; 0x3aae
@..math_loc_3a8b.l2:
    mov ax, word [bp - 0x0006]       ; 0x3ab1
    mov word [bp - 0x000e], ax       ; 0x3ab4
    mov si, word [bx]                ; 0x3ab7
    add si, bx                       ; 0x3ab9
    mov word [bp - 0x000a], 1        ; 0x3abb
    lea ax, word [bx + 0x4]          ; 0x3ac0
    mov word [bp - 0x000c], ax       ; 0x3ac3
    mov cx, word [bp - 0x0004]       ; 0x3ac6
    mov byte [bp - 0x003a], 0x80     ; 0x3ac9
    mov ax, word [bp + 0x1a]         ; 0x3acd
    cmp al, 1                        ; 0x3ad0
    jne short @..math_loc_3a8b.l3    ; 0x3ad2
    jmp near @..math_loc_3a8b.l28    ; 0x3ad4
@..math_loc_3a8b.l3:
    mov ax, word [bp - 0x0028]       ; 0x3ad7
    add word [bp - 0x000e], ax       ; 0x3ada
    mov ax, word [bp - 0x0024]       ; 0x3add
    mov bx, 0x140                    ; 0x3ae0
    mul bx                           ; 0x3ae3
    add word [bp - 0x000e], ax       ; 0x3ae5
@..math_loc_3a8b.l4:
    mov ax, word [bp - 0x0022]       ; 0x3ae8
    mov di, word [bp - 0x000e]       ; 0x3aeb
    cmp di, ax                       ; 0x3aee
    jb short @..math_loc_3a8b.l5     ; 0x3af0
    jmp near @..math_loc_3a8b.l25    ; 0x3af2
@..math_loc_3a8b.l5:
    push cx                          ; 0x3af5
    call math_loc_3bf2               ; 0x3af6
    mov ax, data_36dd                ; 0x3af9
    mov word [bp - 0x0034], ax       ; 0x3afc
    mov cx, word [bp - 0x0002]       ; 0x3aff
@..math_loc_3a8b.l6:
    push cx                          ; 0x3b02
    call math_loc_3c12               ; 0x3b03
    mov bx, word [bp - 0x000c]       ; 0x3b06
    mov al, byte [bx]                ; 0x3b09
    and al, byte [bp - 0x000a]       ; 0x3b0b
    jne short @..math_loc_3a8b.l7    ; 0x3b0e
    jmp near @..math_loc_3a8b.l23    ; 0x3b10
@..math_loc_3a8b.l7:
    mov bx, word [bp - 0x0034]       ; 0x3b13
    mov al, byte [cs:bx]             ; 0x3b16
    cmp al, 0xff                     ; 0x3b19
    jne short @..math_loc_3a8b.l8    ; 0x3b1b
    add si, byte 0x40                ; 0x3b1d
    jmp near @..math_loc_3a8b.l23    ; 0x3b20
@..math_loc_3a8b.l8:
    push di                          ; 0x3b23
    push si                          ; 0x3b24
    mov al, 0x80                     ; 0x3b25
    mov byte [bp - 0x0038], al       ; 0x3b27
    mov cx, 8                        ; 0x3b2a
@..math_loc_3a8b.l9:
    cmp di, word [bp - 0x0022]       ; 0x3b2d
    jb short @..math_loc_3a8b.l10    ; 0x3b30
    jmp near @..math_loc_3a8b.l22    ; 0x3b32
@..math_loc_3a8b.l10:
    mov bx, word [bp - 0x0036]       ; 0x3b35
    mov al, byte [cs:bx]             ; 0x3b38
    and al, byte [bp - 0x0038]       ; 0x3b3b
    je short @..math_loc_3a8b.l11    ; 0x3b3e
    jmp near @..math_loc_3a8b.l21    ; 0x3b40
@..math_loc_3a8b.l11:
    push cx                          ; 0x3b43
    push di                          ; 0x3b44
    mov al, 0x80                     ; 0x3b45
    mov byte [bp - 0x0032], al       ; 0x3b47
    mov cx, 8                        ; 0x3b4a
@..math_loc_3a8b.l12:
    mov bx, word [bp - 0x0034]       ; 0x3b4d
    mov al, byte [cs:bx]             ; 0x3b50
    and al, byte [bp - 0x0032]       ; 0x3b53
    jne short @..math_loc_3a8b.l20   ; 0x3b56
    xor ah, ah                       ; 0x3b58
    mov al, byte [si]                ; 0x3b5a
    cmp al, 0xff                     ; 0x3b5c
    je short @..math_loc_3a8b.l17    ; 0x3b5e
    cmp byte [bp + 0x1e], 2          ; 0x3b60
    jne short @..math_loc_3a8b.l14   ; 0x3b64
    mov al, byte [es:di]             ; 0x3b66
    mov bx, 0x40cd                   ; 0x3b69
    add bx, ax                       ; 0x3b6c
    add al, byte [si]                ; 0x3b6e
    jb short @..math_loc_3a8b.l13    ; 0x3b70
    cmp al, byte [cs:bx]             ; 0x3b72
    jb short @..math_loc_3a8b.l16    ; 0x3b75
@..math_loc_3a8b.l13:
    mov al, byte [cs:bx]             ; 0x3b77
    jmp short @..math_loc_3a8b.l16   ; 0x3b7a
@..math_loc_3a8b.l14:
    cmp byte [bp - 0x0030], 0        ; 0x3b7c
    je short @..math_loc_3a8b.l16    ; 0x3b80
    mov bx, 0x40cd                   ; 0x3b82
    add bx, ax                       ; 0x3b85
    add al, byte [bp - 0x0030]       ; 0x3b87
    jb short @..math_loc_3a8b.l15    ; 0x3b8a
    cmp al, byte [cs:bx]             ; 0x3b8c
    jb short @..math_loc_3a8b.l16    ; 0x3b8f
@..math_loc_3a8b.l15:
    mov al, byte [cs:bx]             ; 0x3b91
@..math_loc_3a8b.l16:
    mov byte [es:di], al             ; 0x3b94
@..math_loc_3a8b.l17:
    inc si                           ; 0x3b97
    inc di                           ; 0x3b98
    ror byte [bp - 0x0032], 1        ; 0x3b99
    loop @..math_loc_3a8b.l12        ; 0x3b9c
@..math_loc_3a8b.l18:
    pop di                           ; 0x3b9e
    pop cx                           ; 0x3b9f
    add di, strict word 0x140        ; 0x3ba0
@..math_loc_3a8b.l19:
    ror byte [bp - 0x0038], 1        ; 0x3ba4
    loop @..math_loc_3a8b.l9         ; 0x3ba7
    jmp short @..math_loc_3a8b.l22   ; 0x3ba9
@..math_loc_3a8b.l20:
    inc si                           ; 0x3bab
    ror byte [bp - 0x0032], 1        ; 0x3bac
    loop @..math_loc_3a8b.l12        ; 0x3baf
    jmp short @..math_loc_3a8b.l18   ; 0x3bb1
@..math_loc_3a8b.l21:
    add si, byte 8                   ; 0x3bb3
    jmp short @..math_loc_3a8b.l19   ; 0x3bb6
@..math_loc_3a8b.l22:
    pop si                           ; 0x3bb8
    add si, byte 0x40                ; 0x3bb9
    pop di                           ; 0x3bbc
@..math_loc_3a8b.l23:
    add di, byte 8                   ; 0x3bbd
    sub di, word [bp - 0x003c]       ; 0x3bc0
    rol byte [bp - 0x000a], 1        ; 0x3bc3
    cmp byte [bp - 0x000a], 1        ; 0x3bc6
    jne short @..math_loc_3a8b.l24   ; 0x3bca
    inc word [bp - 0x000c]           ; 0x3bcc
@..math_loc_3a8b.l24:
    inc word [bp - 0x0034]           ; 0x3bcf
    pop cx                           ; 0x3bd2
    loop @..math_loc_3a8b.l26        ; 0x3bd3
    pop cx                           ; 0x3bd5
    add word [bp - 0x000e], strict word 0xa00 ; 0x3bd6
    mov ax, word [bp - 0x003e]       ; 0x3bdb
    sub word [bp - 0x000e], ax       ; 0x3bde
    inc word [bp - 0x0036]           ; 0x3be1
    mov byte [bp - 0x003a], 0x80     ; 0x3be4
    loop @..math_loc_3a8b.l27        ; 0x3be8
@..math_loc_3a8b.l25:
    pop es                           ; 0x3bea
    ret                              ; 0x3beb
@..math_loc_3a8b.l26:
    jmp near @..math_loc_3a8b.l6     ; 0x3bec
@..math_loc_3a8b.l27:
    jmp near @..math_loc_3a8b.l4     ; 0x3bef
math_loc_3bf2:
    mov al, 0x80                     ; 0x3bf2
    mov dl, al                       ; 0x3bf4
    xor ax, ax                       ; 0x3bf6
    mov word [bp - 0x003e], ax       ; 0x3bf8
    mov bx, word [bp - 0x0036]       ; 0x3bfb
    mov cx, 8                        ; 0x3bfe
@..math_loc_3bf2.l1:
    mov al, byte [cs:bx]             ; 0x3c01
    and al, dl                       ; 0x3c04
    je short @..math_loc_3bf2.l2     ; 0x3c06
    add word [bp - 0x003e], strict word 0x140 ; 0x3c08
@..math_loc_3bf2.l2:
    ror dl, 1                        ; 0x3c0d
    loop @..math_loc_3bf2.l1         ; 0x3c0f
    ret                              ; 0x3c11
math_loc_3c12:
    xor ax, ax                       ; 0x3c12
    mov word [bp - 0x003c], ax       ; 0x3c14
    mov dl, 0x80                     ; 0x3c17
    mov bx, word [bp - 0x0034]       ; 0x3c19
    mov cx, 8                        ; 0x3c1c
@..math_loc_3c12.l1:
    mov al, byte [cs:bx]             ; 0x3c1f
    and al, dl                       ; 0x3c22
    je short @..math_loc_3c12.l2     ; 0x3c24
    inc word [bp - 0x003c]           ; 0x3c26
@..math_loc_3c12.l2:
    ror dl, 1                        ; 0x3c29
    loop @..math_loc_3c12.l1         ; 0x3c2b
    ret                              ; 0x3c2d
@..math_loc_3a8b.l28:
    mov ax, word [bp - 0x002a]       ; 0x3c2e
    sub word [bp - 0x000e], ax       ; 0x3c31
    mov ax, word [bp - 0x0024]       ; 0x3c34
    mov bx, 0x140                    ; 0x3c37
    mul bx                           ; 0x3c3a
    add word [bp - 0x000e], ax       ; 0x3c3c
@..math_loc_3a8b.l29:
    mov ax, word [bp - 0x0022]       ; 0x3c3f
    mov di, word [bp - 0x000e]       ; 0x3c42
    add di, word [bp - 0x001e]       ; 0x3c45
    cmp di, ax                       ; 0x3c48
    jb short @..math_loc_3a8b.l30    ; 0x3c4a
    jmp near @..math_loc_3a8b.l50    ; 0x3c4c
@..math_loc_3a8b.l30:
    push cx                          ; 0x3c4f
    call math_loc_3bf2               ; 0x3c50
    mov ax, data_36dd                ; 0x3c53
    mov word [bp - 0x0034], ax       ; 0x3c56
    mov cx, word [bp - 0x0002]       ; 0x3c59
@..math_loc_3a8b.l31:
    push cx                          ; 0x3c5c
    call math_loc_3c12               ; 0x3c5d
    mov bx, word [bp - 0x000c]       ; 0x3c60
    mov al, byte [bx]                ; 0x3c63
    and al, byte [bp - 0x000a]       ; 0x3c65
    jne short @..math_loc_3a8b.l32   ; 0x3c68
    jmp near @..math_loc_3a8b.l48    ; 0x3c6a
@..math_loc_3a8b.l32:
    mov bx, word [bp - 0x0034]       ; 0x3c6d
    mov al, byte [cs:bx]             ; 0x3c70
    cmp al, 0xff                     ; 0x3c73
    jne short @..math_loc_3a8b.l33   ; 0x3c75
    add si, byte 0x40                ; 0x3c77
    jmp near @..math_loc_3a8b.l48    ; 0x3c7a
@..math_loc_3a8b.l33:
    push di                          ; 0x3c7d
    push si                          ; 0x3c7e
    mov al, 0x80                     ; 0x3c7f
    mov byte [bp - 0x0038], al       ; 0x3c81
    mov cx, 8                        ; 0x3c84
@..math_loc_3a8b.l34:
    cmp di, word [bp - 0x0022]       ; 0x3c87
    jb short @..math_loc_3a8b.l35    ; 0x3c8a
    jmp near @..math_loc_3a8b.l47    ; 0x3c8c
@..math_loc_3a8b.l35:
    mov bx, word [bp - 0x0036]       ; 0x3c8f
    mov al, byte [cs:bx]             ; 0x3c92
    and al, byte [bp - 0x0038]       ; 0x3c95
    je short @..math_loc_3a8b.l36    ; 0x3c98
    jmp near @..math_loc_3a8b.l46    ; 0x3c9a
@..math_loc_3a8b.l36:
    push cx                          ; 0x3c9d
    push di                          ; 0x3c9e
    mov al, 0x80                     ; 0x3c9f
    mov byte [bp - 0x0032], al       ; 0x3ca1
    mov cx, 8                        ; 0x3ca4
@..math_loc_3a8b.l37:
    mov bx, word [bp - 0x0034]       ; 0x3ca7
    mov al, byte [cs:bx]             ; 0x3caa
    and al, byte [bp - 0x0032]       ; 0x3cad
    jne short @..math_loc_3a8b.l45   ; 0x3cb0
    mov al, byte [si]                ; 0x3cb2
    cmp al, 0xff                     ; 0x3cb4
    je short @..math_loc_3a8b.l42    ; 0x3cb6
    cmp byte [bp + 0x1e], 2          ; 0x3cb8
    jne short @..math_loc_3a8b.l39   ; 0x3cbc
    mov al, byte [es:di]             ; 0x3cbe
    mov bx, 0x40cd                   ; 0x3cc1
    add bx, ax                       ; 0x3cc4
    add al, byte [si]                ; 0x3cc6
    jb short @..math_loc_3a8b.l38    ; 0x3cc8
    cmp al, byte [cs:bx]             ; 0x3cca
    jb short @..math_loc_3a8b.l41    ; 0x3ccd
@..math_loc_3a8b.l38:
    mov al, byte [cs:bx]             ; 0x3ccf
    jmp short @..math_loc_3a8b.l41   ; 0x3cd2
@..math_loc_3a8b.l39:
    cmp byte [bp - 0x0030], 0        ; 0x3cd4
    je short @..math_loc_3a8b.l41    ; 0x3cd8
    mov bx, 0x40cd                   ; 0x3cda
    add bx, ax                       ; 0x3cdd
    add al, byte [bp - 0x0030]       ; 0x3cdf
    jb short @..math_loc_3a8b.l40    ; 0x3ce2
    cmp al, byte [cs:bx]             ; 0x3ce4
    jb short @..math_loc_3a8b.l41    ; 0x3ce7
@..math_loc_3a8b.l40:
    mov al, byte [cs:bx]             ; 0x3ce9
@..math_loc_3a8b.l41:
    mov byte [es:di], al             ; 0x3cec
@..math_loc_3a8b.l42:
    inc si                           ; 0x3cef
    dec di                           ; 0x3cf0
    ror byte [bp - 0x0032], 1        ; 0x3cf1
    loop @..math_loc_3a8b.l37        ; 0x3cf4
@..math_loc_3a8b.l43:
    pop di                           ; 0x3cf6
    pop cx                           ; 0x3cf7
    add di, strict word 0x140        ; 0x3cf8
@..math_loc_3a8b.l44:
    ror byte [bp - 0x0038], 1        ; 0x3cfc
    loop @..math_loc_3a8b.l34        ; 0x3cff
    jmp short @..math_loc_3a8b.l47   ; 0x3d01
@..math_loc_3a8b.l45:
    inc si                           ; 0x3d03
    ror byte [bp - 0x0032], 1        ; 0x3d04
    loop @..math_loc_3a8b.l37        ; 0x3d07
    jmp short @..math_loc_3a8b.l43   ; 0x3d09
@..math_loc_3a8b.l46:
    add si, byte 8                   ; 0x3d0b
    jmp short @..math_loc_3a8b.l44   ; 0x3d0e
@..math_loc_3a8b.l47:
    pop si                           ; 0x3d10
    add si, byte 0x40                ; 0x3d11
    pop di                           ; 0x3d14
@..math_loc_3a8b.l48:
    sub di, byte 8                   ; 0x3d15
    add di, word [bp - 0x003c]       ; 0x3d18
    rol byte [bp - 0x000a], 1        ; 0x3d1b
    cmp byte [bp - 0x000a], 1        ; 0x3d1e
    jne short @..math_loc_3a8b.l49   ; 0x3d22
    inc word [bp - 0x000c]           ; 0x3d24
@..math_loc_3a8b.l49:
    inc word [bp - 0x0034]           ; 0x3d27
    pop cx                           ; 0x3d2a
    loop @..math_loc_3a8b.l51        ; 0x3d2b
    pop cx                           ; 0x3d2d
    add word [bp - 0x000e], strict word 0xa00 ; 0x3d2e
    mov ax, word [bp - 0x003e]       ; 0x3d33
    sub word [bp - 0x000e], ax       ; 0x3d36
    inc word [bp - 0x0036]           ; 0x3d39
    mov byte [bp - 0x003a], 0x80     ; 0x3d3c
    loop @..math_loc_3a8b.l52        ; 0x3d40
@..math_loc_3a8b.l50:
    pop es                           ; 0x3d42
    ret                              ; 0x3d43
@..math_loc_3a8b.l51:
    jmp near @..math_loc_3a8b.l31    ; 0x3d44
@..math_loc_3a8b.l52:
    jmp near @..math_loc_3a8b.l29    ; 0x3d47
@..math_loc_3a8b.l53:
    mov ax, word [bp - 0x0004]       ; 0x3d4a
    mov cx, 0xa00                    ; 0x3d4d
    mul cx                           ; 0x3d50
    sub ax, 0x140                    ; 0x3d52
    add ax, word [bp - 0x0006]       ; 0x3d55
    mov word [bp - 0x000e], ax       ; 0x3d58
    mov si, word [bx]                ; 0x3d5b
    add si, bx                       ; 0x3d5d
    mov word [bp - 0x000a], 1        ; 0x3d5f
    lea ax, word [bx + 0x4]          ; 0x3d64
    mov word [bp - 0x000c], ax       ; 0x3d67
    mov cx, word [bp - 0x0004]       ; 0x3d6a
    mov byte [bp - 0x003a], 0x80     ; 0x3d6d
    mov ax, word [bp - 0x0028]       ; 0x3d71
    add word [bp - 0x000e], ax       ; 0x3d74
    mov ax, word [bp - 0x002c]       ; 0x3d77
    mov bx, 0x140                    ; 0x3d7a
    mul bx                           ; 0x3d7d
    sub word [bp - 0x000e], ax       ; 0x3d7f
@..math_loc_3a8b.l54:
    mov ax, word [bp - 0x002e]       ; 0x3d82
    mov di, word [bp - 0x000e]       ; 0x3d85
    cmp ax, di                       ; 0x3d88
    jbe short @..math_loc_3a8b.l55   ; 0x3d8a
    jmp near @..math_loc_3a8b.l75    ; 0x3d8c
@..math_loc_3a8b.l55:
    push cx                          ; 0x3d8f
    call math_loc_3bf2               ; 0x3d90
    mov ax, data_36dd                ; 0x3d93
    mov word [bp - 0x0034], ax       ; 0x3d96
    mov cx, word [bp - 0x0002]       ; 0x3d99
@..math_loc_3a8b.l56:
    push cx                          ; 0x3d9c
    call math_loc_3c12               ; 0x3d9d
    mov bx, word [bp - 0x000c]       ; 0x3da0
    mov al, byte [bx]                ; 0x3da3
    and al, byte [bp - 0x000a]       ; 0x3da5
    jne short @..math_loc_3a8b.l57   ; 0x3da8
    jmp near @..math_loc_3a8b.l73    ; 0x3daa
@..math_loc_3a8b.l57:
    mov bx, word [bp - 0x0034]       ; 0x3dad
    mov al, byte [cs:bx]             ; 0x3db0
    cmp al, 0xff                     ; 0x3db3
    jne short @..math_loc_3a8b.l58   ; 0x3db5
    add si, byte 0x40                ; 0x3db7
    jmp near @..math_loc_3a8b.l73    ; 0x3dba
@..math_loc_3a8b.l58:
    push di                          ; 0x3dbd
    push si                          ; 0x3dbe
    mov al, 0x80                     ; 0x3dbf
    mov byte [bp - 0x0038], al       ; 0x3dc1
    mov cx, 8                        ; 0x3dc4
@..math_loc_3a8b.l59:
    cmp word [bp - 0x002e], di       ; 0x3dc7
    jbe short @..math_loc_3a8b.l60   ; 0x3dca
    jmp near @..math_loc_3a8b.l72    ; 0x3dcc
@..math_loc_3a8b.l60:
    mov bx, word [bp - 0x0036]       ; 0x3dcf
    mov al, byte [cs:bx]             ; 0x3dd2
    and al, byte [bp - 0x0038]       ; 0x3dd5
    je short @..math_loc_3a8b.l61    ; 0x3dd8
    jmp near @..math_loc_3a8b.l71    ; 0x3dda
@..math_loc_3a8b.l61:
    push cx                          ; 0x3ddd
    push di                          ; 0x3dde
    mov al, 0x80                     ; 0x3ddf
    mov byte [bp - 0x0032], al       ; 0x3de1
    mov cx, 8                        ; 0x3de4
@..math_loc_3a8b.l62:
    mov bx, word [bp - 0x0034]       ; 0x3de7
    mov al, byte [cs:bx]             ; 0x3dea
    and al, byte [bp - 0x0032]       ; 0x3ded
    jne short @..math_loc_3a8b.l70   ; 0x3df0
    mov al, byte [si]                ; 0x3df2
    cmp al, 0xff                     ; 0x3df4
    je short @..math_loc_3a8b.l67    ; 0x3df6
    cmp byte [bp + 0x1e], 2          ; 0x3df8
    jne short @..math_loc_3a8b.l64   ; 0x3dfc
    mov al, byte [es:di]             ; 0x3dfe
    mov bx, 0x40cd                   ; 0x3e01
    add bx, ax                       ; 0x3e04
    add al, byte [si]                ; 0x3e06
    jb short @..math_loc_3a8b.l63    ; 0x3e08
    cmp al, byte [cs:bx]             ; 0x3e0a
    jb short @..math_loc_3a8b.l66    ; 0x3e0d
@..math_loc_3a8b.l63:
    mov al, byte [cs:bx]             ; 0x3e0f
    jmp short @..math_loc_3a8b.l66   ; 0x3e12
@..math_loc_3a8b.l64:
    cmp byte [bp - 0x0030], 0        ; 0x3e14
    je short @..math_loc_3a8b.l66    ; 0x3e18
    mov bx, 0x40cd                   ; 0x3e1a
    add bx, ax                       ; 0x3e1d
    add al, byte [bp - 0x0030]       ; 0x3e1f
    jb short @..math_loc_3a8b.l65    ; 0x3e22
    cmp al, byte [cs:bx]             ; 0x3e24
    jb short @..math_loc_3a8b.l66    ; 0x3e27
@..math_loc_3a8b.l65:
    mov al, byte [cs:bx]             ; 0x3e29
@..math_loc_3a8b.l66:
    mov byte [es:di], al             ; 0x3e2c
@..math_loc_3a8b.l67:
    inc si                           ; 0x3e2f
    inc di                           ; 0x3e30
    ror byte [bp - 0x0032], 1        ; 0x3e31
    loop @..math_loc_3a8b.l62        ; 0x3e34
@..math_loc_3a8b.l68:
    pop di                           ; 0x3e36
    sub di, strict word 0x140        ; 0x3e37
    pop cx                           ; 0x3e3b
@..math_loc_3a8b.l69:
    ror byte [bp - 0x0038], 1        ; 0x3e3c
    loop @..math_loc_3a8b.l59        ; 0x3e3f
    jmp short @..math_loc_3a8b.l72   ; 0x3e41
@..math_loc_3a8b.l70:
    inc si                           ; 0x3e43
    ror byte [bp - 0x0032], 1        ; 0x3e44
    loop @..math_loc_3a8b.l62        ; 0x3e47
    jmp short @..math_loc_3a8b.l68   ; 0x3e49
@..math_loc_3a8b.l71:
    add si, byte 8                   ; 0x3e4b
    jmp short @..math_loc_3a8b.l69   ; 0x3e4e
@..math_loc_3a8b.l72:
    pop si                           ; 0x3e50
    add si, byte 0x40                ; 0x3e51
    pop di                           ; 0x3e54
@..math_loc_3a8b.l73:
    add di, byte 8                   ; 0x3e55
    sub di, word [bp - 0x003c]       ; 0x3e58
    rol byte [bp - 0x000a], 1        ; 0x3e5b
    cmp byte [bp - 0x000a], 1        ; 0x3e5e
    jne short @..math_loc_3a8b.l74   ; 0x3e62
    inc word [bp - 0x000c]           ; 0x3e64
@..math_loc_3a8b.l74:
    inc word [bp - 0x0034]           ; 0x3e67
    pop cx                           ; 0x3e6a
    loop @..math_loc_3a8b.l76        ; 0x3e6b
    pop cx                           ; 0x3e6d
    sub word [bp - 0x000e], strict word 0xa00 ; 0x3e6e
    mov ax, word [bp - 0x003e]       ; 0x3e73
    add word [bp - 0x000e], ax       ; 0x3e76
    inc word [bp - 0x0036]           ; 0x3e79
    mov byte [bp - 0x003a], 0x80     ; 0x3e7c
    loop @..math_loc_3a8b.l77        ; 0x3e80
@..math_loc_3a8b.l75:
    pop es                           ; 0x3e82
    ret                              ; 0x3e83
@..math_loc_3a8b.l76:
    jmp near @..math_loc_3a8b.l56    ; 0x3e84
@..math_loc_3a8b.l77:
    jmp near @..math_loc_3a8b.l54    ; 0x3e87
@..math_loc_3a8b.l78:
    mov ax, word [bp - 0x0004]       ; 0x3e8a
    mov cx, 0xa00                    ; 0x3e8d
    mul cx                           ; 0x3e90
    sub ax, 0x140                    ; 0x3e92
    add ax, word [bp - 0x0006]       ; 0x3e95
    mov word [bp - 0x000e], ax       ; 0x3e98
    mov si, word [bx]                ; 0x3e9b
    add si, bx                       ; 0x3e9d
    mov word [bp - 0x000a], 1        ; 0x3e9f
    lea ax, word [bx + 0x4]          ; 0x3ea4
    mov word [bp - 0x000c], ax       ; 0x3ea7
    mov cx, word [bp - 0x0004]       ; 0x3eaa
    mov byte [bp - 0x003a], 0x80     ; 0x3ead
    mov ax, word [bp - 0x002a]       ; 0x3eb1
    sub word [bp - 0x000e], ax       ; 0x3eb4
    mov ax, word [bp - 0x002c]       ; 0x3eb7
    mov bx, 0x140                    ; 0x3eba
    mul bx                           ; 0x3ebd
    sub word [bp - 0x000e], ax       ; 0x3ebf
@..math_loc_3a8b.l79:
    mov ax, word [bp - 0x002e]       ; 0x3ec2
    mov di, word [bp - 0x000e]       ; 0x3ec5
    add di, word [bp - 0x001e]       ; 0x3ec8
    cmp ax, di                       ; 0x3ecb
    jb short @..math_loc_3a8b.l80    ; 0x3ecd
    jmp near @..math_loc_3a8b.l100   ; 0x3ecf
@..math_loc_3a8b.l80:
    push cx                          ; 0x3ed2
    call math_loc_3bf2               ; 0x3ed3
    mov ax, data_36dd                ; 0x3ed6
    mov word [bp - 0x0034], ax       ; 0x3ed9
    mov cx, word [bp - 0x0002]       ; 0x3edc
@..math_loc_3a8b.l81:
    push cx                          ; 0x3edf
    call math_loc_3c12               ; 0x3ee0
    mov bx, word [bp - 0x000c]       ; 0x3ee3
    mov al, byte [bx]                ; 0x3ee6
    and al, byte [bp - 0x000a]       ; 0x3ee8
    jne short @..math_loc_3a8b.l82   ; 0x3eeb
    jmp near @..math_loc_3a8b.l98    ; 0x3eed
@..math_loc_3a8b.l82:
    mov bx, word [bp - 0x0034]       ; 0x3ef0
    mov al, byte [cs:bx]             ; 0x3ef3
    cmp al, 0xff                     ; 0x3ef6
    jne short @..math_loc_3a8b.l83   ; 0x3ef8
    add si, byte 0x40                ; 0x3efa
    jmp near @..math_loc_3a8b.l98    ; 0x3efd
@..math_loc_3a8b.l83:
    push di                          ; 0x3f00
    push si                          ; 0x3f01
    mov al, 0x80                     ; 0x3f02
    mov byte [bp - 0x0038], al       ; 0x3f04
    mov cx, 8                        ; 0x3f07
@..math_loc_3a8b.l84:
    cmp word [bp - 0x002e], di       ; 0x3f0a
    jbe short @..math_loc_3a8b.l85   ; 0x3f0d
    jmp near @..math_loc_3a8b.l97    ; 0x3f0f
@..math_loc_3a8b.l85:
    mov bx, word [bp - 0x0036]       ; 0x3f12
    mov al, byte [cs:bx]             ; 0x3f15
    and al, byte [bp - 0x0038]       ; 0x3f18
    je short @..math_loc_3a8b.l86    ; 0x3f1b
    jmp near @..math_loc_3a8b.l96    ; 0x3f1d
@..math_loc_3a8b.l86:
    push cx                          ; 0x3f20
    push di                          ; 0x3f21
    mov al, 0x80                     ; 0x3f22
    mov byte [bp - 0x0032], al       ; 0x3f24
    mov cx, 8                        ; 0x3f27
@..math_loc_3a8b.l87:
    mov bx, word [bp - 0x0034]       ; 0x3f2a
    mov al, byte [cs:bx]             ; 0x3f2d
    and al, byte [bp - 0x0032]       ; 0x3f30
    jne short @..math_loc_3a8b.l95   ; 0x3f33
    mov al, byte [si]                ; 0x3f35
    cmp al, 0xff                     ; 0x3f37
    je short @..math_loc_3a8b.l92    ; 0x3f39
    cmp byte [bp + 0x1e], 2          ; 0x3f3b
    jne short @..math_loc_3a8b.l89   ; 0x3f3f
    mov al, byte [es:di]             ; 0x3f41
    mov bx, 0x40cd                   ; 0x3f44
    add bx, ax                       ; 0x3f47
    add al, byte [si]                ; 0x3f49
    jb short @..math_loc_3a8b.l88    ; 0x3f4b
    cmp al, byte [cs:bx]             ; 0x3f4d
    jb short @..math_loc_3a8b.l91    ; 0x3f50
@..math_loc_3a8b.l88:
    mov al, byte [cs:bx]             ; 0x3f52
    jmp short @..math_loc_3a8b.l91   ; 0x3f55
@..math_loc_3a8b.l89:
    cmp byte [bp - 0x0030], 0        ; 0x3f57
    je short @..math_loc_3a8b.l91    ; 0x3f5b
    mov bx, 0x40cd                   ; 0x3f5d
    add bx, ax                       ; 0x3f60
    add al, byte [bp - 0x0030]       ; 0x3f62
    jb short @..math_loc_3a8b.l90    ; 0x3f65
    cmp al, byte [cs:bx]             ; 0x3f67
    jb short @..math_loc_3a8b.l91    ; 0x3f6a
@..math_loc_3a8b.l90:
    mov al, byte [cs:bx]             ; 0x3f6c
@..math_loc_3a8b.l91:
    mov byte [es:di], al             ; 0x3f6f
@..math_loc_3a8b.l92:
    inc si                           ; 0x3f72
    dec di                           ; 0x3f73
    ror byte [bp - 0x0032], 1        ; 0x3f74
    loop @..math_loc_3a8b.l87        ; 0x3f77
@..math_loc_3a8b.l93:
    pop di                           ; 0x3f79
    sub di, strict word 0x140        ; 0x3f7a
    pop cx                           ; 0x3f7e
@..math_loc_3a8b.l94:
    ror byte [bp - 0x0038], 1        ; 0x3f7f
    loop @..math_loc_3a8b.l84        ; 0x3f82
    jmp short @..math_loc_3a8b.l97   ; 0x3f84
@..math_loc_3a8b.l95:
    inc si                           ; 0x3f86
    ror byte [bp - 0x0032], 1        ; 0x3f87
    loop @..math_loc_3a8b.l87        ; 0x3f8a
    jmp short @..math_loc_3a8b.l93   ; 0x3f8c
@..math_loc_3a8b.l96:
    add si, byte 8                   ; 0x3f8e
    jmp short @..math_loc_3a8b.l94   ; 0x3f91
@..math_loc_3a8b.l97:
    pop si                           ; 0x3f93
    add si, byte 0x40                ; 0x3f94
    pop di                           ; 0x3f97
@..math_loc_3a8b.l98:
    sub di, byte 8                   ; 0x3f98
    add di, word [bp - 0x003c]       ; 0x3f9b
    rol byte [bp - 0x000a], 1        ; 0x3f9e
    cmp byte [bp - 0x000a], 1        ; 0x3fa1
    jne short @..math_loc_3a8b.l99   ; 0x3fa5
    inc word [bp - 0x000c]           ; 0x3fa7
@..math_loc_3a8b.l99:
    inc word [bp - 0x0034]           ; 0x3faa
    pop cx                           ; 0x3fad
    loop @..math_loc_3a8b.l101       ; 0x3fae
    pop cx                           ; 0x3fb0
    sub word [bp - 0x000e], strict word 0xa00 ; 0x3fb1
    mov ax, word [bp - 0x003e]       ; 0x3fb6
    add word [bp - 0x000e], ax       ; 0x3fb9
    inc word [bp - 0x0036]           ; 0x3fbc
    mov byte [bp - 0x003a], 0x80     ; 0x3fbf
    loop @..math_loc_3a8b.l102       ; 0x3fc3
@..math_loc_3a8b.l100:
    pop es                           ; 0x3fc5
    ret                              ; 0x3fc6
@..math_loc_3a8b.l101:
    jmp near @..math_loc_3a8b.l81    ; 0x3fc7
@..math_loc_3a8b.l102:
    jmp near @..math_loc_3a8b.l79    ; 0x3fca

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

@..dos_write_file_2.l1:
    mov ax, cs                       ; 0x40cd
    mov ds, ax                       ; 0x40cf
    mov dx, 0x41dd                   ; 0x40d1
dos_con_loc_40d4:
    mov ah, 9                        ; 0x40d4
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x40d8
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk in CACHEAREA().', 0
    db 0x0a, 0x24

dos_write_file_2:
    push bp                          ; 0x4111
    mov bp, sp                       ; 0x4112
    sub sp, byte 0x0e                ; 0x4114
    push es                          ; 0x4117
    push ds                          ; 0x4118
    push di                          ; 0x4119
    push si                          ; 0x411a
    mov ax, ds                       ; 0x411b
    mov es, ax                       ; 0x411d
    cmp word [bp + 0x14], byte 3     ; 0x411f
    jne short @..dos_write_file_2.l6 ; 0x4123
    mov ax, word [bp + 0x10]         ; 0x4125
    sub ax, word [bp + 0xc]          ; 0x4128
    inc ax                           ; 0x412b
    mov word [bp - 0x0006], ax       ; 0x412c
    mov bx, word [bp + 0x12]         ; 0x412f
    sub bx, word [bp + 0xe]          ; 0x4132
    inc bx                           ; 0x4135
    mov word [bp - 0x0004], bx       ; 0x4136
    mul bx                           ; 0x4139
    mov word [bp - 0x0008], ax       ; 0x413b
    mov word [bp - 0x000a], dx       ; 0x413e
    mov ax, word [bp + 0xe]          ; 0x4141
    mov bx, 0x140                    ; 0x4144
    mul bx                           ; 0x4147
    add ax, word [bp + 0xc]          ; 0x4149
    mov word [bp - 0x0002], ax       ; 0x414c
    lea bx, word [bp - 0x000a]       ; 0x414f
    mov dx, bx                       ; 0x4152
    mov ax, ss                       ; 0x4154
    mov ds, ax                       ; 0x4156
    mov cx, 0xa                      ; 0x4158
    mov bx, word [bp + 0x16]         ; 0x415b
    mov ah, 0x40                     ; 0x415e
    int 0x21 ; DOS write file (handle)
    jae short @..dos_write_file_2.l2 ; 0x4162
    jmp near @..dos_write_file_2.l1  ; 0x4164
@..dos_write_file_2.l2:
    mov ax, word [cs:data_01e5]      ; 0x4167
    mov ds, ax                       ; 0x416b
    mov cx, word [bp - 0x0004]       ; 0x416d
@..dos_write_file_2.l3:
    push cx                          ; 0x4170
    mov dx, word [bp - 0x0002]       ; 0x4171
    add word [bp - 0x0002], strict word 0x140 ; 0x4174
    mov cx, word [bp - 0x0006]       ; 0x4179
    mov bx, word [bp + 0x16]         ; 0x417c
    mov ah, 0x40                     ; 0x417f
    int 0x21 ; DOS write file (handle)
    jae short @..dos_write_file_2.l4 ; 0x4183
    jmp near @..dos_write_file_2.l1  ; 0x4185
@..dos_write_file_2.l4:
    cmp ax, word [bp - 0x0006]       ; 0x4188
    je short @..dos_write_file_2.l5  ; 0x418b
    jmp near @..dos_write_file_2.l1  ; 0x418d
@..dos_write_file_2.l5:
    pop cx                           ; 0x4190
    loop @..dos_write_file_2.l3      ; 0x4191
    xor ax, ax                       ; 0x4193
    mov dx, word [bp + 0x14]         ; 0x4195
    jmp near @..dos_write_file_2.l19 ; 0x4198
@..dos_write_file_2.l6:
    cmp word [bp + 0x14], byte 2     ; 0x419b
    je short @..dos_write_file_2.l7  ; 0x419f
    jmp near @..dos_write_file_2.l12 ; 0x41a1
@..dos_write_file_2.l7:
    mov ax, word [bp + 0x10]         ; 0x41a4
    sub ax, word [bp + 0xc]          ; 0x41a7
    inc ax                           ; 0x41aa
    mov word [bp - 0x0006], ax       ; 0x41ab
    mov bx, word [bp + 0x12]         ; 0x41ae
    sub bx, word [bp + 0xe]          ; 0x41b1
    inc bx                           ; 0x41b4
    mov word [bp - 0x0004], bx       ; 0x41b5
    mul bx                           ; 0x41b8
    mov word [bp - 0x0008], ax       ; 0x41ba
    mov word [bp - 0x000a], dx       ; 0x41bd
    add ax, strict word 0xc          ; 0x41c0
    add ax, strict word 0xf          ; 0x41c3
    mov cl, 4                        ; 0x41c6
    shr ax, cl                       ; 0x41c8
    mov word [bp - 0x0002], ax       ; 0x41ca
    add ax, word [cs:data_11cd]      ; 0x41cd
    cmp ax, 0x4180                   ; 0x41d2
    jbe short @..dos_write_file_2.l8 ; 0x41d5
    jmp near @..dos_write_file_2.l21 ; 0x41d7
@..dos_write_file_2.l8:
    mov bx, word [cs:data_11cd]      ; 0x41da
    mov word [bp - 0x000e], bx       ; 0x41df
    mov word [cs:data_11cd], ax      ; 0x41e2
    mov bx, 0x25b                    ; 0x41e6
    mov cx, 0x10                     ; 0x41e9
    xor dx, dx                       ; 0x41ec
@..dos_write_file_2.l9:
    mov ax, word [cs:bx]             ; 0x41ee
    or ax, ax                        ; 0x41f1
    je short @..dos_write_file_2.l10 ; 0x41f3
    inc dx                           ; 0x41f5
    add bx, byte 2                   ; 0x41f6
    loop @..dos_write_file_2.l9      ; 0x41f9
    jmp near @..dos_write_file_2.l22 ; 0x41fb
@..dos_write_file_2.l10:
    mov word [bp - 0x000c], dx       ; 0x41fe
    mov ax, word [cs:data_11cb]      ; 0x4201
    inc ax                           ; 0x4205
    mov word [cs:data_11cb], ax      ; 0x4206
    mov word [cs:bx], ax             ; 0x420a
    dec ax                           ; 0x420d
    mov cl, 2                        ; 0x420e
    shl ax, cl                       ; 0x4210
    mov bx, 0x10fb                   ; 0x4212
    add bx, ax                       ; 0x4215
    mov ax, word [bp - 0x000e]       ; 0x4217
    mov word [cs:bx], ax             ; 0x421a
    add ax, word [cs:data_01e1]      ; 0x421d
    mov es, ax                       ; 0x4222
    mov ax, word [bp - 0x0002]       ; 0x4224
    mov word [cs:bx + 0x2], ax       ; 0x4227
    mov ax, word [cs:data_01e5]      ; 0x422b
    mov ds, ax                       ; 0x422f
    mov ax, word [bp + 0xe]          ; 0x4231
    mov bx, 0x140                    ; 0x4234
    mul bx                           ; 0x4237
    add ax, word [bp + 0xc]          ; 0x4239
    mov word [bp - 0x0002], ax       ; 0x423c
    xor di, di                       ; 0x423f
    stosw                            ; 0x4241
    xor ax, ax                       ; 0x4242
    stosw                            ; 0x4244
    mov ax, word [bp - 0x0004]       ; 0x4245
    stosw                            ; 0x4248
    mov ax, word [bp - 0x0006]       ; 0x4249
    stosw                            ; 0x424c
    mov ax, word [bp - 0x0008]       ; 0x424d
    stosw                            ; 0x4250
    mov ax, word [bp - 0x000a]       ; 0x4251
    stosw                            ; 0x4254
@..dos_write_file_2.l11:
    mov si, word [bp - 0x0002]       ; 0x4255
    add word [bp - 0x0002], strict word 0x140 ; 0x4258
    mov cx, word [bp - 0x0006]       ; 0x425d
    rep movsb                        ; 0x4260
    dec word [bp - 0x0004]           ; 0x4262
    jne short @..dos_write_file_2.l11 ; 0x4265
    mov ax, word [bp - 0x000c]       ; 0x4267
    mov dx, word [bp + 0x14]         ; 0x426a
    jmp near @..dos_write_file_2.l19 ; 0x426d
@..dos_write_file_2.l12:
    mov ax, word [bp + 0x10]         ; 0x4270
    sub ax, word [bp + 0xc]          ; 0x4273
    inc ax                           ; 0x4276
    mov word [bp - 0x0006], ax       ; 0x4277
    mov bx, word [bp + 0x12]         ; 0x427a
    sub bx, word [bp + 0xe]          ; 0x427d
    inc bx                           ; 0x4280
    mov word [bp - 0x0004], bx       ; 0x4281
    mul bx                           ; 0x4284
    mov word [bp - 0x0008], ax       ; 0x4286
    mov word [bp - 0x000a], dx       ; 0x4289
    add ax, strict word 0xc          ; 0x428c
    add ax, strict word 0xf          ; 0x428f
    mov cl, 4                        ; 0x4292
    shr ax, cl                       ; 0x4294
    mov word [bp - 0x0002], ax       ; 0x4296
    add ax, word [cs:data_0391]      ; 0x4299
    cmp ax, word [cs:data_01ff]      ; 0x429e
    jbe short @..dos_write_file_2.l13 ; 0x42a3
    jmp near @..dos_write_file_2.l18 ; 0x42a5
@..dos_write_file_2.l13:
    mov bx, word [cs:data_0391]      ; 0x42a8
    mov word [bp - 0x000e], bx       ; 0x42ad
    mov word [cs:data_0391], ax      ; 0x42b0
    mov bx, 0x29b                    ; 0x42b4
    mov cx, 0x14                     ; 0x42b7
    xor dx, dx                       ; 0x42ba
@..dos_write_file_2.l14:
    mov ax, word [cs:bx]             ; 0x42bc
    or ax, ax                        ; 0x42bf
    je short @..dos_write_file_2.l15 ; 0x42c1
    inc dx                           ; 0x42c3
    add bx, byte 2                   ; 0x42c4
    loop @..dos_write_file_2.l14     ; 0x42c7
    jmp near @..dos_write_file_2.l20 ; 0x42c9
@..dos_write_file_2.l15:
    mov word [bp - 0x000c], dx       ; 0x42cc
    mov ax, word [cs:0x038f]         ; 0x42cf
    inc ax                           ; 0x42d3
    mov word [cs:0x038f], ax         ; 0x42d4
    mov word [cs:bx], ax             ; 0x42d8
    dec ax                           ; 0x42db
    mov cl, 2                        ; 0x42dc
    shl ax, cl                       ; 0x42de
    mov bx, 0x2eb                    ; 0x42e0
    add bx, ax                       ; 0x42e3
    mov ax, word [bp - 0x000e]       ; 0x42e5
    mov word [cs:bx], ax             ; 0x42e8
    mov ax, word [bp - 0x0002]       ; 0x42eb
    mov word [cs:bx + 0x2], ax       ; 0x42ee
    mov ax, word [cs:data_0203]      ; 0x42f2
    mov es, ax                       ; 0x42f6
    mov ax, word [bp - 0x000e]       ; 0x42f8
    mov di, ax                       ; 0x42fb
    and di, strict word 0x3ff        ; 0x42fd
    mov cl, 4                        ; 0x4301
    shl di, cl                       ; 0x4303
    mov cl, 0xa                      ; 0x4305
    shr ax, cl                       ; 0x4307
    mov word [cs:data_4540], ax      ; 0x4309
    call dos_file_loc_4442           ; 0x430d
    mov ax, word [cs:data_01e5]      ; 0x4310
    mov ds, ax                       ; 0x4314
    mov ax, word [bp + 0xe]          ; 0x4316
    mov bx, 0x140                    ; 0x4319
    mul bx                           ; 0x431c
    add ax, word [bp + 0xc]          ; 0x431e
    mov word [bp - 0x0002], ax       ; 0x4321
    stosw                            ; 0x4324
    xor ax, ax                       ; 0x4325
    stosw                            ; 0x4327
    mov ax, word [bp - 0x0004]       ; 0x4328
    stosw                            ; 0x432b
    mov ax, word [bp - 0x0006]       ; 0x432c
    stosw                            ; 0x432f
    mov ax, word [bp - 0x0008]       ; 0x4330
    stosw                            ; 0x4333
    mov ax, word [bp - 0x000a]       ; 0x4334
    stosw                            ; 0x4337
@..dos_write_file_2.l16:
    mov si, word [bp - 0x0002]       ; 0x4338
    add word [bp - 0x0002], strict word 0x140 ; 0x433b
    mov cx, word [bp - 0x0006]       ; 0x4340
    rep movsb                        ; 0x4343
    test di, 0xc000                  ; 0x4345
    je short @..dos_write_file_2.l17 ; 0x4349
    inc word [cs:data_4540]          ; 0x434b
    mov ax, word [cs:data_4540]      ; 0x4350
    call dos_file_loc_4442           ; 0x4354
    and di, strict word 0x3fff       ; 0x4357
@..dos_write_file_2.l17:
    dec word [bp - 0x0004]           ; 0x435b
    jne short @..dos_write_file_2.l16 ; 0x435e
    mov ax, word [bp - 0x000c]       ; 0x4360
    mov dx, word [bp + 0x14]         ; 0x4363
    jmp near @..dos_write_file_2.l19 ; 0x4366
@..dos_write_file_2.l18:
    mov ax, cs                       ; 0x4369
    mov ds, ax                       ; 0x436b
    mov dx, 0x4479                   ; 0x436d
dos_con_loc_4370:
    mov ah, 9                        ; 0x4370
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4374
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

@..dos_write_file_2.l19:
    pop si                           ; 0x4398
    pop di                           ; 0x4399
    pop ds                           ; 0x439a
    pop es                           ; 0x439b
    mov sp, bp                       ; 0x439c
    pop bp                           ; 0x439e
    ret                              ; 0x439f
@..dos_write_file_2.l20:
    mov ax, cs                       ; 0x43a0
    mov ds, ax                       ; 0x43a2
    mov dx, 0x44b0                   ; 0x43a4
dos_con_loc_43a7:
    mov ah, 9                        ; 0x43a7
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x43ab
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of EMS slots.', 0
    db 0x0a, 0x24

@..dos_write_file_2.l21:
    mov ax, cs                       ; 0x43d1
    mov ds, ax                       ; 0x43d3
    mov dx, 0x44e1                   ; 0x43d5
dos_con_loc_43d8:
    mov ah, 9                        ; 0x43d8
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x43dc
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE/PIC memory.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0x8a

@..dos_write_file_2.l22:
    mov ax, cs                       ; 0x440e
    mov ds, ax                       ; 0x4410
    mov dx, 0x451e                   ; 0x4412
    mov ah, 9                        ; 0x4415
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4419
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEAREA out of MAZE slots.', 0
    db 0x0a, 0x24, 0x00, 0x00

dos_file_loc_4442:
    push ax                          ; 0x4442
    mov ah, 0x44                     ; 0x4443
    mov al, 0                        ; 0x4445
    pop bx                           ; 0x4447
    mov dx, word [cs:data_0201]      ; 0x4448
    int 0x67 ; EMS (Expanded Memory)
    inc bx                           ; 0x444f
    mov ah, 0x44                     ; 0x4450
    mov al, 1                        ; 0x4452
    int 0x67 ; EMS (Expanded Memory)
    ret                              ; 0x4456
dos_read_file_4:
    push bp                          ; 0x4457
    mov bp, sp                       ; 0x4458
    sub sp, byte 0x0e                ; 0x445a
    push es                          ; 0x445d
    push ds                          ; 0x445e
    push di                          ; 0x445f
    push si                          ; 0x4460
    mov ax, ds                       ; 0x4461
    mov es, ax                       ; 0x4463
    cmp word [bp + 0xe], byte 3      ; 0x4465
    jne short @..dos_read_file_4.l2  ; 0x4469
    lea bx, word [bp - 0x000a]       ; 0x446b
    mov dx, bx                       ; 0x446e
    mov ax, ss                       ; 0x4470
    mov ds, ax                       ; 0x4472
    mov cx, 0xa                      ; 0x4474
    mov bx, word [bp + 0x12]         ; 0x4477
    mov ah, 0x3f                     ; 0x447a
    int 0x21 ; DOS read file (handle)
    mov ax, word [cs:data_01e5]      ; 0x447e
    mov ds, ax                       ; 0x4482
    mov cx, word [bp - 0x0004]       ; 0x4484
@..dos_read_file_4.l1:
    push cx                          ; 0x4487
    mov dx, word [bp - 0x0002]       ; 0x4488
    add word [bp - 0x0002], strict word 0x140 ; 0x448b
    mov cx, word [bp - 0x0006]       ; 0x4490
    mov bx, word [bp + 0x12]         ; 0x4493
    mov ah, 0x3f                     ; 0x4496
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x449a
    loop @..dos_read_file_4.l1       ; 0x449b
    jmp near @..dos_read_file_4.l9   ; 0x449d
@..dos_read_file_4.l2:
    cmp word [bp + 0xe], byte 2      ; 0x44a0
    je short @..dos_read_file_4.l3   ; 0x44a4
    jmp near @..dos_read_file_4.l6   ; 0x44a6
@..dos_read_file_4.l3:
    mov ax, word [bp + 0xc]          ; 0x44a9
    shl ax, 1                        ; 0x44ac
    mov bx, 0x25b                    ; 0x44ae
    add bx, ax                       ; 0x44b1
    mov ax, word [cs:bx]             ; 0x44b3
    dec ax                           ; 0x44b6
    mov cl, 2                        ; 0x44b7
    shl ax, cl                       ; 0x44b9
    mov bx, 0x10fb                   ; 0x44bb
    add bx, ax                       ; 0x44be
    mov ax, word [cs:bx]             ; 0x44c0
    add ax, word [cs:data_01e1]      ; 0x44c3
    mov ds, ax                       ; 0x44c8
    mov ax, word [cs:data_01e5]      ; 0x44ca
    mov es, ax                       ; 0x44ce
    xor si, si                       ; 0x44d0
    lodsw                            ; 0x44d2
    mov word [bp - 0x0002], ax       ; 0x44d3
    lodsw                            ; 0x44d6
    lodsw                            ; 0x44d7
    mov word [bp - 0x0004], ax       ; 0x44d8
    lodsw                            ; 0x44db
    mov word [bp - 0x0006], ax       ; 0x44dc
    lodsw                            ; 0x44df
    lodsw                            ; 0x44e0
@..dos_read_file_4.l4:
    mov di, word [bp - 0x0002]       ; 0x44e1
    add word [bp - 0x0002], strict word 0x140 ; 0x44e4
    mov cx, word [bp - 0x0006]       ; 0x44e9
    rep movsb                        ; 0x44ec
    dec word [bp - 0x0004]           ; 0x44ee
    jne short @..dos_read_file_4.l4  ; 0x44f1
    cmp word [bp + 0x10], byte 0     ; 0x44f3
    je short @..dos_read_file_4.l5   ; 0x44f7
    mov ax, word [bp + 0xc]          ; 0x44f9
    shl ax, 1                        ; 0x44fc
    mov bx, 0x25b                    ; 0x44fe
    add bx, ax                       ; 0x4501
    mov ax, word [cs:bx]             ; 0x4503
    mov word [cs:bx], 0              ; 0x4506
    dec word [cs:data_11cb]          ; 0x450b
    call loc_4c93                    ; 0x4510
@..dos_read_file_4.l5:
    jmp near @..dos_read_file_4.l9   ; 0x4513
@..dos_read_file_4.l6:
    mov ax, word [bp + 0xc]          ; 0x4516
    shl ax, 1                        ; 0x4519
    mov bx, 0x29b                    ; 0x451b
    add bx, ax                       ; 0x451e
    mov ax, word [cs:bx]             ; 0x4520
    dec ax                           ; 0x4523
    mov cl, 2                        ; 0x4524
    shl ax, cl                       ; 0x4526
    mov bx, 0x2eb                    ; 0x4528
    add bx, ax                       ; 0x452b
    mov ax, word [cs:bx]             ; 0x452d
    mov word [bp - 0x0002], ax       ; 0x4530
    mov cl, 0xa                      ; 0x4533
    shr ax, cl                       ; 0x4535
    mov word [cs:data_4540], ax      ; 0x4537
    call dos_file_loc_4442           ; 0x453b
    mov si, word [bp - 0x0002]       ; 0x453e
    and si, strict word 0x3ff        ; 0x4541
    mov cl, 4                        ; 0x4545
    shl si, cl                       ; 0x4547
    mov ax, word [cs:data_01e5]      ; 0x4549
    mov es, ax                       ; 0x454d
    mov ax, word [cs:data_0203]      ; 0x454f
    mov ds, ax                       ; 0x4553
    lodsw                            ; 0x4555
    mov word [bp - 0x0002], ax       ; 0x4556
    lodsw                            ; 0x4559
    lodsw                            ; 0x455a
    mov word [bp - 0x0004], ax       ; 0x455b
    lodsw                            ; 0x455e
    mov word [bp - 0x0006], ax       ; 0x455f
    lodsw                            ; 0x4562
    lodsw                            ; 0x4563
@..dos_read_file_4.l7:
    mov di, word [bp - 0x0002]       ; 0x4564
    add word [bp - 0x0002], strict word 0x140 ; 0x4567
    mov cx, word [bp - 0x0006]       ; 0x456c
    rep movsb                        ; 0x456f
    test si, 0xc000                  ; 0x4571
    je short @..dos_read_file_4.l8   ; 0x4575
    inc word [cs:data_4540]          ; 0x4577
    mov ax, word [cs:data_4540]      ; 0x457c
    call dos_file_loc_4442           ; 0x4580
    and si, strict word 0x3fff       ; 0x4583
@..dos_read_file_4.l8:
    dec word [bp - 0x0004]           ; 0x4587
    jne short @..dos_read_file_4.l7  ; 0x458a
    cmp word [bp + 0x10], byte 0     ; 0x458c
    je short @..dos_read_file_4.l9   ; 0x4590
    mov cx, word [cs:0x038f]         ; 0x4592
    dec cx                           ; 0x4597
    mov word [cs:0x038f], cx         ; 0x4598
    mov ax, word [bp + 0xc]          ; 0x459d
    shl ax, 1                        ; 0x45a0
    mov bx, 0x29b                    ; 0x45a2
    add bx, ax                       ; 0x45a5
    mov ax, word [cs:bx]             ; 0x45a7
    mov word [cs:bx], 0              ; 0x45aa
    call leaf_loc_1355               ; 0x45af
    call loc_1392                    ; 0x45b2
@..dos_read_file_4.l9:
    pop si                           ; 0x45b5
    pop di                           ; 0x45b6
    pop ds                           ; 0x45b7
    pop es                           ; 0x45b8
    mov sp, bp                       ; 0x45b9
    pop bp                           ; 0x45bb
    ret                              ; 0x45bc
dos_file_loc_45bd:
    push ds                          ; 0x45bd
    push es                          ; 0x45be
    push si                          ; 0x45bf
    push di                          ; 0x45c0
    mov dx, word [cs:data_01e9]      ; 0x45c1
    mov ds, dx                       ; 0x45c6
@..dos_file_loc_45bd.l1:
    xor dx, dx                       ; 0x45c8
    mov cx, 0x1000                   ; 0x45ca
    mov bx, word [bp - 0x0002]       ; 0x45cd
    mov ah, 0x3f                     ; 0x45d0
    int 0x21 ; DOS read file (handle)
    or ax, ax                        ; 0x45d4
    je short @..dos_file_loc_45bd.l3 ; 0x45d6
    mov cx, ax                       ; 0x45d8
    push ax                          ; 0x45da
    mov bx, word [bp - 0x0004]       ; 0x45db
    xor dx, dx                       ; 0x45de
    mov ah, 0x40                     ; 0x45e0
    int 0x21 ; DOS write file (handle)
    jb short @..dos_file_loc_45bd.l2 ; 0x45e4
    pop cx                           ; 0x45e6
    cmp cx, ax                       ; 0x45e7
    je short @..dos_file_loc_45bd.l1 ; 0x45e9
@..dos_file_loc_45bd.l2:
    mov ax, cs                       ; 0x45eb
    mov ds, ax                       ; 0x45ed
    mov dx, 0x46fb                   ; 0x45ef
dos_con_loc_45f2:
    mov ah, 9                        ; 0x45f2
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x45f6
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'Error occurred writing to disk', 0
    db 0x0a, 0x24

@..dos_file_loc_45bd.l3:
    pop di                           ; 0x461f
    pop si                           ; 0x4620
    pop es                           ; 0x4621
    pop ds                           ; 0x4622
    ret                              ; 0x4623
dos_read_file_5:
    push bp                          ; 0x4624
    mov bp, sp                       ; 0x4625
    sub sp, byte 0x14                ; 0x4627
    push es                          ; 0x462a
    push ds                          ; 0x462b
    push di                          ; 0x462c
    push si                          ; 0x462d
    mov ax, ds                       ; 0x462e
    mov es, ax                       ; 0x4630
    mov ax, word [bp + 0xc]          ; 0x4632
    test ah, 0x80                    ; 0x4635
    je short @..dos_read_file_5.l1   ; 0x4638
    dec word [cs:0x038f]             ; 0x463a
    mov ax, word [bp + 0xe]          ; 0x463f
    shl ax, 1                        ; 0x4642
    mov bx, 0x2c3                    ; 0x4644
    add bx, ax                       ; 0x4647
    mov ax, word [cs:bx]             ; 0x4649
    mov word [cs:bx], 0              ; 0x464c
    call leaf_loc_1355               ; 0x4651
    call loc_1392                    ; 0x4654
    jmp near @..dos_read_file_5.l8   ; 0x4657
@..dos_read_file_5.l1:
    mov word [bp - 0x0002], ax       ; 0x465a
    mov ax, word [bp + 0x10]         ; 0x465d
    or ax, ax                        ; 0x4660
    je short @..dos_read_file_5.l2   ; 0x4662
    mov ax, word [bp + 0xe]          ; 0x4664
    mov word [bp - 0x0004], ax       ; 0x4667
    call dos_file_loc_45bd           ; 0x466a
    jmp near @..dos_read_file_5.l8   ; 0x466d
@..dos_read_file_5.l2:
    mov ax, word [bp + 0xe]          ; 0x4670
    shl ax, 1                        ; 0x4673
    mov bx, 0x2c3                    ; 0x4675
    add bx, ax                       ; 0x4678
    mov ax, word [cs:bx]             ; 0x467a
    or ax, ax                        ; 0x467d
    je short @..dos_read_file_5.l3   ; 0x467f
    jmp near @..dos_read_file_5.l9   ; 0x4681
@..dos_read_file_5.l3:
    inc word [cs:0x038f]             ; 0x4684
    mov ax, word [cs:0x038f]         ; 0x4689
    mov word [cs:bx], ax             ; 0x468d
    dec ax                           ; 0x4690
    mov cl, 2                        ; 0x4691
    shl ax, cl                       ; 0x4693
    mov bx, 0x2eb                    ; 0x4695
    add bx, ax                       ; 0x4698
    mov word [bp - 0x0002], bx       ; 0x469a
    mov ax, word [cs:data_0391]      ; 0x469d
    mov word [cs:bx], ax             ; 0x46a1
    mov ax, word [cs:data_01e9]      ; 0x46a4
    mov ds, ax                       ; 0x46a8
    xor dx, dx                       ; 0x46aa
    mov cx, 0x1000                   ; 0x46ac
    mov bx, word [bp + 0xc]          ; 0x46af
    mov ah, 0x3f                     ; 0x46b2
    int 0x21 ; DOS read file (handle)
    mov bx, 0                        ; 0x46b6
    mov ax, word [bx]                ; 0x46b9
    mov cx, 6                        ; 0x46bb
    mul cx                           ; 0x46be
    add ax, strict word 4            ; 0x46c0
    mov bx, ax                       ; 0x46c3
    sub bx, byte 6                   ; 0x46c5
    mov cl, byte [bx + 0x5]          ; 0x46c8
    mov al, byte [bx + 0x4]          ; 0x46cb
    mul cl                           ; 0x46ce
    mov cl, 3                        ; 0x46d0
    shl ax, cl                       ; 0x46d2
    mov cx, word [bx + 0x2]          ; 0x46d4
    add ax, cx                       ; 0x46d7
    push ax                          ; 0x46d9
    xor dx, dx                       ; 0x46da
    mov ax, word [bx]                ; 0x46dc
    mov cx, 0x10                     ; 0x46de
    mul cx                           ; 0x46e1
    pop cx                           ; 0x46e3
    add cx, byte 0x0f                ; 0x46e4
    add ax, cx                       ; 0x46e7
    adc dx, byte 0                   ; 0x46e9
    mov word [bp - 0x0006], ax       ; 0x46ec
    mov word [bp - 0x0008], dx       ; 0x46ef
    mov cx, 0x10                     ; 0x46f2
    div cx                           ; 0x46f5
    mov di, word [cs:data_0391]      ; 0x46f7
    mov bx, word [bp - 0x0002]       ; 0x46fc
    mov word [cs:bx + 0x2], ax       ; 0x46ff
    add word [cs:data_0391], ax      ; 0x4703
    mov ax, word [cs:data_0391]      ; 0x4708
    cmp ax, word [cs:data_01ff]      ; 0x470c
    jbe short @..dos_read_file_5.l4  ; 0x4711
    jmp near @..dos_read_file_5.l10  ; 0x4713
@..dos_read_file_5.l4:
    mov ax, di                       ; 0x4716
    mov cl, 0xa                      ; 0x4718
    shr ax, cl                       ; 0x471a
    mov word [cs:data_4540], ax      ; 0x471c
    call dos_file_loc_4442           ; 0x4720
    and di, strict word 0x3ff        ; 0x4723
    mov cl, 4                        ; 0x4727
    shl di, cl                       ; 0x4729
    xor si, si                       ; 0x472b
    mov ax, word [cs:data_01e9]      ; 0x472d
    mov ds, ax                       ; 0x4731
    mov ax, word [cs:data_0203]      ; 0x4733
    mov es, ax                       ; 0x4737
    mov cx, 0x1000                   ; 0x4739
    rep movsb                        ; 0x473c
    mov ax, word [bp - 0x0006]       ; 0x473e
    mov dx, word [bp - 0x0008]       ; 0x4741
    sub ax, 0x1000                   ; 0x4744
    sbb dx, byte 0                   ; 0x4747
    mov word [bp - 0x0006], ax       ; 0x474a
    mov word [bp - 0x0008], dx       ; 0x474d
@..dos_read_file_5.l5:
    mov dx, di                       ; 0x4750
    test dx, 0xc000                  ; 0x4752
    je short @..dos_read_file_5.l6   ; 0x4756
    sub di, strict word 0x4000       ; 0x4758
    inc word [cs:data_4540]          ; 0x475c
    mov ax, word [cs:data_4540]      ; 0x4761
    call dos_file_loc_4442           ; 0x4765
@..dos_read_file_5.l6:
    mov ax, word [bp - 0x0006]       ; 0x4768
    mov dx, word [bp - 0x0008]       ; 0x476b
    or ax, dx                        ; 0x476e
    je short @..dos_read_file_5.l8   ; 0x4770
    mov cx, 0x1000                   ; 0x4772
    mov ax, word [bp - 0x0006]       ; 0x4775
    or dx, dx                        ; 0x4778
    jne short @..dos_read_file_5.l7  ; 0x477a
    cmp ax, cx                       ; 0x477c
    jae short @..dos_read_file_5.l7  ; 0x477e
    mov cx, ax                       ; 0x4780
@..dos_read_file_5.l7:
    sub ax, cx                       ; 0x4782
    sbb dx, byte 0                   ; 0x4784
    mov word [bp - 0x0006], ax       ; 0x4787
    mov word [bp - 0x0008], dx       ; 0x478a
    mov dx, 0                        ; 0x478d
    mov bx, word [bp + 0xc]          ; 0x4790
    mov ah, 0x3f                     ; 0x4793
    push cx                          ; 0x4795
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x4798
    mov si, 0                        ; 0x4799
    rep movsb                        ; 0x479c
    jmp short @..dos_read_file_5.l5  ; 0x479e
@..dos_read_file_5.l8:
    pop si                           ; 0x47a0
    pop di                           ; 0x47a1
    pop ds                           ; 0x47a2
    pop es                           ; 0x47a3
    mov sp, bp                       ; 0x47a4
    pop bp                           ; 0x47a6
    ret                              ; 0x47a7
@..dos_read_file_5.l9:
    mov ax, cs                       ; 0x47a8
    mov ds, ax                       ; 0x47aa
    mov dx, 0x48b8                   ; 0x47ac
dos_con_loc_47af:
    mov ah, 9                        ; 0x47af
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x47b3
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xb0

@..dos_read_file_5.l10:
    mov ax, cs                       ; 0x47f0
    mov ds, ax                       ; 0x47f2
    mov dx, 0x4900                   ; 0x47f4
dos_con_loc_47f7:
    mov ah, 9                        ; 0x47f7
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x47fb
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHEMAZE().  Insufficient EMS.', 0
    db 0x0a, 0x24

loc_4825:
    push bp                          ; 0x4825
    mov bp, sp                       ; 0x4826
    sub sp, byte 0x14                ; 0x4828
    push es                          ; 0x482b
    push ds                          ; 0x482c
    push di                          ; 0x482d
    push si                          ; 0x482e
    mov ax, ds                       ; 0x482f
    mov es, ax                       ; 0x4831
    mov ax, word [bp + 0xc]          ; 0x4833
    test ah, 0x80                    ; 0x4836
    je short @..local.l50            ; 0x4839
    dec word [cs:0x038f]             ; 0x483b
    mov ax, word [bp + 0xe]          ; 0x4840
    shl ax, 1                        ; 0x4843
    mov bx, 0x2d7                    ; 0x4845
    add bx, ax                       ; 0x4848
    mov ax, word [cs:bx]             ; 0x484a
    mov word [cs:bx], 0              ; 0x484d
    call leaf_loc_1355               ; 0x4852
    call loc_1392                    ; 0x4855
    jmp near @..local.l57            ; 0x4858
@..local.l50:
    mov word [bp - 0x0002], ax       ; 0x485b
    mov ax, word [bp + 0x10]         ; 0x485e
    or ax, ax                        ; 0x4861
    je short @..local.l51            ; 0x4863
    mov ax, word [bp + 0xe]          ; 0x4865
    mov word [bp - 0x0004], ax       ; 0x4868
    call dos_file_loc_45bd           ; 0x486b
    jmp near @..local.l57            ; 0x486e
@..local.l51:
    mov ax, word [bp + 0xe]          ; 0x4871
    shl ax, 1                        ; 0x4874
    mov bx, 0x2d7                    ; 0x4876
    add bx, ax                       ; 0x4879
    mov ax, word [cs:bx]             ; 0x487b
    or ax, ax                        ; 0x487e
    je short @..local.l52            ; 0x4880
    jmp near @..local.l58            ; 0x4882
@..local.l52:
    inc word [cs:0x038f]             ; 0x4885
    mov ax, word [cs:0x038f]         ; 0x488a
    mov word [cs:bx], ax             ; 0x488e
    dec ax                           ; 0x4891
    mov cl, 2                        ; 0x4892
    shl ax, cl                       ; 0x4894
    mov bx, 0x2eb                    ; 0x4896
    add bx, ax                       ; 0x4899
    mov word [bp - 0x0002], bx       ; 0x489b
    mov ax, word [cs:data_0391]      ; 0x489e
    mov word [cs:bx], ax             ; 0x48a2
    mov ax, 0xfa0                    ; 0x48a5
    mov word [cs:bx + 0x2], ax       ; 0x48a8
    mov di, word [cs:data_0391]      ; 0x48ac
    add word [cs:data_0391], ax      ; 0x48b1
    mov ax, word [cs:data_0391]      ; 0x48b6
    cmp ax, word [cs:data_01ff]      ; 0x48ba
    jbe short @..local.l53           ; 0x48bf
    jmp near @..local.l59            ; 0x48c1
@..local.l53:
    mov ax, 0xfa00                   ; 0x48c4
    mov word [bp - 0x0006], ax       ; 0x48c7
    mov ax, di                       ; 0x48ca
    mov cl, 0xa                      ; 0x48cc
    shr ax, cl                       ; 0x48ce
    mov word [cs:data_4540], ax      ; 0x48d0
    call dos_file_loc_4442           ; 0x48d4
    and di, strict word 0x3ff        ; 0x48d7
    mov cl, 4                        ; 0x48db
    shl di, cl                       ; 0x48dd
@..local.l54:
    mov dx, di                       ; 0x48df
    test dx, 0xc000                  ; 0x48e1
    je short @..local.l55            ; 0x48e5
    sub di, strict word 0x4000       ; 0x48e7
    inc word [cs:data_4540]          ; 0x48eb
    mov ax, word [cs:data_4540]      ; 0x48f0
    call dos_file_loc_4442           ; 0x48f4
@..local.l55:
    mov ax, word [bp - 0x0006]       ; 0x48f7
    or ax, ax                        ; 0x48fa
    je short @..local.l57            ; 0x48fc
    mov cx, 0x1000                   ; 0x48fe
    cmp ax, cx                       ; 0x4901
    jae short @..local.l56           ; 0x4903
    mov cx, ax                       ; 0x4905
@..local.l56:
    sub ax, cx                       ; 0x4907
    mov word [bp - 0x0006], ax       ; 0x4909
    mov ax, word [cs:data_0203]      ; 0x490c
    mov es, ax                       ; 0x4910
    mov ax, word [cs:data_01e9]      ; 0x4912
    mov ds, ax                       ; 0x4916
    mov dx, 0                        ; 0x4918
    mov bx, word [bp + 0xc]          ; 0x491b
    mov ah, 0x3f                     ; 0x491e
    push cx                          ; 0x4920
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x4923
    mov si, 0                        ; 0x4924
    rep movsb                        ; 0x4927
    jmp short @..local.l54           ; 0x4929
@..local.l57:
    pop si                           ; 0x492b
    pop di                           ; 0x492c
    pop ds                           ; 0x492d
    pop es                           ; 0x492e
    mov sp, bp                       ; 0x492f
    pop bp                           ; 0x4931
    ret                              ; 0x4932
@..local.l58:
    mov ax, cs                       ; 0x4933
    mov ds, ax                       ; 0x4935
    mov dx, 0x4a43                   ; 0x4937
dos_con_loc_493a:
    mov ah, 9                        ; 0x493a
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x493e
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Requested slot already in use.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2, 0xeb, 0xae

@..local.l59:
    mov ax, cs                       ; 0x497d
    mov ds, ax                       ; 0x497f
    mov dx, 0x4a8d                   ; 0x4981
dos_con_loc_4984:
    mov ah, 9                        ; 0x4984
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4988
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'CACHESCREEN().  Insufficient EMS.', 0
    db 0x0a, 0x24
    times 84 db 0

dos_read_file_6:
    push bp                          ; 0x4a08
    mov bp, sp                       ; 0x4a09
    sub sp, byte 0x0a                ; 0x4a0b
    push ds                          ; 0x4a0e
    push es                          ; 0x4a0f
    push si                          ; 0x4a10
    push di                          ; 0x4a11
    mov ax, ds                       ; 0x4a12
    mov es, ax                       ; 0x4a14
    mov bx, word [bp + 0xe]          ; 0x4a16
    shl bx, 1                        ; 0x4a19
    shl bx, 1                        ; 0x4a1b
    add bx, strict word 0x4ab4       ; 0x4a1d
    mov word [bp - 0x0002], bx       ; 0x4a21
    mov ax, word [cs:bx]             ; 0x4a24
    or ax, ax                        ; 0x4a27
    je short @..dos_read_file_6.l1   ; 0x4a29
    jmp near @..dos_read_file_6.l4   ; 0x4a2b
@..dos_read_file_6.l1:
    mov ax, word [cs:data_11cb]      ; 0x4a2e
    inc ax                           ; 0x4a32
    mov word [cs:data_11cb], ax      ; 0x4a33
    mov bx, word [bp - 0x0002]       ; 0x4a37
    mov word [cs:bx], ax             ; 0x4a3a
    dec ax                           ; 0x4a3d
    mov cl, 2                        ; 0x4a3e
    shl ax, cl                       ; 0x4a40
    mov bx, 0x10fb                   ; 0x4a42
    add bx, ax                       ; 0x4a45
    mov word [bp - 0x000a], bx       ; 0x4a47
    mov ax, word [cs:data_11cd]      ; 0x4a4a
    mov word [cs:bx], ax             ; 0x4a4e
    mov ah, 0x42                     ; 0x4a51
    mov al, 2                        ; 0x4a53
    mov bx, word [bp + 0xc]          ; 0x4a55
    xor cx, cx                       ; 0x4a58
    mov dx, cx                       ; 0x4a5a
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax       ; 0x4a5e
    mov word [bp - 0x0006], dx       ; 0x4a61
    mov ah, 0x42                     ; 0x4a64
    mov al, 0                        ; 0x4a66
    mov bx, word [bp + 0xc]          ; 0x4a68
    xor cx, cx                       ; 0x4a6b
    mov dx, cx                       ; 0x4a6d
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [cs:data_01e9]      ; 0x4a71
    mov ds, ax                       ; 0x4a75
    xor dx, dx                       ; 0x4a77
    mov bx, word [bp + 0xc]          ; 0x4a79
    mov cx, 2                        ; 0x4a7c
    mov ah, 0x3f                     ; 0x4a7f
    int 0x21 ; DOS read file (handle)
    xor bx, bx                       ; 0x4a83
    mov ax, word [bx]                ; 0x4a85
    or ax, ax                        ; 0x4a87
    je short @..dos_read_file_6.l2   ; 0x4a89
    jmp near @..dos_read_file_6.l6   ; 0x4a8b
@..dos_read_file_6.l2:
    mov bx, word [bp - 0x0002]       ; 0x4a8e
    mov ax, word [bp - 0x0004]       ; 0x4a91
    sub ax, strict word 2            ; 0x4a94
    mov word [cs:bx + 0x2], ax       ; 0x4a97
    add ax, strict word 0xf          ; 0x4a9b
    mov cl, 4                        ; 0x4a9e
    shr ax, cl                       ; 0x4aa0
    mov bx, word [bp - 0x000a]       ; 0x4aa2
    mov word [cs:bx + 0x2], ax       ; 0x4aa5
    add ax, word [cs:data_11cd]      ; 0x4aa9
    cmp ax, 0x4180                   ; 0x4aae
    jae short @..dos_read_file_6.l5  ; 0x4ab1
    mov word [cs:data_11cd], ax      ; 0x4ab3
    mov ax, word [cs:bx]             ; 0x4ab7
    add ax, word [cs:data_01e1]      ; 0x4aba
    mov ds, ax                       ; 0x4abf
    xor dx, dx                       ; 0x4ac1
    mov bx, word [bp + 0xc]          ; 0x4ac3
    mov cx, word [bp - 0x0004]       ; 0x4ac6
    sub cx, byte 2                   ; 0x4ac9
    mov ah, 0x3f                     ; 0x4acc
    int 0x21 ; DOS read file (handle)
    xor ax, ax                       ; 0x4ad0
@..dos_read_file_6.l3:
    pop di                           ; 0x4ad2
    pop si                           ; 0x4ad3
    pop es                           ; 0x4ad4
    pop ds                           ; 0x4ad5
    mov sp, bp                       ; 0x4ad6
    pop bp                           ; 0x4ad8
    ret                              ; 0x4ad9
@..dos_read_file_6.l4:
    mov ax, cs                       ; 0x4ada
    mov ds, ax                       ; 0x4adc
    mov dx, 0x4bea                   ; 0x4ade
dos_con_loc_4ae1:
    mov ah, 9                        ; 0x4ae1
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4ae5
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... slot already used.', 0
    db 0x0a, 0x24

@..dos_read_file_6.l5:
    mov ax, cs                       ; 0x4b16
    mov ds, ax                       ; 0x4b18
    mov dx, 0x4c26                   ; 0x4b1a
dos_con_loc_4b1d:
    mov ah, 9                        ; 0x4b1d
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4b21
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... not enough memory.', 0
    db 0x0a, 0x24

@..dos_read_file_6.l6:
    mov cx, ax                       ; 0x4b52
    mov ax, word [cs:data_01e9]      ; 0x4b54
    mov ds, ax                       ; 0x4b58
    xor dx, dx                       ; 0x4b5a
    mov bx, word [bp + 0xc]          ; 0x4b5c
    mov ah, 0x3f                     ; 0x4b5f
    int 0x21 ; DOS read file (handle)
    mov dx, 0x400                    ; 0x4b63
    mov bx, word [bp + 0xc]          ; 0x4b66
    mov cx, 0x1000                   ; 0x4b69
    mov ah, 0x3f                     ; 0x4b6c
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4b70
    mov di, 0                        ; 0x4b73
    lodsw                            ; 0x4b76
    mov word [bp - 0x0004], ax       ; 0x4b77
    mov bx, word [bp - 0x0002]       ; 0x4b7a
    mov word [cs:bx + 0x2], ax       ; 0x4b7d
    add ax, strict word 0xf          ; 0x4b81
    mov cl, 4                        ; 0x4b84
    shr ax, cl                       ; 0x4b86
    mov bx, word [bp - 0x000a]       ; 0x4b88
    mov word [cs:bx + 0x2], ax       ; 0x4b8b
    add ax, word [cs:data_11cd]      ; 0x4b8f
    cmp ax, 0x4180                   ; 0x4b94
    jb short @..dos_read_file_6.l7   ; 0x4b97
    jmp near @..dos_read_file_6.l5   ; 0x4b99
@..dos_read_file_6.l7:
    mov word [cs:data_11cd], ax      ; 0x4b9c
    mov ax, word [cs:bx]             ; 0x4ba0
    add ax, word [cs:data_01e1]      ; 0x4ba3
    mov es, ax                       ; 0x4ba8
    call dos_file_loc_4bb2           ; 0x4baa
    xor ax, ax                       ; 0x4bad
    jmp near @..dos_read_file_6.l3   ; 0x4baf
dos_file_loc_4bb2:
    mov word [bp - 0x0002], 8        ; 0x4bb2
    lodsb                            ; 0x4bb7
@..dos_file_loc_4bb2.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x4bb8
    je short @..dos_file_loc_4bb2.l2 ; 0x4bbc
    call dos_file_loc_4bcb           ; 0x4bbe
    mov byte [es:di], bl             ; 0x4bc1
    inc di                           ; 0x4bc4
    dec word [bp - 0x0004]           ; 0x4bc5
    jmp short @..dos_file_loc_4bb2.l1 ; 0x4bc8
@..dos_file_loc_4bb2.l2:
    ret                              ; 0x4bca
dos_file_loc_4bcb:
    mov cx, word [bp - 0x0002]       ; 0x4bcb
    xor bx, bx                       ; 0x4bce
@..dos_file_loc_4bcb.l1:
    shl al, 1                        ; 0x4bd0
    jb short @..dos_file_loc_4bcb.l4 ; 0x4bd2
    test word [bx], 0x8000           ; 0x4bd4
    jne short @..dos_file_loc_4bcb.l2 ; 0x4bd8
    mov bx, word [bx]                ; 0x4bda
    jmp short @..dos_file_loc_4bcb.l6 ; 0x4bdc
@..dos_file_loc_4bcb.l2:
    mov bx, word [bx]                ; 0x4bde
    neg bx                           ; 0x4be0
    shl bx, 1                        ; 0x4be2
    shl bx, 1                        ; 0x4be4
@..dos_file_loc_4bcb.l3:
    loop @..dos_file_loc_4bcb.l1     ; 0x4be6
    mov cx, 8                        ; 0x4be8
    lodsb                            ; 0x4beb
    cmp si, strict word 0x1400       ; 0x4bec
    jb short @..dos_file_loc_4bcb.l1 ; 0x4bf0
    push ax                          ; 0x4bf2
    push di                          ; 0x4bf3
    push bx                          ; 0x4bf4
    push cx                          ; 0x4bf5
    mov dx, 0x400                    ; 0x4bf6
    mov bx, word [bp + 0xc]          ; 0x4bf9
    mov cx, 0x1000                   ; 0x4bfc
    mov ah, 0x3f                     ; 0x4bff
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4c03
    pop cx                           ; 0x4c06
    pop bx                           ; 0x4c07
    pop di                           ; 0x4c08
    pop ax                           ; 0x4c09
    jmp short @..dos_file_loc_4bcb.l1 ; 0x4c0a
@..dos_file_loc_4bcb.l4:
    test word [bx + 0x2], 0x8000     ; 0x4c0c
    jne short @..dos_file_loc_4bcb.l5 ; 0x4c11
    mov bx, word [bx + 0x2]          ; 0x4c13
    jmp short @..dos_file_loc_4bcb.l6 ; 0x4c16
@..dos_file_loc_4bcb.l5:
    mov bx, word [bx + 0x2]          ; 0x4c18
    neg bx                           ; 0x4c1b
    shl bx, 1                        ; 0x4c1d
    shl bx, 1                        ; 0x4c1f
    jmp short @..dos_file_loc_4bcb.l3 ; 0x4c21
@..dos_file_loc_4bcb.l6:
    dec cx                           ; 0x4c23
    jne short @..dos_file_loc_4bcb.l7 ; 0x4c24
    mov cx, 8                        ; 0x4c26
    lodsb                            ; 0x4c29
    cmp si, strict word 0x1400       ; 0x4c2a
    jb short @..dos_file_loc_4bcb.l7 ; 0x4c2e
    push ax                          ; 0x4c30
    push di                          ; 0x4c31
    push bx                          ; 0x4c32
    push cx                          ; 0x4c33
    mov dx, 0x400                    ; 0x4c34
    mov bx, word [bp + 0xc]          ; 0x4c37
    mov cx, 0x1000                   ; 0x4c3a
    mov ah, 0x3f                     ; 0x4c3d
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4c41
    pop cx                           ; 0x4c44
    pop bx                           ; 0x4c45
    pop di                           ; 0x4c46
    pop ax                           ; 0x4c47
@..dos_file_loc_4bcb.l7:
    mov word [bp - 0x0002], cx       ; 0x4c48
    ret                              ; 0x4c4b
loc_4c4c:
    push bp                          ; 0x4c4c
    mov bp, sp                       ; 0x4c4d
    sub sp, byte 0x0a                ; 0x4c4f
    push ds                          ; 0x4c52
    push es                          ; 0x4c53
    push si                          ; 0x4c54
    push di                          ; 0x4c55
    mov ax, ds                       ; 0x4c56
    mov es, ax                       ; 0x4c58
    mov ax, word [bp + 0xc]          ; 0x4c5a
    cmp ax, strict word 0x14         ; 0x4c5d
    jb short @..local.l60            ; 0x4c60
    jmp near @..local.l62            ; 0x4c62
@..local.l60:
    shl ax, 1                        ; 0x4c65
    shl ax, 1                        ; 0x4c67
    mov bx, 0x4ab4                   ; 0x4c69
    add bx, ax                       ; 0x4c6c
    mov ax, word [cs:bx]             ; 0x4c6e
    or ax, ax                        ; 0x4c71
    jne short @..local.l61           ; 0x4c73
    jmp near @..local.l62            ; 0x4c75
@..local.l61:
    mov word [cs:bx], 0              ; 0x4c78
    mov cx, word [cs:data_11cb]      ; 0x4c7d
    dec cx                           ; 0x4c82
    mov word [cs:data_11cb], cx      ; 0x4c83
    call loc_4c93                    ; 0x4c88
@..local.l62:
    pop di                           ; 0x4c8b
    pop si                           ; 0x4c8c
    pop es                           ; 0x4c8d
    pop ds                           ; 0x4c8e
    mov sp, bp                       ; 0x4c8f
    pop bp                           ; 0x4c91
    ret                              ; 0x4c92
loc_4c93:
    call leaf_loc_4ca9               ; 0x4c93
    call dos_con_loc_4cbe            ; 0x4c96
    call dos_con_loc_4ce8            ; 0x4c99
    call dos_con_loc_4cd3            ; 0x4c9c
    call dos_con_loc_4cfd            ; 0x4c9f
    call dos_con_loc_4d13            ; 0x4ca2
    call leaf_loc_4d55               ; 0x4ca5
    ret                              ; 0x4ca8
leaf_loc_4ca9:
    push ax                          ; 0x4ca9
    mov bx, 0x10e7                   ; 0x4caa
    mov cx, 0xa                      ; 0x4cad
@..leaf_loc_4ca9.l1:
    cmp ax, word [cs:bx]             ; 0x4cb0
    jae short @..leaf_loc_4ca9.l2    ; 0x4cb3
    dec word [cs:bx]                 ; 0x4cb5
@..leaf_loc_4ca9.l2:
    inc bx                           ; 0x4cb8
    inc bx                           ; 0x4cb9
    loop @..leaf_loc_4ca9.l1         ; 0x4cba
    pop ax                           ; 0x4cbc
    ret                              ; 0x4cbd
dos_con_loc_4cbe:
    push ax                          ; 0x4cbe
    mov bx, 0x229                    ; 0x4cbf
    mov cx, 0x14                     ; 0x4cc2
@..dos_con_loc_4cbe.l1:
    cmp ax, word [cs:bx]             ; 0x4cc5
    jae short @..dos_con_loc_4cbe.l2 ; 0x4cc8
    dec word [cs:bx]                 ; 0x4cca
@..dos_con_loc_4cbe.l2:
    inc bx                           ; 0x4ccd
    inc bx                           ; 0x4cce
    loop @..dos_con_loc_4cbe.l1      ; 0x4ccf
    pop ax                           ; 0x4cd1
    ret                              ; 0x4cd2
dos_con_loc_4cd3:
    push ax                          ; 0x4cd3
    mov bx, 0x25b                    ; 0x4cd4
    mov cx, 0x10                     ; 0x4cd7
@..dos_con_loc_4cd3.l1:
    cmp ax, word [cs:bx]             ; 0x4cda
    jae short @..dos_con_loc_4cd3.l2 ; 0x4cdd
    dec word [cs:bx]                 ; 0x4cdf
@..dos_con_loc_4cd3.l2:
    inc bx                           ; 0x4ce2
    inc bx                           ; 0x4ce3
    loop @..dos_con_loc_4cd3.l1      ; 0x4ce4
    pop ax                           ; 0x4ce6
    ret                              ; 0x4ce7
dos_con_loc_4ce8:
    push ax                          ; 0x4ce8
    mov bx, 0x251                    ; 0x4ce9
    mov cx, 5                        ; 0x4cec
@..dos_con_loc_4ce8.l1:
    cmp ax, word [cs:bx]             ; 0x4cef
    jae short @..dos_con_loc_4ce8.l2 ; 0x4cf2
    dec word [cs:bx]                 ; 0x4cf4
@..dos_con_loc_4ce8.l2:
    inc bx                           ; 0x4cf7
    inc bx                           ; 0x4cf8
    loop @..dos_con_loc_4ce8.l1      ; 0x4cf9
    pop ax                           ; 0x4cfb
    ret                              ; 0x4cfc
dos_con_loc_4cfd:
    push ax                          ; 0x4cfd
    mov bx, 0x4ab4                   ; 0x4cfe
    mov cx, 0x14                     ; 0x4d01
@..dos_con_loc_4cfd.l1:
    cmp ax, word [cs:bx]             ; 0x4d04
    jae short @..dos_con_loc_4cfd.l2 ; 0x4d07
    dec word [cs:bx]                 ; 0x4d09
@..dos_con_loc_4cfd.l2:
    add bx, byte 4                   ; 0x4d0c
    loop @..dos_con_loc_4cfd.l1      ; 0x4d0f
    pop ax                           ; 0x4d11
    ret                              ; 0x4d12
dos_con_loc_4d13:
    push ax                          ; 0x4d13
    mov bx, 0x4f8b                   ; 0x4d14
    mov cx, 5                        ; 0x4d17
@..dos_con_loc_4d13.l1:
    cmp ax, word [cs:bx]             ; 0x4d1a
    jae short @..dos_con_loc_4d13.l2 ; 0x4d1d
    dec word [cs:bx]                 ; 0x4d1f
    push ds                          ; 0x4d22
    push ax                          ; 0x4d23
    push bx                          ; 0x4d24
    push cx                          ; 0x4d25
    push dx                          ; 0x4d26
    mov ax, cs                       ; 0x4d27
    mov ds, ax                       ; 0x4d29
    mov dx, 0x4e3e                   ; 0x4d2b
    mov ah, 9                        ; 0x4d2e
    int 0x21 ; DOS string output
    pop dx                           ; 0x4d32
    pop cx                           ; 0x4d33
    pop bx                           ; 0x4d34
    pop ax                           ; 0x4d35
    pop ds                           ; 0x4d36
@..dos_con_loc_4d13.l2:
    add bx, byte 4                   ; 0x4d37
    loop @..dos_con_loc_4d13.l1      ; 0x4d3a
    pop ax                           ; 0x4d3c
    ret                              ; 0x4d3d

    db 0x0d, 0x0a, 0x07
    db 'Score slot moved.', 0
    db 0x0a, 0x24

leaf_loc_4d55:
    dec ax                           ; 0x4d55
    mov cl, 2                        ; 0x4d56
    shl ax, cl                       ; 0x4d58
    mov bx, 0x10fb                   ; 0x4d5a
    add bx, ax                       ; 0x4d5d
    mov word [bp - 0x0004], bx       ; 0x4d5f
    mov ax, word [cs:bx + 0x2]       ; 0x4d62
    sub word [cs:data_11cd], ax      ; 0x4d66
    mov word [bp - 0x0006], ax       ; 0x4d6b
@..leaf_loc_4d55.l1:
    mov bx, word [bp - 0x0004]       ; 0x4d6e
    mov dx, word [cs:bx]             ; 0x4d71
    add dx, word [cs:data_01e1]      ; 0x4d74
    mov es, dx                       ; 0x4d79
    mov dx, word [cs:bx + 0x4]       ; 0x4d7b
    add dx, word [cs:data_01e1]      ; 0x4d7f
    mov ds, dx                       ; 0x4d84
    mov cx, word [cs:bx + 0x6]       ; 0x4d86
    or cx, cx                        ; 0x4d8a
    je short @..leaf_loc_4d55.l3     ; 0x4d8c
@..leaf_loc_4d55.l2:
    push cx                          ; 0x4d8e
    mov cx, 0x10                     ; 0x4d8f
    xor si, si                       ; 0x4d92
    xor di, di                       ; 0x4d94
    rep movsb                        ; 0x4d96
    mov cx, ds                       ; 0x4d98
    inc cx                           ; 0x4d9a
    mov ds, cx                       ; 0x4d9b
    mov cx, es                       ; 0x4d9d
    inc cx                           ; 0x4d9f
    mov es, cx                       ; 0x4da0
    pop cx                           ; 0x4da2
    loop @..leaf_loc_4d55.l2         ; 0x4da3
    mov bx, word [bp - 0x0004]       ; 0x4da5
    mov cx, word [bp - 0x0006]       ; 0x4da8
    mov ax, word [cs:bx + 0x4]       ; 0x4dab
    sub ax, cx                       ; 0x4daf
    mov word [cs:bx], ax             ; 0x4db1
    add ax, word [cs:bx + 0x6]       ; 0x4db4
    mov word [cs:bx + 0x4], ax       ; 0x4db8
    mov ax, word [cs:bx + 0x6]       ; 0x4dbc
    mov word [cs:bx + 0x2], ax       ; 0x4dc0
    add bx, byte 4                   ; 0x4dc4
    mov word [bp - 0x0004], bx       ; 0x4dc7
    jmp short @..leaf_loc_4d55.l1    ; 0x4dca
@..leaf_loc_4d55.l3:
    mov bx, word [bp - 0x0004]       ; 0x4dcc
    xor ax, ax                       ; 0x4dcf
    mov word [cs:bx], ax             ; 0x4dd1
    mov word [cs:bx + 0x2], ax       ; 0x4dd4
    ret                              ; 0x4dd8
loc_4dd9:
    push bp                          ; 0x4dd9
    mov bp, sp                       ; 0x4dda
    sub sp, byte 0x0a                ; 0x4ddc
    push ds                          ; 0x4ddf
    push es                          ; 0x4de0
    push si                          ; 0x4de1
    push di                          ; 0x4de2
    mov ax, ds                       ; 0x4de3
    mov es, ax                       ; 0x4de5
    mov ax, word [bp + 0xc]          ; 0x4de7
    cmp ax, strict word 0x14         ; 0x4dea
    jb short @..local.l63            ; 0x4ded
    jmp near @..local.l65            ; 0x4def
@..local.l63:
    shl ax, 1                        ; 0x4df2
    shl ax, 1                        ; 0x4df4
    mov bx, 0x4ab4                   ; 0x4df6
    add bx, ax                       ; 0x4df9
    mov ax, word [cs:bx + 0x2]       ; 0x4dfb
    mov word [bp - 0x0002], ax       ; 0x4dff
    mov ax, word [cs:bx]             ; 0x4e02
    or ax, ax                        ; 0x4e05
    jne short @..local.l64           ; 0x4e07
    jmp near @..local.l65            ; 0x4e09
@..local.l64:
    dec ax                           ; 0x4e0c
    mov word [bp - 0x0004], ax       ; 0x4e0d
    push word [bp + 0x12]            ; 0x4e10
    push word [bp + 0x10]            ; 0x4e13
    push word [bp + 0xe]             ; 0x4e16
    mov ax, word [bp - 0x0002]       ; 0x4e19
    push ax                          ; 0x4e1c
    xor ax, ax                       ; 0x4e1d
    push ax                          ; 0x4e1f
    mov bx, 0x10fb                   ; 0x4e20
    mov ax, word [bp - 0x0004]       ; 0x4e23
    shl ax, 1                        ; 0x4e26
    shl ax, 1                        ; 0x4e28
    add bx, ax                       ; 0x4e2a
    mov ax, word [cs:bx]             ; 0x4e2c
    add ax, word [cs:data_01e1]      ; 0x4e2f
    push ax                          ; 0x4e34
    xor ax, ax                       ; 0x4e35
    push ax                          ; 0x4e37
    call far [cs:data_021a]          ; 0x4e38
    add sp, byte 0x0e                ; 0x4e3d
@..local.l65:
    pop di                           ; 0x4e40
    pop si                           ; 0x4e41
    pop es                           ; 0x4e42
    pop ds                           ; 0x4e43
    mov sp, bp                       ; 0x4e44
    pop bp                           ; 0x4e46
    ret                              ; 0x4e47
loc_4e48:
    push bp                          ; 0x4e48
    mov bp, sp                       ; 0x4e49
    push ds                          ; 0x4e4b
    push es                          ; 0x4e4c
    push si                          ; 0x4e4d
    push di                          ; 0x4e4e
    mov ax, ds                       ; 0x4e4f
    mov es, ax                       ; 0x4e51
    push word [bp + 0xc]             ; 0x4e53
    call far [cs:data_0222]          ; 0x4e56
    pop cx                           ; 0x4e5b
    pop di                           ; 0x4e5c
    pop si                           ; 0x4e5d
    pop es                           ; 0x4e5e
    pop ds                           ; 0x4e5f
    mov sp, bp                       ; 0x4e60
    pop bp                           ; 0x4e62
    ret                              ; 0x4e63
loc_4e64:
    push bp                          ; 0x4e64
    mov bp, sp                       ; 0x4e65
    sub sp, byte 0x0a                ; 0x4e67
    push ds                          ; 0x4e6a
    push es                          ; 0x4e6b
    push si                          ; 0x4e6c
    push di                          ; 0x4e6d
    mov ax, ds                       ; 0x4e6e
    mov es, ax                       ; 0x4e70
    xor ax, ax                       ; 0x4e72
    push ax                          ; 0x4e74
    push ax                          ; 0x4e75
    push ax                          ; 0x4e76
    push ax                          ; 0x4e77
    push ax                          ; 0x4e78
    push ax                          ; 0x4e79
    push ax                          ; 0x4e7a
    call far [cs:data_021a]          ; 0x4e7b
    add sp, byte 0x0e                ; 0x4e80
    pop di                           ; 0x4e83
    pop si                           ; 0x4e84
    pop es                           ; 0x4e85
    pop ds                           ; 0x4e86
    mov sp, bp                       ; 0x4e87
    pop bp                           ; 0x4e89
    ret                              ; 0x4e8a

    times 34 db 0

dos_read_file_8:
    push bp                          ; 0x4ead
    mov bp, sp                       ; 0x4eae
    sub sp, byte 0x0e                ; 0x4eb0
    push ds                          ; 0x4eb3
    push es                          ; 0x4eb4
    push si                          ; 0x4eb5
    push di                          ; 0x4eb6
    mov ax, ds                       ; 0x4eb7
    mov es, ax                       ; 0x4eb9
    mov bx, word [bp + 0x12]         ; 0x4ebb
    shl bx, 1                        ; 0x4ebe
    shl bx, 1                        ; 0x4ec0
    add bx, strict word 0x4f8b       ; 0x4ec2
    mov word [bp - 0x0002], bx       ; 0x4ec6
    mov ax, word [cs:bx]             ; 0x4ec9
    or ax, ax                        ; 0x4ecc
    je short @..dos_read_file_8.l1   ; 0x4ece
    jmp near @..dos_read_file_8.l5   ; 0x4ed0
@..dos_read_file_8.l1:
    mov bx, word [bp + 0x12]         ; 0x4ed3
    shl bx, 1                        ; 0x4ed6
    add bx, strict word 0x4fa3       ; 0x4ed8
    mov ax, word [bp + 0x10]         ; 0x4edc
    mov word [cs:bx], ax             ; 0x4edf
    mov ax, word [cs:data_11cb]      ; 0x4ee2
    inc ax                           ; 0x4ee6
    mov word [cs:data_11cb], ax      ; 0x4ee7
    mov bx, word [bp - 0x0002]       ; 0x4eeb
    mov word [cs:bx], ax             ; 0x4eee
    dec ax                           ; 0x4ef1
    mov cl, 2                        ; 0x4ef2
    shl ax, cl                       ; 0x4ef4
    mov bx, 0x10fb                   ; 0x4ef6
    add bx, ax                       ; 0x4ef9
    mov word [bp - 0x000a], bx       ; 0x4efb
    mov ax, word [cs:data_11cd]      ; 0x4efe
    mov word [cs:bx], ax             ; 0x4f02
    xor ax, ax                       ; 0x4f05
    mov word [bp - 0x000c], ax       ; 0x4f07
    mov word [bp - 0x000e], ax       ; 0x4f0a
    mov bx, word [bp - 0x0002]       ; 0x4f0d
    mov word [cs:bx + 0x2], ax       ; 0x4f10
    mov bx, word [bp + 0xe]          ; 0x4f14
    cmp bx, byte 0xff                ; 0x4f17
    je short @..dos_read_file_8.l2   ; 0x4f1a
    mov ah, 0x42                     ; 0x4f1c
    mov al, 2                        ; 0x4f1e
    xor cx, cx                       ; 0x4f20
    mov dx, cx                       ; 0x4f22
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x000c], ax       ; 0x4f26
    mov bx, word [bp - 0x0002]       ; 0x4f29
    mov word [cs:bx + 0x2], ax       ; 0x4f2c
    add ax, strict word 0xf          ; 0x4f30
    mov cl, 4                        ; 0x4f33
    shr ax, cl                       ; 0x4f35
    mov word [bp - 0x000e], ax       ; 0x4f37
    mov ah, 0x42                     ; 0x4f3a
    mov al, 0                        ; 0x4f3c
    mov bx, word [bp + 0xe]          ; 0x4f3e
    xor cx, cx                       ; 0x4f41
    mov dx, cx                       ; 0x4f43
    int 0x21 ; DOS seek file (lseek)
@..dos_read_file_8.l2:
    mov ah, 0x42                     ; 0x4f47
    mov al, 2                        ; 0x4f49
    mov bx, word [bp + 0xc]          ; 0x4f4b
    xor cx, cx                       ; 0x4f4e
    mov dx, cx                       ; 0x4f50
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax       ; 0x4f54
    mov word [bp - 0x0006], dx       ; 0x4f57
    mov ah, 0x42                     ; 0x4f5a
    mov al, 0                        ; 0x4f5c
    mov bx, word [bp + 0xc]          ; 0x4f5e
    xor cx, cx                       ; 0x4f61
    mov dx, cx                       ; 0x4f63
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [bp - 0x0004]       ; 0x4f67
    add ax, strict word 0xf          ; 0x4f6a
    mov cl, 4                        ; 0x4f6d
    shr ax, cl                       ; 0x4f6f
    mov bx, word [bp - 0x000a]       ; 0x4f71
    add ax, word [bp - 0x000e]       ; 0x4f74
    mov word [cs:bx + 0x2], ax       ; 0x4f77
    add ax, word [cs:data_11cd]      ; 0x4f7b
    cmp ax, 0x4180                   ; 0x4f80
    jb short @..dos_read_file_8.l3   ; 0x4f83
    jmp near @..dos_read_file_8.l6   ; 0x4f85
@..dos_read_file_8.l3:
    mov word [cs:data_11cd], ax      ; 0x4f88
    mov ax, word [cs:bx]             ; 0x4f8c
    add ax, word [cs:data_01e1]      ; 0x4f8f
    mov ds, ax                       ; 0x4f94
    mov bx, word [bp + 0xe]          ; 0x4f96
    cmp bx, byte 0xff                ; 0x4f99
    je short @..dos_read_file_8.l4   ; 0x4f9c
    xor dx, dx                       ; 0x4f9e
    mov cx, word [bp - 0x000c]       ; 0x4fa0
    mov ah, 0x3f                     ; 0x4fa3
    int 0x21 ; DOS read file (handle)
@..dos_read_file_8.l4:
    mov bx, word [bp - 0x0002]       ; 0x4fa7
    mov bx, word [cs:bx + 0x2]       ; 0x4faa
    mov dx, bx                       ; 0x4fae
    mov bx, word [bp + 0xc]          ; 0x4fb0
    mov cx, word [bp - 0x0004]       ; 0x4fb3
    mov ah, 0x3f                     ; 0x4fb6
    int 0x21 ; DOS read file (handle)
    xor ax, ax                       ; 0x4fba
    pop di                           ; 0x4fbc
    pop si                           ; 0x4fbd
    pop es                           ; 0x4fbe
    pop ds                           ; 0x4fbf
    mov sp, bp                       ; 0x4fc0
    pop bp                           ; 0x4fc2
    ret                              ; 0x4fc3
@..dos_read_file_8.l5:
    mov ax, cs                       ; 0x4fc4
    mov ds, ax                       ; 0x4fc6
    mov dx, 0x50d4                   ; 0x4fc8
    mov ah, 9                        ; 0x4fcb
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4fcf
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... slot already used.', 0
    db 0x0a, 0x24

@..dos_read_file_8.l6:
    mov ax, cs                       ; 0x5000
    mov ds, ax                       ; 0x5002
    mov dx, 0x5110                   ; 0x5004
    mov ah, 9                        ; 0x5007
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x500b
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... not enough memory.', 0
    db 0x0a, 0x24

loc_503c:
    push bp                          ; 0x503c
    mov bp, sp                       ; 0x503d
    sub sp, byte 0x0a                ; 0x503f
    push ds                          ; 0x5042
    push es                          ; 0x5043
    push si                          ; 0x5044
    push di                          ; 0x5045
    mov ax, ds                       ; 0x5046
    mov es, ax                       ; 0x5048
    mov bx, word [bp + 0xc]          ; 0x504a
    shl bx, 1                        ; 0x504d
    add bx, strict word 0x4fa3       ; 0x504f
    mov ax, word [cs:bx]             ; 0x5053
    mov word [bp - 0x0008], ax       ; 0x5056
    mov bx, word [bp + 0xc]          ; 0x5059
    shl bx, 1                        ; 0x505c
    shl bx, 1                        ; 0x505e
    add bx, strict word 0x4f8b       ; 0x5060
    mov word [bp - 0x0002], bx       ; 0x5064
    mov ax, word [cs:bx + 0x2]       ; 0x5067
    mov word [bp - 0x0006], ax       ; 0x506b
    mov ax, word [cs:bx]             ; 0x506e
    or ax, ax                        ; 0x5071
    je short @..local.l67            ; 0x5073
    dec ax                           ; 0x5075
    shl ax, 1                        ; 0x5076
    shl ax, 1                        ; 0x5078
    mov bx, 0x10fb                   ; 0x507a
    add bx, ax                       ; 0x507d
    mov word [bp - 0x0004], bx       ; 0x507f
    push word [bp - 0x0008]          ; 0x5082
    xor ax, ax                       ; 0x5085
    cmp word [bp - 0x0006], byte 0   ; 0x5087
    je short @..local.l66            ; 0x508b
    mov ax, word [cs:bx]             ; 0x508d
    add ax, word [cs:data_01e1]      ; 0x5090
@..local.l66:
    push ax                          ; 0x5095
    xor ax, ax                       ; 0x5096
    push ax                          ; 0x5098
    call far [cs:data_020e]          ; 0x5099
    add sp, byte 6                   ; 0x509e
    push word [bp + 0x10]            ; 0x50a1
    push word [bp + 0xe]             ; 0x50a4
    call far [cs:data_0216]          ; 0x50a7
    add sp, byte 4                   ; 0x50ac
    push word [bp + 0x12]            ; 0x50af
    mov bx, word [bp - 0x0004]       ; 0x50b2
    mov ax, word [cs:bx]             ; 0x50b5
    add ax, word [cs:data_01e1]      ; 0x50b8
    push ax                          ; 0x50bd
    push word [bp - 0x0006]          ; 0x50be
    call far [cs:data_0206]          ; 0x50c1
    add sp, byte 6                   ; 0x50c6
@..local.l67:
    pop di                           ; 0x50c9
    pop si                           ; 0x50ca
    pop es                           ; 0x50cb
    pop ds                           ; 0x50cc
    mov sp, bp                       ; 0x50cd
    pop bp                           ; 0x50cf
    ret                              ; 0x50d0
loc_50d1:
    push bp                          ; 0x50d1
    mov bp, sp                       ; 0x50d2
    sub sp, byte 0x0a                ; 0x50d4
    push ds                          ; 0x50d7
    push es                          ; 0x50d8
    push si                          ; 0x50d9
    push di                          ; 0x50da
    mov ax, ds                       ; 0x50db
    mov es, ax                       ; 0x50dd
    mov ax, word [bp + 0xc]          ; 0x50df
    cmp ax, strict word 5            ; 0x50e2
    jb short @..local.l68            ; 0x50e5
    jmp near @..local.l70            ; 0x50e7
@..local.l68:
    shl ax, 1                        ; 0x50ea
    shl ax, 1                        ; 0x50ec
    mov bx, 0x4f8b                   ; 0x50ee
    add bx, ax                       ; 0x50f1
    mov ax, word [cs:bx]             ; 0x50f3
    or ax, ax                        ; 0x50f6
    jne short @..local.l69           ; 0x50f8
    jmp near @..local.l70            ; 0x50fa
@..local.l69:
    mov word [cs:bx], 0              ; 0x50fd
    mov cx, word [cs:data_11cb]      ; 0x5102
    dec cx                           ; 0x5107
    mov word [cs:data_11cb], cx      ; 0x5108
    call loc_4c93                    ; 0x510d
@..local.l70:
    pop di                           ; 0x5110
    pop si                           ; 0x5111
    pop es                           ; 0x5112
    pop ds                           ; 0x5113
    mov sp, bp                       ; 0x5114
    pop bp                           ; 0x5116
    ret                              ; 0x5117
loc_5118:
    push bp                          ; 0x5118
    mov bp, sp                       ; 0x5119
    push ds                          ; 0x511b
    push es                          ; 0x511c
    push si                          ; 0x511d
    push di                          ; 0x511e
    mov ax, ds                       ; 0x511f
    mov es, ax                       ; 0x5121
    call far [cs:data_021e]          ; 0x5123
    pop di                           ; 0x5128
    pop si                           ; 0x5129
    pop es                           ; 0x512a
    pop ds                           ; 0x512b
    mov sp, bp                       ; 0x512c
    pop bp                           ; 0x512e
    ret                              ; 0x512f
loc_5130:
    push bp                          ; 0x5130
    mov bp, sp                       ; 0x5131
    push ds                          ; 0x5133
    push es                          ; 0x5134
    push si                          ; 0x5135
    push di                          ; 0x5136
    mov ax, ds                       ; 0x5137
    mov es, ax                       ; 0x5139
    call far [cs:data_0212]          ; 0x513b
    pop di                           ; 0x5140
    pop si                           ; 0x5141
    pop es                           ; 0x5142
    pop ds                           ; 0x5143
    mov sp, bp                       ; 0x5144
    pop bp                           ; 0x5146
    ret                              ; 0x5147
loc_5148:
    push bp                          ; 0x5148
    mov bp, sp                       ; 0x5149
    push ds                          ; 0x514b
    push es                          ; 0x514c
    push si                          ; 0x514d
    push di                          ; 0x514e
    mov ax, ds                       ; 0x514f
    mov es, ax                       ; 0x5151
    push word [bp + 0xe]             ; 0x5153
    push word [bp + 0xc]             ; 0x5156
    call far [cs:data_0216]          ; 0x5159
    add sp, byte 4                   ; 0x515e
    pop di                           ; 0x5161
    pop si                           ; 0x5162
    pop es                           ; 0x5163
    pop ds                           ; 0x5164
    mov sp, bp                       ; 0x5165
    pop bp                           ; 0x5167
    ret                              ; 0x5168
    db 0x00
