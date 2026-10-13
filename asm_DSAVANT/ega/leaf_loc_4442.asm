; auto-generated
leaf_loc_4442:
    push ax                          ; 0x4442
    mov ah, 0x44                     ; 0x4443
    mov al, 0                        ; 0x4445
    pop bx                           ; 0x4447
    mov dx, word [cs:cseg_0201 - IMAGE_BASE] ; 0x4448
    int 0x67 ; EMS (Expanded Memory)
    inc bx                           ; 0x444f
    mov ah, 0x44                     ; 0x4450
    mov al, 1                        ; 0x4452
    int 0x67 ; EMS (Expanded Memory)
    ret                              ; 0x4456
