api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x759d
    db 0xe8, 0x68, 0x7e ; call 0xf40b
    mov byte [bp - 0x000a], 1        ; 0x75a3
    mov byte [bp - 0x0009], 0        ; 0x75a7
    mov ax, 0                        ; 0x75ab
    push ax                          ; 0x75ae
    push ax                          ; 0x75af
    lea ax, word [bp - 0x000a]       ; 0x75b0
    push ax                          ; 0x75b3
    mov ax, 0                        ; 0x75b4
    push ax                          ; 0x75b7
    mov ax, 0xc7                     ; 0x75b8
    push ax                          ; 0x75bb
    mov ax, 0                        ; 0x75bc
    push ax                          ; 0x75bf
    mov ax, 0x13f                    ; 0x75c0
    push ax                          ; 0x75c3
    mov ax, 0                        ; 0x75c4
    push ax                          ; 0x75c7
    mov ax, 0x73                     ; 0x75c8
    push ax                          ; 0x75cb
    mov ax, 0x32                     ; 0x75cc
    push ax                          ; 0x75cf
    mov ax, 1                        ; 0x75d0
    push ax                          ; 0x75d3
    db 0xe8, 0xfa, 0x79 ; call 0xefd1
    add sp, byte 0x16                ; 0x75d7
    ret                              ; 0x75da
loc_75db:
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
    je short @..local.l86            ; 0x7600
    mov ax, 1                        ; 0x7602
@..local.l86:
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
    jne short @..local.l87           ; 0x7644
    cmp word [bp + 0xa], byte 0      ; 0x7646
    jne short @..local.l87           ; 0x764a
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
@..local.l87:
    ret                              ; 0x7666
loc_7667:
    mov ax, 0                        ; 0x7667
    db 0xe8, 0x9e, 0x7d ; call 0xf40b
    mov ax, word [bp + 0x6]          ; 0x766d
    add ax, strict word 6            ; 0x7670
    push ax                          ; 0x7673
    mov ax, word [bp + 0x4]          ; 0x7674
    add ax, strict word 0x14         ; 0x7677
    push ax                          ; 0x767a
    push word [bp + 0x6]             ; 0x767b
    push word [bp + 0x4]             ; 0x767e
    db 0xe8, 0x14, 0x47 ; call 0xbd98
    add sp, byte 8                   ; 0x7684
    mov ax, word [bp + 0x8]          ; 0x7687
    shl ax, 1                        ; 0x768a
    shl ax, 1                        ; 0x768c
    mov bx, ax                       ; 0x768e
    db 0xff, 0xb7, 0x08, 0x00 ; push word [bx + 0x8]
    mov ax, word [bp + 0x6]          ; 0x7694
    add ax, strict word 6            ; 0x7697
    push ax                          ; 0x769a
    mov ax, word [bp + 0x4]          ; 0x769b
    add ax, strict word 0x14         ; 0x769e
    push ax                          ; 0x76a1
    push word [bp + 0x6]             ; 0x76a2
    push word [bp + 0x4]             ; 0x76a5
    db 0xe8, 0x56, 0x72 ; call 0xe901
    add sp, byte 0x0a                ; 0x76ab
    mov ax, word [bp + 0x6]          ; 0x76ae
    inc ax                           ; 0x76b1
    push ax                          ; 0x76b2
    mov ax, word [bp + 0x4]          ; 0x76b3
    inc ax                           ; 0x76b6
    inc ax                           ; 0x76b7
    push ax                          ; 0x76b8
    db 0xe8, 0x4d, 0x71 ; call 0xe809
    add sp, byte 4                   ; 0x76bc
    cmp word [bp + 0xa], byte 0      ; 0x76bf
    jle short @..local.l88           ; 0x76c3
    mov ax, word [bp + 0xa]          ; 0x76c5
    cmp ax, word [bp + 0xc]          ; 0x76c8
    jg short @..local.l88            ; 0x76cb
    mov ax, 0                        ; 0x76cd
    push ax                          ; 0x76d0
    mov ax, 1                        ; 0x76d1
    push ax                          ; 0x76d4
    db 0xe8, 0x4b, 0x71 ; call 0xe823
    add sp, byte 4                   ; 0x76d8
    mov ax, 0                        ; 0x76db
    push ax                          ; 0x76de
    mov ax, 3                        ; 0x76df
    push ax                          ; 0x76e2
    push word [bp + 0xa]             ; 0x76e3
    db 0xe8, 0xfe, 0x3b ; call 0xb2e7
    add sp, byte 6                   ; 0x76e9
    jmp short loc_7707               ; 0x76ec
@..local.l88:
    mov ax, 0                        ; 0x76ee
    push ax                          ; 0x76f1
    push ax                          ; 0x76f2
    db 0xe8, 0x2d, 0x71 ; call 0xe823
    add sp, byte 4                   ; 0x76f6
    mov ax, 0                        ; 0x76f9
    push ax                          ; 0x76fc
    mov ax, 0x90e4                   ; 0x76fd
    push ax                          ; 0x7700
    db 0xe8, 0x4a, 0x71 ; call 0xe84e
    add sp, byte 4                   ; 0x7704
loc_7707:
    ret                              ; 0x7707
