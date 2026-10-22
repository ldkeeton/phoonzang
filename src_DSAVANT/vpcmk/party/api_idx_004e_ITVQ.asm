; auto-generated
api_idx_004e_ITVQ:
    mov ax, 0xffb2                   ; 0x4b05
    call aztec_csav                  ; 0x4b08
    mov ax, 0                        ; 0x4b0b
    push ax                          ; 0x4b0e
    push word [bp + 0x6]             ; 0x4b0f
    lea ax, word [bp - 0x004c]       ; 0x4b12
    push ax                          ; 0x4b15
    mov ax, 1                        ; 0x4b16
    push ax                          ; 0x4b19
    call data_record_io              ; 0x4b1a
    add sp, byte 8                   ; 0x4b1d
    mov word [bp - 0x0002], 0        ; 0x4b20
@..api_idx_004e_ITVQ.l1:
    mov ax, 0x248                    ; 0x4b25
    imul word [bp + 0x4]             ; 0x4b28
    push ax                          ; 0x4b2b
    mov ax, 0xc                      ; 0x4b2c
    imul word [bp - 0x0002]          ; 0x4b2f
    mov cx, ax                       ; 0x4b32
    pop ax                           ; 0x4b34
    add ax, cx                       ; 0x4b35
    mov bx, ax                       ; 0x4b37
    cmp word [bx + 0x5c34], byte 0   ; 0x4b39
    jle short @..api_idx_004e_ITVQ.l2 ; 0x4b3e
    inc word [bp - 0x0002]           ; 0x4b40
    jmp short @..api_idx_004e_ITVQ.l1 ; 0x4b43
@..api_idx_004e_ITVQ.l2:
    mov ax, 0x248                    ; 0x4b45
    imul word [bp + 0x4]             ; 0x4b48
    push ax                          ; 0x4b4b
    mov ax, 0xc                      ; 0x4b4c
    imul word [bp - 0x0002]          ; 0x4b4f
    mov cx, ax                       ; 0x4b52
    pop ax                           ; 0x4b54
    add ax, cx                       ; 0x4b55
    add ax, 0x5c34                   ; 0x4b57
    mov word [bp - 0x004e], ax       ; 0x4b5a
    mov al, byte [bp - 0x0030]       ; 0x4b5d
    sub ah, ah                       ; 0x4b60
    push ax                          ; 0x4b62
    mov al, byte [bp - 0x002f]       ; 0x4b63
    sub ah, ah                       ; 0x4b66
    mov cx, ax                       ; 0x4b68
    pop ax                           ; 0x4b6a
    imul cx                          ; 0x4b6b
    add ax, word [bp - 0x0032]       ; 0x4b6d
    mov bx, word [bp - 0x004e]       ; 0x4b70
    mov byte [bx + 0x6], al          ; 0x4b73
    mov ax, word [bp + 0x6]          ; 0x4b76
    mov bx, word [bp - 0x004e]       ; 0x4b79
    mov word [bx], ax                ; 0x4b7c
    mov al, byte [bp - 0x0014]       ; 0x4b7e
    mov bx, word [bp - 0x004e]       ; 0x4b81
    mov byte [bx + 0x4], al          ; 0x4b84
    mov al, byte [bp - 0x0013]       ; 0x4b87
    mov bx, word [bp - 0x004e]       ; 0x4b8a
    mov byte [bx + 0x5], al          ; 0x4b8d
    mov ax, word [bp - 0x0028]       ; 0x4b90
    mov bx, word [bp - 0x004e]       ; 0x4b93
    mov word [bx + 0x2], ax          ; 0x4b96
    mov al, byte [bp - 0x0024]       ; 0x4b99
    mov bx, word [bp - 0x004e]       ; 0x4b9c
    mov byte [bx + 0x8], al          ; 0x4b9f
    mov al, byte [bp - 0x0023]       ; 0x4ba2
    mov bx, word [bp - 0x004e]       ; 0x4ba5
    mov byte [bx + 0x9], al          ; 0x4ba8
    mov al, byte [bp - 0x0010]       ; 0x4bab
    mov bx, word [bp - 0x004e]       ; 0x4bae
    mov byte [bx + 0xa], al          ; 0x4bb1
    mov al, byte [bp - 0x000c]       ; 0x4bb4
    mov bx, word [bp - 0x004e]       ; 0x4bb7
    mov byte [bx + 0xb], al          ; 0x4bba
    mov bx, word [bp - 0x004e]       ; 0x4bbd
    mov byte [bx + 0x7], 0x80        ; 0x4bc0
    mov al, byte [bp - 0x0015]       ; 0x4bc4
    sub ah, ah                       ; 0x4bc7
    test ax, 8                       ; 0x4bc9
    je short @..api_idx_004e_ITVQ.l3 ; 0x4bcc
    mov bx, word [bp - 0x004e]       ; 0x4bce
    or byte [bx + 0x7], 4            ; 0x4bd1
