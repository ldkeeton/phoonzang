api_idx_00ca:
    mov ax, 0xff36                   ; 0x1e31
    call ds_dispatch_f40b            ; 0x1e34
    mov ax, word [bp + 0x6]          ; 0x1e37
    jmp short @..api_idx_00ca.l5     ; 0x1e3a
@..api_idx_00ca.l1:
    mov word [bp - 0x000c], 8        ; 0x1e3c
    mov word [bp - 0x000e], 0x20     ; 0x1e41
    jmp short @..api_idx_00ca.l6     ; 0x1e46
@..api_idx_00ca.l2:
    mov word [bp - 0x000c], 4        ; 0x1e48
    mov word [bp - 0x000e], 0x1e     ; 0x1e4d
    jmp short @..api_idx_00ca.l6     ; 0x1e52
@..api_idx_00ca.l3:
    mov word [bp - 0x000c], data_0002 ; 0x1e54
    mov word [bp - 0x000e], 0x1f     ; 0x1e59
    jmp short @..api_idx_00ca.l6     ; 0x1e5e
@..api_idx_00ca.l4:
    mov word [bp - 0x000c], 1        ; 0x1e60
    mov word [bp - 0x000e], 0x1d     ; 0x1e65
    jmp short @..api_idx_00ca.l6     ; 0x1e6a
@..api_idx_00ca.l5:
    cmp ax, strict word 0            ; 0x1e6c
    je short @..api_idx_00ca.l1      ; 0x1e6f
    cmp ax, strict word 1            ; 0x1e71
    je short @..api_idx_00ca.l2      ; 0x1e74
    cmp ax, strict word 2            ; 0x1e76
    je short @..api_idx_00ca.l4      ; 0x1e79
    cmp ax, strict word 3            ; 0x1e7b
    je short @..api_idx_00ca.l3      ; 0x1e7e
@..api_idx_00ca.l6:
    mov ax, 0x10                     ; 0x1e80
    push ax                          ; 0x1e83
    lea ax, word [bp - 0x001e]       ; 0x1e84
    push ax                          ; 0x1e87
    mov ax, 0x248                    ; 0x1e88
    imul word [bp + 0x4]             ; 0x1e8b
    add ax, 0x5e12                   ; 0x1e8e
    push ax                          ; 0x1e91
    call ds_dispatch_fedc            ; 0x1e92
    add sp, byte 6                   ; 0x1e95
    mov ax, 0                        ; 0x1e98
    push ax                          ; 0x1e9b
    mov ax, 0x10                     ; 0x1e9c
    push ax                          ; 0x1e9f
    mov ax, 0x248                    ; 0x1ea0
    imul word [bp + 0x4]             ; 0x1ea3
    add ax, 0x5e12                   ; 0x1ea6
    push ax                          ; 0x1ea9
    call ds_dispatch_f306            ; 0x1eaa
    add sp, byte 6                   ; 0x1ead
    mov ax, 0x248                    ; 0x1eb0
    imul word [bp + 0x4]             ; 0x1eb3
    add ax, word [bp - 0x000e]       ; 0x1eb6
    mov bx, ax                       ; 0x1eb9
    mov al, byte [bx + 0x5d6c]       ; 0x1ebb
    sub ah, ah                       ; 0x1ebf
    mov cx, 0x12                     ; 0x1ec1
    cwd                              ; 0x1ec4
    idiv cx                          ; 0x1ec5
    inc ax                           ; 0x1ec7
    mov word [bp - 0x000a], ax       ; 0x1ec8
    cmp byte [bx + 0x5d6c], 0x62     ; 0x1ecb
    jb short @..api_idx_00ca.l7      ; 0x1ed0
    mov word [bp - 0x000a], 7        ; 0x1ed2
@..api_idx_00ca.l7:
    mov word [bp - 0x0004], 0        ; 0x1ed7
    mov word [bp - 0x0002], 0        ; 0x1edc
@..api_idx_00ca.l8:
    mov ax, 6                        ; 0x1ee1
    imul word [bp - 0x0002]          ; 0x1ee4
    mov bx, ax                       ; 0x1ee7
    mov al, byte [bx + 0x625]        ; 0x1ee9
    sub ah, ah                       ; 0x1eed
    test word [bp - 0x000c], ax      ; 0x1eef
    je short @..api_idx_00ca.l9      ; 0x1ef2
    mov al, byte [bx + 0x621]        ; 0x1ef4
    sub ah, ah                       ; 0x1ef8
    cmp ax, word [bp - 0x000a]       ; 0x1efa
    jg short @..api_idx_00ca.l9      ; 0x1efd
    push word [bp - 0x0002]          ; 0x1eff
    lea ax, word [bp - 0x001e]       ; 0x1f02
    push ax                          ; 0x1f05
    call ds_dispatch_ec74            ; 0x1f06
    add sp, byte 4                   ; 0x1f09
    test ax, ax                      ; 0x1f0c
    jne short @..api_idx_00ca.l9     ; 0x1f0e
    mov ax, 1                        ; 0x1f10
    push ax                          ; 0x1f13
    push word [bp - 0x0002]          ; 0x1f14
    mov ax, 0x248                    ; 0x1f17
    imul word [bp + 0x4]             ; 0x1f1a
    add ax, 0x5e12                   ; 0x1f1d
    push ax                          ; 0x1f20
    call ds_dispatch_ec41            ; 0x1f21
    add sp, byte 6                   ; 0x1f24
    inc word [bp - 0x0004]           ; 0x1f27
@..api_idx_00ca.l9:
    inc word [bp - 0x0002]           ; 0x1f2a
    mov ax, word [bp - 0x0002]       ; 0x1f2d
    cmp ax, strict word 0x66         ; 0x1f30
    jl short @..api_idx_00ca.l8      ; 0x1f33
    cmp word [bp - 0x0004], byte 0   ; 0x1f35
    jne short @..api_idx_00ca.l10    ; 0x1f39
    mov ax, 0x248                    ; 0x1f3b
    imul word [bp + 0x4]             ; 0x1f3e
    add ax, word [bp + 0x6]          ; 0x1f41
    mov bx, ax                       ; 0x1f44
    mov byte [bx + 0x5d50], 0        ; 0x1f46
    mov ax, 0x10                     ; 0x1f4b
    push ax                          ; 0x1f4e
    mov ax, 0x248                    ; 0x1f4f
    imul word [bp + 0x4]             ; 0x1f52
    add ax, 0x5e12                   ; 0x1f55
    push ax                          ; 0x1f58
    lea ax, word [bp - 0x001e]       ; 0x1f59
    push ax                          ; 0x1f5c
    call ds_dispatch_fedc            ; 0x1f5d
    add sp, byte 6                   ; 0x1f60
    ret                              ; 0x1f63
