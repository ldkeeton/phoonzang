; auto-generated
; asm only
leaf_loc_UIHG:
    push bp                          ; 0x0477
    mov bp, sp                       ; 0x0478
    push es                          ; 0x047a
    mov ax, ds                       ; 0x047b
    mov es, ax                       ; 0x047d
    mov ax, word [cs:cseg_0195 - IMAGE_BASE] ; 0x047f
    mov bx, word [bp + 0xc]          ; 0x0483
    mov word [bx], ax                ; 0x0486
    mov ax, word [cs:cseg_0197 - IMAGE_BASE] ; 0x0488
    mov bx, word [bp + 0xe]          ; 0x048c
    mov word [bx], ax                ; 0x048f
    pop es                           ; 0x0491
    mov sp, bp                       ; 0x0492
    pop bp                           ; 0x0494
    ret                              ; 0x0495
