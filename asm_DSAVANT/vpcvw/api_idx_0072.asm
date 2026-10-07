api_idx_0072:
    mov ax, 0xff8e                   ; 0x4a3f
    call ds_dispatch_f40b            ; 0x4a42
    mov word [data_95ea], 0          ; 0x4a45
    mov word [bp - 0x000c], 0        ; 0x4a4b
    mov word [bp - 0x000e], 0        ; 0x4a50
@..api_idx_0072.l1:
    cmp word [bp - 0x000c], byte 2   ; 0x4a55
    jge short @..api_idx_0072.l3     ; 0x4a59
    mov ax, 0x248                    ; 0x4a5b
    imul word [bp + 0x4]             ; 0x4a5e
    push ax                          ; 0x4a61
    mov ax, 0x78                     ; 0x4a62
    imul word [bp - 0x000c]          ; 0x4a65
    mov cx, ax                       ; 0x4a68
    pop ax                           ; 0x4a6a
    add ax, cx                       ; 0x4a6b
    push ax                          ; 0x4a6d
    mov ax, 0xc                      ; 0x4a6e
    imul word [bp - 0x000e]          ; 0x4a71
    mov cx, ax                       ; 0x4a74
    pop ax                           ; 0x4a76
    add ax, cx                       ; 0x4a77
    mov bx, ax                       ; 0x4a79
    cmp word [bx + 0x5c34], byte 0   ; 0x4a7b
    jle short @..api_idx_0072.l3     ; 0x4a80
    inc word [bp - 0x000e]           ; 0x4a82
    mov ax, word [bp - 0x000e]       ; 0x4a85
    cmp ax, strict word 0xa          ; 0x4a88
    jne short @..api_idx_0072.l2     ; 0x4a8b
    mov word [bp - 0x000e], 0        ; 0x4a8d
    inc word [bp - 0x000c]           ; 0x4a92
    mov ax, word [bp - 0x000c]       ; 0x4a95
    cmp ax, strict word 2            ; 0x4a98
    jne short @..api_idx_0072.l2     ; 0x4a9b
    mov ax, 0                        ; 0x4a9d
    push ax                          ; 0x4aa0
    call ds_dispatch_b7e0            ; 0x4aa1
    pop cx                           ; 0x4aa4
    mov ax, 0xffff                   ; 0x4aa5
    ret                              ; 0x4aa8
