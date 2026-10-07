api_idx_0012:
    mov ax, 0xffee                   ; 0x0ee0
    call ds_dispatch_f40b            ; 0x0ee3
    mov ax, word [data_8d12]         ; 0x0ee6
    shl ax, 1                        ; 0x0ee9
    mov si, ax                       ; 0x0eeb
    mov bx, word [data_0e12]         ; 0x0eed
    mov ax, word [bx + si + 0x3c0]   ; 0x0ef1
    mov word [bp - 0x0008], ax       ; 0x0ef5
    mov ax, word [bx + si + 0x1e0]   ; 0x0ef8
    mov cx, 0x10                     ; 0x0efc
    cwd                              ; 0x0eff
    idiv cx                          ; 0x0f00
    mov word [bp - 0x000a], ax       ; 0x0f02
    mov ax, word [bx + si + 0x1e0]   ; 0x0f05
    cwd                              ; 0x0f09
    idiv cx                          ; 0x0f0a
    mov word [bp - 0x000c], dx       ; 0x0f0c
@..api_idx_0012.l1:
    call ds_dispatch_ceb1            ; 0x0f0f
    mov word [bp - 0x0006], ax       ; 0x0f12
    cmp ax, strict word 0xffff       ; 0x0f15
    jne short @..api_idx_0012.l2     ; 0x0f18
    jmp near @..api_idx_0012.l11     ; 0x0f1a
@..api_idx_0012.l2:
    mov word [bp - 0x0010], 0        ; 0x0f1d
    mov word [bp - 0x0012], 0        ; 0x0f22
    mov cx, 0x248                    ; 0x0f27
    imul cx                          ; 0x0f2a
    mov bx, ax                       ; 0x0f2c
    cmp byte [bx + 0x5e2f], 3        ; 0x0f2e
    jb short @..api_idx_0012.l3      ; 0x0f33
    mov ax, 1                        ; 0x0f35
    push ax                          ; 0x0f38
    mov ax, 7                        ; 0x0f39
    push ax                          ; 0x0f3c
    push word [bp - 0x0008]          ; 0x0f3d
    call ds_dispatch_ed3a            ; 0x0f40
    add sp, byte 6                   ; 0x0f43
    test ax, ax                      ; 0x0f46
    jne short @..api_idx_0012.l3     ; 0x0f48
    jmp near @..api_idx_0012.l10     ; 0x0f4a
@..api_idx_0012.l3:
    push word [bp - 0x000a]          ; 0x0f4d
    push word [bp - 0x000c]          ; 0x0f50
    push word [bp - 0x000a]          ; 0x0f53
    call ds_dispatch_d0ea            ; 0x0f56
    add sp, byte 6                   ; 0x0f59
    mov cx, ax                       ; 0x0f5c
    sub sp, byte 4                   ; 0x0f5e
    mov ax, sp                       ; 0x0f61
    mov dx, ss                       ; 0x0f63
    mov es, dx                       ; 0x0f65
    mov si, cx                       ; 0x0f67
    mov di, ax                       ; 0x0f69
    movsw                            ; 0x0f6b
    movsw                            ; 0x0f6c
    call ds_dispatch_d0be            ; 0x0f6d
    add sp, byte 4                   ; 0x0f70
    mov word [bp - 0x000e], ax       ; 0x0f73
    mov word [bp - 0x0002], 0        ; 0x0f76
@..api_idx_0012.l4:
    mov ax, 1                        ; 0x0f7b
    push ax                          ; 0x0f7e
    push word [bp - 0x0002]          ; 0x0f7f
    push word [bp - 0x0008]          ; 0x0f82
    call ds_dispatch_ed3a            ; 0x0f85
    add sp, byte 6                   ; 0x0f88
    cmp ax, strict word 1            ; 0x0f8b
    je short @..api_idx_0012.l5      ; 0x0f8e
    jmp near @..api_idx_0012.l9      ; 0x0f90
@..api_idx_0012.l5:
    cmp word [bp - 0x0002], byte 7   ; 0x0f93
    jge short @..api_idx_0012.l6     ; 0x0f97
    mov word [bp - 0x0010], 1        ; 0x0f99
@..api_idx_0012.l6:
    mov ax, word [bp - 0x0002]       ; 0x0f9e
    cmp ax, strict word 7            ; 0x0fa1
    jle short @..api_idx_0012.l7     ; 0x0fa4
    cmp ax, strict word 0xf          ; 0x0fa6
    jge short @..api_idx_0012.l7     ; 0x0fa9
    mov word [bp - 0x0012], 2        ; 0x0fab
