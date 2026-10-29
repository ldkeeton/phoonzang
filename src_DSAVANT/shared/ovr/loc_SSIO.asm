; auto-generated
loc_SSIO:
    mov ax, 0
    call aztec_csav
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + overlay_list + 0x2]
    mov al, byte [bx + overlay_list_rec.f_0014]
    sub ah, ah
    cmp ax, 0xff
    je short .return1
    mov al, byte [bx + 0x17]
    sub ah, ah
    push ax
    mov ax, 0
    push ax
    add bx, byte 8
    mov ax, bx
    push ax
    mov ax, word [bp + 4]
    shl ax, 1
    mov bx, ax
    mov bx, word [bx + overlay_list + 0x2]
    mov al, byte [bx + overlay_list_rec.f_0016]
    sub ah, ah
    push ax
    mov ax, 0x8e
    push ax
    mov ax, 0x21
    push ax
    push word [bx + overlay_list_rec.f_0006]
    push word [bx + overlay_list_rec.f_0004]
    push word [bx + overlay_list_rec.f_0002]
    push word [bx]
    mov al, byte [bx + overlay_list_rec.f_0015]
    sub ah, ah
    push ax
    call call_draw_text
    add sp, byte 0x16
.return1:
    ret
