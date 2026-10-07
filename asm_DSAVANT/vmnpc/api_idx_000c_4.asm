api_idx_000c_4:
    mov ax, 0xfff4                   ; 0x7708
    db 0xe8, 0xfd, 0x7c ; call 0xf40b
    mov word [bp - 0x0002], 0        ; 0x770e
@..api_idx_000c_4.l1:
    lea ax, word [bp - 0x000c]       ; 0x7713
    push ax                          ; 0x7716
    mov ax, 0x248                    ; 0x7717
    imul word [bp + 0x4]             ; 0x771a
    mov cx, word [bp - 0x0002]       ; 0x771d
    shl cx, 1                        ; 0x7720
    shl cx, 1                        ; 0x7722
    add ax, cx                       ; 0x7724
    mov bx, ax                       ; 0x7726
    push word [bx + 0x5c1c]          ; 0x7728
    call 0xb27d                      ; 0x772c
    add sp, byte 4                   ; 0x772f
    mov ax, 0                        ; 0x7732
    push ax                          ; 0x7735
    mov ax, word [bp - 0x0002]       ; 0x7736
    shl ax, 1                        ; 0x7739
    shl ax, 1                        ; 0x773b
    mov bx, ax                       ; 0x773d
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    db 0xe8, 0xdd, 0x70 ; call 0xe823
    add sp, byte 4                   ; 0x7746
    mov ax, word [bp - 0x0002]       ; 0x7749
    shl ax, 1                        ; 0x774c
    shl ax, 1                        ; 0x774e
    mov bx, ax                       ; 0x7750
    push word [bx + 0x18e]           ; 0x7752
    lea ax, word [bp - 0x000c]       ; 0x7756
    push ax                          ; 0x7759
    db 0xe8, 0x33, 0x83 ; call 0xfa90
    pop cx                           ; 0x775d
    mov cx, 6                        ; 0x775e
    imul cx                          ; 0x7761
    mov cx, data_0002                ; 0x7763
    cwd                              ; 0x7766
    idiv cx                          ; 0x7767
    mov cx, ax                       ; 0x7769
    mov ax, word [bp - 0x0002]       ; 0x776b
    shl ax, 1                        ; 0x776e
    shl ax, 1                        ; 0x7770
    mov bx, ax                       ; 0x7772
    mov ax, word [bx + 0x18c]        ; 0x7774
    add ax, strict word 9            ; 0x7778
    sub ax, cx                       ; 0x777b
    push ax                          ; 0x777d
    db 0xe8, 0x88, 0x70 ; call 0xe809
    add sp, byte 4                   ; 0x7781
    mov ax, 0                        ; 0x7784
    push ax                          ; 0x7787
    lea ax, word [bp - 0x000c]       ; 0x7788
    push ax                          ; 0x778b
    db 0xe8, 0xbf, 0x70 ; call 0xe84e
    add sp, byte 4                   ; 0x778f
    inc word [bp - 0x0002]           ; 0x7792
    mov ax, word [bp - 0x0002]       ; 0x7795
    cmp ax, strict word 6            ; 0x7798
    jge short @..api_idx_000c_4.l2   ; 0x779b
    jmp near @..api_idx_000c_4.l1    ; 0x779d
@..api_idx_000c_4.l2:
    ret                              ; 0x77a0
