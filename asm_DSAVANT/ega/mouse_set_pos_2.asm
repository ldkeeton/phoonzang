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
