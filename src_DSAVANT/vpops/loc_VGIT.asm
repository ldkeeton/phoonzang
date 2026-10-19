; auto-generated
loc_VGIT:
    mov ax, 0                        ; 0x1ad7
    call aztec_csav                  ; 0x1ada
    mov ax, word [bp + 0x6]          ; 0x1add
    add ax, strict word 6            ; 0x1ae0
    push ax                          ; 0x1ae3
    mov ax, word [bp + 0x4]          ; 0x1ae4
    add ax, strict word 0x14         ; 0x1ae7
    push ax                          ; 0x1aea
    push word [bp + 0x6]             ; 0x1aeb
    push word [bp + 0x4]             ; 0x1aee
    call ds_app_OPOL                 ; 0x1af1
    add sp, byte 8                   ; 0x1af4
    mov ax, word [bp + 0x8]          ; 0x1af7
    shl ax, 1                        ; 0x1afa
    shl ax, 1                        ; 0x1afc
    mov bx, ax                       ; 0x1afe
    push word [word bx + 0x8]        ; 0x1b00
    mov ax, word [bp + 0x6]          ; 0x1b04
    add ax, strict word 6            ; 0x1b07
    push ax                          ; 0x1b0a
    mov ax, word [bp + 0x4]          ; 0x1b0b
    add ax, strict word 0x14         ; 0x1b0e
    push ax                          ; 0x1b11
    push word [bp + 0x6]             ; 0x1b12
    push word [bp + 0x4]             ; 0x1b15
    call gfx_entry_18                ; 0x1b18
    add sp, byte 0x0a                ; 0x1b1b
    mov ax, word [bp + 0x6]          ; 0x1b1e
    inc ax                           ; 0x1b21
    push ax                          ; 0x1b22
    mov ax, word [bp + 0x4]          ; 0x1b23
    inc ax                           ; 0x1b26
    inc ax                           ; 0x1b27
    push ax                          ; 0x1b28
    call gfx_entry_13                ; 0x1b29
    add sp, byte 4                   ; 0x1b2c
    cmp word [bp + 0xa], byte 0      ; 0x1b2f
    jle short @..loc_VGIT.l1         ; 0x1b33
    mov ax, word [bp + 0xa]          ; 0x1b35
    cmp ax, word [bp + 0xc]          ; 0x1b38
    jg short @..loc_VGIT.l1          ; 0x1b3b
    mov ax, 0                        ; 0x1b3d
    push ax                          ; 0x1b40
    mov ax, 1                        ; 0x1b41
    push ax                          ; 0x1b44
    call gfx_entry_12                ; 0x1b45
    add sp, byte 4                   ; 0x1b48
    mov ax, 0                        ; 0x1b4b
    push ax                          ; 0x1b4e
    mov ax, 3                        ; 0x1b4f
    push ax                          ; 0x1b52
    push word [bp + 0xa]             ; 0x1b53
    call ds_app_GUML                 ; 0x1b56
    add sp, byte 6                   ; 0x1b59
    jmp short @..loc_VGIT.l2         ; 0x1b5c
@..loc_VGIT.l1:
    mov ax, 0                        ; 0x1b5e
    push ax                          ; 0x1b61
    push ax                          ; 0x1b62
    call gfx_entry_12                ; 0x1b63
    add sp, byte 4                   ; 0x1b66
    mov ax, 0                        ; 0x1b69
    push ax                          ; 0x1b6c
    mov ax, 0x90bb                   ; 0x1b6d
    push ax                          ; 0x1b70
    call ds_string_loc_QRJV          ; 0x1b71
    add sp, byte 4                   ; 0x1b74
@..loc_VGIT.l2:
    ret                              ; 0x1b77
