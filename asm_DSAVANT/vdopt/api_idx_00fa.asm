api_idx_00fa:
    mov ax, 0xff06                   ; 0x1a5d
    call ds_aztec_csav               ; 0x1a60
    mov word [bp - 0x0004], 0        ; 0x1a63
    mov word [bp - 0x0006], 0        ; 0x1a68
    mov word [bp - 0x0008], 0        ; 0x1a6d
    mov ax, word [bp + 0x4]          ; 0x1a72
    jmp short @..api_idx_00fa.l1     ; 0x1a75
loc_1a77:
    add word [bp - 0x0008], byte 0x19 ; 0x1a77
loc_1a7b:
    add word [bp - 0x0008], byte 0x19 ; 0x1a7b
loc_1a7f:
    add word [bp - 0x0006], byte 0x19 ; 0x1a7f
    add word [bp - 0x0008], byte 0x19 ; 0x1a83
loc_1a87:
    add word [bp - 0x0006], byte 0x19 ; 0x1a87
    add word [bp - 0x0008], byte 0x19 ; 0x1a8b
loc_1a8f:
    add word [bp - 0x0004], byte 0x19 ; 0x1a8f
    add word [bp - 0x0006], byte 0x19 ; 0x1a93
loc_1a97:
    add word [bp - 0x0004], byte 0x19 ; 0x1a97
    add word [bp - 0x0006], byte 0x19 ; 0x1a9b
loc_1a9f:
    add word [bp - 0x0004], byte 0x32 ; 0x1a9f
    jmp short @..api_idx_00fa.l2     ; 0x1aa3
jumptable_1aa5:
    dw jumptable_1aa5_case_0 - IMAGE_BASE + 0x5055 ; 0x1aa5
    dw loc_1a9f - IMAGE_BASE + 0x5055          ; 0x1aa7
    dw loc_1a97 - IMAGE_BASE + 0x5055          ; 0x1aa9
    dw loc_1a8f - IMAGE_BASE + 0x5055          ; 0x1aab
    dw loc_1a87 - IMAGE_BASE + 0x5055          ; 0x1aad
    dw loc_1a7f - IMAGE_BASE + 0x5055          ; 0x1aaf
    dw loc_1a7b - IMAGE_BASE + 0x5055          ; 0x1ab1
    dw loc_1a77 - IMAGE_BASE + 0x5055          ; 0x1ab3
@..api_idx_00fa.l1:
    cmp ax, strict word 8            ; 0x1ab5
    jae short @..api_idx_00fa.l2     ; 0x1ab8
    xchg bx, ax                      ; 0x1aba
    shl bx, 1                        ; 0x1abb
    jmp [cs:bx + 0x6aec]             ; 0x1abd
jumptable_1aa5_case_0:
@..api_idx_00fa.l2:
    mov ax, 2                        ; 0x1ac2
    push ax                          ; 0x1ac5
    call ds_app_1371                 ; 0x1ac6
    pop cx                           ; 0x1ac9
    mov ax, 0xe                      ; 0x1aca
    push ax                          ; 0x1acd
    mov ax, 0                        ; 0x1ace
    push ax                          ; 0x1ad1
    call ds_app_file_2863            ; 0x1ad2
    add sp, byte 4                   ; 0x1ad5
    mov ax, 0xc6                     ; 0x1ad8
    push ax                          ; 0x1adb
    mov ax, 0x109                    ; 0x1adc
    push ax                          ; 0x1adf
    mov ax, 0x92                     ; 0x1ae0
    push ax                          ; 0x1ae3
    mov ax, 0x37                     ; 0x1ae4
    push ax                          ; 0x1ae7
    call ds_loc_3b6f                 ; 0x1ae8
    add sp, byte 8                   ; 0x1aeb
    mov word [bss_8d10], dx          ; 0x1aee
    mov word [bss_8d0e], ax          ; 0x1af2
    call api_idx_000a_2              ; 0x1af5
    mov word [bp - 0x000a], 0        ; 0x1af8
    mov word [bp - 0x0002], 0        ; 0x1afd
@..api_idx_00fa.l3:
    mov ax, 0x26                     ; 0x1b02
    imul word [bp - 0x0002]          ; 0x1b05
    mov bx, ax                       ; 0x1b08
    cmp byte [bx - 0x7b14], 0x19     ; 0x1b0a
    jb short @..api_idx_00fa.l4      ; 0x1b0f
    jmp near @..api_idx_00fa.l11     ; 0x1b11
