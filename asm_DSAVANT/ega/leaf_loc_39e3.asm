leaf_loc_39e3:
    dec ax                           ; 0x39e3
    cmp ax, word [bp - 0x0012]       ; 0x39e4
    jb short @..leaf_loc_39e3.l1     ; 0x39e7
    mov bl, 0xa                      ; 0x39e9
    div bl                           ; 0x39eb
    or byte [cs:cseg_3b21 - IMAGE_BASE], al ; 0x39ed
    or byte [cs:cseg_3b22 - IMAGE_BASE], dl ; 0x39f2
    mov ax, word [bp + 0xc]          ; 0x39f7
    mov bl, 0xa                      ; 0x39fa
    div bl                           ; 0x39fc
    or byte [cs:cseg_3b34 - IMAGE_BASE], al ; 0x39fe
    or byte [cs:cseg_3b35 - IMAGE_BASE], dl ; 0x3a03
    mov bx, cs                       ; 0x3a08
    mov ds, bx                       ; 0x3a0a
    mov dx, 0x3b18                   ; 0x3a0c
