; auto-generated
clear_cell_key: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x1c2f
    call aztec_csav                  ; 0x1c32
    cmp word [bp + 0x6], byte 0      ; 0x1c35
    jne short @..clear_cell_key.l1   ; 0x1c39
    push word [bp + 0x8]             ; 0x1c3b
    push word [bp + 0x4]             ; 0x1c3e
    call compact_grid_page           ; 0x1c41
    add sp, byte 4                   ; 0x1c44
@..clear_cell_key.l1:
    mov ax, 0x248                    ; 0x1c47
    imul word [bp + 0x4]             ; 0x1c4a
    push ax                          ; 0x1c4d
    mov ax, 0x78                     ; 0x1c4e
    imul word [bp + 0x6]             ; 0x1c51
    mov cx, ax                       ; 0x1c54
    pop ax                           ; 0x1c56
    add ax, cx                       ; 0x1c57
    push ax                          ; 0x1c59
    mov ax, 0xc                      ; 0x1c5a
    imul word [bp + 0x8]             ; 0x1c5d
    mov cx, ax                       ; 0x1c60
    pop ax                           ; 0x1c62
    add ax, cx                       ; 0x1c63
    mov bx, ax                       ; 0x1c65
    mov word [bx + party_records + pc_rec.cell], 0 ; 0x1c67
    ret                              ; 0x1c6d
