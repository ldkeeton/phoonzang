; auto-generated
loc_QKVM:
    push bp                          ; 0x0a0f
    mov bp, sp                       ; 0x0a10
    add sp, strict word 0xff60       ; 0x0a12
    push word [bp + 6]               ; 0x0a16
    lea ax, word [bp - 0x50]         ; 0x0a19
    push ax                          ; 0x0a1c
    call aztec_strcpy                ; 0x0a1d
    add sp, byte 4                   ; 0x0a20
    mov ax, dseg_14ef                ; 0x0a23
    push ax                          ; 0x0a26
    lea ax, word [bp - 0x50]         ; 0x0a27
    push ax                          ; 0x0a2a
    call aztec_strcat                ; 0x0a2b
    add sp, byte 4                   ; 0x0a2e
    mov ax, 2                        ; 0x0a31
    push ax                          ; 0x0a34
    lea ax, word [bp - 0x50]         ; 0x0a35
    push ax                          ; 0x0a38
    call aztec_open                  ; 0x0a39
    add sp, byte 4                   ; 0x0a3c
    mov word [bss_2698], ax          ; 0x0a3f
    cmp ax, strict word 0xffff       ; 0x0a42
    jne short .forward1              ; 0x0a45
    mov ax, dseg_14fc                ; 0x0a47
    push ax                          ; 0x0a4a
    lea ax, word [bp - 0xa0]         ; 0x0a4b
    push ax                          ; 0x0a4f
    call aztec_strcpy                ; 0x0a50
    add sp, byte 4                   ; 0x0a53
    lea ax, word [bp - 0x50]         ; 0x0a56
    push ax                          ; 0x0a59
    lea ax, word [bp - 0xa0]         ; 0x0a5a
    push ax                          ; 0x0a5e
    call aztec_strcat                ; 0x0a5f
    add sp, byte 4                   ; 0x0a62
    mov ax, dseg_151a                ; 0x0a65
    push ax                          ; 0x0a68
    lea ax, word [bp - 0xa0]         ; 0x0a69
    push ax                          ; 0x0a6d
    call aztec_strcat                ; 0x0a6e
    add sp, byte 4                   ; 0x0a71
    lea ax, word [bp - 0xa0]         ; 0x0a74
    push ax                          ; 0x0a78
    call loc_NNGU                    ; 0x0a79
    pop cx                           ; 0x0a7c
    mov ax, 1                        ; 0x0a7d
.back1:
    mov sp, bp                       ; 0x0a80
    pop bp                           ; 0x0a82
    ret                              ; 0x0a83
.forward1:
    mov ax, 0                        ; 0x0a84
    push ax                          ; 0x0a87
    mov ax, 0                        ; 0x0a88
    mov dx, 0                        ; 0x0a8b
    push dx                          ; 0x0a8e
    push ax                          ; 0x0a8f
    push word [bss_2698]             ; 0x0a90
    call aztec_lseek                 ; 0x0a94
    add sp, byte 8                   ; 0x0a97
    mov ax, 0x34c                    ; 0x0a9a
    push ax                          ; 0x0a9d
    mov ax, bss_269a                 ; 0x0a9e
    push ax                          ; 0x0aa1
    push word [bss_2698]             ; 0x0aa2
    call aztec_read                  ; 0x0aa6
    add sp, byte 6                   ; 0x0aa9
    mov ax, word [bp + 0x1c]         ; 0x0aac
    cmp ax, word [bss_29d2]          ; 0x0aaf
    je short .forward2               ; 0x0ab3
    mov ax, dseg_152c                ; 0x0ab5
    push ax                          ; 0x0ab8
    call loc_NNGU                    ; 0x0ab9
    pop cx                           ; 0x0abc
    push word [bss_2698]             ; 0x0abd
    call aztec_close                 ; 0x0ac1
    pop cx                           ; 0x0ac4
    mov ax, 1                        ; 0x0ac5
    jmp short .back1                 ; 0x0ac8
.forward2:
    mov ax, word [bp + 0x1c]         ; 0x0aca
    mov word [bss_29d2], ax          ; 0x0acd
    mov al, byte [bp + 0xc]          ; 0x0ad0
    mov byte [bss_29e2], al          ; 0x0ad3
    mov al, byte [bp + 0x12]         ; 0x0ad6
    mov byte [bss_29ba], al          ; 0x0ad9
    mov al, byte [bp + 0x14]         ; 0x0adc
    mov byte [bss_29bb], al          ; 0x0adf
    push word [bp + 0x16]            ; 0x0ae2
    mov ax, bss_29bc                 ; 0x0ae5
    push ax                          ; 0x0ae8
    call aztec_strcpy                ; 0x0ae9
    add sp, byte 4                   ; 0x0aec
    mov al, byte [bp + 0x18]         ; 0x0aef
    mov byte [bss_29d0], al          ; 0x0af2
    mov al, byte [bp + 0x1a]         ; 0x0af5
    mov byte [bss_29d1], al          ; 0x0af8
    mov ax, 0xa                      ; 0x0afb
    cmp word [bp + 0xe], byte 7      ; 0x0afe
    jne short .forward3              ; 0x0b02
    mov ax, 0                        ; 0x0b04
