math_loc_8662:
    mov ax, 0                        ; 0x8662
    db 0xe8, 0xa3, 0x6d ; call 0xf40b
    mov ax, 0x248                    ; 0x8668
    imul word [bp + 0x4]             ; 0x866b
    add ax, word [bp + 0x6]          ; 0x866e
    mov bx, ax                       ; 0x8671
    cmp byte [bx + 0x5d6c], 0x64     ; 0x8673
    jae short @..math_loc_8662.l1    ; 0x8678
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
    jg short @..math_loc_8662.l1     ; 0x869a
    add bx, word [bp + 0x6]          ; 0x869c
    inc byte [bx + 0x5d6c]           ; 0x869f
@..math_loc_8662.l1:
    ret                              ; 0x86a3
