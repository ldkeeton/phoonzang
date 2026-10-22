; auto-generated
restore_area:
    push bp
    mov bp, sp
    sub sp, byte 8
    push es
    push ds
    push di
    push si
    mov ax, ds
    mov es, ax
    mov ax, word [bp + 0xe]
    mov ds, ax
    mov si, word [bp + 0xc]
    or ax, si
    je short restore_area.dos_con_loc1
    mov ax, word [cs:restore_area.screen_buf_seg1 - IMAGE_BASE]
    mov es, ax
    lodsw
    mov word [bp - 0x0002], ax
    add si, byte 2
    lodsw
    mov word [bp - 0x0004], ax
    lodsw
    mov word [bp - 0x0006], ax
    add si, byte 4
@..restore_area.l1:
    mov di, word [bp - 0x0002]
    add word [bp - 0x0002], strict word 0x140
    mov cx, word [bp - 0x0006]
    rep movsb
    dec word [bp - 0x0004]
    jne short @..restore_area.l1
    mov ax, word [bp + 0x10]
    or ax, ax
    je short restore_area.loc1
    mov ax, ds
    or ax, ax
    je short restore_area.loc1
    mov es, ax
    mov ah, 0x49
    int 0x21 ; DOS free memory
    jmp short restore_area.loc1
