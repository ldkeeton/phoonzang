math_loc_10b0:
    mov ax, 0                        ; 0x10b0
    call ds_dispatch_f40b            ; 0x10b3
    mov ax, 0x248                    ; 0x10b6
    imul word [bp + 0x4]             ; 0x10b9
    mov bx, ax                       ; 0x10bc
    cmp byte [bx + 0x5e2f], 3        ; 0x10be
    jae short @..math_loc_10b0.l1    ; 0x10c3
    mov al, byte [bx + 0x5e2c]       ; 0x10c5
    sub ah, ah                       ; 0x10c9
    add ax, strict word 8            ; 0x10cb
    push ax                          ; 0x10ce
    call ds_dispatch_b7e0            ; 0x10cf
    pop cx                           ; 0x10d2
@..math_loc_10b0.l1:
    mov ax, 0x248                    ; 0x10d3
    imul word [bp + 0x4]             ; 0x10d6
    mov bx, ax                       ; 0x10d9
    mov byte [bx + 0x5e2f], 3        ; 0x10db
    mov word [bx + 0x5c0c], 0        ; 0x10e0
    mov word [bx + 0x5c10], 0        ; 0x10e6
    cmp word [bp + 0x6], byte 0      ; 0x10ec
    jle short @..math_loc_10b0.l2    ; 0x10f0
    mov ax, 1                        ; 0x10f2
    push ax                          ; 0x10f5
    push word [bp + 0x4]             ; 0x10f6
    call ds_dispatch_cb3a            ; 0x10f9
    add sp, byte 4                   ; 0x10fc
    cmp word [bp + 0x6], byte 1      ; 0x10ff
    jle short @..math_loc_10b0.l2    ; 0x1103
    mov ax, 8                        ; 0x1105
    push ax                          ; 0x1108
    call ds_dispatch_b75e            ; 0x1109
    pop cx                           ; 0x110c
@..math_loc_10b0.l2:
    ret                              ; 0x110d
