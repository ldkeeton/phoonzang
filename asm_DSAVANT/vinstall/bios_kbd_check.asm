bios_kbd_check:
    push bp
    mov bp, sp
    push di
    push si
    mov ah, 1
    int 0x16 ; BIOS keyboard: check keystroke
    mov ax, 0
    je short @..bios_kbd_check.l1
    mov ax, 1
@..bios_kbd_check.l1:
    pop si
    pop di
    mov sp, bp
    pop bp
    ret
