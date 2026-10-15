; auto-generated
api_idx_0062_QHSK:
    mov ax, 0xff9e                   ; 0x4b95
    call aztec_csav                  ; 0x4b98
    mov word [bp - 0x0002], 0        ; 0x4b9b
    mov word [bp - 0x0062], 0        ; 0x4ba0
@..api_idx_0062_QHSK.l1:
    lea ax, word [bp - 0x005e]       ; 0x4ba5
    push ax                          ; 0x4ba8
    mov ax, word [bp + 0x4]          ; 0x4ba9
    add ax, word [bp - 0x0002]       ; 0x4bac
    push ax                          ; 0x4baf
    call ds_app_mem_VKHV             ; 0x4bb0
    add sp, byte 4                   ; 0x4bb3
    cmp word [bss_5216], byte 0      ; 0x4bb6
    jne short @..api_idx_0062_QHSK.l3 ; 0x4bbb
    lea ax, word [bp - 0x005e]       ; 0x4bbd
    push ax                          ; 0x4bc0
    call aztec_strlen                ; 0x4bc1
    pop cx                           ; 0x4bc4
    dec ax                           ; 0x4bc5
    cmp ax, word [bp - 0x0062]       ; 0x4bc6
    jle short @..api_idx_0062_QHSK.l2 ; 0x4bc9
    lea ax, word [bp - 0x005e]       ; 0x4bcb
    push ax                          ; 0x4bce
    call aztec_strlen                ; 0x4bcf
    pop cx                           ; 0x4bd2
    dec ax                           ; 0x4bd3
    mov word [bp - 0x0062], ax       ; 0x4bd4
@..api_idx_0062_QHSK.l2:
    inc word [bp - 0x0002]           ; 0x4bd7
@..api_idx_0062_QHSK.l3:
    cmp word [bss_5216], byte 0      ; 0x4bda
    je short @..api_idx_0062_QHSK.l1 ; 0x4bdf
    mov ax, 6                        ; 0x4be1
    imul word [bp - 0x0062]          ; 0x4be4
    add ax, strict word 0xc          ; 0x4be7
    mov word [bp - 0x0004], ax       ; 0x4bea
    mov ax, 6                        ; 0x4bed
    imul word [bp - 0x0002]          ; 0x4bf0
    add ax, strict word 0xc          ; 0x4bf3
    mov word [bp - 0x0006], ax       ; 0x4bf6
    mov ax, word [bp - 0x0004]       ; 0x4bf9
    mov cx, 2                        ; 0x4bfc
    cwd                              ; 0x4bff
    idiv cx                          ; 0x4c00
    mov cx, ax                       ; 0x4c02
    mov ax, 0xa0                     ; 0x4c04
    sub ax, cx                       ; 0x4c07
    mov word [bp - 0x0008], ax       ; 0x4c09
    mov ax, word [bp - 0x0006]       ; 0x4c0c
    mov cx, 2                        ; 0x4c0f
    cwd                              ; 0x4c12
    idiv cx                          ; 0x4c13
    mov cx, ax                       ; 0x4c15
    mov ax, 0x64                     ; 0x4c17
    sub ax, cx                       ; 0x4c1a
    mov word [bp - 0x000a], ax       ; 0x4c1c
    mov ax, word [bp - 0x0008]       ; 0x4c1f
    add ax, word [bp - 0x0004]       ; 0x4c22
    dec ax                           ; 0x4c25
    mov word [bp - 0x000c], ax       ; 0x4c26
    mov ax, word [bp - 0x000a]       ; 0x4c29
    add ax, word [bp - 0x0006]       ; 0x4c2c
    dec ax                           ; 0x4c2f
    mov word [bp - 0x000e], ax       ; 0x4c30
    mov ax, 0x90f5                   ; 0x4c33
    push ax                          ; 0x4c36
    mov ax, word [bp - 0x000e]       ; 0x4c37
    inc ax                           ; 0x4c3a
    push ax                          ; 0x4c3b
    mov ax, word [bp - 0x000c]       ; 0x4c3c
    inc ax                           ; 0x4c3f
    push ax                          ; 0x4c40
    mov ax, word [bp - 0x000a]       ; 0x4c41
    dec ax                           ; 0x4c44
    push ax                          ; 0x4c45
    mov ax, word [bp - 0x0008]       ; 0x4c46
    dec ax                           ; 0x4c49
    push ax                          ; 0x4c4a
    call ds_app_file_IOMU            ; 0x4c4b
    add sp, byte 0x0a                ; 0x4c4e
    mov word [bp - 0x0060], ax       ; 0x4c51
    push word [bp - 0x000e]          ; 0x4c54
    push word [bp - 0x000c]          ; 0x4c57
    push word [bp - 0x000a]          ; 0x4c5a
    push word [bp - 0x0008]          ; 0x4c5d
    call ds_app_VMUS                 ; 0x4c60
    add sp, byte 8                   ; 0x4c63
    mov word [bp - 0x0002], 0        ; 0x4c66
