; auto-generated
api_idx_0018:
    mov ax, 0xffe8                   ; 0x29f2
    call aztec_csav                  ; 0x29f5
    mov ax, word [bp + 0x6]          ; 0x29f8
    imul word [bp + 0xe]             ; 0x29fb
    add ax, word [bp + 0xa]          ; 0x29fe
    add ax, strict word 0xb          ; 0x2a01
    push ax                          ; 0x2a04
    mov ax, 6                        ; 0x2a05
    imul word [bp + 0xc]             ; 0x2a08
    add ax, word [bp + 0x8]          ; 0x2a0b
    inc ax                           ; 0x2a0e
    push ax                          ; 0x2a0f
    mov ax, word [bp + 0x6]          ; 0x2a10
    imul word [bp + 0xe]             ; 0x2a13
    add ax, word [bp + 0xa]          ; 0x2a16
    dec ax                           ; 0x2a19
    push ax                          ; 0x2a1a
    mov ax, word [bp + 0x8]          ; 0x2a1b
    dec ax                           ; 0x2a1e
    push ax                          ; 0x2a1f
    call thunk_10                    ; 0x2a20
    add sp, byte 8                   ; 0x2a23
    mov word [bp - 0x0016], dx       ; 0x2a26
    mov word [bp - 0x0018], ax       ; 0x2a29
    lea ax, word [bp - 0x0014]       ; 0x2a2c
    push ax                          ; 0x2a2f
    push word [bp + 0x4]             ; 0x2a30
    call ds_app_mem_0782             ; 0x2a33
    add sp, byte 4                   ; 0x2a36
    mov ax, 0                        ; 0x2a39
    push ax                          ; 0x2a3c
    mov ax, word [bp + 0x6]          ; 0x2a3d
    imul word [bp + 0xe]             ; 0x2a40
    add ax, word [bp + 0xa]          ; 0x2a43
    add ax, strict word 8            ; 0x2a46
    push ax                          ; 0x2a49
    mov ax, 6                        ; 0x2a4a
    imul word [bp + 0xc]             ; 0x2a4d
    add ax, word [bp + 0x8]          ; 0x2a50
    push ax                          ; 0x2a53
    mov ax, word [bp + 0x6]          ; 0x2a54
    imul word [bp + 0xe]             ; 0x2a57
    add ax, word [bp + 0xa]          ; 0x2a5a
    push ax                          ; 0x2a5d
    push word [bp + 0x8]             ; 0x2a5e
    call ds_app_0f2a                 ; 0x2a61
    add sp, byte 0x0a                ; 0x2a64
    mov ax, word [bp + 0x6]          ; 0x2a67
    imul word [bp + 0xe]             ; 0x2a6a
    add ax, word [bp + 0xa]          ; 0x2a6d
    inc ax                           ; 0x2a70
    inc ax                           ; 0x2a71
    push ax                          ; 0x2a72
    lea ax, word [bp - 0x0014]       ; 0x2a73
    push ax                          ; 0x2a76
    call aztec_strlen                ; 0x2a77
    pop cx                           ; 0x2a7a
    mov cx, ax                       ; 0x2a7b
    mov ax, word [bp + 0xc]          ; 0x2a7d
    sub ax, cx                       ; 0x2a80
    mov cx, 6                        ; 0x2a82
    imul cx                          ; 0x2a85
    mov cx, 2                        ; 0x2a87
    cwd                              ; 0x2a8a
    idiv cx                          ; 0x2a8b
    add ax, word [bp + 0x8]          ; 0x2a8d
    inc ax                           ; 0x2a90
    push ax                          ; 0x2a91
    call thunk                       ; 0x2a92
    add sp, byte 4                   ; 0x2a95
    mov ax, 0xc0                     ; 0x2a98
    push ax                          ; 0x2a9b
    mov ax, 0x1a                     ; 0x2a9c
    push ax                          ; 0x2a9f
    call thunk_3                     ; 0x2aa0
    add sp, byte 4                   ; 0x2aa3
    mov ax, 0                        ; 0x2aa6
    push ax                          ; 0x2aa9
    lea ax, word [bp - 0x0014]       ; 0x2aaa
    push ax                          ; 0x2aad
    call ds_string_loc_3a95          ; 0x2aae
    add sp, byte 4                   ; 0x2ab1
    mov ax, word [bp + 0x6]          ; 0x2ab4
    imul word [bp + 0xe]             ; 0x2ab7
    add ax, word [bp + 0xa]          ; 0x2aba
    add ax, strict word 8            ; 0x2abd
    push ax                          ; 0x2ac0
    mov ax, 6                        ; 0x2ac1
    imul word [bp + 0xc]             ; 0x2ac4
    add ax, word [bp + 0x8]          ; 0x2ac7
    push ax                          ; 0x2aca
    mov ax, word [bp + 0x6]          ; 0x2acb
    imul word [bp + 0xe]             ; 0x2ace
    add ax, word [bp + 0xa]          ; 0x2ad1
    push ax                          ; 0x2ad4
    push word [bp + 0x8]             ; 0x2ad5
    call thunk_4                     ; 0x2ad8
    add sp, byte 8                   ; 0x2adb
    mov ax, 1                        ; 0x2ade
    push ax                          ; 0x2ae1
    push word [bp - 0x0016]          ; 0x2ae2
    push word [bp - 0x0018]          ; 0x2ae5
    call thunk_13                    ; 0x2ae8
    add sp, byte 6                   ; 0x2aeb
    ret                              ; 0x2aee
