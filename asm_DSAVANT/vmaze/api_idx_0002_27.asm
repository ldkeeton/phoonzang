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
    call loc_946a                    ; 0xaa3a
    pop cx                           ; 0xaa3d
@..api_idx_0002_27.l1:
    ret                              ; 0xaa3e
loc_aa3f:
    mov ax, 0                        ; 0xaa3f
    call ds_dispatch_f40b            ; 0xaa42
    mov ax, 0x10                     ; 0xaa45
    push ax                          ; 0xaa48
    call ds_dispatch_b7a9            ; 0xaa49
    pop cx                           ; 0xaa4c
    push ax                          ; 0xaa4d
    mov ax, 0x26                     ; 0xaa4e
    imul word [bp + 0x4]             ; 0xaa51
    mov bx, ax                       ; 0xaa54
    pop ax                           ; 0xaa56
    mov byte [bx - 0x7b13], al       ; 0xaa57
    mov al, byte [bx - 0x7b14]       ; 0xaa5b
    cmp al, byte [bx - 0x7b17]       ; 0xaa5f
    jne short @..local.l90           ; 0xaa63
    mov ax, 0xa                      ; 0xaa65
    push ax                          ; 0xaa68
    call ds_dispatch_b7a9            ; 0xaa69
    pop cx                           ; 0xaa6c
    test ax, ax                      ; 0xaa6d
    jne short @..local.l90           ; 0xaa6f
    mov ax, 0x26                     ; 0xaa71
    imul word [bp + 0x4]             ; 0xaa74
    mov bx, ax                       ; 0xaa77
    mov al, byte [bx - 0x7aff]       ; 0xaa79
    mov byte [bx - 0x7b00], al       ; 0xaa7d
    mov ax, 0xa                      ; 0xaa81
    push ax                          ; 0xaa84
    call ds_dispatch_b7a9            ; 0xaa85
    pop cx                           ; 0xaa88
    test ax, ax                      ; 0xaa89
    jne short @..local.l89           ; 0xaa8b
    mov ax, 0x26                     ; 0xaa8d
    imul word [bp + 0x4]             ; 0xaa90
    mov bx, ax                       ; 0xaa93
    mov byte [bx - 0x7b16], 2        ; 0xaa95
    mov byte [bx - 0x7b13], 0        ; 0xaa9a
    ret                              ; 0xaa9f
@..local.l89:
    jmp short @..local.l91           ; 0xaaa0
@..local.l90:
    mov ax, 3                        ; 0xaaa2
    push ax                          ; 0xaaa5
    mov ax, 2                        ; 0xaaa6
    push ax                          ; 0xaaa9
    push word [bp + 0x4]             ; 0xaaaa
    call api_idx_0002_25             ; 0xaaad
    add sp, byte 6                   ; 0xaab0
    test ax, ax                      ; 0xaab3
    je short @..local.l91            ; 0xaab5
    ret                              ; 0xaab7
@..local.l91:
    mov ax, 0xffff                   ; 0xaab8
    push ax                          ; 0xaabb
    push word [bp + 0x4]             ; 0xaabc
    call api_idx_0008_5              ; 0xaabf
    add sp, byte 4                   ; 0xaac2
    mov ax, 0x26                     ; 0xaac5
    imul word [bp + 0x4]             ; 0xaac8
    mov bx, ax                       ; 0xaacb
    mov byte [bx - 0x7b16], 6        ; 0xaacd
    ret                              ; 0xaad2
loc_aad3:
    mov ax, 0                        ; 0xaad3
    call ds_dispatch_f40b            ; 0xaad6
    mov ax, 0x26                     ; 0xaad9
    imul word [bp + 0x4]             ; 0xaadc
    mov bx, ax                       ; 0xaadf
    cmp byte [bx - 0x7b00], 0        ; 0xaae1
    jg short @..local.l92            ; 0xaae6
    ret                              ; 0xaae8
@..local.l92:
    mov al, byte [bx - 0x7b16]       ; 0xaae9
    sub ah, ah                       ; 0xaaed
    jmp near @..local.l93            ; 0xaaef

    db 0xff, 0x76, 0x04, 0xe8, 0xd6, 0xeb, 0x59, 0xe9, 0x9e, 0x00, 0xb8, 0x05, 0x00, 0x50, 0x50, 0xff
    db 0x76, 0x04, 0xe8, 0x85, 0xf7, 0x83, 0xc4, 0x06, 0xe9, 0x8d, 0x00, 0xff, 0x76, 0x04, 0xe8, 0xcc
    db 0xf7, 0x59, 0xe9, 0x83, 0x00, 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x91, 0xfc, 0x83
    db 0xc4, 0x04, 0xeb, 0x74, 0xff, 0x76, 0x04, 0xe8, 0x78, 0xfe, 0x59, 0xeb, 0x6b, 0xb8, 0x26, 0x00
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x8a, 0x87, 0xee, 0x84, 0x2a, 0xe4, 0x50, 0xff, 0x76, 0x04, 0xe8
    db 0x6e, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x51, 0xff, 0x76, 0x04, 0xe8, 0xf0, 0xfe, 0x59, 0xeb, 0x48
    db 0xb8, 0xff, 0xff, 0x50, 0xff, 0x76, 0x04, 0xe8, 0x56, 0xfc, 0x83, 0xc4, 0x04, 0xb8, 0x26, 0x00
    db 0xf7, 0x6e, 0x04, 0x8b, 0xd8, 0x80, 0xbf, 0xea, 0x84, 0x07, 0x75, 0x0d, 0xb8, 0xff, 0xff, 0x50
    db 0xff, 0x76, 0x04, 0xe8, 0x3a, 0xfc, 0x83, 0xc4, 0x04, 0xeb, 0x1d, 0x39, 0xfb, 0x43, 0xfb, 0x54
    db 0xfb, 0x5e, 0xfb, 0x6d, 0xfb, 0x76, 0xfb, 0x90, 0xfb, 0x99, 0xfb

@..local.l93:
    cmp ax, strict word 8            ; 0xab8d
    jae short @..local.l94           ; 0xab90
    xchg bx, ax                      ; 0xab92
    shl bx, 1                        ; 0xab93
    jmp [cs:bx - 0x043c]             ; 0xab95
@..local.l94:
    ret                              ; 0xab9a
