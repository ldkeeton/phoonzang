; auto-generated
allocate_driver_blocks:
    cmp word [bp - 2], byte 0        ; 0x36f5
    jne short .forward1              ; 0x36f9
    jmp near ds_loc_LGTQ             ; 0x36fb
.forward1:
    lea si, word [driver_block_table - IMAGE_BASE] ; 0x36fe
.back1:
    mov bx, word [cs:si]             ; 0x3702
    or bx, bx                        ; 0x3705
    je short ds_loc_LGTQ             ; 0x3707
    mov ah, 0x48                     ; 0x3709
    push si                          ; 0x370b
    int 0x21 ; DOS allocate memory
    pop si                           ; 0x370e
    jb short .forward2               ; 0x370f
    mov word [cs:si + 2], ax         ; 0x3711
    add si, byte 4                   ; 0x3715
    jmp short .back1                 ; 0x3718
.forward2:
    call free_driver_blocks          ; 0x371a
