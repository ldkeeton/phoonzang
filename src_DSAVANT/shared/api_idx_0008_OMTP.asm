; auto-generated
api_idx_0008_OMTP:
    mov ax, 0xfff8
    call aztec_csav
    mov ax, 0x98
    push ax
    mov ax, 0x13f
    push ax
    mov ax, 0x92
    push ax
    mov ax, 0
    push ax
    call thunk_4
    add sp, byte 8
    push word [bp + 0x4]
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, 2
    cwd
    idiv cx
    mov cx, ax
    mov ax, 0xa1
    sub ax, cx
    mov word [bp - 0x0002], ax
    push word [bp + 0x4]
    call aztec_strlen
    pop cx
    mov cx, 6
    imul cx
    mov cx, ax
    mov ax, word [bp - 0x0002]
    add cx, ax
    mov word [bp - 0x0004], cx
    mov ax, 0x98
    push ax
    push cx
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call thunk_10
    add sp, byte 8
    mov word [bp - 0x0006], dx
    mov word [bp - 0x0008], ax
    mov ax, 0
    push ax
    mov ax, 0x16
    push ax
    call thunk_3
    add sp, byte 4
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call thunk
    add sp, byte 4
    mov ax, 0
    push ax
    push word [bp + 0x4]
    call ds_string_loc_QRJV
    add sp, byte 4
    mov ax, 0x98
    push ax
    push word [bp - 0x0004]
    mov ax, 0x92
    push ax
    push word [bp - 0x0002]
    call thunk_4
    add sp, byte 8
    mov ax, 1
    push ax
    push word [bp - 0x0006]
    push word [bp - 0x0008]
    call thunk_13
    add sp, byte 6
    call bios_kbd_check
    ret
