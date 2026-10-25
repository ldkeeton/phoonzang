; auto-generated
copy_member_party_record:
    mov ax, 0                        ; 0x1eb4
    call aztec_csav                  ; 0x1eb7
    mov ax, 0x2c                     ; 0x1eba
    imul word [bp + 0x4]             ; 0x1ebd
    mov si, ax                       ; 0x1ec0
    mov bx, word [party_char]        ; 0x1ec2
    mov ax, word [bx + si + member_rec.item_charges] ; 0x1ec6
    push ax                          ; 0x1ec9
    mov ax, 0x248                    ; 0x1eca
    imul word [bp + 0x4]             ; 0x1ecd
    mov bx, ax                       ; 0x1ed0
    pop ax                           ; 0x1ed2
    mov word [bx + party_records + pc_rec.pair_a], ax ; 0x1ed3
    mov bx, word [party_char]        ; 0x1ed7
    mov ax, word [bx + si + member_rec.item_timer] ; 0x1edb
    push ax                          ; 0x1ede
    mov ax, 0x248                    ; 0x1edf
    imul word [bp + 0x4]             ; 0x1ee2
    mov bx, ax                       ; 0x1ee5
    pop ax                           ; 0x1ee7
    mov word [bx + party_records + pc_rec.pair_b], ax ; 0x1ee8
    mov bx, word [party_char]        ; 0x1eec
    mov al, byte [bx + si + member_rec.item_state] ; 0x1ef0
    push ax                          ; 0x1ef3
    mov ax, 0x248                    ; 0x1ef4
    imul word [bp + 0x4]             ; 0x1ef7
    mov bx, ax                       ; 0x1efa
    pop ax                           ; 0x1efc
    mov byte [bx + party_records + pc_rec.state], al ; 0x1efd
    mov ax, 0xa                      ; 0x1f01
    push ax                          ; 0x1f04
    add bx, party_records + pc_rec.status ; 0x1f05
    mov ax, bx                       ; 0x1f09
    push ax                          ; 0x1f0b
    mov ax, word [party_char]        ; 0x1f0c
    add ax, si                       ; 0x1f0f
    add ax, strict word 0xe          ; 0x1f11
    push ax                          ; 0x1f14
    call aztec_movmem                ; 0x1f15
    add sp, byte 6                   ; 0x1f18
    mov ax, 0x2c                     ; 0x1f1b
    imul word [bp + 0x4]             ; 0x1f1e
    mov si, ax                       ; 0x1f21
    mov bx, word [party_char]        ; 0x1f23
    mov al, byte [bx + si + member_rec.item_resist] ; 0x1f27
    push ax                          ; 0x1f2a
    mov ax, 0x248                    ; 0x1f2b
    imul word [bp + 0x4]             ; 0x1f2e
    mov bx, ax                       ; 0x1f31
    pop ax                           ; 0x1f33
    mov byte [bx + party_records + pc_rec.f_023e], al ; 0x1f34
    ret                              ; 0x1f38
