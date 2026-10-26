; auto-generated
api_idx_000a_HMMT:
    mov ax, 0xfff6                   ; 0x5a8a
    call aztec_csav                  ; 0x5a8d
    mov ax, 0x248                    ; 0x5a90
    imul word [bp + 4]               ; 0x5a93
    mov bx, ax                       ; 0x5a96
    mov byte [bx + party_records + pc_rec.f_0240], 1 ; 0x5a98
    mov byte [bx + party_records + pc_rec.f_0241], 0xa ; 0x5a9d
    mov ax, 0x3e8                    ; 0x5aa2
    push ax                          ; 0x5aa5
    call random_below                ; 0x5aa6
    pop cx                           ; 0x5aa9
    add ax, 0x19aa                   ; 0x5aaa
    cwd                              ; 0x5aad
    push ax                          ; 0x5aae
    push dx                          ; 0x5aaf
    mov ax, 0x248                    ; 0x5ab0
    imul word [bp + 4]               ; 0x5ab3
    mov bx, ax                       ; 0x5ab6
    pop dx                           ; 0x5ab8
    pop ax                           ; 0x5ab9
    mov word [bx + party_records + pc_rec.f_000a], dx ; 0x5aba
    mov word [bx + party_records + pc_rec.f_0008], ax ; 0x5abe
    mov al, byte [bx + party_records + pc_rec.stat] ; 0x5ac2
    sub ah, ah                       ; 0x5ac6
    mov word [bp - 8], ax            ; 0x5ac8
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x5acb
    sub ah, ah                       ; 0x5acf
    mov word [bp - 0xa], ax          ; 0x5ad1
    mov al, byte [bx + party_records + pc_rec.profession] ; 0x5ad4
    sub ah, ah                       ; 0x5ad8
    jmp near @..api_idx_000a_HMMT.l1 ; 0x5ada
