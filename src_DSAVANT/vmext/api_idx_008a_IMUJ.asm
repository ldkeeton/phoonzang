; auto-generated
api_idx_008a_IMUJ:
    mov ax, 0xff76                   ; 0x0c1f
    call aztec_csav                  ; 0x0c22
    mov ax, 0                        ; 0x0c25
    push ax                          ; 0x0c28
    mov ax, 0x80                     ; 0x0c29
    push ax                          ; 0x0c2c
    lea ax, word [bp - 0x8a]         ; 0x0c2d
    push ax                          ; 0x0c31
    call aztec_setmem                ; 0x0c32
    add sp, byte 6                   ; 0x0c35
    mov word [party_return_state], 0x17 ; 0x0c38
    mov word [game_state], 5         ; 0x0c3e
    mov ax, 0x98                     ; 0x0c44
    push ax                          ; 0x0c47
    mov ax, 0x13f                    ; 0x0c48
    push ax                          ; 0x0c4b
    mov ax, 0x92                     ; 0x0c4c
    push ax                          ; 0x0c4f
    mov ax, 0                        ; 0x0c50
    push ax                          ; 0x0c53
    call call_show_area              ; 0x0c54
    add sp, byte 8                   ; 0x0c57
    mov word [bp - 6], 0             ; 0x0c5a
    mov ax, 1                        ; 0x0c5f
    push ax                          ; 0x0c62
    mov ax, word [party_map_piece]   ; 0x0c63
    mov cx, 6                        ; 0x0c66
    shl ax, cl                       ; 0x0c69
    mov cx, word [party_cell_y]      ; 0x0c6b
    shl cx, 1                        ; 0x0c6f
    shl cx, 1                        ; 0x0c71
    shl cx, 1                        ; 0x0c73
    add ax, cx                       ; 0x0c75
    add ax, word [party_cell_x]      ; 0x0c77
    push ax                          ; 0x0c7b
    lea ax, word [bp - 0x8a]         ; 0x0c7c
    push ax                          ; 0x0c80
    call set_bitmap_bit              ; 0x0c81
    add sp, byte 6                   ; 0x0c84
    mov ax, word [party_tag]         ; 0x0c87
    mov word [bp - 2], ax            ; 0x0c8a
    mov ax, word [game_state_arg]    ; 0x0c8d
    cmp ax, word [previous_game_state_arg] ; 0x0c90
    jne short .forward1              ; 0x0c94
    mov ax, word [previous_party_tag] ; 0x0c96
    inc ax                           ; 0x0c99
    inc ax                           ; 0x0c9a
    mov cx, 4                        ; 0x0c9b
    cwd                              ; 0x0c9e
    idiv cx                          ; 0x0c9f
    mov word [bp - 2], dx            ; 0x0ca1
.forward1:
    mov ax, word [party_tag]         ; 0x0ca4
    inc ax                           ; 0x0ca7
    inc ax                           ; 0x0ca8
    inc ax                           ; 0x0ca9
    mov cx, 4                        ; 0x0caa
    cwd                              ; 0x0cad
    idiv cx                          ; 0x0cae
    mov ax, dx                       ; 0x0cb0
    cmp ax, word [bp - 2]            ; 0x0cb2
    jne short .forward2              ; 0x0cb5
    mov ax, 3                        ; 0x0cb7
    jmp short .forward3              ; 0x0cba
.forward2:
    mov ax, 1                        ; 0x0cbc
.forward3:
    mov word [bp - 4], ax            ; 0x0cbf
.back1:
    mov ax, word [party_tag]         ; 0x0cc2
    cmp ax, word [bp - 2]            ; 0x0cc5
    je short .forward6               ; 0x0cc8
    add ax, word [bp - 4]            ; 0x0cca
    mov cx, 4                        ; 0x0ccd
    cwd                              ; 0x0cd0
    idiv cx                          ; 0x0cd1
    mov word [party_tag], dx         ; 0x0cd3
    call party_redraw_interval_elapsed ; 0x0cd7
    test ax, ax                      ; 0x0cda
    je short .forward4               ; 0x0cdc
    mov ax, word [party_status_frame] ; 0x0cde
    inc ax                           ; 0x0ce1
    mov cx, 2                        ; 0x0ce2
    cwd                              ; 0x0ce5
    idiv cx                          ; 0x0ce6
    mov word [party_status_frame], dx ; 0x0ce8
.forward4:
    call redraw_maze_view            ; 0x0cec
    cmp word [bp - 6], byte 0        ; 0x0cef
    jne short .forward5              ; 0x0cf3
    call loc_VUVO                    ; 0x0cf5
    mov word [bp - 6], ax            ; 0x0cf8
