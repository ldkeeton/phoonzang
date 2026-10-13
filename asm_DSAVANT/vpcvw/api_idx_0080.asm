; auto-generated
api_idx_0080:
    mov ax, 0xff80                   ; 0x6a20
    call aztec_csav                  ; 0x6a23
    mov ax, 0                        ; 0x6a26
    push ax                          ; 0x6a29
    push ax                          ; 0x6a2a
    push word [bss_93fc]             ; 0x6a2b
    push word [bss_93fa]             ; 0x6a2f
    call ds_loc_3b89                 ; 0x6a33
    add sp, byte 8                   ; 0x6a36
    mov ax, 0                        ; 0x6a39
    push ax                          ; 0x6a3c
    push ax                          ; 0x6a3d
    push word [bss_9400]             ; 0x6a3e
    push word [bss_93fe]             ; 0x6a42
    call ds_loc_3b89                 ; 0x6a46
    add sp, byte 8                   ; 0x6a49
    push word [bp + 0x4]             ; 0x6a4c
    call api_idx_0012                ; 0x6a4f
    pop cx                           ; 0x6a52
    mov si, ax                       ; 0x6a53
    lea di, word [bp - 0x0018]       ; 0x6a55
    mov cx, ds                       ; 0x6a58
    mov es, cx                       ; 0x6a5a
    mov cx, 7                        ; 0x6a5c
    rep movsw                        ; 0x6a5f
    mov ax, 0x248                    ; 0x6a61
    imul word [bp + 0x4]             ; 0x6a64
    mov bx, ax                       ; 0x6a67
    mov al, byte [bx + 0x5dab]       ; 0x6a69
    cbw                              ; 0x6a6d
    add ax, word [bp - 0x0018]       ; 0x6a6e
    mov word [bp - 0x000a], ax       ; 0x6a71
    mov al, byte [bx + 0x5dac]       ; 0x6a74
    cbw                              ; 0x6a78
    mov cx, ax                       ; 0x6a79
    mov ax, word [bp - 0x000a]       ; 0x6a7b
    add cx, ax                       ; 0x6a7e
    mov word [bp - 0x0008], cx       ; 0x6a80
    mov al, byte [bx + 0x5daa]       ; 0x6a83
    cbw                              ; 0x6a87
    add ax, cx                       ; 0x6a88
    mov word [bp - 0x0006], ax       ; 0x6a8a
    lea ax, word [bp - 0x0068]       ; 0x6a8d
    push ax                          ; 0x6a90
    mov ax, 0xd8                     ; 0x6a91
    push ax                          ; 0x6a94
    call ds_app_mem_0782             ; 0x6a95
    add sp, byte 4                   ; 0x6a98
    lea ax, word [bp - 0x0068]       ; 0x6a9b
    push ax                          ; 0x6a9e
    call aztec_strlen                ; 0x6a9f
    pop cx                           ; 0x6aa2
    mov word [bp - 0x0004], ax       ; 0x6aa3
    mov bx, ax                       ; 0x6aa6
    inc word [bp - 0x0004]           ; 0x6aa8
    add bx, bp                       ; 0x6aab
    mov byte [bx - 0x0068], 0x20     ; 0x6aad
    cmp word [bp - 0x0006], byte 0   ; 0x6ab1
    jle short @..api_idx_0080.l1     ; 0x6ab5
    mov bx, word [bp - 0x0004]       ; 0x6ab7
    inc word [bp - 0x0004]           ; 0x6aba
    add bx, bp                       ; 0x6abd
    mov byte [bx - 0x0068], 0x2b     ; 0x6abf
