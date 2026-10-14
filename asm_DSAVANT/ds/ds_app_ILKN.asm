; auto-generated
ds_app_ILKN: ; Aztec csav frame=0x0006
    mov ax, 0xfffa                   ; 0x0422
    call aztec_csav                  ; 0x0425
    mov ax, word [bp + 0x4]          ; 0x0428
    mov dx, word [bp + 0x6]          ; 0x042b
    mov word [bp - 0x0004], dx       ; 0x042e
    mov word [bp - 0x0006], ax       ; 0x0431
    cmp dx, byte 0                   ; 0x0434
    jg short @..ds_app_ILKN.l1       ; 0x0437
    jne short @..ds_app_ILKN.l2      ; 0x0439
    cmp ax, strict word 0            ; 0x043b
    jb short @..ds_app_ILKN.l2       ; 0x043e
@..ds_app_ILKN.l1:
    jmp short @..ds_app_ILKN.l3      ; 0x0440
@..ds_app_ILKN.l2:
    neg dx                           ; 0x0442
    neg ax                           ; 0x0444
    sbb dx, byte 0                   ; 0x0446
    mov word [bp + 0x6], dx          ; 0x0449
    mov word [bp + 0x4], ax          ; 0x044c
@..ds_app_ILKN.l3:
    mov word [bp - 0x0002], 0        ; 0x044f
@..ds_app_ILKN.l4:
    mov ax, word [bp + 0x4]          ; 0x0454
    mov dx, word [bp + 0x6]          ; 0x0457
    mov cx, 0xa                      ; 0x045a
    mov bx, 0                        ; 0x045d
    call aztec_lrm                   ; 0x0460
    add ax, strict word 0x30         ; 0x0463
    adc dx, byte 0                   ; 0x0466
    mov si, word [bp - 0x0002]       ; 0x0469
    inc word [bp - 0x0002]           ; 0x046c
    mov bx, word [bp + 0x8]          ; 0x046f
    mov byte [bx + si], al           ; 0x0472
    mov ax, word [bp + 0x4]          ; 0x0474
    mov dx, word [bp + 0x6]          ; 0x0477
    mov cx, 0xa                      ; 0x047a
    mov bx, 0                        ; 0x047d
    call aztec_ldv                   ; 0x0480
    mov word [bp + 0x6], dx          ; 0x0483
    mov word [bp + 0x4], ax          ; 0x0486
    cmp dx, byte 0                   ; 0x0489
    jg short @..ds_app_ILKN.l5       ; 0x048c
    jne short @..ds_app_ILKN.l6      ; 0x048e
    cmp ax, strict word 0            ; 0x0490
    jbe short @..ds_app_ILKN.l6      ; 0x0493
@..ds_app_ILKN.l5:
    jmp short @..ds_app_ILKN.l4      ; 0x0495
@..ds_app_ILKN.l6:
    cmp word [bp - 0x0004], byte 0   ; 0x0497
    jg short @..ds_app_ILKN.l7       ; 0x049b
    jne short @..ds_app_ILKN.l8      ; 0x049d
    cmp word [bp - 0x0006], byte 0   ; 0x049f
    jb short @..ds_app_ILKN.l8       ; 0x04a3
@..ds_app_ILKN.l7:
    jmp short @..ds_app_ILKN.l9      ; 0x04a5
@..ds_app_ILKN.l8:
    mov si, word [bp - 0x0002]       ; 0x04a7
    inc word [bp - 0x0002]           ; 0x04aa
    mov bx, word [bp + 0x8]          ; 0x04ad
    mov byte [bx + si], 0x2d         ; 0x04b0
@..ds_app_ILKN.l9:
    mov bx, word [bp + 0x8]          ; 0x04b3
    mov si, word [bp - 0x0002]       ; 0x04b6
    mov byte [bx + si], 0            ; 0x04b9
    push word [bp + 0x8]             ; 0x04bc
    call ds_app_string_RNVR          ; 0x04bf
    pop cx                           ; 0x04c2
    ret                              ; 0x04c3
