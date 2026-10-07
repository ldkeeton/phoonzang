api_idx_0004_11:
    mov ax, 0xfffc                   ; 0x6ead
    call ds_dispatch_f40b            ; 0x6eb0
    mov cx, word [bp + 0x4]          ; 0x6eb3
    shl cx, 1                        ; 0x6eb6
    mov ax, word [data_0e12]         ; 0x6eb8
    add ax, cx                       ; 0x6ebb
    add ax, 0x3c0                    ; 0x6ebd
    mov word [bp - 0x0004], ax       ; 0x6ec0
    mov ax, word [data_82ee]         ; 0x6ec3
    shl ax, 1                        ; 0x6ec6
    mov word [bp - 0x0002], ax       ; 0x6ec8
    mov cx, 8                        ; 0x6ecb
    cwd                              ; 0x6ece
    idiv cx                          ; 0x6ecf
    mov si, ax                       ; 0x6ed1
    mov bx, word [bp - 0x0004]       ; 0x6ed3
    mov al, byte [bx + si]           ; 0x6ed6
    cbw                              ; 0x6ed8
    push ax                          ; 0x6ed9
    mov ax, word [bp - 0x0002]       ; 0x6eda
    cwd                              ; 0x6edd
    idiv cx                          ; 0x6ede
    mov cx, dx                       ; 0x6ee0
    mov dx, 1                        ; 0x6ee2
    shl dx, cl                       ; 0x6ee5
    mov cx, dx                       ; 0x6ee7
    not cx                           ; 0x6ee9
    pop ax                           ; 0x6eeb
    and ax, cx                       ; 0x6eec
    mov byte [bx + si], al           ; 0x6eee
    mov ax, word [bp - 0x0002]       ; 0x6ef0
    inc ax                           ; 0x6ef3
    mov cx, 8                        ; 0x6ef4
    cwd                              ; 0x6ef7
    idiv cx                          ; 0x6ef8
    mov si, ax                       ; 0x6efa
    mov al, byte [bx + si]           ; 0x6efc
    cbw                              ; 0x6efe
    push ax                          ; 0x6eff
    mov ax, word [bp - 0x0002]       ; 0x6f00
    inc ax                           ; 0x6f03
    cwd                              ; 0x6f04
    idiv cx                          ; 0x6f05
    mov cx, dx                       ; 0x6f07
    mov dx, 1                        ; 0x6f09
    shl dx, cl                       ; 0x6f0c
    mov cx, dx                       ; 0x6f0e
    pop ax                           ; 0x6f10
    or ax, cx                        ; 0x6f11
    mov byte [bx + si], al           ; 0x6f13
    mov ax, 0                        ; 0x6f15
    push ax                          ; 0x6f18
    push ax                          ; 0x6f19
    push ax                          ; 0x6f1a
    mov ax, word [bp + 0x4]          ; 0x6f1b
    shl ax, 1                        ; 0x6f1e
    mov si, ax                       ; 0x6f20
    mov bx, word [data_0e12]         ; 0x6f22
    push word [bx + si + 0x3c0]      ; 0x6f26
    mov ax, 0                        ; 0x6f2a
    push ax                          ; 0x6f2d
    push ax                          ; 0x6f2e
    push word [bp + 0x4]             ; 0x6f2f
    mov ax, 6                        ; 0x6f32
    push ax                          ; 0x6f35
    push word [data_830c]            ; 0x6f36
    call api_idx_0004_10             ; 0x6f3a
    add sp, byte 0x12                ; 0x6f3d
    ret                              ; 0x6f40
