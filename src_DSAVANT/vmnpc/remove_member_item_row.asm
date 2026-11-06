; auto-generated
remove_member_item_row:
    mov ax, 0xfffe                   ; 0x515b
    call aztec_csav                  ; 0x515e
    dec word [member_item_count]     ; 0x5161
    mov ax, word [bp + 4]            ; 0x5165
    mov word [bp - 2], ax            ; 0x5168
    jmp short .forward1              ; 0x516b
.back1:
    mov ax, 0x16                     ; 0x516d
    imul word [bp - 2]               ; 0x5170
    add ax, list_row_name_next       ; 0x5173
    push ax                          ; 0x5176
    mov ax, 0x16                     ; 0x5177
    imul word [bp - 2]               ; 0x517a
    add ax, list_row_name            ; 0x517d
    push ax                          ; 0x5180
    call aztec_strcpy                ; 0x5181
    add sp, byte 4                   ; 0x5184
    mov ax, word [bp - 2]            ; 0x5187
    shl ax, 1                        ; 0x518a
    mov bx, ax                       ; 0x518c
    mov ax, word [bx + list_row_glyph_next] ; 0x518e
    mov word [bx + list_row_glyph], ax ; 0x5192
    mov ax, word [bx + list_row_marked_next] ; 0x5196
    mov word [bx + list_row_marked], ax ; 0x519a
    mov ax, word [bx + list_row_count_next] ; 0x519e
    mov word [bx + list_row_count], ax ; 0x51a2
    mov ax, word [bx + member_item_slot_indices_next] ; 0x51a6
    mov word [bx + member_item_slot_indices], ax ; 0x51aa
    inc word [bp - 2]                ; 0x51ae
.forward1:
    mov ax, word [bp - 2]            ; 0x51b1
    cmp ax, word [member_item_count] ; 0x51b4
    jl short .back1                  ; 0x51b8
    ret                              ; 0x51ba
