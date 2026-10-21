; auto-generated
loc_HRLN:
    mov ax, 0                        ; 0x2e9e
    call aztec_csav                  ; 0x2ea1
    mov ax, word [bp + 0x6]          ; 0x2ea4
    add ax, strict word 6            ; 0x2ea7
    push ax                          ; 0x2eaa
    mov ax, word [bp + 0x4]          ; 0x2eab
    add ax, strict word 0x14         ; 0x2eae
    push ax                          ; 0x2eb1
    push word [bp + 0x6]             ; 0x2eb2
    push word [bp + 0x4]             ; 0x2eb5
    call ds_app_OPOL                 ; 0x2eb8
    add sp, byte 8                   ; 0x2ebb
    mov ax, word [bp + 0x8]          ; 0x2ebe
    shl ax, 1                        ; 0x2ec1
    shl ax, 1                        ; 0x2ec3
    mov bx, ax                       ; 0x2ec5
    push word [word bx + 0x8]        ; 0x2ec7
    mov ax, word [bp + 0x6]          ; 0x2ecb
    add ax, strict word 6            ; 0x2ece
    push ax                          ; 0x2ed1
    mov ax, word [bp + 0x4]          ; 0x2ed2
    add ax, strict word 0x14         ; 0x2ed5
    push ax                          ; 0x2ed8
    push word [bp + 0x6]             ; 0x2ed9
    push word [bp + 0x4]             ; 0x2edc
    call gfx_fill_area               ; 0x2edf
    add sp, byte 0x0a                ; 0x2ee2
    mov ax, word [bp + 0x6]          ; 0x2ee5
    inc ax                           ; 0x2ee8
    push ax                          ; 0x2ee9
    mov ax, word [bp + 0x4]          ; 0x2eea
    inc ax                           ; 0x2eed
    inc ax                           ; 0x2eee
    push ax                          ; 0x2eef
    call gfx_set_text_pos            ; 0x2ef0
    add sp, byte 4                   ; 0x2ef3
    cmp word [bp + 0xa], byte 0      ; 0x2ef6
    jle short @..loc_HRLN.l1         ; 0x2efa
    mov ax, word [bp + 0xa]          ; 0x2efc
    cmp ax, word [bp + 0xc]          ; 0x2eff
    jg short @..loc_HRLN.l1          ; 0x2f02
    mov ax, 0                        ; 0x2f04
    push ax                          ; 0x2f07
    mov ax, 1                        ; 0x2f08
    push ax                          ; 0x2f0b
    call gfx_set_text_color          ; 0x2f0c
    add sp, byte 4                   ; 0x2f0f
    mov ax, 0                        ; 0x2f12
    push ax                          ; 0x2f15
    mov ax, 3                        ; 0x2f16
    push ax                          ; 0x2f19
    push word [bp + 0xa]             ; 0x2f1a
    call ds_app_GUML                 ; 0x2f1d
    add sp, byte 6                   ; 0x2f20
    jmp short @..loc_HRLN.l2         ; 0x2f23
@..loc_HRLN.l1:
    mov ax, 0                        ; 0x2f25
    push ax                          ; 0x2f28
    push ax                          ; 0x2f29
    call gfx_set_text_color          ; 0x2f2a
    add sp, byte 4                   ; 0x2f2d
    mov ax, 0                        ; 0x2f30
    push ax                          ; 0x2f33
    mov ax, dseg_92d2                ; 0x2f34
    push ax                          ; 0x2f37
    call ds_string_loc_QRJV          ; 0x2f38
    add sp, byte 4                   ; 0x2f3b
@..loc_HRLN.l2:
    ret                              ; 0x2f3e
