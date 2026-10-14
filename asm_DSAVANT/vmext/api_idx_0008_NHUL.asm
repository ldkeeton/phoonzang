; auto-generated
api_idx_0008_NHUL:
    mov ax, 0xfff8                   ; 0x1a1d
    call aztec_csav                  ; 0x1a20
    cmp word [bp + 0xe], byte 0      ; 0x1a23
    jne short @..api_idx_0008_NHUL.l1 ; 0x1a27
    jmp near @..api_idx_0008_NHUL.l4 ; 0x1a29
@..api_idx_0008_NHUL.l1:
    mov ax, 0                        ; 0x1a2c
    push ax                          ; 0x1a2f
    push word [bp + 0xe]             ; 0x1a30
    lea ax, word [bp + 0xc]          ; 0x1a33
    push ax                          ; 0x1a36
    lea ax, word [bp + 0xa]          ; 0x1a37
    push ax                          ; 0x1a3a
    lea ax, word [bp + 0x8]          ; 0x1a3b
    push ax                          ; 0x1a3e
    lea ax, word [bp + 0x6]          ; 0x1a3f
    push ax                          ; 0x1a42
    lea ax, word [bp + 0x4]          ; 0x1a43
    push ax                          ; 0x1a46
    call loc_1963                    ; 0x1a47
    add sp, byte 0x0e                ; 0x1a4a
    test ax, ax                      ; 0x1a4d
    je short @..api_idx_0008_NHUL.l4 ; 0x1a4f
    mov ax, word [bss_91a8]          ; 0x1a51
    jmp short @..api_idx_0008_NHUL.l3 ; 0x1a54
loc_1a56:
    mov ax, 2                        ; 0x1a56
    ret                              ; 0x1a59
loc_1a5a:
    cmp word [bss_9188], byte 0      ; 0x1a5a
    je short @..api_idx_0008_NHUL.l2 ; 0x1a5f
    mov ax, 0                        ; 0x1a61
    ret                              ; 0x1a64
jumptable_1a8f_case_1:
@..api_idx_0008_NHUL.l2:
    mov ax, 5                        ; 0x1a65
    imul word [bss_91aa]             ; 0x1a68
    add ax, word [bp + 0xe]          ; 0x1a6c
    mov bx, ax                       ; 0x1a6f
    mov byte [bx - 0x6e52], 1        ; 0x1a71
    mov ax, 4                        ; 0x1a76
    ret                              ; 0x1a79
loc_1a7a:
    mov ax, 5                        ; 0x1a7a
    imul word [bss_91aa]             ; 0x1a7d
    add ax, word [bp + 0xe]          ; 0x1a81
    mov bx, ax                       ; 0x1a84
    mov byte [bx - 0x6e52], 3        ; 0x1a86
    mov ax, 0                        ; 0x1a8b
    ret                              ; 0x1a8e
jumptable_1a8f:
    dw loc_1a56 - IMAGE_BASE + 0x5055          ; 0x1a8f
    dw jumptable_1a8f_case_1 - IMAGE_BASE + 0x5055 ; 0x1a91
    dw loc_1a56 - IMAGE_BASE + 0x5055          ; 0x1a93
    dw loc_1a5a - IMAGE_BASE + 0x5055          ; 0x1a95
    dw loc_1a56 - IMAGE_BASE + 0x5055          ; 0x1a97
    dw loc_1a7a - IMAGE_BASE + 0x5055          ; 0x1a99
@..api_idx_0008_NHUL.l3:
    cmp ax, strict word 6            ; 0x1a9b
    jae short @..api_idx_0008_NHUL.l4 ; 0x1a9e
    xchg bx, ax                      ; 0x1aa0
    shl bx, 1                        ; 0x1aa1
    jmp [cs:bx + 0x6ad6]             ; 0x1aa3
