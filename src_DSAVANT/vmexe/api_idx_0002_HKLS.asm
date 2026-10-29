; auto-generated
api_idx_0002_HKLS:
    mov ax, 0xfffe                   ; 0x2d6b
    call aztec_csav                  ; 0x2d6e
    mov word [bss_91d6], 2           ; 0x2d71
    cmp word [bp + 4], byte 0        ; 0x2d77
    jle short .forward2              ; 0x2d7b
    cmp word [bp + 4], byte 6        ; 0x2d7d
    jge short .forward2              ; 0x2d81
    mov word [bp - 2], 1             ; 0x2d83
    jmp short .forward1              ; 0x2d88
.back1:
    push word [bp + 0x14]            ; 0x2d8a
    push word [bp + 0x12]            ; 0x2d8d
    push word [bp + 0x10]            ; 0x2d90
    push word [bp + 0xe]             ; 0x2d93
    push word [bp + 0xc]             ; 0x2d96
    push word [bp + 0xa]             ; 0x2d99
    push word [bp + 8]               ; 0x2d9c
    push word [bp + 6]               ; 0x2d9f
    push word [bp - 2]               ; 0x2da2
    call api_idx_0006_LIRP           ; 0x2da5
    add sp, byte 0x12                ; 0x2da8
    inc word [bp - 2]                ; 0x2dab
.forward1:
    mov ax, word [bp - 2]            ; 0x2dae
    cmp ax, word [party_member_count] ; 0x2db1
    jle short .back1                 ; 0x2db5
    jmp short .return1               ; 0x2db7
.forward2:
    push word [bp + 0x14]            ; 0x2db9
    push word [bp + 0x12]            ; 0x2dbc
    push word [bp + 0x10]            ; 0x2dbf
    push word [bp + 0xe]             ; 0x2dc2
    push word [bp + 0xc]             ; 0x2dc5
    push word [bp + 0xa]             ; 0x2dc8
    push word [bp + 8]               ; 0x2dcb
    push word [bp + 6]               ; 0x2dce
    mov ax, 0                        ; 0x2dd1
    push ax                          ; 0x2dd4
    call api_idx_0006_LIRP           ; 0x2dd5
    add sp, byte 0x12                ; 0x2dd8
    mov bx, word [bss_848e]          ; 0x2ddb
    cmp byte [bx + rec_848e.f_01a1], 0 ; 0x2ddf
    jbe short .return1               ; 0x2de4
    push word [bp + 0x14]            ; 0x2de6
    push word [bp + 0x12]            ; 0x2de9
    push word [bp + 0x10]            ; 0x2dec
    push word [bp + 0xe]             ; 0x2def
    push word [bp + 0xc]             ; 0x2df2
    push word [bp + 0xa]             ; 0x2df5
    push word [bp + 8]               ; 0x2df8
    push word [bp + 6]               ; 0x2dfb
    mov ax, 6                        ; 0x2dfe
    push ax                          ; 0x2e01
    call api_idx_0006_LIRP           ; 0x2e02
    add sp, byte 0x12                ; 0x2e05
.return1:
    ret                              ; 0x2e08
