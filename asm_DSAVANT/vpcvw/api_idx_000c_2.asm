api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x0cd6
    call ds_dispatch_f40b            ; 0x0cd9
    mov word [bp - 0x0002], 0        ; 0x0cdc
@..api_idx_000c_2.l1:
    mov ax, 0x14                     ; 0x0ce1
    imul word [bp - 0x0002]          ; 0x0ce4
    mov cx, word [bp - 0x0002]       ; 0x0ce7
    shl cx, 1                        ; 0x0cea
    mov bx, cx                       ; 0x0cec
    mov cx, word [bx - 0x7cf2]       ; 0x0cee
    shl cx, 1                        ; 0x0cf2
    add ax, cx                       ; 0x0cf4
    mov bx, ax                       ; 0x0cf6
    mov al, byte [bx + 0x1d4]        ; 0x0cf8
    mov byte [bp - 0x000c], al       ; 0x0cfc
    mov byte [bp - 0x000b], 0        ; 0x0cff
    mov ax, 0                        ; 0x0d03
    push ax                          ; 0x0d06
    push ax                          ; 0x0d07
    lea ax, word [bp - 0x000c]       ; 0x0d08
    push ax                          ; 0x0d0b
    mov ax, 0                        ; 0x0d0c
    push ax                          ; 0x0d0f
    mov ax, 0xc7                     ; 0x0d10
    push ax                          ; 0x0d13
    mov ax, 0                        ; 0x0d14
    push ax                          ; 0x0d17
    mov ax, 0x13f                    ; 0x0d18
    push ax                          ; 0x0d1b
    mov ax, 0                        ; 0x0d1c
    push ax                          ; 0x0d1f
    mov ax, 0xc                      ; 0x0d20
    imul word [bp + 0x8]             ; 0x0d23
    mov cx, word [bp - 0x0002]       ; 0x0d26
    shl cx, 1                        ; 0x0d29
    add ax, cx                       ; 0x0d2b
    mov bx, ax                       ; 0x0d2d
    mov ax, word [bx + 0x1bc]        ; 0x0d2f
    add ax, word [bp + 0x6]          ; 0x0d33
    push ax                          ; 0x0d36
    mov ax, word [bx + 0x1a4]        ; 0x0d37
    add ax, word [bp + 0x4]          ; 0x0d3b
    push ax                          ; 0x0d3e
    mov ax, data_0002                ; 0x0d3f
    push ax                          ; 0x0d42
    call ds_dispatch_efd1            ; 0x0d43
    add sp, byte 0x16                ; 0x0d46
    inc word [bp - 0x0002]           ; 0x0d49
    mov ax, word [bp - 0x0002]       ; 0x0d4c
    cmp ax, strict word 6            ; 0x0d4f
    jl short @..api_idx_000c_2.l1    ; 0x0d52
    ret                              ; 0x0d54
