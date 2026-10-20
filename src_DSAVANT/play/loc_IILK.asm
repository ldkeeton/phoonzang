; auto-generated
loc_IILK:
    mov byte [cs:cseg_0a7e - IMAGE_BASE], 0 ; 0x0ad9
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 1 ; 0x0adf
    jne short loc_RTLK               ; 0x0ae5
    mov dx, 0x388                    ; 0x0ae7
    mov al, 0x40                     ; 0x0aea
    out dx, al                       ; 0x0aec
loc_RTLK:
    pop dx                           ; 0x0aed
    pop es                           ; 0x0aee
    pop si                           ; 0x0aef
    pop cx                           ; 0x0af0
    pop di                           ; 0x0af1
    pop ds                           ; 0x0af2
    pop ax                           ; 0x0af3
    pop bx                           ; 0x0af4
    ret                              ; 0x0af5
