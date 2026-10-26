; auto-generated
api_idx_0018_IKVK:
    mov ax, 0xffe8                   ; 0x4955
    call aztec_csav                  ; 0x4958
    mov ax, 0x248                    ; 0x495b
    imul word [bp + 4]               ; 0x495e
    mov bx, ax                       ; 0x4961
    mov al, byte [bx + party_records + pc_rec.stat + 0x1] ; 0x4963
    sub ah, ah                       ; 0x4967
    mov word [bp - 4], ax            ; 0x4969
    mov al, byte [bx + party_records + pc_rec.stat + 0x2] ; 0x496c
    sub ah, ah                       ; 0x4970
    mov word [bp - 6], ax            ; 0x4972
    mov al, byte [bx + party_records + pc_rec.stat + 0x3] ; 0x4975
    sub ah, ah                       ; 0x4979
    mov word [bp - 8], ax            ; 0x497b
    mov al, byte [bx + party_records + pc_rec.stat + 0x6] ; 0x497e
    sub ah, ah                       ; 0x4982
    mov word [bp - 0xa], ax          ; 0x4984
    mov al, byte [bx + party_records + pc_rec.profession] ; 0x4987
    sub ah, ah                       ; 0x498b
    jmp near .forward2               ; 0x498d
jumptable_4b3c_case_1:
    mov ax, word [bp - 4]            ; 0x4990
    add ax, word [bp - 6]            ; 0x4993
    mov cx, 2                        ; 0x4996
    cwd                              ; 0x4999
    idiv cx                          ; 0x499a
    mov word [bp - 0xc], ax          ; 0x499c
    mov word [bp - 0x14], 0          ; 0x499f
    mov word [bp - 0x16], 0x20       ; 0x49a4
    mov word [bp - 0x18], 1          ; 0x49a9
    jmp near api_idx_0018_IKVK.forward4 ; 0x49ae
jumptable_4b3c_case_2:
    mov ax, word [bp - 6]            ; 0x49b1
    add ax, word [bp - 8]            ; 0x49b4
    mov cx, 2                        ; 0x49b7
    cwd                              ; 0x49ba
    idiv cx                          ; 0x49bb
    mov word [bp - 0xc], ax          ; 0x49bd
    mov word [bp - 0x14], 1          ; 0x49c0
    mov word [bp - 0x16], 0x1e       ; 0x49c5
    mov word [bp - 0x18], 1          ; 0x49ca
    jmp near api_idx_0018_IKVK.forward4 ; 0x49cf
jumptable_4b3c_case_4:
    mov ax, word [bp - 4]            ; 0x49d2
    add ax, word [bp - 6]            ; 0x49d5
    mov cx, 2                        ; 0x49d8
    cwd                              ; 0x49db
    idiv cx                          ; 0x49dc
    mov word [bp - 0xc], ax          ; 0x49de
    mov word [bp - 0x14], 2          ; 0x49e1
    mov word [bp - 0x16], 0x1d       ; 0x49e6
    mov word [bp - 0x18], 3          ; 0x49eb
    jmp near api_idx_0018_IKVK.forward4 ; 0x49f0
jumptable_4b3c_case_5:
    mov ax, word [bp - 4]            ; 0x49f3
    add ax, word [bp - 6]            ; 0x49f6
    mov cx, 2                        ; 0x49f9
    cwd                              ; 0x49fc
    idiv cx                          ; 0x49fd
    mov word [bp - 0xc], ax          ; 0x49ff
    mov word [bp - 0x14], 2          ; 0x4a02
    mov word [bp - 0x16], 0x1d       ; 0x4a07
    mov word [bp - 0x18], 1          ; 0x4a0c
    jmp near api_idx_0018_IKVK.forward4 ; 0x4a11
