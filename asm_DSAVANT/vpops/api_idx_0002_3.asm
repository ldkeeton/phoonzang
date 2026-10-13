; auto-generated
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x4d91
    call aztec_csav                  ; 0x4d94
    mov al, byte [bss_69c8]          ; 0x4d97
    mov bx, word [bss_8482]          ; 0x4d9a
    mov byte [bx + 0x1a1], al        ; 0x4d9e
    mov word [bp - 0x0002], 1        ; 0x4da2
    jmp short @..api_idx_0002_3.l5   ; 0x4da7
@..api_idx_0002_3.l1:
    mov bx, word [bss_848e]          ; 0x4da9
    cmp byte [bx + 0x1a1], 0         ; 0x4dad
    jbe short @..api_idx_0002_3.l2   ; 0x4db2
    mov ax, 4                        ; 0x4db4
    push ax                          ; 0x4db7
    call ds_app_09f0                 ; 0x4db8
    pop cx                           ; 0x4dbb
    cmp ax, strict word 1            ; 0x4dbc
    jne short @..api_idx_0002_3.l2   ; 0x4dbf
    mov ax, word [bp - 0x0002]       ; 0x4dc1
    shl ax, 1                        ; 0x4dc4
    mov bx, ax                       ; 0x4dc6
    mov bx, word [bx - 0x7b70]       ; 0x4dc8
    cmp byte [bx + 0xd6], 0x16       ; 0x4dcc
    je short @..api_idx_0002_3.l2    ; 0x4dd1
    cmp word [bss_0e36], strict word 0xe1 ; 0x4dd3
    jne short @..api_idx_0002_3.l3   ; 0x4dd9
@..api_idx_0002_3.l2:
    mov ax, 0                        ; 0x4ddb
    push ax                          ; 0x4dde
    push word [bp - 0x0002]          ; 0x4ddf
    call api_idx_0024                ; 0x4de2
    add sp, byte 4                   ; 0x4de5
    jmp short @..api_idx_0002_3.l4   ; 0x4de8
@..api_idx_0002_3.l3:
    mov ax, 6                        ; 0x4dea
    push ax                          ; 0x4ded
    push word [bp - 0x0002]          ; 0x4dee
    call api_idx_0024                ; 0x4df1
    add sp, byte 4                   ; 0x4df4
@..api_idx_0002_3.l4:
    inc word [bp - 0x0002]           ; 0x4df7
@..api_idx_0002_3.l5:
    mov ax, word [bp - 0x0002]       ; 0x4dfa
    cmp ax, word [bss_8466]          ; 0x4dfd
    jle short @..api_idx_0002_3.l1   ; 0x4e01
    mov bx, word [bss_848e]          ; 0x4e03
    cmp byte [bx + 0x1a1], 0         ; 0x4e07
    jbe short @..api_idx_0002_3.l8   ; 0x4e0c
    mov word [bp - 0x0002], 1        ; 0x4e0e
@..api_idx_0002_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x4e13
    cmp ax, word [bss_8466]          ; 0x4e16
    jge short @..api_idx_0002_3.l7   ; 0x4e1a
    mov ax, 3                        ; 0x4e1c
    push ax                          ; 0x4e1f
    call ds_app_09f0                 ; 0x4e20
    pop cx                           ; 0x4e23
    test ax, ax                      ; 0x4e24
    jne short @..api_idx_0002_3.l7   ; 0x4e26
    inc word [bp - 0x0002]           ; 0x4e28
    jmp short @..api_idx_0002_3.l6   ; 0x4e2b
@..api_idx_0002_3.l7:
    push word [bp - 0x0002]          ; 0x4e2d
    mov ax, 6                        ; 0x4e30
    push ax                          ; 0x4e33
    call api_idx_0024                ; 0x4e34
    add sp, byte 4                   ; 0x4e37
@..api_idx_0002_3.l8:
    ret                              ; 0x4e3a
