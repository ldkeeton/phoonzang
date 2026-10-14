; auto-generated
; asm only
graphics_loc_VIRI:
    push bp                          ; 0x0293
    mov bp, sp                       ; 0x0294
    sub sp, byte 0x0c                ; 0x0296
cseg_0299:
    push ds                          ; 0x0299
    push es                          ; 0x029a
cseg_029b:
    push si                          ; 0x029b
    push di                          ; 0x029c
    mov es, ax                       ; 0x029d
    mov ds, ax                       ; 0x029f
    xor bx, bx                       ; 0x02a1
    mov ax, word [cs:cseg_0297 - IMAGE_BASE] ; 0x02a3
    mov cx, 0x140                    ; 0x02a7
    mul cx                           ; 0x02aa
    add ax, word [cs:cseg_0295 - IMAGE_BASE] ; 0x02ac
    mov di, ax                       ; 0x02b1
    mov word [bp - 0x0006], ax       ; 0x02b3
    xor ax, ax                       ; 0x02b6
    mov al, byte [bx]                ; 0x02b8
    mov word [bp - 0x0002], ax       ; 0x02ba
    mov al, byte [bx + 0x1]          ; 0x02bd
    mov word [bp - 0x0004], ax       ; 0x02c0
cseg_02c3:
    mov cx, word [bx + 0xa]          ; 0x02c3
    add bx, byte 0x10                ; 0x02c6
    mov ax, word [bp + 0xc]          ; 0x02c9
    shl ax, 1                        ; 0x02cc
    add bx, ax                       ; 0x02ce
    mov al, byte [bx]                ; 0x02d0
    xor ah, ah                       ; 0x02d2
    mov word [bp - 0x000a], ax       ; 0x02d4
cseg_02d7:
    mul cx                           ; 0x02d7
    add ax, 0x110                    ; 0x02d9
    mov si, ax                       ; 0x02dc
    xor ah, ah                       ; 0x02de
    mov al, byte [bx + 0x1]          ; 0x02e0
    add word [cs:cseg_0295 - IMAGE_BASE], ax ; 0x02e3
    mov word [bp - 0x000c], ax       ; 0x02e8
    xor bx, bx                       ; 0x02eb
    mov al, byte [bx + 0x7]          ; 0x02ed
    cbw                              ; 0x02f0
    add word [cs:cseg_0295 - IMAGE_BASE], ax ; 0x02f1
    mov al, byte [bx + 0x2]          ; 0x02f6
    test al, 1                       ; 0x02f9
    je short @..graphics_loc_VIRI.l1 ; 0x02fb
    jmp near @..graphics_loc_VIRI.l17 ; 0x02fd
@..graphics_loc_VIRI.l1:
    mov ax, word [cs:cseg_0299 - IMAGE_BASE] ; 0x0300
    or ax, ax                        ; 0x0304
    jne short @..graphics_loc_VIRI.l2 ; 0x0306
    mov al, byte [bx + 0x6]          ; 0x0308
    test al, 2                       ; 0x030b
    jne short @..graphics_loc_VIRI.l9 ; 0x030d
@..graphics_loc_VIRI.l2:
    xor ax, ax                       ; 0x030f
    mov al, byte [bx + 0x3]          ; 0x0311
    mov bx, word [bp - 0x000c]       ; 0x0314
    add bx, byte 7                   ; 0x0317
    mov cl, 3                        ; 0x031a
    shr bx, cl                       ; 0x031c
    sub ax, bx                       ; 0x031e
    mov word [bp - 0x000a], ax       ; 0x0320
    mov bx, word [cs:cseg_0291 - IMAGE_BASE] ; 0x0323
    mov dx, word [cs:graphics_loc_VIRI - IMAGE_BASE] ; 0x0328
    mov dh, bl                       ; 0x032d
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x032f
    mov es, ax                       ; 0x0333
@..graphics_loc_VIRI.l3:
    mov cx, word [bp - 0x000c]       ; 0x0335
@..graphics_loc_VIRI.l4:
    mov word [bp - 0x0008], cx       ; 0x0338
    lodsb                            ; 0x033b
    cmp cx, byte 9                   ; 0x033c
    jb short @..graphics_loc_VIRI.l5 ; 0x033f
    mov cx, 8                        ; 0x0341
@..graphics_loc_VIRI.l5:
    sub word [bp - 0x0008], cx       ; 0x0344
@..graphics_loc_VIRI.l6:
    shl al, 1                        ; 0x0347
    jb short @..graphics_loc_VIRI.l7 ; 0x0349
    mov byte [es:di], dh             ; 0x034b
    inc di                           ; 0x034e
    jmp short @..graphics_loc_VIRI.l8 ; 0x034f
@..graphics_loc_VIRI.l7:
    mov byte [es:di], dl             ; 0x0351
    inc di                           ; 0x0354
@..graphics_loc_VIRI.l8:
    loop @..graphics_loc_VIRI.l6     ; 0x0355
    mov cx, word [bp - 0x0008]       ; 0x0357
    or cx, cx                        ; 0x035a
    jne short @..graphics_loc_VIRI.l4 ; 0x035c
    add si, word [bp - 0x000a]       ; 0x035e
    add word [bp - 0x0006], strict word 0x140 ; 0x0361
    mov di, word [bp - 0x0006]       ; 0x0366
    dec word [bp - 0x0004]           ; 0x0369
    jne short @..graphics_loc_VIRI.l3 ; 0x036c
    jmp near @..graphics_loc_VIRI.l23 ; 0x036e
