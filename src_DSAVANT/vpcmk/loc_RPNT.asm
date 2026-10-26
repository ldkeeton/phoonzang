; auto-generated
loc_RPNT:
    mov ax, 0                        ; 0x4aa1
    call aztec_csav                  ; 0x4aa4
    mov ax, 0x248                    ; 0x4aa7
    imul word [bp + 4]               ; 0x4aaa
    mov bx, ax                       ; 0x4aad
    mov al, byte [bx + party_records + pc_rec.stat + 0x7] ; 0x4aaf
    sub ah, ah                       ; 0x4ab3
    sub ax, word [bp + 8]            ; 0x4ab5
    jge short .forward1              ; 0x4ab8
    neg ax                           ; 0x4aba
    mov cx, ax                       ; 0x4abc
    jmp short .forward2              ; 0x4abe
.forward1:
    mov al, byte [bx + party_records + pc_rec.stat + 0x7] ; 0x4ac0
    sub ah, ah                       ; 0x4ac4
    mov cx, ax                       ; 0x4ac6
    sub ax, word [bp + 8]            ; 0x4ac8
    mov cx, ax                       ; 0x4acb
.forward2:
    shl cx, 1                        ; 0x4acd
    shl cx, 1                        ; 0x4acf
    mov ax, 0x28                     ; 0x4ad1
    sub ax, cx                       ; 0x4ad4
    add bx, word [bp + 6]            ; 0x4ad6
    mov byte [bx + party_records + pc_rec.pad_01be], al ; 0x4ad9
    ret                              ; 0x4add
