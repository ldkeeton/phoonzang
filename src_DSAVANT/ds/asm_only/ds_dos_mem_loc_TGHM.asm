; auto-generated
; asm only
ds_dos_mem_loc_TGHM:
    cmp word [bp - 0x0002], byte 0   ; 0x36f5
    jne short @..ds_dos_mem_loc_TGHM.l1 ; 0x36f9
    jmp near ds_loc_LGTQ             ; 0x36fb
@..ds_dos_mem_loc_TGHM.l1:
    lea si, word [bss_2d40]          ; 0x36fe
@..ds_dos_mem_loc_TGHM.l2:
    mov bx, word [cs:si]             ; 0x3702
    or bx, bx                        ; 0x3705
    je short ds_loc_LGTQ             ; 0x3707
    mov ah, 0x48                     ; 0x3709
    push si                          ; 0x370b
    int 0x21 ; DOS allocate memory
    pop si                           ; 0x370e
    jb short @..ds_dos_mem_loc_TGHM.l3 ; 0x370f
    mov word [cs:si + 0x2], ax       ; 0x3711
    add si, byte 4                   ; 0x3715
    jmp short @..ds_dos_mem_loc_TGHM.l2 ; 0x3718
@..ds_dos_mem_loc_TGHM.l3:
    call ds_dos_mem_loc_GSMJ         ; 0x371a
