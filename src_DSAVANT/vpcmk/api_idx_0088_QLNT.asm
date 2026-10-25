; auto-generated
api_idx_0088_QLNT:
    mov ax, 0xff78                   ; 0x2c15
    call aztec_csav                  ; 0x2c18
    mov word [bp - 0x0002], 0        ; 0x2c1b
@..api_idx_0088_QLNT.l1:
    mov ax, 0x248                    ; 0x2c20
    imul word [bp + 0x4]             ; 0x2c23
    add ax, word [bp - 0x0002]       ; 0x2c26
    mov bx, ax                       ; 0x2c29
    mov al, byte [bx + party_records + pc_rec.flag] ; 0x2c2b
    sub ah, ah                       ; 0x2c2f
    mov cx, word [bp - 0x0002]       ; 0x2c31
    shl cx, 1                        ; 0x2c34
    mov bx, cx                       ; 0x2c36
    mov word [bx + slot_limit], ax   ; 0x2c38
    inc word [bp - 0x0002]           ; 0x2c3c
    mov ax, word [bp - 0x0002]       ; 0x2c3f
    cmp ax, strict word 0x22         ; 0x2c42
    jl short @..api_idx_0088_QLNT.l1 ; 0x2c45
    mov word [bp - 0x0002], 0        ; 0x2c47
@..api_idx_0088_QLNT.l2:
    mov ax, 0x14                     ; 0x2c4c
    imul word [bp - 0x0002]          ; 0x2c4f
    add ax, slot_label               ; 0x2c52
    push ax                          ; 0x2c55
    mov ax, word [bp - 0x0002]       ; 0x2c56
    add ax, MSG_WEAPONRY             ; 0x2c59
    push ax                          ; 0x2c5c
    call load_message_string         ; 0x2c5d
    add sp, byte 4                   ; 0x2c60
    inc word [bp - 0x0002]           ; 0x2c63
    mov ax, word [bp - 0x0002]       ; 0x2c66
    cmp ax, strict word 4            ; 0x2c69
    jle short @..api_idx_0088_QLNT.l2 ; 0x2c6c
    lea ax, word [bp - 0x0088]       ; 0x2c6e
    push ax                          ; 0x2c72
    push word [bp + 0x6]             ; 0x2c73
    call load_message_string         ; 0x2c76
    add sp, byte 4                   ; 0x2c79
    mov ax, 1                        ; 0x2c7c
    push ax                          ; 0x2c7f
    lea ax, word [bp - 0x0088]       ; 0x2c80
    push ax                          ; 0x2c84
    call api_idx_0004_PMIU           ; 0x2c85
    add sp, byte 4                   ; 0x2c88
    mov word [bp - 0x0006], 0        ; 0x2c8b
@..api_idx_0088_QLNT.l3:
    lea ax, word [bp - 0x0020]       ; 0x2c90
    push ax                          ; 0x2c93
    push word [bp - 0x0006]          ; 0x2c94
    push word [bp + 0x4]             ; 0x2c97
    call api_idx_0004_SNNO           ; 0x2c9a
    add sp, byte 6                   ; 0x2c9d
    mov word [bp - 0x0008], ax       ; 0x2ca0
    lea ax, word [bp - 0x0020]       ; 0x2ca3
    push ax                          ; 0x2ca6
    push word [bp - 0x0008]          ; 0x2ca7
    push word [bp - 0x0006]          ; 0x2caa
    push word [bp + 0x4]             ; 0x2cad
    call api_idx_0002_OGRO           ; 0x2cb0
    add sp, byte 8                   ; 0x2cb3
    mov word [bp - 0x0004], 0        ; 0x2cb6
