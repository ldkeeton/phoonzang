; auto-generated
api_idx_0006_IRNH:
    mov ax, 0xfffa                   ; 0x2b78
    call aztec_csav                  ; 0x2b7b
    mov ax, word [bss_845e]          ; 0x2b7e
    jmp near @..api_idx_0006_IRNH.l12 ; 0x2b81
@..api_idx_0006_IRNH.l1:
    mov ax, 0x8f                     ; 0x2b84
    push ax                          ; 0x2b87
    mov ax, 0xf7                     ; 0x2b88
    push ax                          ; 0x2b8b
    mov ax, 0x20                     ; 0x2b8c
    push ax                          ; 0x2b8f
    mov ax, 0x48                     ; 0x2b90
    push ax                          ; 0x2b93
    call thunk_4                     ; 0x2b94
    add sp, byte 8                   ; 0x2b97
    jmp near @..api_idx_0006_IRNH.l16 ; 0x2b9a
@..api_idx_0006_IRNH.l2:
    les bx, word [dseg_0002]         ; 0x2b9d
    mov ax, word [es:bx]             ; 0x2ba1
    mov dx, word [es:bx + 0x2]       ; 0x2ba4
    sub ax, word [bss_908a]          ; 0x2ba8
    sbb dx, word [bss_908c]          ; 0x2bac
    push ax                          ; 0x2bb0
    push dx                          ; 0x2bb1
    mov ax, word [bss_90b6]          ; 0x2bb2
    cwd                              ; 0x2bb5
    mov cx, ax                       ; 0x2bb6
    mov bx, dx                       ; 0x2bb8
    pop dx                           ; 0x2bba
    pop ax                           ; 0x2bbb
    cmp dx, bx                       ; 0x2bbc
    jl short @..api_idx_0006_IRNH.l3 ; 0x2bbe
    jne short @..api_idx_0006_IRNH.l4 ; 0x2bc0
    cmp ax, cx                       ; 0x2bc2
    jae short @..api_idx_0006_IRNH.l4 ; 0x2bc4
@..api_idx_0006_IRNH.l3:
    jmp short @..api_idx_0006_IRNH.l5 ; 0x2bc6
@..api_idx_0006_IRNH.l4:
    mov ax, word [bss_906c]          ; 0x2bc8
    inc ax                           ; 0x2bcb
    mov cx, 2                        ; 0x2bcc
    cwd                              ; 0x2bcf
    idiv cx                          ; 0x2bd0
    mov word [bss_906c], dx          ; 0x2bd2
@..api_idx_0006_IRNH.l5:
    mov ax, 0                        ; 0x2bd6
    push ax                          ; 0x2bd9
    push ax                          ; 0x2bda
    mov ax, word [bss_906c]          ; 0x2bdb
    shl ax, 1                        ; 0x2bde
    shl ax, 1                        ; 0x2be0
    mov bx, ax                       ; 0x2be2
    push word [bx - 0x6f9e]          ; 0x2be4
    push word [bx - 0x6fa0]          ; 0x2be8
    call thunk_12                    ; 0x2bec
    add sp, byte 8                   ; 0x2bef
    mov word [bp - 0x0002], 0        ; 0x2bf2
@..api_idx_0006_IRNH.l6:
    mov ax, word [bp - 0x0002]       ; 0x2bf7
    shl ax, 1                        ; 0x2bfa
    mov bx, ax                       ; 0x2bfc
    mov bx, word [bx - 0x7b96]       ; 0x2bfe
    mov byte [bx + 0x14], 0xff       ; 0x2c02
    inc word [bp - 0x0002]           ; 0x2c06
    mov ax, word [bp - 0x0002]       ; 0x2c09
    cmp ax, strict word 0xc          ; 0x2c0c
    jl short @..api_idx_0006_IRNH.l6 ; 0x2c0f
    mov word [bss_8468], 0           ; 0x2c11
    jmp near @..api_idx_0006_IRNH.l16 ; 0x2c17
@..api_idx_0006_IRNH.l7:
    call loc_KRMP                    ; 0x2c1a
    mov word [bp - 0x0006], ax       ; 0x2c1d
    mov word [bp - 0x0002], 0        ; 0x2c20
