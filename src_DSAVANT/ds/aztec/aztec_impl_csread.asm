; auto-generated
aztec_impl_csread:
    push bp                          ; 0x44b4
    mov bp, sp                       ; 0x44b5
    mov bx, word [bp + 4]            ; 0x44b7
    push ds                          ; 0x44ba
    mov dx, word [bp + 6]            ; 0x44bb
    mov cx, word [bp + 8]            ; 0x44be
    mov ax, cs                       ; 0x44c1
    mov ds, ax                       ; 0x44c3
    mov ah, 0x3f                     ; 0x44c5
    int 0x21 ; DOS read file (handle)
    pop ds                           ; 0x44c9
    jae short .forward1              ; 0x44ca
    mov word [errno], ax             ; 0x44cc
    mov ax, 0xffff                   ; 0x44cf
.forward1:
    pop bp                           ; 0x44d2
    ret                              ; 0x44d3
