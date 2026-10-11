api_idx_0054_5:
    mov ax, 0xffac                   ; 0x8a81
    call ds_dispatch_f40b            ; 0x8a84
    mov word [bp - 0x0002], 0        ; 0x8a87
    jmp near @..api_idx_0054_5.l5    ; 0x8a8c
@..api_idx_0054_5.l1:
    mov byte [bp - 0x0052], 0        ; 0x8a8f
    mov ax, word [bp + 0x6]          ; 0x8a93
    jmp near @..api_idx_0054_5.l2    ; 0x8a96
    mov ax, 0xa                      ; 0x8a99
    imul word [bp - 0x0002]          ; 0x8a9c
    add ax, 0xa658                   ; 0x8a9f
    push ax                          ; 0x8aa2
    lea ax, word [bp - 0x0052]       ; 0x8aa3
    push ax                          ; 0x8aa6
    call ds_dispatch_f364            ; 0x8aa7
    add sp, byte 4                   ; 0x8aaa
    jmp near @..api_idx_0054_5.l3    ; 0x8aad
    mov ax, 0xa                      ; 0x8ab0
    imul word [bp - 0x0002]          ; 0x8ab3
    add ax, 0xa6bc                   ; 0x8ab6
    push ax                          ; 0x8ab9
    lea ax, word [bp - 0x0052]       ; 0x8aba
    push ax                          ; 0x8abd
    call ds_dispatch_f364            ; 0x8abe
    add sp, byte 4                   ; 0x8ac1
    jmp near @..api_idx_0054_5.l3    ; 0x8ac4
    mov ax, 0xa                      ; 0x8ac7
    imul word [bp - 0x0002]          ; 0x8aca
    add ax, 0xa702                   ; 0x8acd
    push ax                          ; 0x8ad0
    lea ax, word [bp - 0x0052]       ; 0x8ad1
    push ax                          ; 0x8ad4
    call ds_dispatch_f364            ; 0x8ad5
    add sp, byte 4                   ; 0x8ad8
    jmp short @..api_idx_0054_5.l3   ; 0x8adb
    mov ax, 0xa                      ; 0x8add
    imul word [bp - 0x0002]          ; 0x8ae0
    add ax, 0xa766                   ; 0x8ae3
    push ax                          ; 0x8ae6
    lea ax, word [bp - 0x0052]       ; 0x8ae7
    push ax                          ; 0x8aea
    call ds_dispatch_f364            ; 0x8aeb
    add sp, byte 4                   ; 0x8aee
    jmp short @..api_idx_0054_5.l3   ; 0x8af1
    mov ax, 0x14                     ; 0x8af3
    imul word [bp - 0x0002]          ; 0x8af6
    add ax, 0xa7ac                   ; 0x8af9
    push ax                          ; 0x8afc
    lea ax, word [bp - 0x0052]       ; 0x8afd
    push ax                          ; 0x8b00
    call ds_dispatch_f364            ; 0x8b01
    add sp, byte 4                   ; 0x8b04
    jmp short @..api_idx_0054_5.l3   ; 0x8b07
    mov ax, 0xa                      ; 0x8b09
    imul word [bp - 0x0002]          ; 0x8b0c
    add ax, 0xa810                   ; 0x8b0f
    push ax                          ; 0x8b12
    lea ax, word [bp - 0x0052]       ; 0x8b13
    push ax                          ; 0x8b16
    call ds_dispatch_f364            ; 0x8b17
    add sp, byte 4                   ; 0x8b1a
    jmp short @..api_idx_0054_5.l3   ; 0x8b1d
    mov ax, 0xa                      ; 0x8b1f
    imul word [bp - 0x0002]          ; 0x8b22
    add ax, 0xa856                   ; 0x8b25
    push ax                          ; 0x8b28
    lea ax, word [bp - 0x0052]       ; 0x8b29
    push ax                          ; 0x8b2c
    call ds_dispatch_f364            ; 0x8b2d
    add sp, byte 4                   ; 0x8b30
    jmp short @..api_idx_0054_5.l3   ; 0x8b33
    popf                             ; 0x8b35
    db 0xdb, 0xe0 ; feni8087_nop

    db 0xda, 0xf7, 0xda, 0x0e, 0xdb, 0x24, 0xdb, 0x9d, 0xdb, 0x9d, 0xdb, 0x3a, 0xdb, 0x50, 0xdb, 0x66
    db 0xdb

@..api_idx_0054_5.l2:
    cmp ax, strict word 0xa          ; 0x8b49
    jae short @..api_idx_0054_5.l3   ; 0x8b4c
    xchg bx, ax                      ; 0x8b4e
    shl bx, 1                        ; 0x8b4f
    jmp [cs:bx - 0x2484]             ; 0x8b51
@..api_idx_0054_5.l3:
    lea ax, word [bp - 0x0052]       ; 0x8b56
    push ax                          ; 0x8b59
    call ds_dispatch_fa90            ; 0x8b5a
    pop cx                           ; 0x8b5d
    mov word [bp - 0x0054], ax       ; 0x8b5e
    mov bx, ax                       ; 0x8b61
    add bx, bp                       ; 0x8b63
    mov byte [bx - 0x0052], 0x20     ; 0x8b65
    mov byte [bx - 0x0051], 0        ; 0x8b69
    lea ax, word [bp - 0x0052]       ; 0x8b6d
    push ax                          ; 0x8b70
    call ds_dispatch_fa90            ; 0x8b71
    pop cx                           ; 0x8b74
    push ax                          ; 0x8b75
    lea ax, word [bp - 0x0052]       ; 0x8b76
    push ax                          ; 0x8b79
    push word [bp + 0x4]             ; 0x8b7a
    call aztec_strncmp               ; 0x8b7d
    add sp, byte 6                   ; 0x8b80
    test ax, ax                      ; 0x8b83
    jne short @..api_idx_0054_5.l4   ; 0x8b85
    lea ax, word [bp - 0x0052]       ; 0x8b87
    push ax                          ; 0x8b8a
    call ds_dispatch_fa90            ; 0x8b8b
    pop cx                           ; 0x8b8e
    dec ax                           ; 0x8b8f
    push ax                          ; 0x8b90
    push word [bp + 0x4]             ; 0x8b91
    call api_idx_0002_8              ; 0x8b94
    add sp, byte 4                   ; 0x8b97
    mov ax, word [bp - 0x0002]       ; 0x8b9a
    ret                              ; 0x8b9d
@..api_idx_0054_5.l4:
    inc word [bp - 0x0002]           ; 0x8b9e
@..api_idx_0054_5.l5:
    mov ax, word [bp - 0x0002]       ; 0x8ba1
    cmp ax, word [bp + 0x8]          ; 0x8ba4
    jge short @..api_idx_0054_5.l6   ; 0x8ba7
    jmp near @..api_idx_0054_5.l1    ; 0x8ba9
@..api_idx_0054_5.l6:
    mov ax, 0xffff                   ; 0x8bac
    ret                              ; 0x8baf
