math_loc_788f:
    mov ax, 0                        ; 0x788f
    call ds_dispatch_f40b            ; 0x7892
    mov ax, 0x248                    ; 0x7895
    imul word [bp + 0x4]             ; 0x7898
    mov bx, ax                       ; 0x789b
    cmp byte [bx + 0x5e2f], 3        ; 0x789d
    jae short @..math_loc_788f.l1    ; 0x78a2
    mov al, byte [bx + 0x5e2c]       ; 0x78a4
    sub ah, ah                       ; 0x78a8
    add ax, strict word 8            ; 0x78aa
    push ax                          ; 0x78ad
    call ds_dispatch_b7e0            ; 0x78ae
    pop cx                           ; 0x78b1
@..math_loc_788f.l1:
    mov ax, 0x248                    ; 0x78b2
    imul word [bp + 0x4]             ; 0x78b5
    mov bx, ax                       ; 0x78b8
    mov byte [bx + 0x5e2f], 3        ; 0x78ba
    mov word [bx + 0x5c0c], 0        ; 0x78bf
    mov word [bx + 0x5c10], 0        ; 0x78c5
    cmp word [bp + 0x6], byte 0      ; 0x78cb
    jle short @..math_loc_788f.l2    ; 0x78cf
    mov ax, 1                        ; 0x78d1
    push ax                          ; 0x78d4
    push word [bp + 0x4]             ; 0x78d5
    call ds_dispatch_cb3a            ; 0x78d8
    add sp, byte 4                   ; 0x78db
    cmp word [bp + 0x6], byte 1      ; 0x78de
    jle short @..math_loc_788f.l2    ; 0x78e2
    mov ax, 8                        ; 0x78e4
    push ax                          ; 0x78e7
    call ds_dispatch_b75e            ; 0x78e8
    pop cx                           ; 0x78eb
@..math_loc_788f.l2:
    ret                              ; 0x78ec
