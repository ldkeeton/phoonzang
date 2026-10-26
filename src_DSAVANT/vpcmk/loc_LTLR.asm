; auto-generated
loc_LTLR:
    mov ax, 0                        ; 0x4c82
    call aztec_csav                  ; 0x4c85
    mov ax, 0x248                    ; 0x4c88
    imul word [bp + 0x4]             ; 0x4c8b
    mov bx, ax                       ; 0x4c8e
    cmp byte [bx + party_records + pc_rec.glyph_set], 5 ; 0x4c90
    jne short @..loc_LTLR.l1         ; 0x4c95
    mov ax, 0x180                    ; 0x4c97
    push ax                          ; 0x4c9a
    mov ax, 0x13c                    ; 0x4c9b
    push ax                          ; 0x4c9e
    mov ax, 0x18f                    ; 0x4c9f
    push ax                          ; 0x4ca2
    mov ax, 0x18e                    ; 0x4ca3
    push ax                          ; 0x4ca6
    mov ax, 0x18d                    ; 0x4ca7
    push ax                          ; 0x4caa
    push word [bp + 0x4]             ; 0x4cab
    call loc_VPRH                    ; 0x4cae
    add sp, byte 0x0c                ; 0x4cb1
    ret                              ; 0x4cb4
@..loc_LTLR.l1:
    mov ax, 0x248                    ; 0x4cb5
    imul word [bp + 0x4]             ; 0x4cb8
    mov bx, ax                       ; 0x4cbb
    mov al, byte [bx + party_records + pc_rec.profession] ; 0x4cbd
    sub ah, ah                       ; 0x4cc1
    jmp near @..loc_LTLR.l2          ; 0x4cc3
jumptable_4e83_case_0:
    mov ax, 0x8d                     ; 0x4cc6
    push ax                          ; 0x4cc9
    mov ax, 0x82                     ; 0x4cca
    push ax                          ; 0x4ccd
    mov ax, 0x84                     ; 0x4cce
    push ax                          ; 0x4cd1
    mov ax, 0x87                     ; 0x4cd2
    push ax                          ; 0x4cd5
    mov ax, 8                        ; 0x4cd6
    push ax                          ; 0x4cd9
    push word [bp + 0x4]             ; 0x4cda
    call loc_VPRH                    ; 0x4cdd
    add sp, byte 0x0c                ; 0x4ce0
    jmp near @..loc_LTLR.l3          ; 0x4ce3
jumptable_4e83_case_1:
    mov ax, 0x14f                    ; 0x4ce6
    push ax                          ; 0x4ce9
    mov ax, 0x82                     ; 0x4cea
    push ax                          ; 0x4ced
    mov ax, 0x7b                     ; 0x4cee
    push ax                          ; 0x4cf1
    mov ax, 0x7a                     ; 0x4cf2
    push ax                          ; 0x4cf5
    mov ax, 0x12                     ; 0x4cf6
    push ax                          ; 0x4cf9
    push word [bp + 0x4]             ; 0x4cfa
    call loc_VPRH                    ; 0x4cfd
    add sp, byte 0x0c                ; 0x4d00
    jmp near @..loc_LTLR.l3          ; 0x4d03
jumptable_4e83_case_2:
    mov ax, 0x13c                    ; 0x4d06
    push ax                          ; 0x4d09
    mov ax, 0x82                     ; 0x4d0a
    push ax                          ; 0x4d0d
    mov ax, 0x7b                     ; 0x4d0e
    push ax                          ; 0x4d11
    mov ax, 0x7a                     ; 0x4d12
    push ax                          ; 0x4d15
    mov ax, 0x18                     ; 0x4d16
    push ax                          ; 0x4d19
    push word [bp + 0x4]             ; 0x4d1a
    call loc_VPRH                    ; 0x4d1d
    add sp, byte 0x0c                ; 0x4d20
    jmp near @..loc_LTLR.l3          ; 0x4d23
jumptable_4e83_case_3:
    mov ax, 0x1b                     ; 0x4d26
    push ax                          ; 0x4d29
    mov ax, 0x83                     ; 0x4d2a
    push ax                          ; 0x4d2d
    mov ax, 0x79                     ; 0x4d2e
    push ax                          ; 0x4d31
    mov ax, 0x78                     ; 0x4d32
    push ax                          ; 0x4d35
    mov ax, 6                        ; 0x4d36
    push ax                          ; 0x4d39
    push word [bp + 0x4]             ; 0x4d3a
    call loc_VPRH                    ; 0x4d3d
    add sp, byte 0x0c                ; 0x4d40
    jmp near @..loc_LTLR.l3          ; 0x4d43
