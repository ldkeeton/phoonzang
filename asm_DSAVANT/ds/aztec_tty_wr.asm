    push bp                          ; 0x50c1
    db 0x8b, 0xec ; mov bp, sp
    push di                          ; 0x50c4
    push si                          ; 0x50c5
    mov di, word [bp + 0x6]          ; 0x50c6
    mov si, word [bp + 0x8]          ; 0x50c9
    jmp short loc_50fc               ; 0x50cc
    db 0x8b, 0xdf ; mov bx, di
    inc di                           ; 0x50d0
    cmp byte [bx], 0xa               ; 0x50d1
    jne short loc_50fc               ; 0x50d4
    db 0x8b, 0xc7 ; mov ax, di
    sub ax, word [bp + 0x6]          ; 0x50d8
    push ax                          ; 0x50db
    push word [bp + 0x6]             ; 0x50dc
    push word [bp + 0x4]             ; 0x50df
    call dos_file_loc_4fac           ; 0x50e2
    add sp, byte 6                   ; 0x50e5
    mov ax, 1                        ; 0x50e8
    push ax                          ; 0x50eb
    mov ax, 0xcf5                    ; 0x50ec
    push ax                          ; 0x50ef
    push word [bp + 0x4]             ; 0x50f0
    call dos_file_loc_4fac           ; 0x50f3
    add sp, byte 6                   ; 0x50f6
    mov word [bp + 0x6], di          ; 0x50f9
    db 0x8b, 0xc6 ; mov ax, si
    dec si                           ; 0x50fe
    test ax, ax                      ; 0x50ff
    jne short loc_50ce               ; 0x5101
    cmp di, word [bp + 0x6]          ; 0x5103
    je short loc_511a                ; 0x5106
    db 0x8b, 0xc7 ; mov ax, di
    sub ax, word [bp + 0x6]          ; 0x510a
    push ax                          ; 0x510d
    push word [bp + 0x6]             ; 0x510e
    push word [bp + 0x4]             ; 0x5111
    call dos_file_loc_4fac           ; 0x5114
    add sp, byte 6                   ; 0x5117
    mov ax, word [bp + 0x8]          ; 0x511a
    pop si                           ; 0x511d
    pop di                           ; 0x511e
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp                           ; 0x5121
    ret                              ; 0x5122
