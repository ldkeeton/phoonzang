api_idx_002a:
    mov ax, 0xffd6                   ; 0x8550
    db 0xe8, 0xb5, 0x6e ; call 0xf40b
    mov ax, 0                        ; 0x8556
    push ax                          ; 0x8559
    mov ax, 0x28                     ; 0x855a
    push ax                          ; 0x855d
    lea ax, word [bp - 0x002a]       ; 0x855e
    push ax                          ; 0x8561
    db 0xe8, 0xa1, 0x6d ; call 0xf306
    add sp, byte 6                   ; 0x8565
    push word [bp + 0x4]             ; 0x8568
    lea ax, word [bp - 0x002a]       ; 0x856b
    push ax                          ; 0x856e
    db 0xe8, 0xf2, 0x6d ; call 0xf364
    add sp, byte 4                   ; 0x8572
    mov ax, 0x2f                     ; 0x8575
    push ax                          ; 0x8578
    lea ax, word [bp - 0x002a]       ; 0x8579
    push ax                          ; 0x857c
    db 0xe8, 0xca, 0x68 ; call 0xee4a
    add sp, byte 4                   ; 0x8580
    mov word [bp - 0x0002], ax       ; 0x8583
    cmp ax, strict word 0xffff       ; 0x8586
    jne short @..api_idx_002a.l1     ; 0x8589
    lea ax, word [bp - 0x002a]       ; 0x858b
    push ax                          ; 0x858e
    db 0xe8, 0xfe, 0x74 ; call 0xfa90
    pop cx                           ; 0x8592
    mov word [bp - 0x0002], ax       ; 0x8593
@..api_idx_002a.l1:
    cmp word [bp - 0x0002], byte 0x0a ; 0x8596
    jle short @..api_idx_002a.l2     ; 0x859a
    mov word [bp - 0x0002], 0xa      ; 0x859c
@..api_idx_002a.l2:
    mov bx, word [bp - 0x0002]       ; 0x85a1
    add bx, bp                       ; 0x85a4
    mov byte [bx - 0x002a], 0        ; 0x85a6
    mov byte [bx - 0x001f], 0        ; 0x85aa
    mov ax, 0                        ; 0x85ae
    push ax                          ; 0x85b1
    push word [bp + 0xa]             ; 0x85b2
    db 0xe8, 0x6b, 0x62 ; call 0xe823
    add sp, byte 4                   ; 0x85b8
    push word [bp + 0x8]             ; 0x85bb
    push word [bp + 0x6]             ; 0x85be
    db 0xe8, 0x45, 0x62 ; call 0xe809
    add sp, byte 4                   ; 0x85c4
    mov ax, 0                        ; 0x85c7
    push ax                          ; 0x85ca
    lea ax, word [bp - 0x002a]       ; 0x85cb
    push ax                          ; 0x85ce
    db 0xe8, 0x7c, 0x62 ; call 0xe84e
    add sp, byte 4                   ; 0x85d2
    mov ax, word [bp + 0x8]          ; 0x85d5
    add ax, strict word 6            ; 0x85d8
    push ax                          ; 0x85db
    push word [bp + 0x6]             ; 0x85dc
    db 0xe8, 0x27, 0x62 ; call 0xe809
    add sp, byte 4                   ; 0x85e2
    mov ax, 0                        ; 0x85e5
    push ax                          ; 0x85e8
    mov ax, word [bp - 0x0002]       ; 0x85e9
    lea cx, word [bp - 0x0029]       ; 0x85ec
    add ax, cx                       ; 0x85ef
    push ax                          ; 0x85f1
    db 0xe8, 0x59, 0x62 ; call 0xe84e
    add sp, byte 4                   ; 0x85f5
    ret                              ; 0x85f8
