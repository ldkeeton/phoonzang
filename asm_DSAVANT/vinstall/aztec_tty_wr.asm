    push bp                          ; 0x393e
    db 0x8b, 0xec ; mov bp, sp
    push di                          ; 0x3941
    push si                          ; 0x3942
    mov di, word [bp + 0x6]          ; 0x3943
    mov si, word [bp + 0x8]          ; 0x3946
    jmp short loc_3979               ; 0x3949
    db 0x8b, 0xdf ; mov bx, di
    inc di                           ; 0x394d
    cmp byte [bx], 0xa               ; 0x394e
    jne short loc_3979               ; 0x3951
    db 0x8b, 0xc7 ; mov ax, di
    sub ax, word [bp + 0x6]          ; 0x3955
    push ax                          ; 0x3958
    push word [bp + 0x6]             ; 0x3959
    push word [bp + 0x4]             ; 0x395c
    call dos_file_loc_3829           ; 0x395f
    add sp, byte 6                   ; 0x3962
    mov ax, 1                        ; 0x3965
    push ax                          ; 0x3968
    mov ax, 0x2533                   ; 0x3969
    push ax                          ; 0x396c
    push word [bp + 0x4]             ; 0x396d
    call dos_file_loc_3829           ; 0x3970
    add sp, byte 6                   ; 0x3973
    mov word [bp + 0x6], di          ; 0x3976
    db 0x8b, 0xc6 ; mov ax, si
    dec si                           ; 0x397b
    test ax, ax                      ; 0x397c
    jne short loc_394b               ; 0x397e
    cmp di, word [bp + 0x6]          ; 0x3980
    je short loc_3997                ; 0x3983
    db 0x8b, 0xc7 ; mov ax, di
    sub ax, word [bp + 0x6]          ; 0x3987
    push ax                          ; 0x398a
    push word [bp + 0x6]             ; 0x398b
    push word [bp + 0x4]             ; 0x398e
    call dos_file_loc_3829           ; 0x3991
    add sp, byte 6                   ; 0x3994
    mov ax, word [bp + 0x8]          ; 0x3997
    pop si                           ; 0x399a
    pop di                           ; 0x399b
    db 0x8b, 0xe5 ; mov sp, bp
    pop bp                           ; 0x399e
    ret                              ; 0x399f