jumptable_5cb4_case_0:
    mov ax, 5                        ; 0x5add
    push ax                          ; 0x5ae0
    call random_below                ; 0x5ae1
    pop cx                           ; 0x5ae4
    add ax, strict word 6            ; 0x5ae5
    mov word [bp - 2], ax            ; 0x5ae8
    push word [bp + 4]               ; 0x5aeb
    call loc_QVUI                    ; 0x5aee
    pop cx                           ; 0x5af1
    mov ax, 0x248                    ; 0x5af2
    imul word [bp + 4]               ; 0x5af5
    mov bx, ax                       ; 0x5af8
    add byte [bx + party_records + pc_rec.f_0246], 0xfd ; 0x5afa
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5aff
jumptable_5cb4_case_1:
    mov ax, 3                        ; 0x5b02
    push ax                          ; 0x5b05
    call random_below                ; 0x5b06
    pop cx                           ; 0x5b09
    inc ax                           ; 0x5b0a
    inc ax                           ; 0x5b0b
    mov word [bp - 2], ax            ; 0x5b0c
    push word [bp + 4]               ; 0x5b0f
    call loc_QVUI                    ; 0x5b12
    pop cx                           ; 0x5b15
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5b16
jumptable_5cb4_case_2:
    mov ax, 4                        ; 0x5b19
    push ax                          ; 0x5b1c
    call random_below                ; 0x5b1d
    pop cx                           ; 0x5b20
    add ax, strict word 4            ; 0x5b21
    mov word [bp - 2], ax            ; 0x5b24
    push word [bp + 4]               ; 0x5b27
    call loc_QVUI                    ; 0x5b2a
    pop cx                           ; 0x5b2d
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5b2e
jumptable_5cb4_case_3:
    mov ax, 4                        ; 0x5b31
    push ax                          ; 0x5b34
    call random_below                ; 0x5b35
    pop cx                           ; 0x5b38
    inc ax                           ; 0x5b39
    inc ax                           ; 0x5b3a
    inc ax                           ; 0x5b3b
    mov word [bp - 2], ax            ; 0x5b3c
    push word [bp + 4]               ; 0x5b3f
    call loc_QVUI                    ; 0x5b42
    pop cx                           ; 0x5b45
    mov ax, 0x248                    ; 0x5b46
    imul word [bp + 4]               ; 0x5b49
    mov bx, ax                       ; 0x5b4c
    dec byte [bx + party_records + pc_rec.f_0246] ; 0x5b4e
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5b52
jumptable_5cb4_case_4:
    mov ax, 4                        ; 0x5b55
    push ax                          ; 0x5b58
    call random_below                ; 0x5b59
    pop cx                           ; 0x5b5c
    push ax                          ; 0x5b5d
    mov ax, 4                        ; 0x5b5e
    push ax                          ; 0x5b61
    call random_below                ; 0x5b62
    pop cx                           ; 0x5b65
    mov cx, ax                       ; 0x5b66
    pop ax                           ; 0x5b68
    add ax, cx                       ; 0x5b69
    add ax, strict word 6            ; 0x5b6b
    mov word [bp - 2], ax            ; 0x5b6e
    push word [bp + 4]               ; 0x5b71
    call loc_QVUI                    ; 0x5b74
    pop cx                           ; 0x5b77
    mov ax, 0x248                    ; 0x5b78
    imul word [bp + 4]               ; 0x5b7b
    mov bx, ax                       ; 0x5b7e
    dec byte [bx + party_records + pc_rec.f_0246] ; 0x5b80
    dec byte [bx + party_records + pc_rec.f_0246] ; 0x5b84
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5b88
jumptable_5cb4_case_5:
    mov ax, 4                        ; 0x5b8b
    push ax                          ; 0x5b8e
    call random_below                ; 0x5b8f
    pop cx                           ; 0x5b92
    inc ax                           ; 0x5b93
    inc ax                           ; 0x5b94
    inc ax                           ; 0x5b95
    mov word [bp - 2], ax            ; 0x5b96
    push word [bp + 4]               ; 0x5b99
    call loc_QVUI                    ; 0x5b9c
    pop cx                           ; 0x5b9f
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5ba0
jumptable_5cb4_case_6:
    mov ax, 4                        ; 0x5ba3
    push ax                          ; 0x5ba6
    call random_below                ; 0x5ba7
    pop cx                           ; 0x5baa
    inc ax                           ; 0x5bab
    inc ax                           ; 0x5bac
    mov word [bp - 2], ax            ; 0x5bad
    push word [bp + 4]               ; 0x5bb0
    call loc_QVUI                    ; 0x5bb3
    pop cx                           ; 0x5bb6
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5bb7
jumptable_5cb4_case_7:
    mov ax, 3                        ; 0x5bba
    push ax                          ; 0x5bbd
    call random_below                ; 0x5bbe
    pop cx                           ; 0x5bc1
    inc ax                           ; 0x5bc2
    inc ax                           ; 0x5bc3
    inc ax                           ; 0x5bc4
    mov word [bp - 2], ax            ; 0x5bc5
    push word [bp + 4]               ; 0x5bc8
    call loc_QVUI                    ; 0x5bcb
    pop cx                           ; 0x5bce
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5bcf
jumptable_5cb4_case_8:
    mov ax, 5                        ; 0x5bd2
    push ax                          ; 0x5bd5
    call random_below                ; 0x5bd6
    pop cx                           ; 0x5bd9
    add ax, strict word 5            ; 0x5bda
    mov word [bp - 2], ax            ; 0x5bdd
    push word [bp + 4]               ; 0x5be0
    call loc_QVUI                    ; 0x5be3
    pop cx                           ; 0x5be6
    mov ax, 0x248                    ; 0x5be7
    imul word [bp + 4]               ; 0x5bea
    mov bx, ax                       ; 0x5bed
    add byte [bx + party_records + pc_rec.f_0246], 0xfc ; 0x5bef
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5bf4
jumptable_5cb4_case_9:
    mov ax, 4                        ; 0x5bf7
    push ax                          ; 0x5bfa
    call random_below                ; 0x5bfb
    pop cx                           ; 0x5bfe
    inc ax                           ; 0x5bff
    inc ax                           ; 0x5c00
    inc ax                           ; 0x5c01
    mov word [bp - 2], ax            ; 0x5c02
    push word [bp + 4]               ; 0x5c05
    call loc_QVUI                    ; 0x5c08
    pop cx                           ; 0x5c0b
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5c0c
jumptable_5cb4_case_10:
    mov ax, 7                        ; 0x5c0f
    push ax                          ; 0x5c12
    call random_below                ; 0x5c13
    pop cx                           ; 0x5c16
    add ax, strict word 8            ; 0x5c17
    mov word [bp - 2], ax            ; 0x5c1a
    push word [bp + 4]               ; 0x5c1d
    call loc_QVUI                    ; 0x5c20
    pop cx                           ; 0x5c23
    mov ax, 0x248                    ; 0x5c24
    imul word [bp + 4]               ; 0x5c27
    mov bx, ax                       ; 0x5c2a
    add byte [bx + party_records + pc_rec.f_0246], 0xfc ; 0x5c2c
    jmp near @..api_idx_000a_HMMT.l2 ; 0x5c31