@..api_idx_0088_QLNT.l4:
    mov ax, word [bp - 0x0004]       ; 0x2cbb
    shl ax, 1                        ; 0x2cbe
    mov bx, ax                       ; 0x2cc0
    add bx, bp                       ; 0x2cc2
    mov word [bx - 0x0038], 0        ; 0x2cc4
    mov ax, word [bp - 0x0004]       ; 0x2cc9
    shl ax, 1                        ; 0x2ccc
    shl ax, 1                        ; 0x2cce
    mov bx, ax                       ; 0x2cd0
    mov ax, word [word bx + 0x38]    ; 0x2cd2
    mov word [bp - 0x0002], ax       ; 0x2cd6
    jmp short @..api_idx_0088_QLNT.l8 ; 0x2cd9
@..api_idx_0088_QLNT.l5:
    mov ax, word [bp - 0x0002]       ; 0x2cdb
    shl ax, 1                        ; 0x2cde
    mov bx, ax                       ; 0x2ce0
    cmp word [bx + bss_95b0], byte 0 ; 0x2ce2
    jne short @..api_idx_0088_QLNT.l6 ; 0x2ce7
    mov ax, 0x248                    ; 0x2ce9
    imul word [bp + 0x4]             ; 0x2cec
    add ax, word [bp - 0x0002]       ; 0x2cef
    mov bx, ax                       ; 0x2cf2
    cmp byte [bx + party_records + pc_rec.flag], 0 ; 0x2cf4
    jbe short @..api_idx_0088_QLNT.l7 ; 0x2cf9
@..api_idx_0088_QLNT.l6:
    mov ax, word [bp - 0x0004]       ; 0x2cfb
    shl ax, 1                        ; 0x2cfe
    mov bx, ax                       ; 0x2d00
    add bx, bp                       ; 0x2d02
    mov word [bx - 0x0038], 1        ; 0x2d04
@..api_idx_0088_QLNT.l7:
    inc word [bp - 0x0002]           ; 0x2d09
@..api_idx_0088_QLNT.l8:
    mov ax, word [bp - 0x0004]       ; 0x2d0c
    shl ax, 1                        ; 0x2d0f
    shl ax, 1                        ; 0x2d11
    mov bx, ax                       ; 0x2d13
    mov ax, word [word bx + 0x3a]    ; 0x2d15
    cmp ax, word [bp - 0x0002]       ; 0x2d19
    jge short @..api_idx_0088_QLNT.l5 ; 0x2d1c
    inc word [bp - 0x0004]           ; 0x2d1e
    mov ax, word [bp - 0x0004]       ; 0x2d21
    cmp ax, strict word 4            ; 0x2d24
    jl short @..api_idx_0088_QLNT.l4 ; 0x2d27
    lea ax, word [bp - 0x0038]       ; 0x2d29
    push ax                          ; 0x2d2c
    lea ax, word [bp - 0x0020]       ; 0x2d2d
    push ax                          ; 0x2d30
    push word [bp - 0x0008]          ; 0x2d31
    push word [bp - 0x0006]          ; 0x2d34
    push word [bp + 0x4]             ; 0x2d37
    call api_idx_0032_HGIM           ; 0x2d3a
    add sp, byte 0x0a                ; 0x2d3d
    mov word [bp - 0x0006], ax       ; 0x2d40
    cmp word [bp - 0x0006], byte 4   ; 0x2d43
    je short @..api_idx_0088_QLNT.l9 ; 0x2d47
    jmp near @..api_idx_0088_QLNT.l3 ; 0x2d49
@..api_idx_0088_QLNT.l9:
    mov ax, 0xc6                     ; 0x2d4c
    push ax                          ; 0x2d4f
    mov ax, 0x13c                    ; 0x2d50
    push ax                          ; 0x2d53
    mov ax, 0x70                     ; 0x2d54
    push ax                          ; 0x2d57
    mov ax, 1                        ; 0x2d58
    push ax                          ; 0x2d5b
    call gfx_show_area               ; 0x2d5c
    add sp, byte 8                   ; 0x2d5f
    ret                              ; 0x2d62