.forward3:
    mov byte [bss_29d4], al          ; 0x0b07
    mov ax, 0xa                      ; 0x0b0a
    cmp word [bp + 0xe], byte 7      ; 0x0b0d
    jne short .forward4              ; 0x0b11
    mov ax, 0                        ; 0x0b13
.forward4:
    mov byte [bss_29d5], al          ; 0x0b16
    mov ax, 0xa                      ; 0x0b19
    cmp word [bp + 0xe], byte 7      ; 0x0b1c
    jne short .forward5              ; 0x0b20
    mov ax, 0                        ; 0x0b22
.forward5:
    mov byte [bss_29d6], al          ; 0x0b25
    mov ax, 0xa                      ; 0x0b28
    cmp word [bp + 0xe], byte 7      ; 0x0b2b
    jne short .forward6              ; 0x0b2f
    mov ax, 0                        ; 0x0b31
.forward6:
    mov byte [bss_29d7], al          ; 0x0b34
    mov ax, word [bp + 0xe]          ; 0x0b37
    mov cx, 7                        ; 0x0b3a
    cwd                              ; 0x0b3d
    idiv cx                          ; 0x0b3e
    mov ax, dx                       ; 0x0b40
    mov word [bp + 0xe], ax          ; 0x0b42
    mov al, byte [bp + 0xe]          ; 0x0b45
    mov byte [bss_29dc], al          ; 0x0b48
    cmp word [bp + 0xe], byte 5      ; 0x0b4b
    jne short .forward7              ; 0x0b4f
    mov byte [bss_29dc], 0           ; 0x0b51
.forward7:
    mov byte [bss_29dd], al          ; 0x0b56
    cmp word [bp + 0xe], byte 2      ; 0x0b59
    je short .forward8               ; 0x0b5d
    cmp word [bp + 0xe], byte 3      ; 0x0b5f
    jne short .forward9              ; 0x0b63
.forward8:
    mov byte [bss_29dd], 0           ; 0x0b65
.forward9:
    mov word [bss_29d8], 0           ; 0x0b6a
    mov word [bss_29da], 0           ; 0x0b70
    cmp word [bp + 0xe], byte 0      ; 0x0b76
    jle short .forward10             ; 0x0b7a
    mov word [bss_29d8], 0x220       ; 0x0b7c
    mov word [bss_29da], 0x220       ; 0x0b82
.forward10:
    mov ax, 1                        ; 0x0b88
    cmp word [bp + 0x10], byte 0     ; 0x0b8b
    jne short .forward11             ; 0x0b8f
    mov ax, 0                        ; 0x0b91
.forward11:
    mov byte [bss_29e1], al          ; 0x0b94
    mov al, byte [bp + 0xa]          ; 0x0b97
    mov byte [bss_29df], al          ; 0x0b9a
    push word [bp + 6]               ; 0x0b9d
    mov ax, bss_296a                 ; 0x0ba0
    push ax                          ; 0x0ba3
    call aztec_strcpy                ; 0x0ba4
    add sp, byte 4                   ; 0x0ba7
    push word [bp + 6]               ; 0x0baa
    mov ax, bss_2992                 ; 0x0bad
    push ax                          ; 0x0bb0
    call aztec_strcpy                ; 0x0bb1
    add sp, byte 4                   ; 0x0bb4
    cmp word [bp + 0xa], byte 5      ; 0x0bb7
    jne short .forward12             ; 0x0bbb
    push word [bp + 8]               ; 0x0bbd
    mov ax, bss_297e                 ; 0x0bc0
    push ax                          ; 0x0bc3
    call aztec_strcpy                ; 0x0bc4
    add sp, byte 4                   ; 0x0bc7
    mov ax, dseg_155e                ; 0x0bca
    push ax                          ; 0x0bcd
    mov ax, bss_297e                 ; 0x0bce
    push ax                          ; 0x0bd1
    call aztec_strcat                ; 0x0bd2
    add sp, byte 4                   ; 0x0bd5
    mov byte [bss_29e3], 1           ; 0x0bd8
.forward12:
    mov ax, dseg_1560                ; 0x0bdd
    push ax                          ; 0x0be0
    mov ax, bss_29a6                 ; 0x0be1
    push ax                          ; 0x0be4
    call aztec_strcpy                ; 0x0be5
    add sp, byte 4                   ; 0x0be8
    mov ax, 0                        ; 0x0beb
    push ax                          ; 0x0bee
    mov ax, 0                        ; 0x0bef
    mov dx, 0                        ; 0x0bf2
    push dx                          ; 0x0bf5
    push ax                          ; 0x0bf6
    push word [bss_2698]             ; 0x0bf7
    call aztec_lseek                 ; 0x0bfb
    add sp, byte 8                   ; 0x0bfe
    mov ax, 0x34c                    ; 0x0c01
    push ax                          ; 0x0c04
    mov ax, bss_269a                 ; 0x0c05
    push ax                          ; 0x0c08
    push word [bss_2698]             ; 0x0c09
    call aztec_write                 ; 0x0c0d
    add sp, byte 6                   ; 0x0c10
    push word [bss_2698]             ; 0x0c13
    call aztec_close                 ; 0x0c17
    pop cx                           ; 0x0c1a
    mov ax, 0                        ; 0x0c1b
    jmp near .back1                  ; 0x0c1e