.forward5:
    mov ax, 2                        ; 0x0cfb
    push ax                          ; 0x0cfe
    call wait_for_hotspot_timeout    ; 0x0cff
    pop cx                           ; 0x0d02
    jmp short .back1                 ; 0x0d03
.forward6:
    mov word [bp - 8], 0xffff        ; 0x0d05
.back2:
    mov word [bp - 0xa], 0           ; 0x0d0a
    call loc_IVLM                    ; 0x0d0f
    cmp word [bp - 8], byte -1       ; 0x0d12
    jne short .forward7              ; 0x0d16
    jmp near .forward12              ; 0x0d18
.forward7:
    mov ax, 4                        ; 0x0d1b
    push ax                          ; 0x0d1e
    call random_below                ; 0x0d1f
    pop cx                           ; 0x0d22
    test ax, ax                      ; 0x0d23
    jne short .forward12             ; 0x0d25
    mov ax, word [party_tag]         ; 0x0d27
    add ax, word [bp - 8]            ; 0x0d2a
    mov cx, 4                        ; 0x0d2d
    cwd                              ; 0x0d30
    idiv cx                          ; 0x0d31
    mov word [party_tag], dx         ; 0x0d33
    lea ax, word [bp - 0x8a]         ; 0x0d37
    push ax                          ; 0x0d3b
    call api_idx_0002_JSVP           ; 0x0d3c
    pop cx                           ; 0x0d3f
    test ax, ax                      ; 0x0d40
    jne short .forward9              ; 0x0d42
    cmp word [bp - 6], byte 0        ; 0x0d44
    jne short .forward8              ; 0x0d48
    call loc_VUVO                    ; 0x0d4a
    mov word [bp - 6], ax            ; 0x0d4d
.forward8:
    call api_idx_000a_ISJL           ; 0x0d50
    mov word [bp - 0xa], 1           ; 0x0d53
    jmp short .forward12             ; 0x0d58
.forward9:
    mov ax, word [party_tag]         ; 0x0d5a
    inc ax                           ; 0x0d5d
    inc ax                           ; 0x0d5e
    mov cx, 4                        ; 0x0d5f
    cwd                              ; 0x0d62
    idiv cx                          ; 0x0d63
    mov word [party_tag], dx         ; 0x0d65
    lea ax, word [bp - 0x8a]         ; 0x0d69
    push ax                          ; 0x0d6d
    call api_idx_0002_JSVP           ; 0x0d6e
    pop cx                           ; 0x0d71
    test ax, ax                      ; 0x0d72
    jne short .forward11             ; 0x0d74
    cmp word [bp - 6], byte 0        ; 0x0d76
    jne short .forward10             ; 0x0d7a
    call loc_VUVO                    ; 0x0d7c
    mov word [bp - 6], ax            ; 0x0d7f
.forward10:
    call api_idx_000a_ISJL           ; 0x0d82
    mov word [bp - 0xa], 1           ; 0x0d85
    jmp short .forward12             ; 0x0d8a
.forward11:
    mov ax, word [previous_party_tag] ; 0x0d8c
    mov word [party_tag], ax         ; 0x0d8f
.forward12:
    cmp word [bp - 0xa], byte 0      ; 0x0d92
    je short .forward13              ; 0x0d96
    jmp near .forward19              ; 0x0d98
.forward13:
    lea ax, word [bp - 0x8a]         ; 0x0d9b
    push ax                          ; 0x0d9f
    call api_idx_0002_JSVP           ; 0x0da0
    pop cx                           ; 0x0da3
    cmp ax, strict word 1            ; 0x0da4
    je short .forward14              ; 0x0da7
    jmp near .forward19              ; 0x0da9
.forward14:
    mov ax, 2                        ; 0x0dac
    push ax                          ; 0x0daf
    call random_below                ; 0x0db0
    pop cx                           ; 0x0db3
    test ax, ax                      ; 0x0db4
    jne short .forward15             ; 0x0db6
    mov ax, 1                        ; 0x0db8
    jmp short .forward16             ; 0x0dbb
.forward15:
    mov ax, 3                        ; 0x0dbd
.forward16:
    add ax, word [party_tag]         ; 0x0dc0
    mov cx, 4                        ; 0x0dc4
    cwd                              ; 0x0dc7
    idiv cx                          ; 0x0dc8
    mov word [party_tag], dx         ; 0x0dca
    lea ax, word [bp - 0x8a]         ; 0x0dce
    push ax                          ; 0x0dd2
    call api_idx_0002_JSVP           ; 0x0dd3
    pop cx                           ; 0x0dd6
    test ax, ax                      ; 0x0dd7
    jne short .forward17             ; 0x0dd9
    call api_idx_000a_ISJL           ; 0x0ddb
    jmp short .forward19             ; 0x0dde