jumptable_4e83_case_4:
    mov ax, 0x83                     ; 0x4d46
    push ax                          ; 0x4d49
    mov ax, 0x7f                     ; 0x4d4a
    push ax                          ; 0x4d4d
    mov ax, 0x7e                     ; 0x4d4e
    push ax                          ; 0x4d51
    mov ax, 0x21                     ; 0x4d52
    push ax                          ; 0x4d55
    mov ax, 0x1f                     ; 0x4d56
    push ax                          ; 0x4d59
    push word [bp + 0x4]             ; 0x4d5a
    call loc_VPRH                    ; 0x4d5d
    add sp, byte 0x0c                ; 0x4d60
    jmp near @..loc_LTLR.l3          ; 0x4d63
jumptable_4e83_case_5:
    mov ax, 0x147                    ; 0x4d66
    push ax                          ; 0x4d69
    mov ax, 0x82                     ; 0x4d6a
    push ax                          ; 0x4d6d
    mov ax, 0x7b                     ; 0x4d6e
    push ax                          ; 0x4d71
    mov ax, 0x7a                     ; 0x4d72
    push ax                          ; 0x4d75
    mov ax, 0x12                     ; 0x4d76
    push ax                          ; 0x4d79
    push word [bp + 0x4]             ; 0x4d7a
    call loc_VPRH                    ; 0x4d7d
    add sp, byte 0x0c                ; 0x4d80
    jmp near @..loc_LTLR.l3          ; 0x4d83
jumptable_4e83_case_6:
    mov ax, 0x37                     ; 0x4d86
    push ax                          ; 0x4d89
    mov ax, 0x79                     ; 0x4d8a
    push ax                          ; 0x4d8d
    mov ax, 0x78                     ; 0x4d8e
    push ax                          ; 0x4d91
    mov ax, 0x1e                     ; 0x4d92
    push ax                          ; 0x4d95
    mov ax, 0x1d                     ; 0x4d96
    push ax                          ; 0x4d99
    push word [bp + 0x4]             ; 0x4d9a
    call loc_VPRH                    ; 0x4d9d
    add sp, byte 0x0c                ; 0x4da0
    jmp near @..loc_LTLR.l3          ; 0x4da3
jumptable_4e83_case_7:
    mov ax, 0xf1                     ; 0x4da6
    push ax                          ; 0x4da9
    mov ax, 0x82                     ; 0x4daa
    push ax                          ; 0x4dad
    mov ax, 0x7b                     ; 0x4dae
    push ax                          ; 0x4db1
    mov ax, 0x7a                     ; 0x4db2
    push ax                          ; 0x4db5
    mov ax, 1                        ; 0x4db6
    push ax                          ; 0x4db9
    push word [bp + 0x4]             ; 0x4dba
    call loc_VPRH                    ; 0x4dbd
    add sp, byte 0x0c                ; 0x4dc0
    jmp near @..loc_LTLR.l3          ; 0x4dc3
jumptable_4e83_case_8:
    mov ax, 0x8a                     ; 0x4dc6
    push ax                          ; 0x4dc9
    mov ax, 0x82                     ; 0x4dca
    push ax                          ; 0x4dcd
    mov ax, 0x7d                     ; 0x4dce
    push ax                          ; 0x4dd1
    mov ax, 0x7c                     ; 0x4dd2
    push ax                          ; 0x4dd5
    mov ax, 0x16                     ; 0x4dd6
    push ax                          ; 0x4dd9
    push word [bp + 0x4]             ; 0x4dda
    call loc_VPRH                    ; 0x4ddd
    add sp, byte 0x0c                ; 0x4de0
    jmp near @..loc_LTLR.l3          ; 0x4de3
jumptable_4e83_case_9:
    mov ax, 0xa3                     ; 0x4de6
    push ax                          ; 0x4de9
    mov ax, 0x82                     ; 0x4dea
    push ax                          ; 0x4ded
    mov ax, 0x7b                     ; 0x4dee
    push ax                          ; 0x4df1
    mov ax, 0x7a                     ; 0x4df2
    push ax                          ; 0x4df5
    mov ax, 0x18                     ; 0x4df6
    push ax                          ; 0x4df9
    push word [bp + 0x4]             ; 0x4dfa
    call loc_VPRH                    ; 0x4dfd
    add sp, byte 0x0c                ; 0x4e00
    jmp near @..loc_LTLR.l3          ; 0x4e03
