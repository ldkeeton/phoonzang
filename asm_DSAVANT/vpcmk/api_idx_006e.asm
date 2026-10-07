api_idx_006e:
    mov ax, 0xff92                   ; 0x3d59
    call ds_dispatch_f40b            ; 0x3d5c
    mov ax, word [bp + 0x6]          ; 0x3d5f
    jmp short @..api_idx_006e.l5     ; 0x3d62
@..api_idx_006e.l1:
    mov word [bp - 0x000c], 8        ; 0x3d64
    mov word [bp - 0x000e], 0x20     ; 0x3d69
    jmp short @..api_idx_006e.l6     ; 0x3d6e
@..api_idx_006e.l2:
    mov word [bp - 0x000c], 4        ; 0x3d70
    mov word [bp - 0x000e], 0x1e     ; 0x3d75
    jmp short @..api_idx_006e.l6     ; 0x3d7a
@..api_idx_006e.l3:
    mov word [bp - 0x000c], data_0002 ; 0x3d7c
    mov word [bp - 0x000e], 0x1f     ; 0x3d81
    jmp short @..api_idx_006e.l6     ; 0x3d86
@..api_idx_006e.l4:
    mov word [bp - 0x000c], 1        ; 0x3d88
    mov word [bp - 0x000e], 0x1d     ; 0x3d8d
    jmp short @..api_idx_006e.l6     ; 0x3d92
@..api_idx_006e.l5:
    cmp ax, strict word 0            ; 0x3d94
    je short @..api_idx_006e.l1      ; 0x3d97
    cmp ax, strict word 1            ; 0x3d99
    je short @..api_idx_006e.l2      ; 0x3d9c
    cmp ax, strict word 2            ; 0x3d9e
    je short @..api_idx_006e.l4      ; 0x3da1
    cmp ax, strict word 3            ; 0x3da3
    je short @..api_idx_006e.l3      ; 0x3da6
@..api_idx_006e.l6:
    mov ax, 0x10                     ; 0x3da8
    push ax                          ; 0x3dab
    lea ax, word [bp - 0x001e]       ; 0x3dac
    push ax                          ; 0x3daf
    mov ax, 0x248                    ; 0x3db0
    imul word [bp + 0x4]             ; 0x3db3
    add ax, 0x5e12                   ; 0x3db6
    push ax                          ; 0x3db9
    call ds_dispatch_fedc            ; 0x3dba
    add sp, byte 6                   ; 0x3dbd
    mov ax, 0                        ; 0x3dc0
    push ax                          ; 0x3dc3
    mov ax, 0x10                     ; 0x3dc4
    push ax                          ; 0x3dc7
    mov ax, 0x248                    ; 0x3dc8
    imul word [bp + 0x4]             ; 0x3dcb
    add ax, 0x5e12                   ; 0x3dce
    push ax                          ; 0x3dd1
    call ds_dispatch_f306            ; 0x3dd2
    add sp, byte 6                   ; 0x3dd5
    mov word [bp - 0x000a], 1        ; 0x3dd8
    mov word [bp - 0x0004], 0        ; 0x3ddd
    mov word [bp - 0x0002], 0        ; 0x3de2
@..api_idx_006e.l7:
    mov ax, 6                        ; 0x3de7
    imul word [bp - 0x0002]          ; 0x3dea
    mov bx, ax                       ; 0x3ded
    mov al, byte [bx + 0x625]        ; 0x3def
    sub ah, ah                       ; 0x3df3
    test word [bp - 0x000c], ax      ; 0x3df5
    je short @..api_idx_006e.l8      ; 0x3df8
    mov al, byte [bx + 0x621]        ; 0x3dfa
    sub ah, ah                       ; 0x3dfe
    cmp ax, word [bp - 0x000a]       ; 0x3e00
    jg short @..api_idx_006e.l8      ; 0x3e03
    push word [bp - 0x0002]          ; 0x3e05
    lea ax, word [bp - 0x001e]       ; 0x3e08
    push ax                          ; 0x3e0b
    call ds_dispatch_ec74            ; 0x3e0c
    add sp, byte 4                   ; 0x3e0f
    test ax, ax                      ; 0x3e12
    jne short @..api_idx_006e.l8     ; 0x3e14
    mov ax, 1                        ; 0x3e16
    push ax                          ; 0x3e19
    push word [bp - 0x0002]          ; 0x3e1a
    mov ax, 0x248                    ; 0x3e1d
    imul word [bp + 0x4]             ; 0x3e20
    add ax, 0x5e12                   ; 0x3e23
    push ax                          ; 0x3e26
    call ds_dispatch_ec41            ; 0x3e27
    add sp, byte 6                   ; 0x3e2a
    inc word [bp - 0x0004]           ; 0x3e2d
@..api_idx_006e.l8:
    inc word [bp - 0x0002]           ; 0x3e30
    mov ax, word [bp - 0x0002]       ; 0x3e33
    cmp ax, strict word 0x66         ; 0x3e36
    jl short @..api_idx_006e.l7      ; 0x3e39
    cmp word [bp - 0x0004], byte 0   ; 0x3e3b
    jne short @..api_idx_006e.l9     ; 0x3e3f
    mov ax, 0x10                     ; 0x3e41
    push ax                          ; 0x3e44
    mov ax, 0x248                    ; 0x3e45
    imul word [bp + 0x4]             ; 0x3e48
    add ax, 0x5e12                   ; 0x3e4b
    push ax                          ; 0x3e4e
    lea ax, word [bp - 0x001e]       ; 0x3e4f
    push ax                          ; 0x3e52
    call ds_dispatch_fedc            ; 0x3e53
    add sp, byte 6                   ; 0x3e56
    ret                              ; 0x3e59
