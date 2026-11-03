; auto-generated
bios_clear_to_line_end:
    push bp                          ; 0x25a6
    mov bp, sp                       ; 0x25a7
    push di                          ; 0x25a9
    push si                          ; 0x25aa
    mov bx, word [bp + 4]            ; 0x25ab
    mov dx, word [bp + 6]            ; 0x25ae
    push dx                          ; 0x25b1
    mov dh, bl                       ; 0x25b2
    mov bh, 0                        ; 0x25b4
    mov ah, 2                        ; 0x25b6
    int 0x10 ; BIOS video: set cursor position
    mov ax, 0x50                     ; 0x25ba
    pop bx                           ; 0x25bd
    sub ax, bx                       ; 0x25be
    mov cx, ax                       ; 0x25c0
    mov ax, 0x920                    ; 0x25c2
    mov bl, byte [bss_2647]          ; 0x25c5
    mov bh, 0                        ; 0x25c9
    int 0x10 ; BIOS video
    pop si                           ; 0x25cd
    pop di                           ; 0x25ce
    mov sp, bp                       ; 0x25cf
    pop bp                           ; 0x25d1
    ret                              ; 0x25d2