@..api_idx_0062_QHSK.l4:
    lea ax, word [bp - 0x005e]       ; 0x4c6b
    push ax                          ; 0x4c6e
    mov ax, word [bp + 0x4]          ; 0x4c6f
    add ax, word [bp - 0x0002]       ; 0x4c72
    push ax                          ; 0x4c75
    call ds_app_mem_VKHV             ; 0x4c76
    add sp, byte 4                   ; 0x4c79
    cmp word [bss_5216], byte 0      ; 0x4c7c
    jne short @..api_idx_0062_QHSK.l5 ; 0x4c81
    mov ax, 6                        ; 0x4c83
    imul word [bp - 0x0002]          ; 0x4c86
    add ax, word [bp - 0x000a]       ; 0x4c89
    add ax, strict word 6            ; 0x4c8c
    push ax                          ; 0x4c8f
    lea ax, word [bp - 0x005e]       ; 0x4c90
    push ax                          ; 0x4c93
    call aztec_strlen                ; 0x4c94
    pop cx                           ; 0x4c97
    mov cx, 6                        ; 0x4c98
    imul cx                          ; 0x4c9b
    add ax, strict word 0xfffa       ; 0x4c9d
    mov cx, 2                        ; 0x4ca0
    cwd                              ; 0x4ca3
    idiv cx                          ; 0x4ca4
    mov cx, ax                       ; 0x4ca6
    mov ax, 0xa0                     ; 0x4ca8
    sub ax, cx                       ; 0x4cab
    push ax                          ; 0x4cad
    call thunk                       ; 0x4cae
    add sp, byte 4                   ; 0x4cb1
    mov ax, 0                        ; 0x4cb4
    push ax                          ; 0x4cb7
    mov al, byte [bp - 0x005e]       ; 0x4cb8
    sub ah, ah                       ; 0x4cbb
    push ax                          ; 0x4cbd
    call thunk_3                     ; 0x4cbe
    add sp, byte 4                   ; 0x4cc1
    mov ax, 0                        ; 0x4cc4
    push ax                          ; 0x4cc7
    lea ax, word [bp - 0x005d]       ; 0x4cc8
    push ax                          ; 0x4ccb
    call ds_string_loc_PTIK          ; 0x4ccc
    add sp, byte 4                   ; 0x4ccf
    inc word [bp - 0x0002]           ; 0x4cd2
@..api_idx_0062_QHSK.l5:
    cmp word [bss_5216], byte 0      ; 0x4cd5
    je short @..api_idx_0062_QHSK.l4 ; 0x4cda
    mov ax, word [bp - 0x000e]       ; 0x4cdc
    inc ax                           ; 0x4cdf
    push ax                          ; 0x4ce0
    mov ax, word [bp - 0x000c]       ; 0x4ce1
    inc ax                           ; 0x4ce4
    push ax                          ; 0x4ce5
    mov ax, word [bp - 0x000a]       ; 0x4ce6
    dec ax                           ; 0x4ce9
    push ax                          ; 0x4cea
    mov ax, word [bp - 0x0008]       ; 0x4ceb
    dec ax                           ; 0x4cee
    push ax                          ; 0x4cef
    call thunk_4                     ; 0x4cf0
    add sp, byte 8                   ; 0x4cf3
    mov ax, word [bss_905a]          ; 0x4cf6
    shl ax, 1                        ; 0x4cf9
    push ax                          ; 0x4cfb
    call ds_app_MIKI                 ; 0x4cfc
    pop cx                           ; 0x4cff
    mov ax, 1                        ; 0x4d00
    push ax                          ; 0x4d03
    push word [bp - 0x0060]          ; 0x4d04
    call ds_app_file_OVOQ            ; 0x4d07
    add sp, byte 4                   ; 0x4d0a
    ret                              ; 0x4d0d
