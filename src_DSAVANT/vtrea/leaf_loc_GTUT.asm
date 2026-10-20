; auto-generated
leaf_loc_GTUT:
    pop bx                           ; 0x9a03
    push di                          ; 0x9a04
    push es                          ; 0x9a05
    mov di, cs                       ; 0x9a06
    mov es, di                       ; 0x9a08
    mov di, bx                       ; 0x9a0a
    mov bx, cx                       ; 0x9a0c
    shl bx, 1                        ; 0x9a0e
    cld                              ; 0x9a10
    repne scasw                      ; 0x9a11
    mov cx, word [es:bx + di - 0x0004] ; 0x9a13
    pop es                           ; 0x9a17
    pop di                           ; 0x9a18
    jmp cx                           ; 0x9a19
__zdseg_9098:
__zdata_start:
    db '!%&]@#~', 0
__zdseg_90a0:
    db 0x20, 0x00
__zdseg_90a2:
    db 'V1.$$$', 0
__zdseg_90a9:
    db 'V2.$$$', 0
__zdseg_90b0:
    db 0x00
__zdseg_90b1:
    db 0x00
__zdseg_90b2:
    db 0x00
__zdseg_90b3:
    db 0x00
__zdseg_90b4:
    db 0x00
__zdseg_90b5:
    db 0x00
__zdseg_90b6:
    db 0x00
__zdseg_90b7:
    db 0x00
__zdseg_90b8:
    db 0x00
__zdseg_90b9:
    db 0x00
__zdseg_90ba:
    db 0x00
__zdseg_90bb:
    db '--------', 0
__zdseg_90c4:
    db '????????', 0
__zdseg_90cd:
    db 'V.$$$', 0
__zdseg_90d3:
    db 0x28, 0x00
__zdseg_90d5:
    db 0x25, 0x29, 0x00
__zdseg_90d8:
    db 0x28, 0x00
__zdseg_90da:
    db 0x29, 0x00
__zdseg_90dc:
    db 'V.$$$', 0
__zdseg_90e2:
    db 0x00
__zdseg_90e3:
    db 'V.$$$', 0
__zdseg_90e9:
    db 0x28, 0x00
__zdseg_90eb:
    db 0x25, 0x29, 0x00
__zdseg_90ee:
    db 'V.$$$', 0
__zdseg_90f4:
    db 'V.$$$', 0
__zdseg_90fa:
    db 'V.$$$', 0
__zdseg_9100:
    db 0x2a, 0x2a, 0x2a, 0x00
__zdseg_9104:
    db 'V.$$$', 0
__zdseg_910a:
    db 0x00, 0x00
__zdseg_910c:
    db 0x00, 0x00
__zdseg_910e:
    db 0x00, 0x00
__zdseg_9110:
    db 0x00, 0x00
__zdseg_9112:
    db 0x00, 0x00
