; auto-generated
api_idx_0006_TMUH:
    mov ax, 0xfffa                   ; 0x0a6e
    call aztec_csav                  ; 0x0a71
    mov ax, 0x64                     ; 0x0a74
    push ax                          ; 0x0a77
    call ds_app_GGUI                 ; 0x0a78
    pop cx                           ; 0x0a7b
    mov cx, 4                        ; 0x0a7c
    cwd                              ; 0x0a7f
    idiv cx                          ; 0x0a80
    mov word [bp - 0x0002], dx       ; 0x0a82
    mov ax, 0x64                     ; 0x0a85
    push ax                          ; 0x0a88
    call ds_app_GGUI                 ; 0x0a89
    pop cx                           ; 0x0a8c
    mov word [bp - 0x0004], ax       ; 0x0a8d
    mov ax, 0                        ; 0x0a90
    cmp word [bp - 0x0004], byte 0x4a ; 0x0a93
    jl short @..api_idx_0006_TMUH.l1 ; 0x0a97
    mov ax, 2                        ; 0x0a99
    cmp word [bp - 0x0004], byte 0x5c ; 0x0a9c
    jge short @..api_idx_0006_TMUH.l1 ; 0x0aa0
    mov ax, 1                        ; 0x0aa2
@..api_idx_0006_TMUH.l1:
    mov word [bp - 0x0006], ax       ; 0x0aa5
    mov ax, 0xc                      ; 0x0aa8
    imul word [bp + 0x4]             ; 0x0aab
    push ax                          ; 0x0aae
    mov ax, 3                        ; 0x0aaf
    imul word [bp - 0x0002]          ; 0x0ab2
    mov cx, ax                       ; 0x0ab5
    pop ax                           ; 0x0ab7
    add ax, cx                       ; 0x0ab8
    mov cx, ax                       ; 0x0aba
    mov ax, word [bp - 0x0006]       ; 0x0abc
    add cx, ax                       ; 0x0abf
    mov si, cx                       ; 0x0ac1
    mov bx, word [bss_0e14]          ; 0x0ac3
    mov al, byte [bx + si]           ; 0x0ac7
    sub ah, ah                       ; 0x0ac9
    ret                              ; 0x0acb
