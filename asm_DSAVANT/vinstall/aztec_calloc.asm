; auto-generated
aztec_calloc:
    push bp                          ; 0x26f6
    mov bp, sp                       ; 0x26f7
    push di                          ; 0x26f9
    push si                          ; 0x26fa
    mov ax, word [bp + 0x4]          ; 0x26fb
    mov dx, 1                        ; 0x26fe
    int 0x17 ; BIOS printer
    pop si                           ; 0x2703
    pop di                           ; 0x2704
    mov sp, bp                       ; 0x2705
    pop bp                           ; 0x2707
    ret                              ; 0x2708
