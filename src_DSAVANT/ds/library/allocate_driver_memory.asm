; auto-generated
allocate_driver_memory:
    cmp word [bp - 0x0002], byte 0   ; 0x36f5
    jne short @..allocate_driver_memory.l1 ; 0x36f9
    jmp near ds_loc_LGTQ             ; 0x36fb
@..allocate_driver_memory.l1:
    lea si, word [cseg_2f40 - IMAGE_BASE] ; 0x36fe
@..allocate_driver_memory.l2:
    mov bx, word [cs:si]             ; 0x3702
    or bx, bx                        ; 0x3705
    je short ds_loc_LGTQ             ; 0x3707
    mov ah, 0x48                     ; 0x3709
    push si                          ; 0x370b
    int 0x21 ; DOS allocate memory
    pop si                           ; 0x370e
    jb short @..allocate_driver_memory.l3 ; 0x370f
    mov word [cs:si + 0x2], ax       ; 0x3711
    add si, byte 4                   ; 0x3715
    jmp short @..allocate_driver_memory.l2 ; 0x3718
@..allocate_driver_memory.l3:
    call ds_dos_mem_loc_GSMJ         ; 0x371a
