; auto-generated
bios_set_cursor_packed:
    push bp                          ; 0x2733
    mov bp, sp                       ; 0x2734
    push di                          ; 0x2736
    push si                          ; 0x2737
    mov dx, word [bp + 4]            ; 0x2738
    mov bh, 0                        ; 0x273b
    mov ah, 2                        ; 0x273d
    int 0x10 ; BIOS video: set cursor position
    pop si                           ; 0x2741
    pop di                           ; 0x2742
    mov sp, bp                       ; 0x2743
    pop bp                           ; 0x2745
    ret                              ; 0x2746
