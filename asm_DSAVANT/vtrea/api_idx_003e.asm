api_idx_003e:
    mov ax, 0xffc2                   ; 0x11bc
    call ds_dispatch_f40b            ; 0x11bf
    mov ax, 0                        ; 0x11c2
    push ax                          ; 0x11c5
    push word [bp + 0x8]             ; 0x11c6
    push word [bp + 0x6]             ; 0x11c9
    call ds_dispatch_d0ea            ; 0x11cc
    add sp, byte 6                   ; 0x11cf
    mov cx, ax                       ; 0x11d2
    sub sp, byte 4                   ; 0x11d4
    mov ax, sp                       ; 0x11d7
    mov dx, ss                       ; 0x11d9
    mov es, dx                       ; 0x11db
    mov si, cx                       ; 0x11dd
    mov di, ax                       ; 0x11df
    movsw                            ; 0x11e1
    movsw                            ; 0x11e2
    call ds_dispatch_d0be            ; 0x11e3
    add sp, byte 4                   ; 0x11e6
    mov word [bp - 0x0002], ax       ; 0x11e9
    cmp word [bp - 0x0002], byte 0   ; 0x11ec
    je short @..api_idx_003e.l1      ; 0x11f0
    mov ax, 0x248                    ; 0x11f2
    imul word [bp + 0x4]             ; 0x11f5
    mov bx, ax                       ; 0x11f8
    cmp byte [bx + 0x5e2f], 3        ; 0x11fa
    jb short @..api_idx_003e.l2      ; 0x11ff
@..api_idx_003e.l1:
    mov ax, 0                        ; 0x1201
    ret                              ; 0x1204