@..api_idx_0006_IRNH.l8:
    mov word [bp - 0x0004], 0        ; 0x2c25
@..api_idx_0006_IRNH.l9:
    push word [bp - 0x0006]          ; 0x2c2a
    mov ax, 0xf8                     ; 0x2c2d
    push ax                          ; 0x2c30
    mov ax, 0x48                     ; 0x2c31
    push ax                          ; 0x2c34
    mov ax, 6                        ; 0x2c35
    imul word [bp - 0x0002]          ; 0x2c38
    mov cx, word [bp - 0x0004]       ; 0x2c3b
    shl cx, 1                        ; 0x2c3e
    add ax, cx                       ; 0x2c40
    mov bx, ax                       ; 0x2c42
    mov cx, word [bx + 0x580]        ; 0x2c44
    mov ax, 0x64                     ; 0x2c48
    sub ax, cx                       ; 0x2c4b
    push ax                          ; 0x2c4d
    mov ax, 0                        ; 0x2c4e
    push ax                          ; 0x2c51
    push word [bp - 0x0004]          ; 0x2c52
    push word [bp - 0x0002]          ; 0x2c55
    call api_idx_001c_VLRT           ; 0x2c58
    add sp, byte 0x0e                ; 0x2c5b
    inc word [bp - 0x0004]           ; 0x2c5e
    mov ax, word [bp - 0x0004]       ; 0x2c61
    cmp ax, strict word 3            ; 0x2c64
    jl short @..api_idx_0006_IRNH.l9 ; 0x2c67
    inc word [bp - 0x0002]           ; 0x2c69
    mov ax, word [bp - 0x0002]       ; 0x2c6c
    cmp ax, strict word 3            ; 0x2c6f
    jl short @..api_idx_0006_IRNH.l8 ; 0x2c72
    call api_idx_000e_NKQN           ; 0x2c74
    cmp word [bp - 0x0006], byte 0   ; 0x2c77
    je short @..api_idx_0006_IRNH.l10 ; 0x2c7b
    mov ax, word [bss_82e8]          ; 0x2c7d
    inc ax                           ; 0x2c80
    mov cx, 2                        ; 0x2c81
    cwd                              ; 0x2c84
    idiv cx                          ; 0x2c85
    mov word [bss_82e8], dx          ; 0x2c87
@..api_idx_0006_IRNH.l10:
    call ds_app_JKOJ                 ; 0x2c8b
    jmp short @..api_idx_0006_IRNH.l16 ; 0x2c8e
@..api_idx_0006_IRNH.l11:
    push word [bss_845e]             ; 0x2c90
    call loc_SSIO                    ; 0x2c94
    pop cx                           ; 0x2c97
    jmp short @..api_idx_0006_IRNH.l16 ; 0x2c98
@..api_idx_0006_IRNH.l12:
    cmp ax, strict word 0xfffd       ; 0x2c9a
    jne short @..api_idx_0006_IRNH.l13 ; 0x2c9d
    jmp near @..api_idx_0006_IRNH.l1 ; 0x2c9f
@..api_idx_0006_IRNH.l13:
    cmp ax, strict word 0xfffe       ; 0x2ca2
    jne short @..api_idx_0006_IRNH.l14 ; 0x2ca5
    jmp near @..api_idx_0006_IRNH.l2 ; 0x2ca7
@..api_idx_0006_IRNH.l14:
    cmp ax, strict word 0xffff       ; 0x2caa
    jne short @..api_idx_0006_IRNH.l15 ; 0x2cad
    jmp near @..api_idx_0006_IRNH.l7 ; 0x2caf
@..api_idx_0006_IRNH.l15:
    jmp short @..api_idx_0006_IRNH.l11 ; 0x2cb2
@..api_idx_0006_IRNH.l16:
    inc word [bss_845e]              ; 0x2cb4
    mov ax, word [bss_845e]          ; 0x2cb8
    cmp ax, strict word 0xc          ; 0x2cbb
    jne short @..api_idx_0006_IRNH.l17 ; 0x2cbe
    mov word [bss_845e], 0xfffd      ; 0x2cc0
@..api_idx_0006_IRNH.l17:
    ret                              ; 0x2cc6
