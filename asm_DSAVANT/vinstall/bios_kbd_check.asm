bios_kbd_check:
    push bp                          ; 0x2709
    mov bp, sp                       ; 0x270a
    push di                          ; 0x270c
    push si                          ; 0x270d
    mov ah, 1                        ; 0x270e
    int 0x16 ; BIOS keyboard: check keystroke
    mov ax, 0                        ; 0x2712
    je short @..bios_kbd_check.l1    ; 0x2715
    mov ax, 1                        ; 0x2717
@..bios_kbd_check.l1:
    pop si                           ; 0x271a
    pop di                           ; 0x271b
    mov sp, bp                       ; 0x271c
    pop bp                           ; 0x271e
    ret                              ; 0x271f
