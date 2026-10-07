bios_kbd_loc_3c97:
    push bp                          ; 0x3c97
    mov bp, sp                       ; 0x3c98
    cld                              ; 0x3c9a
    push ds                          ; 0x3c9b
    push es                          ; 0x3c9c
    push si                          ; 0x3c9d
    cld                              ; 0x3c9e
    mov ax, cs                       ; 0x3c9f
    mov ds, ax                       ; 0x3ca1
    mov es, ax                       ; 0x3ca3
    call math_loc_3c0d               ; 0x3ca5
    lea si, word [data_3a7f]         ; 0x3ca8
@..bios_kbd_loc_3c97.l1:
    mov bx, word [si]                ; 0x3cac
    or bx, bx                        ; 0x3cae
    je short @..bios_kbd_loc_3c97.l7 ; 0x3cb0
    mov ax, word [bp + 0x4]          ; 0x3cb2
    cmp al, 0                        ; 0x3cb5
    je short @..bios_kbd_loc_3c97.l4 ; 0x3cb7
    cmp al, data_0002                ; 0x3cb9
    je short @..bios_kbd_loc_3c97.l2 ; 0x3cbb
    mov al, byte [si + 0x2]          ; 0x3cbd
    cmp al, 8                        ; 0x3cc0
    je short @..bios_kbd_loc_3c97.l4 ; 0x3cc2
    cmp al, 9                        ; 0x3cc4
    je short @..bios_kbd_loc_3c97.l4 ; 0x3cc6
    cmp al, 0xa                      ; 0x3cc8
    je short @..bios_kbd_loc_3c97.l4 ; 0x3cca
    cmp al, 0xb                      ; 0x3ccc
    je short @..bios_kbd_loc_3c97.l4 ; 0x3cce
    cmp al, 0x1b                     ; 0x3cd0
    je short @..bios_kbd_loc_3c97.l4 ; 0x3cd2
    cmp al, 0xd                      ; 0x3cd4
    je short @..bios_kbd_loc_3c97.l4 ; 0x3cd6
    cmp al, 0x20                     ; 0x3cd8
    jb short @..bios_kbd_loc_3c97.l6 ; 0x3cda
    cmp al, 0x60                     ; 0x3cdc
    jae short @..bios_kbd_loc_3c97.l6 ; 0x3cde
    jmp near @..bios_kbd_loc_3c97.l4 ; 0x3ce0
@..bios_kbd_loc_3c97.l2:
    mov al, byte [si + 0x2]          ; 0x3ce3
    cmp al, 8                        ; 0x3ce6
    je short @..bios_kbd_loc_3c97.l4 ; 0x3ce8
    cmp al, 0x1b                     ; 0x3cea
    je short @..bios_kbd_loc_3c97.l4 ; 0x3cec
    cmp al, 0xd                      ; 0x3cee
    je short @..bios_kbd_loc_3c97.l4 ; 0x3cf0
    cmp al, 0x30                     ; 0x3cf2
    jb short @..bios_kbd_loc_3c97.l6 ; 0x3cf4
    cmp al, 0x3a                     ; 0x3cf6
    jae short @..bios_kbd_loc_3c97.l6 ; 0x3cf8
    jmp short @..bios_kbd_loc_3c97.l4 ; 0x3cfa
@..bios_kbd_loc_3c97.l3:
    jmp short @..bios_kbd_loc_3c97.l1 ; 0x3cfc
@..bios_kbd_loc_3c97.l4:
    mov ax, 1                        ; 0x3cfe
@..bios_kbd_loc_3c97.l5:
    pop si                           ; 0x3d01
    pop es                           ; 0x3d02
    pop ds                           ; 0x3d03
    mov sp, bp                       ; 0x3d04
    pop bp                           ; 0x3d06
    ret                              ; 0x3d07