@..api_idx_004e_ITVQ.l3:
    mov al, byte [bp - 0x0015]       ; 0x4bd5
    sub ah, ah                       ; 0x4bd8
    test ax, 4                       ; 0x4bda
    je short @..api_idx_004e_ITVQ.l4 ; 0x4bdd
    mov bx, word [bp - 0x004e]       ; 0x4bdf
    or byte [bx + 0x7], 8            ; 0x4be2
@..api_idx_004e_ITVQ.l4:
    mov al, byte [bp - 0x0015]       ; 0x4be6
    sub ah, ah                       ; 0x4be9
    test ax, 0x10                    ; 0x4beb
    je short @..api_idx_004e_ITVQ.l5 ; 0x4bee
    mov bx, word [bp - 0x004e]       ; 0x4bf0
    or byte [bx + 0x7], 0x10         ; 0x4bf3
@..api_idx_004e_ITVQ.l5:
    mov al, byte [bp - 0x0015]       ; 0x4bf7
    sub ah, ah                       ; 0x4bfa
    test ax, 0x20                    ; 0x4bfc
    je short @..api_idx_004e_ITVQ.l6 ; 0x4bff
    mov bx, word [bp - 0x004e]       ; 0x4c01
    or byte [bx + 0x7], 0x20         ; 0x4c04
@..api_idx_004e_ITVQ.l6:
    mov al, byte [bp - 0x0015]       ; 0x4c08
    sub ah, ah                       ; 0x4c0b
    test ax, 2                       ; 0x4c0d
    je short @..api_idx_004e_ITVQ.l7 ; 0x4c10
    mov bx, word [bp - 0x004e]       ; 0x4c12
    or byte [bx + 0x7], 0x40         ; 0x4c15
@..api_idx_004e_ITVQ.l7:
    push word [bp + 0x4]             ; 0x4c19
    call ds_app_OOUT                 ; 0x4c1c
    pop cx                           ; 0x4c1f
    ret                              ; 0x4c20
loc_VPRH:
    mov ax, 0                        ; 0x4c21
    call aztec_csav                  ; 0x4c24
    cmp word [bp + 0x6], byte 0      ; 0x4c27
    je short @..loc_VPRH.l1          ; 0x4c2b
    push word [bp + 0x6]             ; 0x4c2d
    push word [bp + 0x4]             ; 0x4c30
    call api_idx_004e_ITVQ           ; 0x4c33
    add sp, byte 4                   ; 0x4c36
@..loc_VPRH.l1:
    cmp word [bp + 0x8], byte 0      ; 0x4c39
    je short @..loc_VPRH.l2          ; 0x4c3d
    push word [bp + 0x8]             ; 0x4c3f
    push word [bp + 0x4]             ; 0x4c42
    call api_idx_004e_ITVQ           ; 0x4c45
    add sp, byte 4                   ; 0x4c48
@..loc_VPRH.l2:
    cmp word [bp + 0xa], byte 0      ; 0x4c4b
    je short @..loc_VPRH.l3          ; 0x4c4f
    push word [bp + 0xa]             ; 0x4c51
    push word [bp + 0x4]             ; 0x4c54
    call api_idx_004e_ITVQ           ; 0x4c57
    add sp, byte 4                   ; 0x4c5a
@..loc_VPRH.l3:
    cmp word [bp + 0xc], byte 0      ; 0x4c5d
    je short @..loc_VPRH.l4          ; 0x4c61
    push word [bp + 0xc]             ; 0x4c63
    push word [bp + 0x4]             ; 0x4c66
    call api_idx_004e_ITVQ           ; 0x4c69
    add sp, byte 4                   ; 0x4c6c
@..loc_VPRH.l4:
    cmp word [bp + 0xe], byte 0      ; 0x4c6f
    je short @..loc_VPRH.l5          ; 0x4c73
    push word [bp + 0xe]             ; 0x4c75
    push word [bp + 0x4]             ; 0x4c78
    call api_idx_004e_ITVQ           ; 0x4c7b
    add sp, byte 4                   ; 0x4c7e
@..loc_VPRH.l5:
    ret                              ; 0x4c81
