; auto-generated
aztec_impl_tty_wr:
    push bp                          ; 0x393e
    mov bp, sp                       ; 0x393f
    push di                          ; 0x3941
    push si                          ; 0x3942
    mov di, word [bp + 0x6]          ; 0x3943
    mov si, word [bp + 0x8]          ; 0x3946
    jmp short @..aztec_impl_tty_wr.l2 ; 0x3949
@..aztec_impl_tty_wr.l1:
    mov bx, di                       ; 0x394b
    inc di                           ; 0x394d
    cmp byte [bx], 0xa               ; 0x394e
    jne short @..aztec_impl_tty_wr.l2 ; 0x3951
    mov ax, di                       ; 0x3953
    sub ax, word [bp + 0x6]          ; 0x3955
    push ax                          ; 0x3958
    push word [bp + 0x6]             ; 0x3959
    push word [bp + 0x4]             ; 0x395c
    call aztec_impl_write            ; 0x395f
    add sp, byte 6                   ; 0x3962
    mov ax, 1                        ; 0x3965
    push ax                          ; 0x3968
    mov ax, 0x2533                   ; 0x3969
    push ax                          ; 0x396c
    push word [bp + 0x4]             ; 0x396d
    call aztec_impl_write            ; 0x3970
    add sp, byte 6                   ; 0x3973
    mov word [bp + 0x6], di          ; 0x3976
@..aztec_impl_tty_wr.l2:
    mov ax, si                       ; 0x3979
    dec si                           ; 0x397b
    test ax, ax                      ; 0x397c
    jne short @..aztec_impl_tty_wr.l1 ; 0x397e
    cmp di, word [bp + 0x6]          ; 0x3980
    je short @..aztec_impl_tty_wr.l3 ; 0x3983
    mov ax, di                       ; 0x3985
    sub ax, word [bp + 0x6]          ; 0x3987
    push ax                          ; 0x398a
    push word [bp + 0x6]             ; 0x398b
    push word [bp + 0x4]             ; 0x398e
    call aztec_impl_write            ; 0x3991
    add sp, byte 6                   ; 0x3994
@..aztec_impl_tty_wr.l3:
    mov ax, word [bp + 0x8]          ; 0x3997
    pop si                           ; 0x399a
    pop di                           ; 0x399b
    mov sp, bp                       ; 0x399c
    pop bp                           ; 0x399e
    ret                              ; 0x399f
