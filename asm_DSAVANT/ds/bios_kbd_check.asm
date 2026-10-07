bios_kbd_check:
    push bp
    mov bp, sp
    cld
    push di
    push si
    push es
    mov ax, ds
    mov es, ax
    mov ax, 0
    mov word [cs:data_3a7f], ax
@..bios_kbd_check.l1:
    mov ah, 1
    int 0x16 ; BIOS keyboard: check keystroke
    je short @..bios_kbd_check.l2
    mov ah, 0
    int 0x16 ; BIOS keyboard: read keystroke
    jmp short @..bios_kbd_check.l1
@..bios_kbd_check.l2:
    call far [cs:data_2daf]
    pop es
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
