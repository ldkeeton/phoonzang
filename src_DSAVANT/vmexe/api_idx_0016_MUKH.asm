; auto-generated
api_idx_0016_MUKH:
    mov ax, 0xffea                   ; 0x0e1a
    call aztec_csav                  ; 0x0e1d
    mov ax, 6                        ; 0x0e20
    imul word [bp + 0x4]             ; 0x0e23
    mov cx, word [bp + 0x6]          ; 0x0e26
    shl cx, 1                        ; 0x0e29
    add ax, cx                       ; 0x0e2b
    mov bx, ax                       ; 0x0e2d
    cmp word [bx + bss_90ca], byte 0 ; 0x0e2f
    jl short @..api_idx_0016_MUKH.l1 ; 0x0e34
    cmp word [bx + bss_90ca], byte 6 ; 0x0e36
    jle short @..api_idx_0016_MUKH.l2 ; 0x0e3b
@..api_idx_0016_MUKH.l1:
    mov word [bx + bss_90ca], 0xffff ; 0x0e3d
    ret                              ; 0x0e43
@..api_idx_0016_MUKH.l2:
    cmp word [bss_8320], byte 1      ; 0x0e44
    jne short @..api_idx_0016_MUKH.l3 ; 0x0e49
    cmp word [bx + bss_90ca], byte 1 ; 0x0e4b
    jne short @..api_idx_0016_MUKH.l3 ; 0x0e50
    mov word [bss_90dc], 1           ; 0x0e52
@..api_idx_0016_MUKH.l3:
    mov word [bp - 0x0002], 7        ; 0x0e58
    mov word [bp - 0x0004], 0        ; 0x0e5d
    mov ax, 0x64                     ; 0x0e62
    mov cx, word [bp + 0x4]          ; 0x0e65
    shl cx, 1                        ; 0x0e68
    mov bx, cx                       ; 0x0e6a
    mov cx, word [bx + 0x576]        ; 0x0e6c
    sub ax, cx                       ; 0x0e70
    mov word [bp - 0x0006], ax       ; 0x0e72
    mov ax, 6                        ; 0x0e75
    imul word [bp + 0x4]             ; 0x0e78
    mov cx, word [bp + 0x6]          ; 0x0e7b
    shl cx, 1                        ; 0x0e7e
    add ax, cx                       ; 0x0e80
    mov bx, ax                       ; 0x0e82
    mov ax, word [bx + bss_90ca]     ; 0x0e84
    inc ax                           ; 0x0e88
    mov word [bp - 0x0008], ax       ; 0x0e89
    mov al, byte [bp - 0x0008]       ; 0x0e8c
    mov byte [bp - 0x0014], al       ; 0x0e8f
    mov byte [bp - 0x0013], 0        ; 0x0e92
    mov ax, 0x20                     ; 0x0e96
    cmp word [bp + 0x4], byte 0      ; 0x0e99
    je short @..api_idx_0016_MUKH.l4 ; 0x0e9d
    mov ax, 0xc                      ; 0x0e9f
    mov cx, word [bp + 0x4]          ; 0x0ea2
    cmp cx, byte 1                   ; 0x0ea5
    jne short @..api_idx_0016_MUKH.l4 ; 0x0ea8
    mov ax, 0x16                     ; 0x0eaa
@..api_idx_0016_MUKH.l4:
    mov word [bp - 0x0016], ax       ; 0x0ead
    cmp word [bp + 0x6], byte 0      ; 0x0eb0
    jne short @..api_idx_0016_MUKH.l5 ; 0x0eb4
    add word [bp - 0x0016], byte 0xfb ; 0x0eb6
@..api_idx_0016_MUKH.l5:
    lea ax, word [bp - 0x0014]       ; 0x0eba
    push ax                          ; 0x0ebd
    push word [bp - 0x0006]          ; 0x0ebe
    push word [bp - 0x0004]          ; 0x0ec1
    mov ax, 0xf8                     ; 0x0ec4
    push ax                          ; 0x0ec7
    mov ax, 0x48                     ; 0x0ec8
    push ax                          ; 0x0ecb
    mov ax, 0x15e                    ; 0x0ecc
    imul word [bp - 0x0002]          ; 0x0ecf
    push ax                          ; 0x0ed2
    mov ax, 6                        ; 0x0ed3
    imul word [bp + 0x4]             ; 0x0ed6
    mov cx, ax                       ; 0x0ed9
    pop ax                           ; 0x0edb
    add ax, cx                       ; 0x0edc
    mov cx, word [bp + 0x6]          ; 0x0ede
    shl cx, 1                        ; 0x0ee1
    add ax, cx                       ; 0x0ee3
    mov bx, ax                       ; 0x0ee5
    mov al, byte [bx + slot_recs + slot_rec.cell_ofs + 0x1] ; 0x0ee7
    cbw                              ; 0x0eeb
    push ax                          ; 0x0eec
    mov ax, 0x15e                    ; 0x0eed
    imul word [bp - 0x0002]          ; 0x0ef0
    add ax, word [bp - 0x0008]       ; 0x0ef3
    mov bx, ax                       ; 0x0ef6
    mov al, byte [bx + slot_recs + slot_rec.glyph_y] ; 0x0ef8
    sub ah, ah                       ; 0x0efc
    mov cx, ax                       ; 0x0efe
    pop ax                           ; 0x0f00
    add ax, cx                       ; 0x0f01
    push ax                          ; 0x0f03
    mov ax, 0x15e                    ; 0x0f04
    imul word [bp - 0x0002]          ; 0x0f07
    push ax                          ; 0x0f0a
    mov ax, 6                        ; 0x0f0b
    imul word [bp + 0x4]             ; 0x0f0e
    mov cx, ax                       ; 0x0f11
    pop ax                           ; 0x0f13
    add ax, cx                       ; 0x0f14
    mov cx, word [bp + 0x6]          ; 0x0f16
    shl cx, 1                        ; 0x0f19
    add ax, cx                       ; 0x0f1b
    mov bx, ax                       ; 0x0f1d
    mov al, byte [bx + slot_recs + slot_rec.cell_ofs] ; 0x0f1f
    cbw                              ; 0x0f23
    push ax                          ; 0x0f24
    mov ax, 0x15e                    ; 0x0f25
    imul word [bp - 0x0002]          ; 0x0f28
    mov cx, word [bp - 0x0008]       ; 0x0f2b
    shl cx, 1                        ; 0x0f2e
    add ax, cx                       ; 0x0f30
    mov bx, ax                       ; 0x0f32
    mov al, byte [bx + slot_recs + slot_rec.glyph_x] ; 0x0f34
    sub ah, ah                       ; 0x0f38
    mov cx, ax                       ; 0x0f3a
    pop ax                           ; 0x0f3c
    add ax, cx                       ; 0x0f3d
    push ax                          ; 0x0f3f
    push word [bp - 0x0002]          ; 0x0f40
    push word [bp - 0x0016]          ; 0x0f43
    call add_overlay_item            ; 0x0f46
    add sp, byte 0x12                ; 0x0f49
    cmp word [bss_8320], byte 0      ; 0x0f4c
    jne short @..api_idx_0016_MUKH.l6 ; 0x0f51
    mov ax, 6                        ; 0x0f53
    imul word [bp + 0x4]             ; 0x0f56
    mov cx, word [bp + 0x6]          ; 0x0f59
    shl cx, 1                        ; 0x0f5c
    add ax, cx                       ; 0x0f5e
    mov bx, ax                       ; 0x0f60
    inc word [bx + bss_90ca]         ; 0x0f62
@..api_idx_0016_MUKH.l6:
    ret                              ; 0x0f66
