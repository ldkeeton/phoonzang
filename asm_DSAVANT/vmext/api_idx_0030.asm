api_idx_0030:
    mov ax, 0xffd0                   ; 0x3e8c
    call ds_dispatch_f40b            ; 0x3e8f
    mov word [bp - 0x0024], 0        ; 0x3e92
    mov word [bp - 0x0022], 4        ; 0x3e97
    mov word [bp - 0x0020], 1        ; 0x3e9c
    mov word [bp - 0x001e], 3        ; 0x3ea1
    mov word [bp - 0x001c], 2        ; 0x3ea6
    mov word [data_8f20], 0          ; 0x3eab
    mov ax, word [data_8f46]         ; 0x3eb1
    mov word [bp - 0x000a], ax       ; 0x3eb4
    mov ax, word [data_8f44]         ; 0x3eb7
    mov word [bp - 0x000c], ax       ; 0x3eba
    mov ax, word [data_8f42]         ; 0x3ebd
    mov word [bp - 0x000e], ax       ; 0x3ec0
    mov ax, word [data_8f40]         ; 0x3ec3
    mov word [bp - 0x0010], ax       ; 0x3ec6
    mov ax, word [data_8f3e]         ; 0x3ec9
    mov word [bp - 0x0012], ax       ; 0x3ecc
    mov word [data_8f48], 0          ; 0x3ecf
    mov word [data_8456], 0          ; 0x3ed5
    mov ax, 0                        ; 0x3edb
    push ax                          ; 0x3ede
    mov ax, 0x8f                     ; 0x3edf
    push ax                          ; 0x3ee2
    mov ax, 0xf7                     ; 0x3ee3
    push ax                          ; 0x3ee6
    mov ax, 0x20                     ; 0x3ee7
    push ax                          ; 0x3eea
    mov ax, 0x48                     ; 0x3eeb
    push ax                          ; 0x3eee
    call ds_dispatch_e901            ; 0x3eef
    add sp, byte 0x0a                ; 0x3ef2
    mov ax, word [bp - 0x0012]       ; 0x3ef5
    mov cx, 6                        ; 0x3ef8
    shl ax, cl                       ; 0x3efb
    mov cx, word [bp - 0x0010]       ; 0x3efd
    shl cx, 1                        ; 0x3f00
    shl cx, 1                        ; 0x3f02
    shl cx, 1                        ; 0x3f04
    add ax, cx                       ; 0x3f06
    add ax, word [bp - 0x000e]       ; 0x3f08
    mov word [bp - 0x0008], ax       ; 0x3f0b
    cmp word [data_830c], byte 0x0a  ; 0x3f0e
    je short @..api_idx_0030.l1      ; 0x3f13
    cmp word [data_830c], byte 0x19  ; 0x3f15
    je short @..api_idx_0030.l1      ; 0x3f1a
    jmp near @..api_idx_0030.l5      ; 0x3f1c
@..api_idx_0030.l1:
    push ax                          ; 0x3f1f
    mov ax, word [data_0e14]         ; 0x3f20
    add ax, 0x930                    ; 0x3f23
    push ax                          ; 0x3f26
    call ds_dispatch_ec74            ; 0x3f27
    add sp, byte 4                   ; 0x3f2a
    test ax, ax                      ; 0x3f2d
    jne short @..api_idx_0030.l2     ; 0x3f2f
    jmp near @..api_idx_0030.l5      ; 0x3f31
@..api_idx_0030.l2:
    mov ax, 0x63                     ; 0x3f34
    push ax                          ; 0x3f37
    mov ax, 0x8e                     ; 0x3f38
    push ax                          ; 0x3f3b
    mov ax, 0xf7                     ; 0x3f3c
    push ax                          ; 0x3f3f
    mov ax, 0x21                     ; 0x3f40
    push ax                          ; 0x3f43
    mov ax, 0x48                     ; 0x3f44
    push ax                          ; 0x3f47
    call ds_dispatch_e901            ; 0x3f48
    add sp, byte 0x0a                ; 0x3f4b
    mov ax, word [data_830c]         ; 0x3f4e
    cmp ax, word [data_8f28]         ; 0x3f51
    jne short @..api_idx_0030.l4     ; 0x3f55
    mov ax, word [bp - 0x0012]       ; 0x3f57
    cmp ax, word [data_8f2a]         ; 0x3f5a
    jne short @..api_idx_0030.l4     ; 0x3f5e
    mov ax, word [bp - 0x000e]       ; 0x3f60
    cmp ax, word [data_8f2e]         ; 0x3f63
    jne short @..api_idx_0030.l4     ; 0x3f67
    mov ax, word [bp - 0x0010]       ; 0x3f69
    cmp ax, word [data_8f2c]         ; 0x3f6c
    jne short @..api_idx_0030.l4     ; 0x3f70
    cmp word [data_8f22], byte 0     ; 0x3f72
    je short @..api_idx_0030.l3      ; 0x3f77
    mov word [data_8f20], 0xffff     ; 0x3f79
@..api_idx_0030.l3:
    mov byte [bp - 0x0030], 2        ; 0x3f7f
    mov byte [bp - 0x002f], 0        ; 0x3f83
    mov ax, 0                        ; 0x3f87
    push ax                          ; 0x3f8a
    push ax                          ; 0x3f8b
    lea ax, word [bp - 0x0030]       ; 0x3f8c
    push ax                          ; 0x3f8f
    mov ax, 0                        ; 0x3f90
    push ax                          ; 0x3f93
    mov ax, 0x90                     ; 0x3f94
    push ax                          ; 0x3f97
    mov ax, 0x20                     ; 0x3f98
    push ax                          ; 0x3f9b
    mov ax, 0xf8                     ; 0x3f9c
    push ax                          ; 0x3f9f
    mov ax, 0x48                     ; 0x3fa0
    push ax                          ; 0x3fa3
    mov al, byte [data_7b05]         ; 0x3fa4
    sub ah, ah                       ; 0x3fa7
    inc ax                           ; 0x3fa9
    push ax                          ; 0x3faa
    mov al, byte [data_7abe]         ; 0x3fab
    sub ah, ah                       ; 0x3fae
    inc ax                           ; 0x3fb0
    push ax                          ; 0x3fb1
    mov ax, 0xc                      ; 0x3fb2
    push ax                          ; 0x3fb5
    call ds_dispatch_efd1            ; 0x3fb6
    add sp, byte 0x16                ; 0x3fb9
@..api_idx_0030.l4:
    call ds_dispatch_da22            ; 0x3fbc
    ret                              ; 0x3fbf
