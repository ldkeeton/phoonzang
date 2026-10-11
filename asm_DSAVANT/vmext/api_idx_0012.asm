api_idx_0012:
    mov ax, 0xffee                   ; 0x0ee0
    call ds_dispatch_f40b            ; 0x0ee3
    mov ax, word [bss_8d12]          ; 0x0ee6
    shl ax, 1                        ; 0x0ee9
    mov si, ax                       ; 0x0eeb
    mov bx, word [bss_0e12]          ; 0x0eed
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
loc_0f0f:
    call ds_dispatch_ceb1            ; 0x0f0f
    mov word [bp - 0x0006], ax       ; 0x0f12
    cmp ax, strict word 0xffff       ; 0x0f15
    jne short loc_0f1d               ; 0x0f18
    jmp near loc_1351                ; 0x0f1a
loc_0f1d:
    mov word [bp - 0x0010], 0        ; 0x0f1d
    mov word [bp - 0x0012], 0        ; 0x0f22
    mov cx, 0x248                    ; 0x0f27
    imul cx                          ; 0x0f2a
    mov bx, ax                       ; 0x0f2c
    cmp byte [bx + 0x5e2f], 3        ; 0x0f2e
    jb short loc_0f4d                ; 0x0f33
    mov ax, 1                        ; 0x0f35
    push ax                          ; 0x0f38
    mov ax, 7                        ; 0x0f39
    push ax                          ; 0x0f3c
    push word [bp - 0x0008]          ; 0x0f3d
    call ds_dispatch_ed3a            ; 0x0f40
    add sp, byte 6                   ; 0x0f43
    test ax, ax                      ; 0x0f46
    jne short loc_0f4d               ; 0x0f48
    jmp near loc_1333                ; 0x0f4a
loc_0f4d:
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
loc_0f7b:
    mov ax, 1                        ; 0x0f7b
    push ax                          ; 0x0f7e
    push word [bp - 0x0002]          ; 0x0f7f
    push word [bp - 0x0008]          ; 0x0f82
    call ds_dispatch_ed3a            ; 0x0f85
    add sp, byte 6                   ; 0x0f88
    cmp ax, strict word 1            ; 0x0f8b
    je short loc_0f93                ; 0x0f8e
    jmp near loc_1325                ; 0x0f90
loc_0f93:
    cmp word [bp - 0x0002], byte 7   ; 0x0f93
    jge short loc_0f9e               ; 0x0f97
    mov word [bp - 0x0010], 1        ; 0x0f99
loc_0f9e:
    mov ax, word [bp - 0x0002]       ; 0x0f9e
    cmp ax, strict word 7            ; 0x0fa1
    jle short loc_0fb0               ; 0x0fa4
    cmp ax, strict word 0xf          ; 0x0fa6
    jge short loc_0fb0               ; 0x0fa9
    mov word [bp - 0x0012], 2        ; 0x0fab
loc_0fb0:
    jmp near loc_1318                ; 0x0fb0