@..api_idx_0012.l7:
    jmp near @..api_idx_0012.l8      ; 0x0fb0
    mov ax, 0x248                    ; 0x0fb3
    imul word [bp - 0x0006]          ; 0x0fb6
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c12]          ; 0x0fbb
    mov ax, 0                        ; 0x0fbf
    push ax                          ; 0x0fc2
    mov ax, word [bx + 0x5c10]       ; 0x0fc3
    add ax, word [bp - 0x000e]       ; 0x0fc7
    push ax                          ; 0x0fca
    db 0xe8, 0xf4, 0xa7 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x0fce
    push ax                          ; 0x0fd1
    mov ax, 0x248                    ; 0x0fd2
    imul word [bp - 0x0006]          ; 0x0fd5
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x0fda
    mov word [bx + 0x5c10], ax       ; 0x0fdb
    jmp near @..api_idx_0012.l9      ; 0x0fdf
    mov word [bp - 0x0004], 0        ; 0x0fe2
    mov ax, 0x248                    ; 0x0fe7
    imul word [bp - 0x0006]          ; 0x0fea
    mov cx, word [bp - 0x0004]       ; 0x0fed
    shl cx, 1                        ; 0x0ff0
    shl cx, 1                        ; 0x0ff2
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c1e]          ; 0x0ff8
    mov ax, 0                        ; 0x0ffc
    push ax                          ; 0x0fff
    push word [bp - 0x000a]          ; 0x1000
    push word [bp - 0x000c]          ; 0x1003
    push word [bp - 0x000a]          ; 0x1006
    db 0xe8, 0xde, 0xc0 ; call ds_dispatch_d0ea
    add sp, byte 6                   ; 0x100c
    db 0x8b, 0xc8 ; mov cx, ax
    sub sp, byte 4                   ; 0x1011
    db 0x8b, 0xc4 ; mov ax, sp
    mov dx, ss                       ; 0x1016
    mov es, dx                       ; 0x1018
    db 0x8b, 0xf1 ; mov si, cx
    db 0x8b, 0xf8 ; mov di, ax
    movsw                            ; 0x101e
    movsw                            ; 0x101f
    db 0xe8, 0x9b, 0xc0 ; call ds_dispatch_d0be
    add sp, byte 4                   ; 0x1023
    push ax                          ; 0x1026
    mov ax, 0x248                    ; 0x1027
    imul word [bp - 0x0006]          ; 0x102a
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0004]       ; 0x102f
    shl dx, 1                        ; 0x1032
    shl dx, 1                        ; 0x1034
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x103a
    add ax, word [bx + 0x5c1c]       ; 0x103b
    push ax                          ; 0x103f
    db 0xe8, 0x7f, 0xa7 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x1043
    push ax                          ; 0x1046
    mov ax, 0x248                    ; 0x1047
    imul word [bp - 0x0006]          ; 0x104a
    db 0x8b, 0xc8 ; mov cx, ax
    mov dx, word [bp - 0x0004]       ; 0x104f
    shl dx, 1                        ; 0x1052
    shl dx, 1                        ; 0x1054
    db 0x03, 0xc2 ; add ax, dx
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x105a
    mov word [bx + 0x5c1c], ax       ; 0x105b
    inc word [bp - 0x0004]           ; 0x105f
    mov ax, word [bp - 0x0004]       ; 0x1062
    cmp ax, strict word 6            ; 0x1065
    jge short loc_106d               ; 0x1068
    jmp near loc_0fe7                ; 0x106a
    jmp near @..api_idx_0012.l9      ; 0x106d
    mov ax, 0x248                    ; 0x1070
    imul word [bp - 0x0006]          ; 0x1073
    db 0x8b, 0xd8 ; mov bx, ax
    push word [bx + 0x5c0e]          ; 0x1078
    mov ax, 0                        ; 0x107c
    push ax                          ; 0x107f
    mov ax, word [bx + 0x5c0c]       ; 0x1080
    add ax, word [bp - 0x000e]       ; 0x1084
    push ax                          ; 0x1087
    db 0xe8, 0x37, 0xa7 ; call ds_dispatch_b7c2
    add sp, byte 6                   ; 0x108b
    push ax                          ; 0x108e
    mov ax, 0x248                    ; 0x108f
    imul word [bp - 0x0006]          ; 0x1092
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x1097
    mov word [bx + 0x5c0c], ax       ; 0x1098
    jmp near @..api_idx_0012.l9      ; 0x109c
    mov ax, 0x248                    ; 0x109f
    imul word [bp - 0x0006]          ; 0x10a2
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5e32], 0        ; 0x10a7
    mov byte [bx + 0x5d5f], 0        ; 0x10ac
    jmp near @..api_idx_0012.l9      ; 0x10b1
    mov ax, 0x248                    ; 0x10b4
    imul word [bp - 0x0006]          ; 0x10b7
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d5d], 0        ; 0x10bc
    jmp near @..api_idx_0012.l9      ; 0x10c1
    mov ax, 0x248                    ; 0x10c4
    imul word [bp - 0x0006]          ; 0x10c7
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e2f], 2        ; 0x10cc
    jne short loc_10d8               ; 0x10d1
    mov byte [bx + 0x5e2f], 0        ; 0x10d3
    mov byte [bx + 0x5d60], 0        ; 0x10d8
    jmp near @..api_idx_0012.l9      ; 0x10dd
