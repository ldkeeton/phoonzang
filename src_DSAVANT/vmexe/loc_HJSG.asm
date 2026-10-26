; auto-generated
loc_HJSG:
    mov ax, 0                        ; 0x15ab
    call aztec_csav                  ; 0x15ae
    cmp word [bp + 6], byte 0        ; 0x15b1
    jne short .forward1              ; 0x15b5
    mov ax, 0x248                    ; 0x15b7
    imul word [bp + 8]               ; 0x15ba
    add ax, party_records            ; 0x15bd
    push ax                          ; 0x15c0
    push word [bp + 4]               ; 0x15c1
    call aztec_strcpy                ; 0x15c4
    add sp, byte 4                   ; 0x15c7
    jmp short .return1               ; 0x15ca
.forward1:
    mov ax, word [bp + 6]            ; 0x15cc
    shl ax, 1                        ; 0x15cf
    mov bx, ax                       ; 0x15d1
    mov ax, word [bx + party_char_ext] ; 0x15d3
    push ax                          ; 0x15d7
    mov bx, word [bx + party_char]   ; 0x15d8
    mov al, byte [bx + member_rec.name_row] ; 0x15dc
    sub ah, ah                       ; 0x15e0
    mov dx, ax                       ; 0x15e2
    mov cx, 5                        ; 0x15e4
    shl ax, cl                       ; 0x15e7
    mov cx, ax                       ; 0x15e9
    pop ax                           ; 0x15eb
    add ax, cx                       ; 0x15ec
    push ax                          ; 0x15ee
    push word [bp + 4]               ; 0x15ef
    call aztec_strcpy                ; 0x15f2
    add sp, byte 4                   ; 0x15f5
.return1:
    ret                              ; 0x15f8