jumptable_4b3c_case_6:
    mov ax, word [bp - 4]            ; 0x4a14
    add ax, word [bp - 6]            ; 0x4a17
    mov cx, 2                        ; 0x4a1a
    cwd                              ; 0x4a1d
    idiv cx                          ; 0x4a1e
    mov word [bp - 0xc], ax          ; 0x4a20
    mov word [bp - 0x14], 0          ; 0x4a23
    mov word [bp - 0x16], 0x20       ; 0x4a28
    mov word [bp - 0x18], 3          ; 0x4a2d
    jmp near api_idx_0018_IKVK.forward4 ; 0x4a32
jumptable_4b3c_case_7:
    mov ax, word [bp - 4]            ; 0x4a35
    add ax, word [bp - 6]            ; 0x4a38
    mov cx, 2                        ; 0x4a3b
    cwd                              ; 0x4a3e
    idiv cx                          ; 0x4a3f
    mov word [bp - 0xc], ax          ; 0x4a41
    mov word [bp - 0x14], 3          ; 0x4a44
    mov word [bp - 0x16], 0x1f       ; 0x4a49
    mov word [bp - 0x18], 1          ; 0x4a4e
    jmp near api_idx_0018_IKVK.forward4 ; 0x4a53
jumptable_4b3c_case_8:
    mov ax, word [bp - 6]            ; 0x4a56
    add ax, word [bp - 8]            ; 0x4a59
    mov cx, 2                        ; 0x4a5c
    cwd                              ; 0x4a5f
    idiv cx                          ; 0x4a60
    mov word [bp - 0xc], ax          ; 0x4a62
    mov word [bp - 0x14], 1          ; 0x4a65
    mov word [bp - 0x16], 0x1e       ; 0x4a6a
    mov word [bp - 0x18], 3          ; 0x4a6f
    jmp near api_idx_0018_IKVK.forward4 ; 0x4a74
jumptable_4b3c_case_9:
    mov ax, word [bp - 4]            ; 0x4a77
    add ax, word [bp - 6]            ; 0x4a7a
    mov cx, 2                        ; 0x4a7d
    cwd                              ; 0x4a80
    idiv cx                          ; 0x4a81
    mov word [bp - 0xc], ax          ; 0x4a83
    mov ax, 0x248                    ; 0x4a86
    imul word [bp + 4]               ; 0x4a89
    mov bx, ax                       ; 0x4a8c
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x4a8e
    cwd                              ; 0x4a92
    idiv cx                          ; 0x4a93
    mov word [bp - 0x14], dx         ; 0x4a95
    mov ax, 0x1e                     ; 0x4a98
    cmp word [bp - 0x14], byte 0     ; 0x4a9b
    jne short api_idx_0018_IKVK.forward1 ; 0x4a9f
    mov ax, 0x20                     ; 0x4aa1
    mov word [bp - 0x16], 0x20       ; 0x4aa4
api_idx_0018_IKVK.forward1:
    mov word [bp - 0x16], ax         ; 0x4aa9
    mov word [bp - 0x18], 1          ; 0x4aac
    jmp near api_idx_0018_IKVK.forward4 ; 0x4ab1
jumptable_4b3c_case_10:
    mov ax, word [bp - 0xa]          ; 0x4ab4
    add ax, word [bp - 6]            ; 0x4ab7
    mov cx, 2                        ; 0x4aba
    cwd                              ; 0x4abd
    idiv cx                          ; 0x4abe
    mov word [bp - 0xc], ax          ; 0x4ac0
    mov word [bp - 0x14], 1          ; 0x4ac3
    mov word [bp - 0x16], 0x1e       ; 0x4ac8
    mov word [bp - 0x18], 3          ; 0x4acd
    jmp near api_idx_0018_IKVK.forward4 ; 0x4ad2
jumptable_4b3c_case_11:
    mov ax, word [bp - 4]            ; 0x4ad5
    add ax, word [bp - 6]            ; 0x4ad8
    mov cx, 2                        ; 0x4adb
    cwd                              ; 0x4ade
    idiv cx                          ; 0x4adf
    mov word [bp - 0xc], ax          ; 0x4ae1
    mov word [bp - 0x14], 0          ; 0x4ae4
    mov word [bp - 0x16], 0x20       ; 0x4ae9
    mov word [bp - 0x18], 3          ; 0x4aee
    jmp short api_idx_0018_IKVK.forward4 ; 0x4af3
