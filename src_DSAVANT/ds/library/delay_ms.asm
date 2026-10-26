; auto-generated
delay_ms:
    push bp                          ; 0x36d0
    mov bp, sp                       ; 0x36d1
    cld                              ; 0x36d3
    push ds                          ; 0x36d4
    push si                          ; 0x36d5
    push cs                          ; 0x36d6
    pop ds                           ; 0x36d7
    mov bx, delay_loop_target - IMAGE_BASE ; 0x36d8
@..delay_ms.l1:
    mov cx, word [cs:loops_per_ms - IMAGE_BASE] ; 0x36db
@..delay_ms.l2:
    sub cx, byte 1                   ; 0x36e0
    jne short @..delay_ms.l3         ; 0x36e3
    nop                              ; 0x36e5
@..delay_ms.l3:
    cmp cx, word [bx]                ; 0x36e6
    jne short @..delay_ms.l2         ; 0x36e8
    dec word [bp + 4]                ; 0x36ea
    jne short @..delay_ms.l1         ; 0x36ed
    pop si                           ; 0x36ef
    pop ds                           ; 0x36f0
    mov sp, bp                       ; 0x36f1
    pop bp                           ; 0x36f3
    ret                              ; 0x36f4
