; auto-generated
opl_delay_long:
    push ax                          ; 0x0821
    push cx                          ; 0x0822
    push dx                          ; 0x0823
    mov dx, 0x388                    ; 0x0824
    mov cx, 0x17                     ; 0x0827
@..opl_delay_long.l1:
    in al, dx                        ; 0x082a
    loop @..opl_delay_long.l1        ; 0x082b
    pop dx                           ; 0x082d
    pop cx                           ; 0x082e
    pop ax                           ; 0x082f
    ret                              ; 0x0830
