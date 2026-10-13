; auto-generated
string_loc_4b23:
    cmp word [bp + 0x4], byte 5      ; 0x4b23
    jge short @..string_loc_4b23.l5  ; 0x4b27
    mov ax, word [bss_91d2]          ; 0x4b29
    add ax, word [bss_82e8]          ; 0x4b2c
    mov cx, 2                        ; 0x4b30
    cwd                              ; 0x4b33
    idiv cx                          ; 0x4b34
    mov ax, dx                       ; 0x4b36
    test ax, ax                      ; 0x4b38
    je short @..string_loc_4b23.l1   ; 0x4b3a
    mov ax, word [bp + 0x34]         ; 0x4b3c
    add ax, word [bp + 0x4]          ; 0x4b3f
    jmp short @..string_loc_4b23.l2  ; 0x4b42
@..string_loc_4b23.l1:
    mov ax, 0xffff                   ; 0x4b44
@..string_loc_4b23.l2:
    push ax                          ; 0x4b47
    push cx                          ; 0x4b48
    test dx, dx                      ; 0x4b49
    je short @..string_loc_4b23.l3   ; 0x4b4b
    mov ax, word [bp + 0x36]         ; 0x4b4d
    add ax, word [bp + 0x4]          ; 0x4b50
    jmp short @..string_loc_4b23.l4  ; 0x4b53
@..string_loc_4b23.l3:
    mov ax, word [bp + 0x34]         ; 0x4b55
    add ax, word [bp + 0x4]          ; 0x4b58
@..string_loc_4b23.l4:
    push ax                          ; 0x4b5b
    push word [bp + 0x14]            ; 0x4b5c
    call ds_bios_mouse_loc_4266      ; 0x4b5f
    add sp, byte 8                   ; 0x4b62
@..string_loc_4b23.l5:
    jmp short loc_4b82               ; 0x4b65
