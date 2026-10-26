; auto-generated
opl_delay_short:
    push ax                          ; 0x0831
    push cx                          ; 0x0832
    push dx                          ; 0x0833
    mov dx, 0x388                    ; 0x0834
    mov cx, 4                        ; 0x0837
.back1:
    in al, dx                        ; 0x083a
    loop .back1                      ; 0x083b
    pop dx                           ; 0x083d
    pop cx                           ; 0x083e
    pop ax                           ; 0x083f
    ret                              ; 0x0840
