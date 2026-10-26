; auto-generated
format_long_decimal: ; Aztec csav frame=0x0006
    mov ax, 0xfffa                   ; 0x0422
    call aztec_csav                  ; 0x0425
    mov ax, word [bp + 4]            ; 0x0428
    mov dx, word [bp + 6]            ; 0x042b
    mov word [bp - 4], dx            ; 0x042e
    mov word [bp - 6], ax            ; 0x0431
    cmp dx, byte 0                   ; 0x0434
    jg short @..format_long_decimal.l1 ; 0x0437
    jne short @..format_long_decimal.l2 ; 0x0439
    cmp ax, strict word 0            ; 0x043b
    jb short @..format_long_decimal.l2 ; 0x043e
@..format_long_decimal.l1:
    jmp short @..format_long_decimal.l3 ; 0x0440
@..format_long_decimal.l2:
    neg dx                           ; 0x0442
    neg ax                           ; 0x0444
    sbb dx, byte 0                   ; 0x0446
    mov word [bp + 6], dx            ; 0x0449
    mov word [bp + 4], ax            ; 0x044c
@..format_long_decimal.l3:
    mov word [bp - 2], 0             ; 0x044f
@..format_long_decimal.l4:
    mov ax, word [bp + 4]            ; 0x0454
    mov dx, word [bp + 6]            ; 0x0457
    mov cx, 0xa                      ; 0x045a
    mov bx, 0                        ; 0x045d
    call aztec_lrm                   ; 0x0460
    add ax, strict word 0x30         ; 0x0463
    adc dx, byte 0                   ; 0x0466
    mov si, word [bp - 2]            ; 0x0469
    inc word [bp - 2]                ; 0x046c
    mov bx, word [bp + 8]            ; 0x046f
    mov byte [bx + si], al           ; 0x0472
    mov ax, word [bp + 4]            ; 0x0474
    mov dx, word [bp + 6]            ; 0x0477
    mov cx, 0xa                      ; 0x047a
    mov bx, 0                        ; 0x047d
    call aztec_ldv                   ; 0x0480
    mov word [bp + 6], dx            ; 0x0483
    mov word [bp + 4], ax            ; 0x0486
    cmp dx, byte 0                   ; 0x0489
    jg short @..format_long_decimal.l5 ; 0x048c
    jne short @..format_long_decimal.l6 ; 0x048e
    cmp ax, strict word 0            ; 0x0490
    jbe short @..format_long_decimal.l6 ; 0x0493
@..format_long_decimal.l5:
    jmp short @..format_long_decimal.l4 ; 0x0495
@..format_long_decimal.l6:
    cmp word [bp - 4], byte 0        ; 0x0497
    jg short @..format_long_decimal.l7 ; 0x049b
    jne short @..format_long_decimal.l8 ; 0x049d
    cmp word [bp - 6], byte 0        ; 0x049f
    jb short @..format_long_decimal.l8 ; 0x04a3
@..format_long_decimal.l7:
    jmp short @..format_long_decimal.l9 ; 0x04a5
@..format_long_decimal.l8:
    mov si, word [bp - 2]            ; 0x04a7
    inc word [bp - 2]                ; 0x04aa
    mov bx, word [bp + 8]            ; 0x04ad
    mov byte [bx + si], 0x2d         ; 0x04b0
@..format_long_decimal.l9:
    mov bx, word [bp + 8]            ; 0x04b3
    mov si, word [bp - 2]            ; 0x04b6
    mov byte [bx + si], 0            ; 0x04b9
    push word [bp + 8]               ; 0x04bc
    call ds_app_string_TVHI          ; 0x04bf
    pop cx                           ; 0x04c2
    ret                              ; 0x04c3
