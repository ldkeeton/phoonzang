math_loc_2a32:
    mov ax, 0                        ; 0x2a32
    call ds_dispatch_f40b            ; 0x2a35
    mov ax, 0x7d                     ; 0x2a38
    push ax                          ; 0x2a3b
    mov ax, 0                        ; 0x2a3c
    push ax                          ; 0x2a3f
    mov ax, 0x248                    ; 0x2a40
    imul word [bp + 0x4]             ; 0x2a43
    push ax                          ; 0x2a46
    mov ax, 0xe                      ; 0x2a47
    imul word [bp + 0x6]             ; 0x2a4a
    mov cx, ax                       ; 0x2a4d
    pop ax                           ; 0x2a4f
    add ax, cx                       ; 0x2a50
    add ax, word [bp + 0x8]          ; 0x2a52
    mov bx, ax                       ; 0x2a55
    mov al, byte [bx + 0x5d8e]       ; 0x2a57
    sub ah, ah                       ; 0x2a5b
    add ax, word [bp + 0xa]          ; 0x2a5d
    push ax                          ; 0x2a60
    call ds_dispatch_b7c2            ; 0x2a61
    add sp, byte 6                   ; 0x2a64
    push ax                          ; 0x2a67
    mov ax, 0x248                    ; 0x2a68
    imul word [bp + 0x4]             ; 0x2a6b
    mov cx, ax                       ; 0x2a6e
    mov ax, 0xe                      ; 0x2a70
    imul word [bp + 0x6]             ; 0x2a73
    mov dx, ax                       ; 0x2a76
    add cx, ax                       ; 0x2a78
    add cx, word [bp + 0x8]          ; 0x2a7a
    mov bx, cx                       ; 0x2a7d
    pop ax                           ; 0x2a7f
    mov byte [bx + 0x5d8e], al       ; 0x2a80
    ret                              ; 0x2a84
