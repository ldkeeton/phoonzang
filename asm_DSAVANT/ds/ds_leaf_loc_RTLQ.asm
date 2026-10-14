; auto-generated
ds_leaf_loc_RTLQ:
    push bp                          ; 0x36d0
    mov bp, sp                       ; 0x36d1
    cld                              ; 0x36d3
    push ds                          ; 0x36d4
    push si                          ; 0x36d5
    push cs                          ; 0x36d6
    pop ds                           ; 0x36d7
    mov bx, cseg_36ce - IMAGE_BASE   ; 0x36d8
@..ds_leaf_loc_RTLQ.l1:
    mov cx, word [cs:cseg_3672 - IMAGE_BASE] ; 0x36db
@..ds_leaf_loc_RTLQ.l2:
    sub cx, byte 1                   ; 0x36e0
    jne short @..ds_leaf_loc_RTLQ.l3 ; 0x36e3
    nop                              ; 0x36e5
@..ds_leaf_loc_RTLQ.l3:
    cmp cx, word [bx]                ; 0x36e6
    jne short @..ds_leaf_loc_RTLQ.l2 ; 0x36e8
    dec word [bp + 0x4]              ; 0x36ea
    jne short @..ds_leaf_loc_RTLQ.l1 ; 0x36ed
    pop si                           ; 0x36ef
    pop ds                           ; 0x36f0
    mov sp, bp                       ; 0x36f1
    pop bp                           ; 0x36f3
    ret                              ; 0x36f4
