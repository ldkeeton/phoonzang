; auto-generated
apply_enclosed_cell_glyph:
    mov ax, 0                        ; 0x0ede
    call aztec_csav                  ; 0x0ee1
    mov ax, 0x24                     ; 0x0ee4
    imul word [bp + 4]               ; 0x0ee7
    mov cx, word [bp + 6]            ; 0x0eea
    shl cx, 1                        ; 0x0eed
    add ax, cx                       ; 0x0eef
    mov bx, ax                       ; 0x0ef1
    mov ax, word [bx + map_ns_wall_glyphs] ; 0x0ef3
    cmp ax, word [map_wall2_ns_glyph] ; 0x0ef7
    jne short .forward1              ; 0x0efb
    mov ax, word [bx + map_ew_wall_glyphs] ; 0x0efd
    cmp ax, word [map_wall2_ew_glyph] ; 0x0f01
    jne short .forward1              ; 0x0f05
    mov ax, word [bx + map_ns_wall_glyphs_south] ; 0x0f07
    cmp ax, word [map_wall2_ns_glyph] ; 0x0f0b
    jne short .forward1              ; 0x0f0f
    mov ax, word [bx + map_ew_wall_glyphs_west] ; 0x0f11
    cmp ax, word [map_wall2_ew_glyph] ; 0x0f15
    jne short .forward1              ; 0x0f19
    mov ax, word [map_wall2_enclosed_glyph] ; 0x0f1b
    mov word [bx + map_floor_glyphs], ax ; 0x0f1e
.forward1:
    mov ax, word [bx + map_ns_wall_glyphs] ; 0x0f22
    cmp ax, word [map_wall4_ns_glyph] ; 0x0f26
    jne short .return1               ; 0x0f2a
    mov ax, word [bx + map_ew_wall_glyphs] ; 0x0f2c
    cmp ax, word [map_wall4_ew_glyph] ; 0x0f30
    jne short .return1               ; 0x0f34
    mov ax, word [bx + map_ns_wall_glyphs_south] ; 0x0f36
    cmp ax, word [map_wall4_ns_glyph] ; 0x0f3a
    jne short .return1               ; 0x0f3e
    mov ax, word [bx + map_ew_wall_glyphs_west] ; 0x0f40
    cmp ax, word [map_wall4_ew_glyph] ; 0x0f44
    jne short .return1               ; 0x0f48
    mov ax, word [map_wall4_enclosed_glyph] ; 0x0f4a
    mov word [bx + map_floor_glyphs], ax ; 0x0f4d
.return1:
    ret                              ; 0x0f51