jumptable_5cb4_case_11:
    mov ax, 4                        ; 0x5c34
    push ax                          ; 0x5c37
    call random_below                ; 0x5c38
    pop cx                           ; 0x5c3b
    push ax                          ; 0x5c3c
    mov ax, 4                        ; 0x5c3d
    push ax                          ; 0x5c40
    call random_below                ; 0x5c41
    pop cx                           ; 0x5c44
    mov cx, ax                       ; 0x5c45
    pop ax                           ; 0x5c47
    add ax, cx                       ; 0x5c48
    add ax, strict word 6            ; 0x5c4a
    mov word [bp - 2], ax            ; 0x5c4d
    push word [bp + 4]               ; 0x5c50
    call loc_QVUI                    ; 0x5c53
    pop cx                           ; 0x5c56
    mov ax, 0x248                    ; 0x5c57
    imul word [bp + 4]               ; 0x5c5a
    mov bx, ax                       ; 0x5c5d
    add byte [bx + party_records + pc_rec.f_0246], 0xfb ; 0x5c5f
    jmp short @..api_idx_000a_HMMT.l2 ; 0x5c64
jumptable_5cb4_case_12:
    mov ax, 4                        ; 0x5c66
    push ax                          ; 0x5c69
    call random_below                ; 0x5c6a
    pop cx                           ; 0x5c6d
    add ax, strict word 4            ; 0x5c6e
    mov word [bp - 2], ax            ; 0x5c71
    push word [bp + 4]               ; 0x5c74
    call loc_QVUI                    ; 0x5c77
    pop cx                           ; 0x5c7a
    mov ax, 0x248                    ; 0x5c7b
    imul word [bp + 4]               ; 0x5c7e
    mov bx, ax                       ; 0x5c81
    dec byte [bx + party_records + pc_rec.f_0246] ; 0x5c83
    dec byte [bx + party_records + pc_rec.f_0246] ; 0x5c87
    jmp short @..api_idx_000a_HMMT.l2 ; 0x5c8b
jumptable_5cb4_case_13:
    mov ax, 5                        ; 0x5c8d
    push ax                          ; 0x5c90
    call random_below                ; 0x5c91
    pop cx                           ; 0x5c94
    add ax, strict word 4            ; 0x5c95
    mov word [bp - 2], ax            ; 0x5c98
    push word [bp + 4]               ; 0x5c9b
    call loc_QVUI                    ; 0x5c9e
    pop cx                           ; 0x5ca1
    mov ax, 0x248                    ; 0x5ca2
    imul word [bp + 4]               ; 0x5ca5
    mov bx, ax                       ; 0x5ca8
    dec byte [bx + party_records + pc_rec.f_0246] ; 0x5caa
    dec byte [bx + party_records + pc_rec.f_0246] ; 0x5cae
    jmp short @..api_idx_000a_HMMT.l2 ; 0x5cb2
jumptable_5cb4:
    dw jumptable_5cb4_case_0 - IMAGE_BASE + __zres_end ; 0x5cb4
    dw jumptable_5cb4_case_1 - IMAGE_BASE + __zres_end ; 0x5cb6
    dw jumptable_5cb4_case_2 - IMAGE_BASE + __zres_end ; 0x5cb8
    dw jumptable_5cb4_case_3 - IMAGE_BASE + __zres_end ; 0x5cba
    dw jumptable_5cb4_case_4 - IMAGE_BASE + __zres_end ; 0x5cbc
    dw jumptable_5cb4_case_5 - IMAGE_BASE + __zres_end ; 0x5cbe
    dw jumptable_5cb4_case_6 - IMAGE_BASE + __zres_end ; 0x5cc0
    dw jumptable_5cb4_case_7 - IMAGE_BASE + __zres_end ; 0x5cc2
    dw jumptable_5cb4_case_8 - IMAGE_BASE + __zres_end ; 0x5cc4
    dw jumptable_5cb4_case_9 - IMAGE_BASE + __zres_end ; 0x5cc6
    dw jumptable_5cb4_case_10 - IMAGE_BASE + __zres_end ; 0x5cc8
    dw jumptable_5cb4_case_11 - IMAGE_BASE + __zres_end ; 0x5cca
    dw jumptable_5cb4_case_12 - IMAGE_BASE + __zres_end ; 0x5ccc
    dw jumptable_5cb4_case_13 - IMAGE_BASE + __zres_end ; 0x5cce
