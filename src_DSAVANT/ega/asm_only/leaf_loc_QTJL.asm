; auto-generated
; asm only
leaf_loc_QTJL:
    and di, strict word 0x3fff       ; 0x145c
    and si, strict word 0x3fff       ; 0x1460
    mov ah, 0x44                     ; 0x1464
    mov al, 0                        ; 0x1466
    mov bx, word [cs:cseg_1390 - IMAGE_BASE] ; 0x1468
    mov dx, word [cs:cseg_0101 - IMAGE_BASE] ; 0x146d
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, word [cs:cseg_138e - IMAGE_BASE] ; 0x1474
    je short @..leaf_loc_QTJL.l1     ; 0x1479
    or si, strict word 0x4000        ; 0x147b
    mov ah, 0x44                     ; 0x147f
    mov al, 1                        ; 0x1481
    mov bx, word [cs:cseg_138e - IMAGE_BASE] ; 0x1483
    mov dx, word [cs:cseg_0101 - IMAGE_BASE] ; 0x1488
    int 0x67 ; EMS (Expanded Memory)
@..leaf_loc_QTJL.l1:
    ret                              ; 0x148f