@..graphics_loc_VIRI.l9:
    mov ax, word [bp - 0x000a]       ; 0x0371
    mov cx, word [bx + 0xe]          ; 0x0374
    mul cx                           ; 0x0377
    add ax, word [bx + 0xc]          ; 0x0379
    mov bx, ax                       ; 0x037c
    mov ax, word [cs:cseg_0291 - IMAGE_BASE] ; 0x037e
    mov dx, word [cs:graphics_loc_VIRI - IMAGE_BASE] ; 0x0382
    mov dh, al                       ; 0x0387
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x0389
    mov es, ax                       ; 0x038d
cseg_038f:
@..graphics_loc_VIRI.l10:
    mov cx, word [bp - 0x0002]       ; 0x038f
@..graphics_loc_VIRI.l11:
    mov word [bp - 0x0008], cx       ; 0x0392
    lodsb                            ; 0x0395
    mov ah, byte [bx]                ; 0x0396
    inc bx                           ; 0x0398
    cmp cx, byte 9                   ; 0x0399
    jb short @..graphics_loc_VIRI.l12 ; 0x039c
    mov cx, 8                        ; 0x039e
@..graphics_loc_VIRI.l12:
    sub word [bp - 0x0008], cx       ; 0x03a1
@..graphics_loc_VIRI.l13:
    shl ah, 1                        ; 0x03a4
    jae short @..graphics_loc_VIRI.l15 ; 0x03a6
    shl al, 1                        ; 0x03a8
    jb short @..graphics_loc_VIRI.l14 ; 0x03aa
    mov byte [es:di], dh             ; 0x03ac
    inc di                           ; 0x03af
    jmp short @..graphics_loc_VIRI.l16 ; 0x03b0
@..graphics_loc_VIRI.l14:
    mov byte [es:di], dl             ; 0x03b2
    inc di                           ; 0x03b5
    jmp short @..graphics_loc_VIRI.l16 ; 0x03b6
@..graphics_loc_VIRI.l15:
    shl al, 1                        ; 0x03b8
    inc di                           ; 0x03ba
@..graphics_loc_VIRI.l16:
    loop @..graphics_loc_VIRI.l13    ; 0x03bb
    mov cx, word [bp - 0x0008]       ; 0x03bd
    or cx, cx                        ; 0x03c0
    jne short @..graphics_loc_VIRI.l11 ; 0x03c2
    add word [bp - 0x0006], strict word 0x140 ; 0x03c4
    mov di, word [bp - 0x0006]       ; 0x03c9
    dec word [bp - 0x0004]           ; 0x03cc
    jne short @..graphics_loc_VIRI.l10 ; 0x03cf
    jmp near @..graphics_loc_VIRI.l23 ; 0x03d1
@..graphics_loc_VIRI.l17:
    mov al, byte [bx + 0x6]          ; 0x03d4
    test al, 2                       ; 0x03d7
    jne short @..graphics_loc_VIRI.l19 ; 0x03d9
    mov ax, word [bp - 0x0002]       ; 0x03db
    sub ax, word [bp - 0x000c]       ; 0x03de
    mov word [bp - 0x000a], ax       ; 0x03e1
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x03e4
    mov es, ax                       ; 0x03e8
@..graphics_loc_VIRI.l18:
    mov cx, word [bp - 0x000c]       ; 0x03ea
    rep movsb                        ; 0x03ed
    add si, word [bp - 0x000a]       ; 0x03ef
    add word [bp - 0x0006], strict word 0x140 ; 0x03f2
    mov di, word [bp - 0x0006]       ; 0x03f7
    dec word [bp - 0x0004]           ; 0x03fa
    jne short @..graphics_loc_VIRI.l18 ; 0x03fd
    jmp near @..graphics_loc_VIRI.l23 ; 0x03ff
@..graphics_loc_VIRI.l19:
    mov ax, word [bp - 0x0002]       ; 0x0402
    sub ax, word [bp - 0x000c]       ; 0x0405
    mov word [bp - 0x000a], ax       ; 0x0408
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x040b
    mov es, ax                       ; 0x040f
@..graphics_loc_VIRI.l20:
    mov cx, word [bp - 0x000c]       ; 0x0411
@..graphics_loc_VIRI.l21:
    mov al, byte [si]                ; 0x0414
    cmp al, 0xff                     ; 0x0416
    je short @..graphics_loc_VIRI.l22 ; 0x0418
    mov byte [es:di], al             ; 0x041a
@..graphics_loc_VIRI.l22:
    inc si                           ; 0x041d
    inc di                           ; 0x041e
    loop @..graphics_loc_VIRI.l21    ; 0x041f
    add si, word [bp - 0x000a]       ; 0x0421
    add word [bp - 0x0006], strict word 0x140 ; 0x0424
    mov di, word [bp - 0x0006]       ; 0x0429
    dec word [bp - 0x0004]           ; 0x042c
    jne short @..graphics_loc_VIRI.l20 ; 0x042f
@..graphics_loc_VIRI.l23:
    pop di                           ; 0x0431
    pop si                           ; 0x0432
    pop es                           ; 0x0433
    pop ds                           ; 0x0434
    mov sp, bp                       ; 0x0435
    pop bp                           ; 0x0437
    ret                              ; 0x0438