@..api_idx_000a_HMMT.l1:
    cmp ax, strict word 0xe          ; 0x5cd0
    jae short @..api_idx_000a_HMMT.l2 ; 0x5cd3
    xchg bx, ax                      ; 0x5cd5
    shl bx, 1                        ; 0x5cd6
    jmp [cs:bx + jumptable_5cb4 - IMAGE_BASE + __zres_end] ; 0x5cd8
@..api_idx_000a_HMMT.l2:
    mov ax, word [bp - 0xa]          ; 0x5cdd
    shl ax, 1                        ; 0x5ce0
    add ax, word [bp - 8]            ; 0x5ce2
    mov cx, 3                        ; 0x5ce5
    imul cx                          ; 0x5ce8
    mov word [bp - 4], ax            ; 0x5cea
    mov ax, word [bp - 8]            ; 0x5ced
    shl ax, 1                        ; 0x5cf0
    add ax, word [bp - 0xa]          ; 0x5cf2
    imul cx                          ; 0x5cf5
    mov word [bp - 6], ax            ; 0x5cf7
    add word [bp - 2], byte 4        ; 0x5cfa
    cmp word [bp - 0xa], byte 8      ; 0x5cfe
    jge short @..api_idx_000a_HMMT.l3 ; 0x5d02
    dec word [bp - 2]                ; 0x5d04
@..api_idx_000a_HMMT.l3:
    cmp word [bp - 0xa], byte 0xf    ; 0x5d07
    jle short @..api_idx_000a_HMMT.l4 ; 0x5d0b
    inc word [bp - 2]                ; 0x5d0d
    mov ax, word [bp - 0xa]          ; 0x5d10
    add word [bp - 4], ax            ; 0x5d13
@..api_idx_000a_HMMT.l4:
    cmp word [bp - 0xa], byte 0x11   ; 0x5d16
    jle short @..api_idx_000a_HMMT.l5 ; 0x5d1a
    inc word [bp - 2]                ; 0x5d1c
    mov ax, word [bp - 0xa]          ; 0x5d1f
    add word [bp - 4], ax            ; 0x5d22
@..api_idx_000a_HMMT.l5:
    cmp word [bp - 8], byte 0xf      ; 0x5d25
    jle short @..api_idx_000a_HMMT.l6 ; 0x5d29
    mov ax, word [bp - 8]            ; 0x5d2b
    add word [bp - 6], ax            ; 0x5d2e
@..api_idx_000a_HMMT.l6:
    cmp word [bp - 8], byte 0x11     ; 0x5d31
    jle short @..api_idx_000a_HMMT.l7 ; 0x5d35
    mov ax, word [bp - 8]            ; 0x5d37
    add word [bp - 6], ax            ; 0x5d3a
@..api_idx_000a_HMMT.l7:
    mov ax, word [bp - 2]            ; 0x5d3d
    push ax                          ; 0x5d40
    mov ax, 0x248                    ; 0x5d41
    imul word [bp + 4]               ; 0x5d44
    mov bx, ax                       ; 0x5d47
    pop ax                           ; 0x5d49
    mov word [bx + party_records + pc_rec.pair_a], ax ; 0x5d4a
    mov word [bx + party_records + pc_rec.pair_a + 0x2], ax ; 0x5d4e
    mov ax, word [bp - 4]            ; 0x5d52
    mov word [bx + party_records + pc_rec.pair_b], ax ; 0x5d55
    mov word [bx + party_records + pc_rec.pair_b + 0x2], ax ; 0x5d59
    mov word [bx + party_records + pc_rec.power_total], 0 ; 0x5d5d
    mov ax, 0xf                      ; 0x5d63
    imul word [bp - 6]               ; 0x5d66
    mov word [bx + party_records + pc_rec.f_0022], ax ; 0x5d69
    cmp byte [bx + party_records + pc_rec.glyph_set], 5 ; 0x5d6d
    jne short @..api_idx_000a_HMMT.l8 ; 0x5d72
    shl ax, 1                        ; 0x5d74
    cwd                              ; 0x5d76
    idiv cx                          ; 0x5d77
    mov word [bx + party_records + pc_rec.f_0022], ax ; 0x5d79
@..api_idx_000a_HMMT.l8:
    ret                              ; 0x5d7d
