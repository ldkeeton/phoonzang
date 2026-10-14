; auto-generated
bios_mouse_loc_12c9:
    push ds                          ; 0x12c9
    push es                          ; 0x12ca
    push si                          ; 0x12cb
    push di                          ; 0x12cc
    cmp byte [cs:cseg_0226 - IMAGE_BASE], 1 ; 0x12cd
    je short @..bios_mouse_loc_12c9.l1 ; 0x12d3
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 1 ; 0x12d5
    je short @..bios_mouse_loc_12c9.l2 ; 0x12db
@..bios_mouse_loc_12c9.l1:
    jmp near @..bios_mouse_loc_12c9.l4 ; 0x12dd
@..bios_mouse_loc_12c9.l2:
    mov ax, 3                        ; 0x12e0
    int 0x33 ; BIOS mouse
    shr cx, 1                        ; 0x12e5
    cmp word [cs:cseg_15ac - IMAGE_BASE], cx ; 0x12e7
    jne short @..bios_mouse_loc_12c9.l3 ; 0x12ec
    cmp word [cs:cseg_15ae - IMAGE_BASE], dx ; 0x12ee
    je short @..bios_mouse_loc_12c9.l4 ; 0x12f3
@..bios_mouse_loc_12c9.l3:
    shl cx, 1                        ; 0x12f5
    mov ax, cs                       ; 0x12f7
    push ax                          ; 0x12f9
    call leaf_loc_1e1a               ; 0x12fa
@..bios_mouse_loc_12c9.l4:
    mov byte [cs:cseg_0227 - IMAGE_BASE], 0 ; 0x12fd
    pop di                           ; 0x1303
    pop si                           ; 0x1304
    pop es                           ; 0x1305
    pop ds                           ; 0x1306
    ret                              ; 0x1307
