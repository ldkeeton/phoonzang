; auto-generated
loc_SSIO:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + overlay_list + 0x2]
    mov al, byte [bx + 0x14]
    sub ah, ah
    cmp ax, 0xff
    je short @..loc_SSIO.l1
    mov al, byte [bx + 0x17]
    sub ah, ah
    push ax
    mov ax, 0
    push ax
    add bx, byte 8
    mov ax, bx
    push ax
    mov ax, word [bp + 0x4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + overlay_list + 0x2]
    mov al, byte [bx + 0x16]
    sub ah, ah
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x21
    push ax
    push word [bx + 0x6]
    push word [bx + 0x4]
    push word [bx + 0x2]
    push word [bx]
    mov al, byte [bx + 0x15]
    sub ah, ah
    push ax
    call gfx_draw_text
    add sp, byte 0x16
@..loc_SSIO.l1:
    ret
