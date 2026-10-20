; auto-generated
leaf_loc_PVVV:
    pop bx                           ; 0x982c
    push di                          ; 0x982d
    push es                          ; 0x982e
    mov di, cs                       ; 0x982f
    mov es, di                       ; 0x9831
    mov di, bx                       ; 0x9833
    mov bx, cx                       ; 0x9835
    shl bx, 1                        ; 0x9837
    cld                              ; 0x9839
    repne scasw                      ; 0x983a
    mov cx, word [es:bx + di - 0x0004] ; 0x983c
    pop es                           ; 0x9840
    pop di                           ; 0x9841
    jmp cx                           ; 0x9842
__zdseg_9098:
__zdata_start:
    db 0x25, 0x20, 0x00
__zdseg_909b:
    db 'V.$$$', 0
__zdseg_90a1:
    db 'V.$$$', 0
__zdseg_90a7:
    db 0x2a, 0x2a, 0x2a, 0x00
__zdseg_90ab:
    db 'V.$$$', 0
__zdseg_90b1:
    db 0x20, 0x00
__zdseg_90b3:
    db 'PCVWSCRN.VGA', 0
__zdseg_90c0:
    db 0x28, 0x00
__zdseg_90c2:
    db 0x2b, 0x00
__zdseg_90c4:
    db 0x29, 0x00
__zdseg_90c6:
    db 0x2b, 0x00
__zdseg_90c8:
    db 0x2f, 0x00
__zdseg_90ca:
    db 0x20, 0x00
__zdseg_90cc:
    db 0x25, 0x00
__zdseg_90ce:
    db '1111111110', 0
__zdseg_90d9:
    db '11100000', 0
__zdseg_90e2:
    db '000000', 0
__zdseg_90e9:
    db '1111000000', 0
__zdseg_90f4:
    db '1000111100', 0
__zdseg_90ff:
    db '11101000', 0
__zdseg_9108:
    db '000000', 0
__zdseg_910f:
    db '1111000010', 0
__zdseg_911a:
    db '0001101010', 0
__zdseg_9125:
    db '11101000', 0
__zdseg_912e:
    db '000000', 0
__zdseg_9135:
    db '1111101000', 0
__zdseg_9140:
    db '1111111110', 0
__zdseg_914b:
    db '11101111', 0
__zdseg_9154:
    db '000000', 0
__zdseg_915b:
    db '1111000000', 0
__zdseg_9166:
    db '1111111110', 0
__zdseg_9171:
    db '11100111', 0
__zdseg_917a:
    db '000000', 0
__zdseg_9181:
    db '1111010000', 0
__zdseg_918c:
    db '1001110000', 0
__zdseg_9197:
    db '11100000', 0
__zdseg_91a0:
    db '000000', 0
__zdseg_91a7:
    db '1111010000', 0
__zdseg_91b2:
    db '1111111110', 0
__zdseg_91bd:
    db '11111111', 0
__zdseg_91c6:
    db '000000', 0
__zdseg_91cd:
    db '1111000010', 0
__zdseg_91d8:
    db '1001111000', 0
__zdseg_91e3:
    db '11101000', 0
__zdseg_91ec:
    db '000000', 0
__zdseg_91f3:
    db '1111000100', 0
__zdseg_91fe:
    db '1111111110', 0
__zdseg_9209:
    db '11101000', 0
__zdseg_9212:
    db '000000', 0
__zdseg_9219:
    db '1111001000', 0
__zdseg_9224:
    db '0001101010', 0
__zdseg_922f:
    db '11101000', 0
__zdseg_9238:
    db '000000', 0
__zdseg_923f:
    db '1111101010', 0
__zdseg_924a:
    db '1111111110', 0
__zdseg_9255:
    db '11101000', 0
__zdseg_925e:
    db '000000', 0
__zdseg_9265:
    db '1111101000', 0
__zdseg_9270:
    db '1111111110', 0
__zdseg_927b:
    db 0x31, 0x31, 0x31, 0x30
