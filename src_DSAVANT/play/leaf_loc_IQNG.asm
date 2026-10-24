; auto-generated
leaf_loc_IQNG:
    mov al, byte [cs:music_enabled - IMAGE_BASE] ; 0x016e
    cmp al, 0                        ; 0x0172
    je short @..leaf_loc_IQNG.l1     ; 0x0174
    mov al, byte [cs:stream_offset - IMAGE_BASE] ; 0x0176
    cmp al, 0                        ; 0x017a
    jne short @..leaf_loc_IQNG.l1    ; 0x017c
    mov al, 1                        ; 0x017e
@..leaf_loc_IQNG.l1:
    xor ah, ah                       ; 0x0180
    ret                              ; 0x0182
