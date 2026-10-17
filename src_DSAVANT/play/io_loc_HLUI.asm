; auto-generated
io_loc_HLUI:
    push cx                          ; 0x00b6
    mov cx, 0xa                      ; 0x00b7
@..io_loc_HLUI.l1:
    call io_loc_GMNM                 ; 0x00ba
    cmp ax, strict word 0            ; 0x00bd
    loopne @..io_loc_HLUI.l1         ; 0x00c0
    pop cx                           ; 0x00c2
    ret                              ; 0x00c3
