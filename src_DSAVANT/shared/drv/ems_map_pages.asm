; auto-generated
ems_map_pages:
    push ax
    mov ah, 0x44
    mov al, 0
    pop bx
    mov dx, word [cs:ems_mapping_handle - IMAGE_BASE]
    int 0x67 ; EMS (Expanded Memory)
    inc bx
    mov ah, 0x44
    mov al, 1
    int 0x67 ; EMS (Expanded Memory)
    ret