.forward17:
    mov ax, word [party_tag]         ; 0x0de0
    inc ax                           ; 0x0de3
    inc ax                           ; 0x0de4
    mov cx, 4                        ; 0x0de5
    cwd                              ; 0x0de8
    idiv cx                          ; 0x0de9
    mov word [party_tag], dx         ; 0x0deb
    lea ax, word [bp - 0x8a]         ; 0x0def
    push ax                          ; 0x0df3
    call api_idx_0002_JSVP           ; 0x0df4
    pop cx                           ; 0x0df7
    test ax, ax                      ; 0x0df8
    jne short .forward18             ; 0x0dfa
    call api_idx_000a_ISJL           ; 0x0dfc
    jmp short .forward19             ; 0x0dff
.forward18:
    mov ax, word [previous_party_tag] ; 0x0e01
    mov word [party_tag], ax         ; 0x0e04
    mov ax, 0x98                     ; 0x0e07
    push ax                          ; 0x0e0a
    mov ax, 0x13f                    ; 0x0e0b
    push ax                          ; 0x0e0e
    mov ax, 0x92                     ; 0x0e0f
    push ax                          ; 0x0e12
    mov ax, 0                        ; 0x0e13
    push ax                          ; 0x0e16
    call call_show_area              ; 0x0e17
    add sp, byte 8                   ; 0x0e1a
    ret                              ; 0x0e1d
.forward19:
    mov ax, 1                        ; 0x0e1e
    push ax                          ; 0x0e21
    mov ax, word [party_map_piece]   ; 0x0e22
    mov cx, 6                        ; 0x0e25
    shl ax, cl                       ; 0x0e28
    mov cx, word [party_cell_y]      ; 0x0e2a
    shl cx, 1                        ; 0x0e2e
    shl cx, 1                        ; 0x0e30
    shl cx, 1                        ; 0x0e32
    add ax, cx                       ; 0x0e34
    add ax, word [party_cell_x]      ; 0x0e36
    push ax                          ; 0x0e3a
    lea ax, word [bp - 0x8a]         ; 0x0e3b
    push ax                          ; 0x0e3f
    call set_bitmap_bit              ; 0x0e40
    add sp, byte 6                   ; 0x0e43
    call party_redraw_interval_elapsed ; 0x0e46
    test ax, ax                      ; 0x0e49
    je short .forward20              ; 0x0e4b
    mov ax, word [party_status_frame] ; 0x0e4d
    inc ax                           ; 0x0e50
    mov cx, 2                        ; 0x0e51
    cwd                              ; 0x0e54
    idiv cx                          ; 0x0e55
    mov word [party_status_frame], dx ; 0x0e57
.forward20:
    call redraw_maze_view            ; 0x0e5b
    cmp word [bp - 6], byte 0        ; 0x0e5e
    jne short .forward21             ; 0x0e62
    call loc_VUVO                    ; 0x0e64
    mov word [bp - 6], ax            ; 0x0e67
.forward21:
    mov ax, 2                        ; 0x0e6a
    push ax                          ; 0x0e6d
    call wait_for_hotspot_timeout    ; 0x0e6e
    pop cx                           ; 0x0e71
    mov ax, 0x98                     ; 0x0e72
    push ax                          ; 0x0e75
    mov ax, 0x13f                    ; 0x0e76
    push ax                          ; 0x0e79
    mov ax, 0x92                     ; 0x0e7a
    push ax                          ; 0x0e7d
    mov ax, 0                        ; 0x0e7e
    push ax                          ; 0x0e81
    call call_show_area              ; 0x0e82
    add sp, byte 8                   ; 0x0e85
    mov ax, 2                        ; 0x0e88
    push ax                          ; 0x0e8b
    call random_below                ; 0x0e8c
    pop cx                           ; 0x0e8f
    test ax, ax                      ; 0x0e90
    je short .forward22              ; 0x0e92
    mov ax, 1                        ; 0x0e94
    jmp short .forward23             ; 0x0e97
.forward22:
    mov ax, 3                        ; 0x0e99
.forward23:
    mov word [bp - 8], ax            ; 0x0e9c
    dec word [bp + 4]                ; 0x0e9f
    cmp word [bp + 4], byte 0        ; 0x0ea2
    jle short .return1               ; 0x0ea6
    jmp near .back2                  ; 0x0ea8
.return1:
    ret                              ; 0x0eab
