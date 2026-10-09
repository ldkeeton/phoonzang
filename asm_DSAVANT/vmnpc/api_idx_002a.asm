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
loc_85f9:
    mov ax, 0                        ; 0x85f9
    db 0xe8, 0x0c, 0x6e ; call 0xf40b
    mov ax, 0x64                     ; 0x85ff
    push ax                          ; 0x8602
    mov ax, 0xff9c                   ; 0x8603
    push ax                          ; 0x8606
    mov ax, 0x248                    ; 0x8607
    imul word [bp + 0x4]             ; 0x860a
    add ax, word [data_9136]         ; 0x860d
    mov bx, ax                       ; 0x8611
    mov al, byte [bx + 0x5db2]       ; 0x8613
    cbw                              ; 0x8617
    add ax, word [bp + 0x6]          ; 0x8618
    push ax                          ; 0x861b
    db 0xe8, 0xa3, 0x31 ; call 0xb7c2
    add sp, byte 6                   ; 0x861f
    push ax                          ; 0x8622
    mov ax, 0x248                    ; 0x8623
    imul word [bp + 0x4]             ; 0x8626
    mov cx, ax                       ; 0x8629
    add ax, word [data_9136]         ; 0x862b
    mov bx, ax                       ; 0x862f
    pop ax                           ; 0x8631
    mov byte [bx + 0x5db2], al       ; 0x8632
    mov ax, 0x64                     ; 0x8636
    push ax                          ; 0x8639
    mov ax, 0xff9c                   ; 0x863a
    push ax                          ; 0x863d
    mov al, byte [data_91c7]         ; 0x863e
    sub ah, ah                       ; 0x8641
    mov bx, ax                       ; 0x8643
    mov al, byte [bx - 0x7622]       ; 0x8645
    cbw                              ; 0x8649
    add ax, word [bp + 0x8]          ; 0x864a
    push ax                          ; 0x864d
    db 0xe8, 0x71, 0x31 ; call 0xb7c2
    add sp, byte 6                   ; 0x8651
    push ax                          ; 0x8654
    mov al, byte [data_91c7]         ; 0x8655
    sub ah, ah                       ; 0x8658
    mov bx, ax                       ; 0x865a
    pop ax                           ; 0x865c
    mov byte [bx - 0x7622], al       ; 0x865d
    ret                              ; 0x8661
loc_8662:
    mov ax, 0                        ; 0x8662
    db 0xe8, 0xa3, 0x6d ; call 0xf40b
    mov ax, 0x248                    ; 0x8668
    imul word [bp + 0x4]             ; 0x866b
    add ax, word [bp + 0x6]          ; 0x866e
    mov bx, ax                       ; 0x8671
    cmp byte [bx + 0x5d6c], 0x64     ; 0x8673
    jae short @..local.l95           ; 0x8678
    mov al, byte [bx + 0x5d6c]       ; 0x867a
    sub ah, ah                       ; 0x867e
    push ax                          ; 0x8680
    db 0xe8, 0x25, 0x31 ; call 0xb7a9
    pop cx                           ; 0x8684
    push ax                          ; 0x8685
    mov ax, 0x248                    ; 0x8686
    imul word [bp + 0x4]             ; 0x8689
    mov bx, ax                       ; 0x868c
    mov ax, word [bx + 0x5c18]       ; 0x868e
    imul word [bp + 0x8]             ; 0x8692
    mov cx, ax                       ; 0x8695
    pop ax                           ; 0x8697
    sub ax, cx                       ; 0x8698
    jg short @..local.l95            ; 0x869a
    add bx, word [bp + 0x6]          ; 0x869c
    inc byte [bx + 0x5d6c]           ; 0x869f
@..local.l95:
    ret                              ; 0x86a3
