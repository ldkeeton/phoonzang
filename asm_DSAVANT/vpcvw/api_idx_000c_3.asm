api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x2b5a
    call ds_aztec_csav               ; 0x2b5d
    mov word [bp - 0x0002], 0        ; 0x2b60
@..api_idx_000c_3.l1:
    lea ax, word [bp - 0x000c]       ; 0x2b65
    push ax                          ; 0x2b68
    mov ax, 0x248                    ; 0x2b69
    imul word [bp + 0x4]             ; 0x2b6c
    mov cx, word [bp - 0x0002]       ; 0x2b6f
    shl cx, 1                        ; 0x2b72
    shl cx, 1                        ; 0x2b74
    add ax, cx                       ; 0x2b76
    mov bx, ax                       ; 0x2b78
    push word [bx + 0x5c1c]          ; 0x2b7a
    call ds_app_04c4                 ; 0x2b7e
    add sp, byte 4                   ; 0x2b81
    mov ax, 0                        ; 0x2b84
    push ax                          ; 0x2b87
    mov ax, word [bp - 0x0002]       ; 0x2b88
    shl ax, 1                        ; 0x2b8b
    shl ax, 1                        ; 0x2b8d
    mov bx, ax                       ; 0x2b8f
    push word [word bx + 0x6]        ; 0x2b91
    call ds_loc_3a6a                 ; 0x2b95
    add sp, byte 4                   ; 0x2b98
    mov ax, word [bp - 0x0002]       ; 0x2b9b
    shl ax, 1                        ; 0x2b9e
    shl ax, 1                        ; 0x2ba0
    mov bx, ax                       ; 0x2ba2
    push word [bx + 0x18e]           ; 0x2ba4
    lea ax, word [bp - 0x000c]       ; 0x2ba8
    push ax                          ; 0x2bab
    call ds_aztec_strlen             ; 0x2bac
    pop cx                           ; 0x2baf
    mov cx, 6                        ; 0x2bb0
    imul cx                          ; 0x2bb3
    mov cx, 2                        ; 0x2bb5
    cwd                              ; 0x2bb8
    idiv cx                          ; 0x2bb9
    mov cx, ax                       ; 0x2bbb
    mov ax, word [bp - 0x0002]       ; 0x2bbd
    shl ax, 1                        ; 0x2bc0
    shl ax, 1                        ; 0x2bc2
    mov bx, ax                       ; 0x2bc4
    mov ax, word [bx + 0x18c]        ; 0x2bc6
    add ax, strict word 9            ; 0x2bca
    sub ax, cx                       ; 0x2bcd
    push ax                          ; 0x2bcf
    call ds_loc_3a50                 ; 0x2bd0
    add sp, byte 4                   ; 0x2bd3
    mov ax, 0                        ; 0x2bd6
    push ax                          ; 0x2bd9
    lea ax, word [bp - 0x000c]       ; 0x2bda
    push ax                          ; 0x2bdd
    call ds_string_loc_3a95          ; 0x2bde
    add sp, byte 4                   ; 0x2be1
    inc word [bp - 0x0002]           ; 0x2be4
    mov ax, word [bp - 0x0002]       ; 0x2be7
    cmp ax, strict word 6            ; 0x2bea
    jge short @..api_idx_000c_3.l2   ; 0x2bed
    jmp near @..api_idx_000c_3.l1    ; 0x2bef
@..api_idx_000c_3.l2:
    ret                              ; 0x2bf2
loc_2bf3:
    mov ax, 0                        ; 0x2bf3
    call ds_aztec_csav               ; 0x2bf6
    les bx, word [dseg_0002]         ; 0x2bf9
    mov ax, word [es:bx]             ; 0x2bfd
    mov dx, word [es:bx + 0x2]       ; 0x2c00
    mov word [bss_9090], dx          ; 0x2c04
    mov word [bss_908e], ax          ; 0x2c08
    mov ax, word [bss_908e]          ; 0x2c0b
    mov dx, word [bss_9090]          ; 0x2c0e
    sub ax, word [bss_908a]          ; 0x2c12
    sbb dx, word [bss_908c]          ; 0x2c16
    mov word [bss_9094], dx          ; 0x2c1a
    mov word [bss_9092], ax          ; 0x2c1e
    mov ax, word [bss_9562]          ; 0x2c21
    cwd                              ; 0x2c24
    mov cx, ax                       ; 0x2c25
    mov bx, dx                       ; 0x2c27
    mov ax, word [bss_9092]          ; 0x2c29
    mov dx, word [bss_9094]          ; 0x2c2c
    cmp bx, dx                       ; 0x2c30
    jg short @..loc_2bf3.l1          ; 0x2c32
    jne short @..loc_2bf3.l2         ; 0x2c34
    cmp cx, ax                       ; 0x2c36
    jbe short @..loc_2bf3.l2         ; 0x2c38
@..loc_2bf3.l1:
    jmp short @..loc_2bf3.l3         ; 0x2c3a
@..loc_2bf3.l2:
    mov ax, word [bss_908e]          ; 0x2c3c
    mov dx, word [bss_9090]          ; 0x2c3f
    mov word [bss_908c], dx          ; 0x2c43
    mov word [bss_908a], ax          ; 0x2c47
    call api_idx_000a_2              ; 0x2c4a
    push word [bp + 0x4]             ; 0x2c4d
    call api_idx_000c_3              ; 0x2c50
    pop cx                           ; 0x2c53
    push word [bp + 0x6]             ; 0x2c54
    call api_idx_0002_2              ; 0x2c57
    pop cx                           ; 0x2c5a
    mov ax, 1                        ; 0x2c5b
    push ax                          ; 0x2c5e
    mov ax, 0x73                     ; 0x2c5f
    push ax                          ; 0x2c62
    mov ax, 0x32                     ; 0x2c63
    push ax                          ; 0x2c66
    call api_idx_000c_2              ; 0x2c67
    add sp, byte 6                   ; 0x2c6a
    mov ax, 0xc5                     ; 0x2c6d
    push ax                          ; 0x2c70
    mov ax, 0x93                     ; 0x2c71
    push ax                          ; 0x2c74
    mov ax, 0x73                     ; 0x2c75
    push ax                          ; 0x2c78
    mov ax, 0x32                     ; 0x2c79
    push ax                          ; 0x2c7c
    call ds_loc_3b21                 ; 0x2c7d
    add sp, byte 8                   ; 0x2c80
@..loc_2bf3.l3:
    ret                              ; 0x2c83
