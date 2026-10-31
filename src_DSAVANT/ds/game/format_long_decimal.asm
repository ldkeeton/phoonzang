; auto-generated
format_long_decimal:
    mov ax, 0xfffa                   ; 0x0422
    call aztec_csav                  ; 0x0425
    mov ax, word [bp + 4]            ; 0x0428
    mov dx, word [bp + 6]            ; 0x042b
    mov word [bp - 4], dx            ; 0x042e
    mov word [bp - 6], ax            ; 0x0431
    cmp dx, byte 0                   ; 0x0434
    jg short .forward1               ; 0x0437
    jne short .forward2              ; 0x0439
    cmp ax, strict word 0            ; 0x043b
    jb short .forward2               ; 0x043e
.forward1:
    jmp short .forward3              ; 0x0440
.forward2:
    neg dx                           ; 0x0442
    neg ax                           ; 0x0444
    sbb dx, byte 0                   ; 0x0446
    mov word [bp + 6], dx            ; 0x0449
    mov word [bp + 4], ax            ; 0x044c
.forward3:
    mov word [bp - 2], 0             ; 0x044f
.back1:
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
    jg short .forward4               ; 0x048c
    jne short .forward5              ; 0x048e
    cmp ax, strict word 0            ; 0x0490
    jbe short .forward5              ; 0x0493
.forward4:
    jmp short .back1                 ; 0x0495
.forward5:
    cmp word [bp - 4], byte 0        ; 0x0497
    jg short .forward6               ; 0x049b
    jne short .forward7              ; 0x049d
    cmp word [bp - 6], byte 0        ; 0x049f
    jb short .forward7               ; 0x04a3
.forward6:
    jmp short .forward8              ; 0x04a5
.forward7:
    mov si, word [bp - 2]            ; 0x04a7
    inc word [bp - 2]                ; 0x04aa
    mov bx, word [bp + 8]            ; 0x04ad
    mov byte [bx + si], 0x2d         ; 0x04b0
.forward8:
    mov bx, word [bp + 8]            ; 0x04b3
    mov si, word [bp - 2]            ; 0x04b6
    mov byte [bx + si], 0            ; 0x04b9
    push word [bp + 8]               ; 0x04bc
    call reverse_string              ; 0x04bf
    pop cx                           ; 0x04c2
    ret                              ; 0x04c3
