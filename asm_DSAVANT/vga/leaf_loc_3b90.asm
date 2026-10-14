; auto-generated
leaf_loc_3b90:
    push ax                          ; 0x3b90
    mov ah, 0x44                     ; 0x3b91
    mov al, 0                        ; 0x3b93
    pop bx                           ; 0x3b95
    mov dx, word [cs:cseg_0201 - IMAGE_BASE] ; 0x3b96
    int 0x67 ; EMS (Expanded Memory)
    inc bx                           ; 0x3b9d
    mov ah, 0x44                     ; 0x3b9e
    mov al, 1                        ; 0x3ba0
    int 0x67 ; EMS (Expanded Memory)
    ret                              ; 0x3ba4
