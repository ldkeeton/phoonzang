; auto-generated
free_font_memory:
    push es                          ; 0x377b
    mov si, font_seg_table - IMAGE_BASE ; 0x377c
@..free_font_memory.l1:
    mov bx, word [cs:si]             ; 0x377f
    cmp bx, byte 0xff                ; 0x3782
    je short @..free_font_memory.l2  ; 0x3785
    mov es, bx                       ; 0x3787
    mov ah, 0x49                     ; 0x3789
    push si                          ; 0x378b
    int 0x21 ; DOS free memory
    pop si                           ; 0x378e
    add si, byte 2                   ; 0x378f
    jmp short @..free_font_memory.l1 ; 0x3792
@..free_font_memory.l2:
    pop es                           ; 0x3794
    ret                              ; 0x3795