@..api_idx_00fa.l4:
    mov ax, 0x64                     ; 0x1b14
    push ax                          ; 0x1b17
    call ds_app_09f0                 ; 0x1b18
    pop cx                           ; 0x1b1b
    cmp ax, word [bp - 0x0008]       ; 0x1b1c
    jl short @..api_idx_00fa.l7      ; 0x1b1f
    mov ax, 0x26                     ; 0x1b21
    imul word [bp - 0x0002]          ; 0x1b24
    mov bx, ax                       ; 0x1b27
    mov al, byte [bx - 0x7b14]       ; 0x1b29
    sub ah, ah                       ; 0x1b2d
    shl ax, 1                        ; 0x1b2f
    shl ax, 1                        ; 0x1b31
    mov bx, ax                       ; 0x1b33
    mov al, byte [bx - 0x7687]       ; 0x1b35
    cbw                              ; 0x1b39
    cmp ax, word [bss_830c]          ; 0x1b3a
    jne short @..api_idx_00fa.l5     ; 0x1b3e
    mov ax, 0x64                     ; 0x1b40
    push ax                          ; 0x1b43
    call ds_app_09f0                 ; 0x1b44
    pop cx                           ; 0x1b47
    cmp ax, word [bp - 0x0006]       ; 0x1b48
    jl short @..api_idx_00fa.l7      ; 0x1b4b
@..api_idx_00fa.l5:
    mov ax, 0x26                     ; 0x1b4d
    imul word [bp - 0x0002]          ; 0x1b50
    mov bx, ax                       ; 0x1b53
    mov al, byte [bx - 0x7b13]       ; 0x1b55
    sub ah, ah                       ; 0x1b59
    cmp ax, word [bss_8f3e]          ; 0x1b5b
    je short @..api_idx_00fa.l6      ; 0x1b5f
    jmp near @..api_idx_00fa.l11     ; 0x1b61
@..api_idx_00fa.l6:
    mov ax, 0x64                     ; 0x1b64
    push ax                          ; 0x1b67
    call ds_app_09f0                 ; 0x1b68
    pop cx                           ; 0x1b6b
    cmp ax, word [bp - 0x0004]       ; 0x1b6c
    jl short @..api_idx_00fa.l7      ; 0x1b6f
    jmp near @..api_idx_00fa.l11     ; 0x1b71
@..api_idx_00fa.l7:
    mov word [bp - 0x000a], 1        ; 0x1b74
    lea ax, word [bp - 0x005a]       ; 0x1b79
    push ax                          ; 0x1b7c
    mov ax, word [bp - 0x0002]       ; 0x1b7d
    add ax, 0x6a4                    ; 0x1b80
    push ax                          ; 0x1b83
    call ds_app_mem_0782             ; 0x1b84
    add sp, byte 4                   ; 0x1b87
    mov byte [bp - 0x00aa], 0        ; 0x1b8a
    mov byte [bp - 0x00fa], 0        ; 0x1b8f
    mov ax, 0x26                     ; 0x1b94
    imul word [bp - 0x0002]          ; 0x1b97
    mov bx, ax                       ; 0x1b9a
    cmp byte [bx - 0x7b00], 0        ; 0x1b9c
    je short @..api_idx_00fa.l8      ; 0x1ba1
    cmp word [bp - 0x0002], byte 4   ; 0x1ba3
    jne short @..api_idx_00fa.l9     ; 0x1ba7
    mov ax, 0x40                     ; 0x1ba9
    push ax                          ; 0x1bac
    mov ax, 0x8e64                   ; 0x1bad
    push ax                          ; 0x1bb0
    call ds_leaf_loc_3ebb            ; 0x1bb1
    add sp, byte 4                   ; 0x1bb4
    test ax, ax                      ; 0x1bb7
    je short @..api_idx_00fa.l9      ; 0x1bb9
@..api_idx_00fa.l8:
    lea ax, word [bp - 0x00aa]       ; 0x1bbb
    push ax                          ; 0x1bbf
    mov ax, 0x1e7                    ; 0x1bc0
    push ax                          ; 0x1bc3
    call ds_app_mem_0782             ; 0x1bc4
    add sp, byte 4                   ; 0x1bc7
    jmp short @..api_idx_00fa.l10    ; 0x1bca
@..api_idx_00fa.l9:
    lea ax, word [bp - 0x00aa]       ; 0x1bcc
    push ax                          ; 0x1bd0
    mov ax, 0x1e5                    ; 0x1bd1
    push ax                          ; 0x1bd4
    call ds_app_mem_0782             ; 0x1bd5
    add sp, byte 4                   ; 0x1bd8
    lea ax, word [bp - 0x00fa]       ; 0x1bdb
    push ax                          ; 0x1bdf
    mov ax, 0x26                     ; 0x1be0
    imul word [bp - 0x0002]          ; 0x1be3
    mov bx, ax                       ; 0x1be6
    mov al, byte [bx - 0x7b14]       ; 0x1be8
    sub ah, ah                       ; 0x1bec
    add ax, 0x6ea                    ; 0x1bee
    push ax                          ; 0x1bf1
    call ds_app_mem_0782             ; 0x1bf2
    add sp, byte 4                   ; 0x1bf5