jumptable_4e83_case_10:
    mov ax, 0x8f                     ; 0x4e06
    push ax                          ; 0x4e09
    mov ax, 0x83                     ; 0x4e0a
    push ax                          ; 0x4e0d
    mov ax, 0x86                     ; 0x4e0e
    push ax                          ; 0x4e11
    mov ax, 0x85                     ; 0x4e12
    push ax                          ; 0x4e15
    mov ax, 9                        ; 0x4e16
    push ax                          ; 0x4e19
    push word [bp + 0x4]             ; 0x4e1a
    call loc_VPRH                    ; 0x4e1d
    add sp, byte 0x0c                ; 0x4e20
    jmp near @..loc_LTLR.l3          ; 0x4e23
jumptable_4e83_case_11:
    mov ax, 0x82                     ; 0x4e26
    push ax                          ; 0x4e29
    mov ax, 0x7b                     ; 0x4e2a
    push ax                          ; 0x4e2d
    mov ax, 0x7a                     ; 0x4e2e
    push ax                          ; 0x4e31
    mov ax, 4                        ; 0x4e32
    push ax                          ; 0x4e35
    mov ax, 0xa                      ; 0x4e36
    push ax                          ; 0x4e39
    push word [bp + 0x4]             ; 0x4e3a
    call loc_VPRH                    ; 0x4e3d
    add sp, byte 0x0c                ; 0x4e40
    jmp short @..loc_LTLR.l3         ; 0x4e43
jumptable_4e83_case_12:
    mov ax, 0x82                     ; 0x4e45
    push ax                          ; 0x4e48
    mov ax, 0x7b                     ; 0x4e49
    push ax                          ; 0x4e4c
    mov ax, 0x7a                     ; 0x4e4d
    push ax                          ; 0x4e50
    mov ax, 0x2f                     ; 0x4e51
    push ax                          ; 0x4e54
    mov ax, 0x19                     ; 0x4e55
    push ax                          ; 0x4e58
    push word [bp + 0x4]             ; 0x4e59
    call loc_VPRH                    ; 0x4e5c
    add sp, byte 0x0c                ; 0x4e5f
    jmp short @..loc_LTLR.l3         ; 0x4e62
jumptable_4e83_case_13:
    mov ax, 0xa1                     ; 0x4e64
    push ax                          ; 0x4e67
    mov ax, 0x9f                     ; 0x4e68
    push ax                          ; 0x4e6b
    mov ax, 0x9e                     ; 0x4e6c
    push ax                          ; 0x4e6f
    mov ax, 0xa0                     ; 0x4e70
    push ax                          ; 0x4e73
    mov ax, 0x2f                     ; 0x4e74
    push ax                          ; 0x4e77
    push word [bp + 0x4]             ; 0x4e78
    call loc_VPRH                    ; 0x4e7b
    add sp, byte 0x0c                ; 0x4e7e
    jmp short @..loc_LTLR.l3         ; 0x4e81
jumptable_4e83:
    dw jumptable_4e83_case_0 - IMAGE_BASE + __zres_end ; 0x4e83
    dw jumptable_4e83_case_1 - IMAGE_BASE + __zres_end ; 0x4e85
    dw jumptable_4e83_case_2 - IMAGE_BASE + __zres_end ; 0x4e87
    dw jumptable_4e83_case_3 - IMAGE_BASE + __zres_end ; 0x4e89
    dw jumptable_4e83_case_4 - IMAGE_BASE + __zres_end ; 0x4e8b
    dw jumptable_4e83_case_5 - IMAGE_BASE + __zres_end ; 0x4e8d
    dw jumptable_4e83_case_6 - IMAGE_BASE + __zres_end ; 0x4e8f
    dw jumptable_4e83_case_7 - IMAGE_BASE + __zres_end ; 0x4e91
    dw jumptable_4e83_case_8 - IMAGE_BASE + __zres_end ; 0x4e93
    dw jumptable_4e83_case_9 - IMAGE_BASE + __zres_end ; 0x4e95
    dw jumptable_4e83_case_10 - IMAGE_BASE + __zres_end ; 0x4e97
    dw jumptable_4e83_case_11 - IMAGE_BASE + __zres_end ; 0x4e99
    dw jumptable_4e83_case_12 - IMAGE_BASE + __zres_end ; 0x4e9b
    dw jumptable_4e83_case_13 - IMAGE_BASE + __zres_end ; 0x4e9d
@..loc_LTLR.l2:
    cmp ax, strict word 0xe          ; 0x4e9f
    jae short @..loc_LTLR.l3         ; 0x4ea2
    xchg bx, ax                      ; 0x4ea4
    shl bx, 1                        ; 0x4ea5
    jmp [cs:bx + jumptable_4e83 - IMAGE_BASE + __zres_end] ; 0x4ea7
@..loc_LTLR.l3:
    ret                              ; 0x4eac
