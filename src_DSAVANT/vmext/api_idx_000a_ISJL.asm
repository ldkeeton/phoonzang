; auto-generated
api_idx_000a_ISJL:
    mov ax, 0xfff6                   ; 0x0b8c
    call aztec_csav                  ; 0x0b8f
    mov ax, word [party_world_x]     ; 0x0b92
    mov word [bp - 2], ax            ; 0x0b95
    mov ax, word [party_world_y]     ; 0x0b98
    mov word [bp - 4], ax            ; 0x0b9b
    mov ax, word [party_cell_x]      ; 0x0b9e
    mov word [bp - 6], ax            ; 0x0ba1
    mov ax, word [party_cell_y]      ; 0x0ba4
    mov word [bp - 8], ax            ; 0x0ba7
    mov ax, word [party_map_piece]   ; 0x0baa
    mov word [bp - 0xa], ax          ; 0x0bad
    mov ax, word [previous_party_world_x] ; 0x0bb0
    mov word [party_world_x], ax     ; 0x0bb3
    mov ax, word [previous_party_world_y] ; 0x0bb6
    mov word [party_world_y], ax     ; 0x0bb9
    mov ax, word [previous_party_cell_x] ; 0x0bbc
    mov word [party_cell_x], ax      ; 0x0bbf
    mov ax, word [previous_party_cell_y] ; 0x0bc2
    mov word [party_cell_y], ax      ; 0x0bc5
    mov ax, word [previous_party_map_piece] ; 0x0bc8
    mov word [party_map_piece], ax   ; 0x0bcb
    call loc_HVLG                    ; 0x0bce
    test ax, ax                      ; 0x0bd1
    je short .forward1               ; 0x0bd3
    mov ax, word [party_status_frame] ; 0x0bd5
    inc ax                           ; 0x0bd8
    mov cx, 2                        ; 0x0bd9
    cwd                              ; 0x0bdc
    idiv cx                          ; 0x0bdd
    mov word [party_status_frame], dx ; 0x0bdf
.forward1:
    call redraw_maze_view            ; 0x0be3
    mov ax, 2                        ; 0x0be6
    push ax                          ; 0x0be9
    call wait_for_hotspot_timeout    ; 0x0bea
    pop cx                           ; 0x0bed
    mov ax, word [bp - 2]            ; 0x0bee
    mov word [party_world_x], ax     ; 0x0bf1
    mov ax, word [bp - 4]            ; 0x0bf4
    mov word [party_world_y], ax     ; 0x0bf7
    mov ax, word [bp - 6]            ; 0x0bfa
    mov word [party_cell_x], ax      ; 0x0bfd
    mov ax, word [bp - 8]            ; 0x0c00
    mov word [party_cell_y], ax      ; 0x0c03
    mov ax, word [bp - 0xa]          ; 0x0c06
    mov word [party_map_piece], ax   ; 0x0c09
    ret                              ; 0x0c0c
