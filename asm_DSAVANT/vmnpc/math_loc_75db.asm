math_loc_75db:
    mov ax, 0                        ; 0x75db
    db 0xe8, 0x2a, 0x7e ; call 0xf40b
    push word [bp + 0x6]             ; 0x75e1
    mov ax, 0xa                      ; 0x75e4
    imul word [bp + 0x8]             ; 0x75e7
    add ax, word [bp + 0x4]          ; 0x75ea
    dec ax                           ; 0x75ed
    push ax                          ; 0x75ee
    db 0xe8, 0x17, 0x72 ; call 0xe809
    add sp, byte 4                   ; 0x75f2
    mov ax, 7                        ; 0x75f5
    push ax                          ; 0x75f8
    mov ax, 0                        ; 0x75f9
    cmp word [bp + 0xa], byte 0      ; 0x75fc
    je short @..math_loc_75db.l1     ; 0x7600
    mov ax, 1                        ; 0x7602
@..math_loc_75db.l1:
    add ax, strict word 0x10         ; 0x7605
    sub ah, ah                       ; 0x7608
    push ax                          ; 0x760a
    db 0xe8, 0x22, 0x72 ; call 0xe830
    add sp, byte 4                   ; 0x760e
    push word [bp + 0x6]             ; 0x7611
    mov ax, 0xa                      ; 0x7614
    imul word [bp + 0x8]             ; 0x7617
    add ax, word [bp + 0x4]          ; 0x761a
    push ax                          ; 0x761d
    db 0xe8, 0xe8, 0x71 ; call 0xe809
    add sp, byte 4                   ; 0x7621
    mov ax, 0                        ; 0x7624
    push ax                          ; 0x7627
    push ax                          ; 0x7628
    db 0xe8, 0xf7, 0x71 ; call 0xe823
    add sp, byte 4                   ; 0x762c
    mov ax, data_0002                ; 0x762f
    push ax                          ; 0x7632
    mov ax, word [bp + 0x8]          ; 0x7633
    inc ax                           ; 0x7636
    sub ah, ah                       ; 0x7637
    push ax                          ; 0x7639
    db 0xe8, 0xf3, 0x71 ; call 0xe830
    add sp, byte 4                   ; 0x763d
    cmp word [bp + 0x8], byte 0      ; 0x7640
    jne short @..math_loc_75db.l2    ; 0x7644
    cmp word [bp + 0xa], byte 0      ; 0x7646
    jne short @..math_loc_75db.l2    ; 0x764a
    mov ax, 0xc2                     ; 0x764c
    push ax                          ; 0x764f
    mov ax, word [bp + 0x6]          ; 0x7650
    add ax, strict word 8            ; 0x7653
    push ax                          ; 0x7656
    mov ax, word [bp + 0x4]          ; 0x7657
    dec ax                           ; 0x765a
    push ax                          ; 0x765b
    push word [bp + 0x6]             ; 0x765c
    push ax                          ; 0x765f
    db 0xe8, 0x9e, 0x72 ; call 0xe901
    add sp, byte 0x0a                ; 0x7663
@..math_loc_75db.l2:
    ret                              ; 0x7666