jumptable_4b3c_case_12:
    mov ax, word [bp - 4]            ; 0x4af5
    add ax, word [bp - 6]            ; 0x4af8
    mov cx, 2                        ; 0x4afb
    cwd                              ; 0x4afe
    idiv cx                          ; 0x4aff
    mov word [bp - 0xc], ax          ; 0x4b01
    mov word [bp - 0x14], 3          ; 0x4b04
    mov word [bp - 0x16], 0x1f       ; 0x4b09
    mov word [bp - 0x18], 3          ; 0x4b0e
    jmp short api_idx_0018_IKVK.forward4 ; 0x4b13
jumptable_4b3c_case_13:
    mov ax, word [bp - 4]            ; 0x4b15
    add ax, word [bp - 6]            ; 0x4b18
    mov cx, 2                        ; 0x4b1b
    cwd                              ; 0x4b1e
    idiv cx                          ; 0x4b1f
    mov word [bp - 0xc], ax          ; 0x4b21
    mov word [bp - 0x14], 2          ; 0x4b24
    mov word [bp - 0x16], 0x1d       ; 0x4b29
    mov word [bp - 0x18], 5          ; 0x4b2e
    jmp short api_idx_0018_IKVK.forward4 ; 0x4b33
jumptable_4b3c_case_0:
    mov word [bp - 0x18], 0          ; 0x4b35
    jmp short api_idx_0018_IKVK.forward4 ; 0x4b3a
jumptable_4b3c:
    dw jumptable_4b3c_case_0 - IMAGE_BASE + __zres_end ; 0x4b3c
    dw jumptable_4b3c_case_1 - IMAGE_BASE + __zres_end ; 0x4b3e
    dw jumptable_4b3c_case_2 - IMAGE_BASE + __zres_end ; 0x4b40
    dw jumptable_4b3c_case_0 - IMAGE_BASE + __zres_end ; 0x4b42
    dw jumptable_4b3c_case_4 - IMAGE_BASE + __zres_end ; 0x4b44
    dw jumptable_4b3c_case_5 - IMAGE_BASE + __zres_end ; 0x4b46
    dw jumptable_4b3c_case_6 - IMAGE_BASE + __zres_end ; 0x4b48
    dw jumptable_4b3c_case_7 - IMAGE_BASE + __zres_end ; 0x4b4a
    dw jumptable_4b3c_case_8 - IMAGE_BASE + __zres_end ; 0x4b4c
    dw jumptable_4b3c_case_9 - IMAGE_BASE + __zres_end ; 0x4b4e
    dw jumptable_4b3c_case_10 - IMAGE_BASE + __zres_end ; 0x4b50
    dw jumptable_4b3c_case_11 - IMAGE_BASE + __zres_end ; 0x4b52
    dw jumptable_4b3c_case_12 - IMAGE_BASE + __zres_end ; 0x4b54
    dw jumptable_4b3c_case_13 - IMAGE_BASE + __zres_end ; 0x4b56
api_idx_0018_IKVK.forward2:
    cmp ax, strict word 0xe          ; 0x4b58
    jae short api_idx_0018_IKVK.forward3 ; 0x4b5b
    xchg bx, ax                      ; 0x4b5d
    shl bx, 1                        ; 0x4b5e
    jmp [cs:bx + jumptable_4b3c - IMAGE_BASE + __zres_end] ; 0x4b60
api_idx_0018_IKVK.forward3:
    jmp short jumptable_4b3c_case_0  ; 0x4b65
api_idx_0018_IKVK.forward4:
    cmp word [bp - 0x18], byte 0     ; 0x4b67
    jne short api_idx_0018_IKVK.forward5 ; 0x4b6b
    ret                              ; 0x4b6d
