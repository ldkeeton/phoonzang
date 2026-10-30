; auto-generated
consume_item_charge:
    mov ax, 0                        ; 0x1c6e
    call aztec_csav                  ; 0x1c71
    mov ax, 0x248                    ; 0x1c74
    imul word [bp + 4]               ; 0x1c77
    push ax                          ; 0x1c7a
    mov ax, 0x78                     ; 0x1c7b
    imul word [bp + 6]               ; 0x1c7e
    mov cx, ax                       ; 0x1c81
    pop ax                           ; 0x1c83
    add ax, cx                       ; 0x1c84
    push ax                          ; 0x1c86
    mov ax, 0xc                      ; 0x1c87
    imul word [bp + 8]               ; 0x1c8a
    mov cx, ax                       ; 0x1c8d
    pop ax                           ; 0x1c8f
    add ax, cx                       ; 0x1c90
    mov bx, ax                       ; 0x1c92
    cmp byte [bx + party_records + pc_rec.item_slots + 0x6], 0 ; 0x1c94
    jbe short .return1               ; 0x1c99
    dec byte [bx + party_records + pc_rec.item_slots + 0x6] ; 0x1c9b
    jne short .return1               ; 0x1c9f
    push word [bp + 8]               ; 0x1ca1
    push word [bp + 6]               ; 0x1ca4
    push word [bp + 4]               ; 0x1ca7
    call clear_item_slot             ; 0x1caa
    add sp, byte 6                   ; 0x1cad
.return1:
    ret                              ; 0x1cb0
