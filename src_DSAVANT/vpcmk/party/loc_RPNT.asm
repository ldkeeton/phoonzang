; auto-generated
loc_RPNT:
    mov ax, 0                        ; 0x4aa1
    call aztec_csav                  ; 0x4aa4
    mov ax, 0x248                    ; 0x4aa7
    imul word [bp + 0x4]             ; 0x4aaa
    mov bx, ax                       ; 0x4aad
    mov al, byte [bx + 0x5d6b]       ; 0x4aaf
    sub ah, ah                       ; 0x4ab3
    sub ax, word [bp + 0x8]          ; 0x4ab5
    jge short @..loc_RPNT.l1         ; 0x4ab8
    neg ax                           ; 0x4aba
    mov cx, ax                       ; 0x4abc
    jmp short @..loc_RPNT.l2         ; 0x4abe
@..loc_RPNT.l1:
    mov al, byte [bx + 0x5d6b]       ; 0x4ac0
    sub ah, ah                       ; 0x4ac4
    mov cx, ax                       ; 0x4ac6
    sub ax, word [bp + 0x8]          ; 0x4ac8
    mov cx, ax                       ; 0x4acb
@..loc_RPNT.l2:
    shl cx, 1                        ; 0x4acd
    shl cx, 1                        ; 0x4acf
    mov ax, 0x28                     ; 0x4ad1
    sub ax, cx                       ; 0x4ad4
    add bx, word [bp + 0x6]          ; 0x4ad6
    mov byte [bx + 0x5db2], al       ; 0x4ad9
    ret                              ; 0x4add