api_idx_0018_IKVK.forward5:
    mov ax, 0x248                    ; 0x4b6e
    imul word [bp + 4]               ; 0x4b71
    mov bx, ax                       ; 0x4b74
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x4b76
    cmp ax, word [bp - 0x18]         ; 0x4b7a
    jge short api_idx_0018_IKVK.forward6 ; 0x4b7d
    jmp near api_idx_0018_IKVK.return1 ; 0x4b7f
api_idx_0018_IKVK.forward6:
    add bx, word [bp - 0x14]         ; 0x4b82
    inc byte [bx + party_records + pc_rec.f_015c] ; 0x4b85
    mov word [bp - 2], 0             ; 0x4b89
api_idx_0018_IKVK.back2:
    mov word [bp - 0x12], 0          ; 0x4b8e
    mov ax, 0x248                    ; 0x4b93
    imul word [bp + 4]               ; 0x4b96
    mov cx, word [bp - 2]            ; 0x4b99
    shl cx, 1                        ; 0x4b9c
    shl cx, 1                        ; 0x4b9e
    add ax, cx                       ; 0x4ba0
    mov bx, ax                       ; 0x4ba2
    cmp word [bx + party_records + pc_rec.realm_points + 0x2], byte 0 ; 0x4ba4
    jle short api_idx_0018_IKVK.forward8 ; 0x4ba9
    mov word [bp - 4], 0             ; 0x4bab
api_idx_0018_IKVK.back3:
    mov ax, 6                        ; 0x4bb0
    imul word [bp - 4]               ; 0x4bb3
    mov bx, ax                       ; 0x4bb6
    mov al, byte [bx + spell_table]  ; 0x4bb8
    sub ah, ah                       ; 0x4bbc
    cmp ax, word [bp - 2]            ; 0x4bbe
    jne short api_idx_0018_IKVK.forward7 ; 0x4bc1
    push word [bp - 4]               ; 0x4bc3
    mov ax, 0x248                    ; 0x4bc6
    imul word [bp + 4]               ; 0x4bc9
    add ax, party_records + pc_rec.pad_01be + 0x60 ; 0x4bcc
    push ax                          ; 0x4bcf
    call test_bit                    ; 0x4bd0
    add sp, byte 4                   ; 0x4bd3
    cmp ax, strict word 1            ; 0x4bd6
    jne short api_idx_0018_IKVK.forward7 ; 0x4bd9
    inc word [bp - 0x12]             ; 0x4bdb
api_idx_0018_IKVK.forward7:
    inc word [bp - 4]                ; 0x4bde
    mov ax, word [bp - 4]            ; 0x4be1
    cmp ax, strict word 0x66         ; 0x4be4
    jl short api_idx_0018_IKVK.back3 ; 0x4be7
api_idx_0018_IKVK.forward8:
    cmp word [bp - 0x12], byte 0     ; 0x4be9
    jg short api_idx_0018_IKVK.forward9 ; 0x4bed
    jmp near api_idx_0018_IKVK.forward14 ; 0x4bef
api_idx_0018_IKVK.forward9:
    mov word [bp - 0xe], 0           ; 0x4bf2
    cmp word [bp - 0xc], byte 0xd    ; 0x4bf7
    jle short api_idx_0018_IKVK.forward10 ; 0x4bfb
    inc word [bp - 0xe]              ; 0x4bfd
api_idx_0018_IKVK.forward10:
    cmp word [bp - 0xc], byte 0x10   ; 0x4c00
    jle short api_idx_0018_IKVK.forward11 ; 0x4c04
    inc word [bp - 0xe]              ; 0x4c06
