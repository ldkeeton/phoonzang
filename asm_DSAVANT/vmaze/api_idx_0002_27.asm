api_idx_0002_27:
    mov ax, 0xfffe                   ; 0xa9a4
    call ds_dispatch_f40b            ; 0xa9a7
    mov ax, 0x26                     ; 0xa9aa
    imul word [bp + 0x4]             ; 0xa9ad
    mov bx, ax                       ; 0xa9b0
    mov al, byte [bx - 0x7b12]       ; 0xa9b2
    sub ah, ah                       ; 0xa9b6
    mov word [bp - 0x0002], ax       ; 0xa9b8
    inc byte [bx - 0x7b13]           ; 0xa9bb
    mov al, byte [bx - 0x7b13]       ; 0xa9bf
    sub ah, ah                       ; 0xa9c3
    push ax                          ; 0xa9c5
    call ds_dispatch_b7a9            ; 0xa9c6
    pop cx                           ; 0xa9c9
    cmp ax, strict word 0x18         ; 0xa9ca
    jle short @..api_idx_0002_27.l1  ; 0xa9cd
    mov ax, 0x26                     ; 0xa9cf
    imul word [bp + 0x4]             ; 0xa9d2
    mov bx, ax                       ; 0xa9d5
    mov al, byte [bx - 0x7b15]       ; 0xa9d7
    sub ah, ah                       ; 0xa9db
    push ax                          ; 0xa9dd
    mov ax, 7                        ; 0xa9de
    push ax                          ; 0xa9e1
    push word [bp - 0x0002]          ; 0xa9e2
    push word [bp + 0x4]             ; 0xa9e5
    call api_idx_0002_22             ; 0xa9e8
    add sp, byte 8                   ; 0xa9eb
    mov ax, 1                        ; 0xa9ee
    push ax                          ; 0xa9f1
    mov ax, word [bp - 0x0002]       ; 0xa9f2
    add ax, strict word 0xc          ; 0xa9f5
    push ax                          ; 0xa9f8
    mov ax, 0x26                     ; 0xa9f9
    imul word [bp + 0x4]             ; 0xa9fc
    add ax, 0x850a                   ; 0xa9ff
    push ax                          ; 0xaa02
    call ds_dispatch_ec41            ; 0xaa03
    add sp, byte 6                   ; 0xaa06
    mov ax, 0x26                     ; 0xaa09
    imul word [bp + 0x4]             ; 0xaa0c
    mov bx, ax                       ; 0xaa0f
    mov byte [bx - 0x7b16], 0        ; 0xaa11
    mov ax, 6                        ; 0xaa16
    imul word [bp - 0x0002]          ; 0xaa19
    mov bx, ax                       ; 0xaa1c
    cmp byte [bx - 0x7b56], 0xff     ; 0xaa1e
    je short @..api_idx_0002_27.l1   ; 0xaa23
    mov al, byte [bx - 0x7b56]       ; 0xaa25
    push ax                          ; 0xaa29
    mov ax, 0x26                     ; 0xaa2a
    imul word [bp + 0x4]             ; 0xaa2d
    mov bx, ax                       ; 0xaa30
    pop ax                           ; 0xaa32
    mov byte [bx - 0x7b15], al       ; 0xaa33
    push word [bp + 0x4]             ; 0xaa37
    call math_loc_946a               ; 0xaa3a
    pop cx                           ; 0xaa3d
@..api_idx_0002_27.l1:
    ret                              ; 0xaa3e
