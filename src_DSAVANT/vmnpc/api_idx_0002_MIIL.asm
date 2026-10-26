; auto-generated
api_idx_0002_MIIL:
    mov ax, 0xfffe                   ; 0x515b
    call aztec_csav                  ; 0x515e
    dec word [bss_9ca8]              ; 0x5161
    mov ax, word [bp + 4]            ; 0x5165
    mov word [bp - 2], ax            ; 0x5168
    jmp short @..api_idx_0002_MIIL.l2 ; 0x516b
@..api_idx_0002_MIIL.l1:
    mov ax, 0x16                     ; 0x516d
    imul word [bp - 2]               ; 0x5170
    add ax, bss_96b8                 ; 0x5173
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
    mov ax, word [bx + bss_967c]     ; 0x518e
    mov word [bx + list_row_glyph], ax ; 0x5192
    mov ax, word [bx + bss_9654]     ; 0x5196
    mov word [bx + list_row_marked], ax ; 0x519a
    mov ax, word [bx + bss_985c]     ; 0x519e
    mov word [bx + list_row_count], ax ; 0x51a2
    mov ax, word [bx + bss_9cac]     ; 0x51a6
    mov word [bx + bss_9caa], ax     ; 0x51aa
    inc word [bp - 2]                ; 0x51ae
@..api_idx_0002_MIIL.l2:
    mov ax, word [bp - 2]            ; 0x51b1
    cmp ax, word [bss_9ca8]          ; 0x51b4
    jl short @..api_idx_0002_MIIL.l1 ; 0x51b8
    ret                              ; 0x51ba
