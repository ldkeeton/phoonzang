    push bp                          ; 0x26f6
    db 0x8b, 0xec ; mov bp, sp
    push di                          ; 0x26f9
    push si                          ; 0x26fa
    mov ax, word [bp + 0x4]          ; 0x26fb
    mov dx, 1                        ; 0x26fe
    int 0x17 ; BIOS printer
    pop si                           ; 0x2703
    pop di                           ; 0x2704
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp                           ; 0x2707
    ret                              ; 0x2708
