math_loc_0dbe:
    mov ax, 0                        ; 0x0dbe
    call ds_dispatch_f40b            ; 0x0dc1
    mov ax, word [bp + 0x4]          ; 0x0dc4
    shl ax, 1                        ; 0x0dc7
    mov bx, ax                       ; 0x0dc9
    mov bx, word [bx - 0x7b96]       ; 0x0dcb
    mov al, byte [bx + 0x14]         ; 0x0dcf
    sub ah, ah                       ; 0x0dd2
    cmp ax, 0xff                     ; 0x0dd4
    je short @..math_loc_0dbe.l1     ; 0x0dd7
    mov al, byte [bx + 0x17]         ; 0x0dd9
    sub ah, ah                       ; 0x0ddc
    push ax                          ; 0x0dde
    mov ax, 0                        ; 0x0ddf
    push ax                          ; 0x0de2
    add bx, byte 8                   ; 0x0de3
    mov ax, bx                       ; 0x0de6
    push ax                          ; 0x0de8
    mov ax, word [bp + 0x4]          ; 0x0de9
    shl ax, 1                        ; 0x0dec
    mov bx, ax                       ; 0x0dee
    mov bx, word [bx - 0x7b96]       ; 0x0df0
    mov al, byte [bx + 0x16]         ; 0x0df4
    sub ah, ah                       ; 0x0df7
    push ax                          ; 0x0df9
    mov ax, 0x8e                     ; 0x0dfa
    push ax                          ; 0x0dfd
    mov ax, 0x21                     ; 0x0dfe
    push ax                          ; 0x0e01
    push word [bx + 0x6]             ; 0x0e02
    push word [bx + 0x4]             ; 0x0e05
    push word [bx + 0x2]             ; 0x0e08
    push word [bx]                   ; 0x0e0b
    mov al, byte [bx + 0x15]         ; 0x0e0d
    sub ah, ah                       ; 0x0e10
    push ax                          ; 0x0e12
    call ds_dispatch_efd1            ; 0x0e13
    add sp, byte 0x16                ; 0x0e16
@..math_loc_0dbe.l1:
    ret                              ; 0x0e19
