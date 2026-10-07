bios_mouse_loc_1992:
    push bp                          ; 0x1992
    mov bp, sp                       ; 0x1993
    sub sp, byte 6                   ; 0x1995
    push es                          ; 0x1998
    mov ax, ds                       ; 0x1999
    mov es, ax                       ; 0x199b
    cmp byte [cs:data_0228], 0       ; 0x199d
    je short @..bios_mouse_loc_1992.l1 ; 0x19a3
    mov ax, 3                        ; 0x19a5
    int 0x33 ; BIOS mouse
    mov word [bp - 0x0002], bx       ; 0x19aa
    mov bx, word [bp + 0xc]          ; 0x19ad
    shr cx, 1                        ; 0x19b0
    mov word [bx], cx                ; 0x19b2
    mov bx, word [bp + 0xe]          ; 0x19b4
    mov word [bx], dx                ; 0x19b7
    mov ax, word [bp - 0x0002]       ; 0x19b9
@..bios_mouse_loc_1992.l1:
    pop es                           ; 0x19bc
    mov sp, bp                       ; 0x19bd
    pop bp                           ; 0x19bf
    ret                              ; 0x19c0