@..api_idx_00fa.l10:
    lea ax, word [bp - 0x00fa]       ; 0x1bf8
    push ax                          ; 0x1bfc
    lea ax, word [bp - 0x00aa]       ; 0x1bfd
    push ax                          ; 0x1c01
    lea ax, word [bp - 0x005a]       ; 0x1c02
    push ax                          ; 0x1c05
    call api_idx_0002_4              ; 0x1c06
    add sp, byte 6                   ; 0x1c09
@..api_idx_00fa.l11:
    inc word [bp - 0x0002]           ; 0x1c0c
    mov ax, word [bp - 0x0002]       ; 0x1c0f
    cmp ax, strict word 0x14         ; 0x1c12
    jge short @..api_idx_00fa.l12    ; 0x1c15
    jmp near @..api_idx_00fa.l3      ; 0x1c17
@..api_idx_00fa.l12:
    cmp word [bp - 0x000a], byte 0   ; 0x1c1a
    jne short @..api_idx_00fa.l13    ; 0x1c1e
    lea ax, word [bp - 0x005a]       ; 0x1c20
    push ax                          ; 0x1c23
    mov ax, 0x1e6                    ; 0x1c24
    push ax                          ; 0x1c27
    call ds_app_mem_0782             ; 0x1c28
    add sp, byte 4                   ; 0x1c2b
    mov ax, 0x9099                   ; 0x1c2e
    push ax                          ; 0x1c31
    mov ax, 0x9098                   ; 0x1c32
    push ax                          ; 0x1c35
    lea ax, word [bp - 0x005a]       ; 0x1c36
    push ax                          ; 0x1c39
    call api_idx_0002_4              ; 0x1c3a
    add sp, byte 6                   ; 0x1c3d
@..api_idx_00fa.l13:
    mov ax, 1                        ; 0x1c40
    push ax                          ; 0x1c43
    push word [bss_8d10]             ; 0x1c44
    push word [bss_8d0e]             ; 0x1c48
    call ds_loc_3b96                 ; 0x1c4c
    add sp, byte 6                   ; 0x1c4f
    mov ax, 0xc6                     ; 0x1c52
    push ax                          ; 0x1c55
    mov ax, 0x109                    ; 0x1c56
    push ax                          ; 0x1c59
    mov ax, 0x92                     ; 0x1c5a
    push ax                          ; 0x1c5d
    mov ax, 0x37                     ; 0x1c5e
    push ax                          ; 0x1c61
    call ds_app_io_0d7a              ; 0x1c62
    add sp, byte 8                   ; 0x1c65
    mov ax, 0xe                      ; 0x1c68
    push ax                          ; 0x1c6b
    call ds_app_1371                 ; 0x1c6c
    pop cx                           ; 0x1c6f
    mov ax, 2                        ; 0x1c70
    push ax                          ; 0x1c73
    mov ax, 3                        ; 0x1c74
    push ax                          ; 0x1c77
    call ds_app_file_2863            ; 0x1c78
    add sp, byte 4                   ; 0x1c7b
    ret                              ; 0x1c7e
loc_1c7f:
    mov ax, 0                        ; 0x1c7f
    call ds_aztec_csav               ; 0x1c82
    cmp word [bp + 0x8], byte 1      ; 0x1c85
    jne short @..loc_1c7f.l3         ; 0x1c89
    cmp word [bp + 0x6], byte 0      ; 0x1c8b
    jle short @..loc_1c7f.l1         ; 0x1c8f
    mov ax, word [bp + 0x4]          ; 0x1c91
    sub word [bp + 0x6], ax          ; 0x1c94
    jmp short @..loc_1c7f.l2         ; 0x1c97
@..loc_1c7f.l1:
    mov ax, 0                        ; 0x1c99
    sub ax, word [bp + 0x4]          ; 0x1c9c
    cmp ax, word [bp + 0x6]          ; 0x1c9f
    jge short @..loc_1c7f.l2         ; 0x1ca2
    mov word [bp + 0x6], ax          ; 0x1ca4
@..loc_1c7f.l2:
    jmp short @..loc_1c7f.l5         ; 0x1ca7
@..loc_1c7f.l3:
    cmp word [bp + 0x8], byte 0      ; 0x1ca9
    jne short @..loc_1c7f.l5         ; 0x1cad
    cmp word [bp + 0x6], byte 0      ; 0x1caf
    jge short @..loc_1c7f.l4         ; 0x1cb3
    mov ax, word [bp + 0x4]          ; 0x1cb5
    add word [bp + 0x6], ax          ; 0x1cb8
    jmp short @..loc_1c7f.l5         ; 0x1cbb
@..loc_1c7f.l4:
    mov ax, word [bp + 0x6]          ; 0x1cbd
    cmp ax, word [bp + 0x4]          ; 0x1cc0
    jge short @..loc_1c7f.l5         ; 0x1cc3
    mov ax, word [bp + 0x4]          ; 0x1cc5
    mov word [bp + 0x6], ax          ; 0x1cc8
@..loc_1c7f.l5:
    mov ax, word [bp + 0x6]          ; 0x1ccb
    ret                              ; 0x1cce
