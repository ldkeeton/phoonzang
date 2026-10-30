; auto-generated
leaf_loc_TPOL:
    and di, strict word 0x3fff
    and si, strict word 0x3fff
    mov ah, 0x44
    mov al, 0
    mov bx, word [cs:ems_compact_dest_page - IMAGE_BASE]
    mov dx, word [cs:cseg_0101 - IMAGE_BASE]
    int 0x67 ; EMS (Expanded Memory)
    cmp bx, word [cs:ems_compact_source_page - IMAGE_BASE]
    je short .return1
    or si, strict word 0x4000
    mov ah, 0x44
    mov al, 1
    mov bx, word [cs:ems_compact_source_page - IMAGE_BASE]
    mov dx, word [cs:cseg_0101 - IMAGE_BASE]
    int 0x67 ; EMS (Expanded Memory)
.return1:
    ret