api_idx_0018_IKVK.forward11:
    mov ax, 0x248                    ; 0x4c09
    imul word [bp + 4]               ; 0x4c0c
    mov bx, ax                       ; 0x4c0f
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x4c11
    push ax                          ; 0x4c15
    mov al, byte [bx + party_records + pc_rec.power_floor] ; 0x4c16
    sub ah, ah                       ; 0x4c1a
    mov cx, ax                       ; 0x4c1c
    pop ax                           ; 0x4c1e
    cmp ax, cx                       ; 0x4c1f
    jge short api_idx_0018_IKVK.forward12 ; 0x4c21
    mov ax, word [bp - 2]            ; 0x4c23
    shl ax, 1                        ; 0x4c26
    shl ax, 1                        ; 0x4c28
    add bx, ax                       ; 0x4c2a
    inc word [bx + party_records + pc_rec.realm_points + 0x2] ; 0x4c2c
    jmp near api_idx_0018_IKVK.forward14 ; 0x4c30
api_idx_0018_IKVK.forward12:
    mov ax, 0x248                    ; 0x4c33
    imul word [bp + 4]               ; 0x4c36
    add ax, word [bp - 2]            ; 0x4c39
    mov bx, ax                       ; 0x4c3c
    mov al, byte [bx + party_records + pc_rec.f_0160] ; 0x4c3e
    sub ah, ah                       ; 0x4c42
    push ax                          ; 0x4c44
    call random_below                ; 0x4c45
    pop cx                           ; 0x4c48
    push ax                          ; 0x4c49
    mov ax, 0x248                    ; 0x4c4a
    imul word [bp + 4]               ; 0x4c4d
    add ax, word [bp - 0x16]         ; 0x4c50
    mov bx, ax                       ; 0x4c53
    mov al, byte [bx + party_records + pc_rec.flag] ; 0x4c55
    sub ah, ah                       ; 0x4c59
    mov cx, 0x14                     ; 0x4c5b
    cwd                              ; 0x4c5e
    idiv cx                          ; 0x4c5f
    push ax                          ; 0x4c61
    call random_below                ; 0x4c62
    pop cx                           ; 0x4c65
    mov cx, ax                       ; 0x4c66
    pop ax                           ; 0x4c68
    add ax, cx                       ; 0x4c69
    push ax                          ; 0x4c6b
    mov ax, 0x248                    ; 0x4c6c
    imul word [bp + 4]               ; 0x4c6f
    mov bx, ax                       ; 0x4c72
    mov al, byte [bx + party_records + pc_rec.stat + 0x2] ; 0x4c74
    sub ah, ah                       ; 0x4c78
    mov cx, 6                        ; 0x4c7a
    cwd                              ; 0x4c7d
    idiv cx                          ; 0x4c7e
    imul word [bp - 0x12]            ; 0x4c80
    mov cx, ax                       ; 0x4c83
    pop ax                           ; 0x4c85
    add ax, cx                       ; 0x4c86
    add ax, word [bp - 0xe]          ; 0x4c88
    mov word [bp - 0x10], ax         ; 0x4c8b
    cmp ax, strict word 0xf          ; 0x4c8e
    jle short api_idx_0018_IKVK.forward13 ; 0x4c91
    mov word [bp - 0x10], 0xf        ; 0x4c93
api_idx_0018_IKVK.forward13:
    mov ax, word [bp - 0x10]         ; 0x4c98
    mov cx, word [bp - 2]            ; 0x4c9b
    shl cx, 1                        ; 0x4c9e
    shl cx, 1                        ; 0x4ca0
    add bx, cx                       ; 0x4ca2
    add word [bx + party_records + pc_rec.realm_points + 0x2], ax ; 0x4ca4
    cmp word [bx + party_records + pc_rec.realm_points + 0x2], strict word 0x3e7 ; 0x4ca8
    jle short api_idx_0018_IKVK.forward14 ; 0x4cae
    mov word [bx + party_records + pc_rec.realm_points + 0x2], 0x3e7 ; 0x4cb0
api_idx_0018_IKVK.forward14:
    inc word [bp - 2]                ; 0x4cb6
    mov ax, word [bp - 2]            ; 0x4cb9
    cmp ax, strict word 6            ; 0x4cbc
    jge short api_idx_0018_IKVK.return1 ; 0x4cbf
    jmp near api_idx_0018_IKVK.back2 ; 0x4cc1
api_idx_0018_IKVK.return1:
    ret                              ; 0x4cc4