@..api_idx_0080.l1:
    mov ax, word [bp - 0x0004]       ; 0x6ac3
    lea cx, word [bp - 0x0068]       ; 0x6ac6
    add ax, cx                       ; 0x6ac9
    push ax                          ; 0x6acb
    push word [bp - 0x0006]          ; 0x6acc
    call ds_app_04c4                 ; 0x6acf
    add sp, byte 4                   ; 0x6ad2
    lea ax, word [bp - 0x0068]       ; 0x6ad5
    push ax                          ; 0x6ad8
    call aztec_strlen                ; 0x6ad9
    pop cx                           ; 0x6adc
    mov word [bp - 0x0004], ax       ; 0x6add
    mov bx, ax                       ; 0x6ae0
    inc word [bp - 0x0004]           ; 0x6ae2
    add bx, bp                       ; 0x6ae5
    mov byte [bx - 0x0068], 0x20     ; 0x6ae7
    mov bx, word [bp - 0x0004]       ; 0x6aeb
    inc word [bp - 0x0004]           ; 0x6aee
    add bx, bp                       ; 0x6af1
    mov byte [bx - 0x0068], 0x28     ; 0x6af3
    cmp word [bp - 0x0008], byte 0   ; 0x6af7
    jl short @..api_idx_0080.l2      ; 0x6afb
    mov bx, word [bp - 0x0004]       ; 0x6afd
    inc word [bp - 0x0004]           ; 0x6b00
    add bx, bp                       ; 0x6b03
    mov byte [bx - 0x0068], 0x2b     ; 0x6b05
@..api_idx_0080.l2:
    mov ax, word [bp - 0x0004]       ; 0x6b09
    lea cx, word [bp - 0x0068]       ; 0x6b0c
    add ax, cx                       ; 0x6b0f
    push ax                          ; 0x6b11
    push word [bp - 0x0008]          ; 0x6b12
    call ds_app_04c4                 ; 0x6b15
    add sp, byte 4                   ; 0x6b18
    lea ax, word [bp - 0x0068]       ; 0x6b1b
    push ax                          ; 0x6b1e
    call aztec_strlen                ; 0x6b1f
    pop cx                           ; 0x6b22
    mov word [bp - 0x0004], ax       ; 0x6b23
    mov bx, ax                       ; 0x6b26
    inc word [bp - 0x0004]           ; 0x6b28
    add bx, bp                       ; 0x6b2b
    mov byte [bx - 0x0068], 0x29     ; 0x6b2d
    mov bx, word [bp - 0x0004]       ; 0x6b31
    add bx, bp                       ; 0x6b34
    mov byte [bx - 0x0068], 0        ; 0x6b36
    mov ax, 0                        ; 0x6b3a
    push ax                          ; 0x6b3d
    mov ax, 0xeb                     ; 0x6b3e
    push ax                          ; 0x6b41
    call ds_loc_3a6a                 ; 0x6b42
    add sp, byte 4                   ; 0x6b45
    mov ax, 0x1e                     ; 0x6b48
    push ax                          ; 0x6b4b
    lea ax, word [bp - 0x0068]       ; 0x6b4c
    push ax                          ; 0x6b4f
    call aztec_strlen                ; 0x6b50
    pop cx                           ; 0x6b53
    mov cx, 6                        ; 0x6b54
    imul cx                          ; 0x6b57
    mov cx, 2                        ; 0x6b59
    cwd                              ; 0x6b5c
    idiv cx                          ; 0x6b5d
    mov cx, ax                       ; 0x6b5f
    mov ax, 0x10e                    ; 0x6b61
    sub ax, cx                       ; 0x6b64
    push ax                          ; 0x6b66
    call ds_loc_3a50                 ; 0x6b67
    add sp, byte 4                   ; 0x6b6a
    mov ax, 0                        ; 0x6b6d
    push ax                          ; 0x6b70
    lea ax, word [bp - 0x0068]       ; 0x6b71
    push ax                          ; 0x6b74
    call ds_string_loc_3a95          ; 0x6b75
    add sp, byte 4                   ; 0x6b78
    mov word [bp - 0x0074], 0x114    ; 0x6b7b
    mov word [bp - 0x0080], 0x2e     ; 0x6b80
    mov word [bp - 0x0072], 0x114    ; 0x6b85
    mov word [bp - 0x007e], 0x44     ; 0x6b8a
    mov word [bp - 0x0070], 0x114    ; 0x6b8f
    mov word [bp - 0x007c], 0x5a     ; 0x6b94
    mov word [bp - 0x006e], 0x126    ; 0x6b99
    mov word [bp - 0x007a], 0x4f     ; 0x6b9e
    mov word [bp - 0x006c], 0x114    ; 0x6ba3
    mov word [bp - 0x0078], 0x70     ; 0x6ba8
    mov word [bp - 0x0002], 0        ; 0x6bad