@..api_idx_0008_NHUL.l4:
    mov ax, word [bp + 0xc]          ; 0x1aa8
    mov cx, 6                        ; 0x1aab
    shl ax, cl                       ; 0x1aae
    mov cx, word [bp + 0xa]          ; 0x1ab0
    shl cx, 1                        ; 0x1ab3
    shl cx, 1                        ; 0x1ab5
    shl cx, 1                        ; 0x1ab7
    add ax, cx                       ; 0x1ab9
    add ax, word [bp + 0x8]          ; 0x1abb
    mov word [bp - 0x0002], ax       ; 0x1abe
    push ax                          ; 0x1ac1
    mov ax, word [bss_0e14]          ; 0x1ac2
    add ax, 0x9b0                    ; 0x1ac5
    push ax                          ; 0x1ac8
    call ds_leaf_loc_KIMU            ; 0x1ac9
    add sp, byte 4                   ; 0x1acc
    test ax, ax                      ; 0x1acf
    je short @..api_idx_0008_NHUL.l6 ; 0x1ad1
    mov ax, word [bss_91a8]          ; 0x1ad3
    jmp short @..api_idx_0008_NHUL.l5 ; 0x1ad6
loc_1ad8:
    mov ax, 5                        ; 0x1ad8
    imul word [bss_91aa]             ; 0x1adb
    add ax, word [bp + 0xe]          ; 0x1adf
    mov bx, ax                       ; 0x1ae2
    mov byte [bx - 0x6e52], 3        ; 0x1ae4
    jmp short @..api_idx_0008_NHUL.l6 ; 0x1ae9
loc_1aeb:
    mov ax, 5                        ; 0x1aeb
    imul word [bss_91aa]             ; 0x1aee
    add ax, word [bp + 0xe]          ; 0x1af2
    mov bx, ax                       ; 0x1af5
    mov byte [bx - 0x6e52], 1        ; 0x1af7
    jmp short @..api_idx_0008_NHUL.l6 ; 0x1afc
loc_1afe:
    mov ax, 5                        ; 0x1afe
    imul word [bss_91aa]             ; 0x1b01
    add ax, word [bp + 0xe]          ; 0x1b05
    mov bx, ax                       ; 0x1b08
    mov byte [bx - 0x6e52], 2        ; 0x1b0a
    jmp short @..api_idx_0008_NHUL.l6 ; 0x1b0f
jumptable_1b11:
    dw loc_1ad8 - IMAGE_BASE + 0x5055          ; 0x1b11
    dw loc_1aeb - IMAGE_BASE + 0x5055          ; 0x1b13
    dw loc_1afe - IMAGE_BASE + 0x5055          ; 0x1b15
    dw loc_1aeb - IMAGE_BASE + 0x5055          ; 0x1b17
    dw loc_1ad8 - IMAGE_BASE + 0x5055          ; 0x1b19
    dw loc_1aeb - IMAGE_BASE + 0x5055          ; 0x1b1b
@..api_idx_0008_NHUL.l5:
    cmp ax, strict word 6            ; 0x1b1d
    jae short @..api_idx_0008_NHUL.l6 ; 0x1b20
    xchg bx, ax                      ; 0x1b22
    shl bx, 1                        ; 0x1b23
    jmp [cs:bx + 0x6b58]             ; 0x1b25
@..api_idx_0008_NHUL.l6:
    push word [bp - 0x0002]          ; 0x1b2a
    mov ax, word [bss_0e14]          ; 0x1b2d
    add ax, 0x8b0                    ; 0x1b30
    push ax                          ; 0x1b33
    call ds_leaf_loc_KIMU            ; 0x1b34
    add sp, byte 4                   ; 0x1b37
    test ax, ax                      ; 0x1b3a
    jne short @..api_idx_0008_NHUL.l7 ; 0x1b3c
    jmp near loc_1bb9                ; 0x1b3e
@..api_idx_0008_NHUL.l7:
    mov ax, word [bss_91a8]          ; 0x1b41
    jmp short @..api_idx_0008_NHUL.l8 ; 0x1b44
