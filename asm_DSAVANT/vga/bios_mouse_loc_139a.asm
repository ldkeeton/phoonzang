; auto-generated
bios_mouse_loc_139a:
    push bp                          ; 0x139a
    mov bp, sp                       ; 0x139b
    sub sp, byte 6                   ; 0x139d
    push es                          ; 0x13a0
    mov ax, ds                       ; 0x13a1
    mov es, ax                       ; 0x13a3
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 0 ; 0x13a5
    je short @..bios_mouse_loc_139a.l1 ; 0x13ab
    mov ax, 3                        ; 0x13ad
    int 0x33 ; BIOS mouse
    mov word [bp - 0x0002], bx       ; 0x13b2
    mov bx, word [bp + 0xc]          ; 0x13b5
    shr cx, 1                        ; 0x13b8
    mov word [bx], cx                ; 0x13ba
    mov bx, word [bp + 0xe]          ; 0x13bc
    mov word [bx], dx                ; 0x13bf
    mov ax, word [bp - 0x0002]       ; 0x13c1
@..bios_mouse_loc_139a.l1:
    pop es                           ; 0x13c4
    mov sp, bp                       ; 0x13c5
    pop bp                           ; 0x13c7
    ret                              ; 0x13c8