@..api_idx_0080.l3:
    mov ax, word [bp - 0x0002]       ; 0x6bb2
    shl ax, 1                        ; 0x6bb5
    mov bx, ax                       ; 0x6bb7
    add bx, bp                       ; 0x6bb9
    push word [bx - 0x0080]          ; 0x6bbb
    mov bx, ax                       ; 0x6bbe
    add bx, bp                       ; 0x6bc0
    push word [bx - 0x0074]          ; 0x6bc2
    call ds_loc_3a50                 ; 0x6bc5
    add sp, byte 4                   ; 0x6bc8
    mov ax, 0                        ; 0x6bcb
    push ax                          ; 0x6bce
    mov ax, 0x248                    ; 0x6bcf
    imul word [bp + 0x4]             ; 0x6bd2
    add ax, word [bp - 0x0002]       ; 0x6bd5
    mov bx, ax                       ; 0x6bd8
    mov al, byte [bx + 0x5d4b]       ; 0x6bda
    sub ah, ah                       ; 0x6bde
    cmp ax, 0xff                     ; 0x6be0
    je short @..api_idx_0080.l4      ; 0x6be3
    mov ax, 0x5f                     ; 0x6be5
    jmp short @..api_idx_0080.l5     ; 0x6be8
@..api_idx_0080.l4:
    mov ax, 0xeb                     ; 0x6bea
@..api_idx_0080.l5:
    push ax                          ; 0x6bed
    call ds_loc_3a6a                 ; 0x6bee
    add sp, byte 4                   ; 0x6bf1
    mov ax, 0x248                    ; 0x6bf4
    imul word [bp + 0x4]             ; 0x6bf7
    add ax, word [bp - 0x0002]       ; 0x6bfa
    mov bx, ax                       ; 0x6bfd
    mov al, byte [bx + 0x5dad]       ; 0x6bff
    cbw                              ; 0x6c03
    add ax, word [bp - 0x0008]       ; 0x6c04
    mov word [bp - 0x0006], ax       ; 0x6c07
    cmp ax, strict word 0            ; 0x6c0a
    jl short @..api_idx_0080.l6      ; 0x6c0d
    mov ax, 0                        ; 0x6c0f
    push ax                          ; 0x6c12
    mov ax, 0x2b                     ; 0x6c13
    push ax                          ; 0x6c16
    call ds_loc_3a77                 ; 0x6c17
    add sp, byte 4                   ; 0x6c1a
@..api_idx_0080.l6:
    lea ax, word [bp - 0x0068]       ; 0x6c1d
    push ax                          ; 0x6c20
    push word [bp - 0x0006]          ; 0x6c21
    call ds_app_04c4                 ; 0x6c24
    add sp, byte 4                   ; 0x6c27
    mov ax, 0                        ; 0x6c2a
    push ax                          ; 0x6c2d
    lea ax, word [bp - 0x0068]       ; 0x6c2e
    push ax                          ; 0x6c31
    call ds_string_loc_3a95          ; 0x6c32
    add sp, byte 4                   ; 0x6c35
    inc word [bp - 0x0002]           ; 0x6c38
    mov ax, word [bp - 0x0002]       ; 0x6c3b
    cmp ax, strict word 5            ; 0x6c3e
    jge short @..api_idx_0080.l7     ; 0x6c41
    jmp near @..api_idx_0080.l3      ; 0x6c43
@..api_idx_0080.l7:
    ret                              ; 0x6c46
