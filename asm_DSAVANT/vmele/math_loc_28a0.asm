math_loc_28a0:
    mov ax, 0                        ; 0x28a0
    call ds_dispatch_f40b            ; 0x28a3
    mov ax, word [bp + 0x4]          ; 0x28a6
    shl ax, 1                        ; 0x28a9
    mov bx, ax                       ; 0x28ab
    mov bx, word [bx - 0x7b96]       ; 0x28ad
    mov al, byte [bx + 0x14]         ; 0x28b1
    sub ah, ah                       ; 0x28b4
    cmp ax, 0xff                     ; 0x28b6
    je short @..math_loc_28a0.l1     ; 0x28b9
    mov al, byte [bx + 0x17]         ; 0x28bb
    sub ah, ah                       ; 0x28be
    push ax                          ; 0x28c0
    mov ax, 0                        ; 0x28c1
    push ax                          ; 0x28c4
    add bx, byte 8                   ; 0x28c5
    mov ax, bx                       ; 0x28c8
    push ax                          ; 0x28ca
    mov ax, word [bp + 0x4]          ; 0x28cb
    shl ax, 1                        ; 0x28ce
    mov bx, ax                       ; 0x28d0
    mov bx, word [bx - 0x7b96]       ; 0x28d2
    mov al, byte [bx + 0x16]         ; 0x28d6
    sub ah, ah                       ; 0x28d9
    push ax                          ; 0x28db
    mov ax, 0x8e                     ; 0x28dc
    push ax                          ; 0x28df
    mov ax, 0x21                     ; 0x28e0
    push ax                          ; 0x28e3
    push word [bx + 0x6]             ; 0x28e4
    push word [bx + 0x4]             ; 0x28e7
    push word [bx + 0x2]             ; 0x28ea
    push word [bx]                   ; 0x28ed
    mov al, byte [bx + 0x15]         ; 0x28ef
    sub ah, ah                       ; 0x28f2
    push ax                          ; 0x28f4
    call ds_dispatch_efd1            ; 0x28f5
    add sp, byte 0x16                ; 0x28f8
@..math_loc_28a0.l1:
    ret                              ; 0x28fb
