math_loc_2d94:
    mov ax, 0                        ; 0x2d94
    call ds_dispatch_f40b            ; 0x2d97
    mov ax, word [bp + 0x6]          ; 0x2d9a
    dec ax                           ; 0x2d9d
    push ax                          ; 0x2d9e
    push word [bp + 0x4]             ; 0x2d9f
    lea ax, word [bp + 0xc]          ; 0x2da2
    push ax                          ; 0x2da5
    lea ax, word [bp + 0xa]          ; 0x2da6
    push ax                          ; 0x2da9
    lea ax, word [bp + 0x8]          ; 0x2daa
    push ax                          ; 0x2dad
    call api_idx_0004_6              ; 0x2dae
    add sp, byte 0x0a                ; 0x2db1
    test ax, ax                      ; 0x2db4
    je short @..math_loc_2d94.l5     ; 0x2db6
    mov ax, word [data_5b6e]         ; 0x2db8
    mov cx, 2                        ; 0x2dbb
    cwd                              ; 0x2dbe
    idiv cx                          ; 0x2dbf
    mov ax, dx                       ; 0x2dc1
    test ax, ax                      ; 0x2dc3
    je short @..math_loc_2d94.l1     ; 0x2dc5
    mov ax, cx                       ; 0x2dc7
    jmp short @..math_loc_2d94.l4    ; 0x2dc9
@..math_loc_2d94.l1:
    mov ax, word [data_5b6e]         ; 0x2dcb
    cmp ax, strict word 6            ; 0x2dce
    je short @..math_loc_2d94.l2     ; 0x2dd1
    cmp word [data_91a6], byte 0     ; 0x2dd3
    je short @..math_loc_2d94.l3     ; 0x2dd8
@..math_loc_2d94.l2:
    mov ax, 0                        ; 0x2dda
    jmp short @..math_loc_2d94.l4    ; 0x2ddd
@..math_loc_2d94.l3:
    mov ax, 4                        ; 0x2ddf
@..math_loc_2d94.l4:
    ret                              ; 0x2de2
