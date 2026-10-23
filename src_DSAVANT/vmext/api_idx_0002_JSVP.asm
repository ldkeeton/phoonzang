; auto-generated
api_idx_0002_JSVP:
    mov ax, 0xfffe                   ; 0x0b49
    call aztec_csav                  ; 0x0b4c
    push word [party_world_y]        ; 0x0b4f
    push word [party_world_x]        ; 0x0b53
    push word [party_cell_y]         ; 0x0b57
    push word [party_cell_x]         ; 0x0b5b
    push word [party_map_piece]      ; 0x0b5f
    push word [party_tag]            ; 0x0b63
    call get_cell_wall               ; 0x0b67
    add sp, byte 0x0c                ; 0x0b6a
    mov word [bp - 0x0002], ax       ; 0x0b6d
    cmp ax, strict word 2            ; 0x0b70
    jl short @..api_idx_0002_JSVP.l1 ; 0x0b73
    cmp ax, strict word 5            ; 0x0b75
    jne short @..api_idx_0002_JSVP.l2 ; 0x0b78
@..api_idx_0002_JSVP.l1:
    push word [bp + 0x4]             ; 0x0b7a
    push word [party_tag]            ; 0x0b7d
    call api_idx_000c_RMGQ           ; 0x0b81
    add sp, byte 4                   ; 0x0b84
    ret                              ; 0x0b87
@..api_idx_0002_JSVP.l2:
    mov ax, 1                        ; 0x0b88
    ret                              ; 0x0b8b
