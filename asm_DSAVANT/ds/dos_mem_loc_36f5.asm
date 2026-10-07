dos_mem_loc_36f5:
    cmp word [bp - 0x0002], byte 0   ; 0x36f5
    jne short @..dos_mem_loc_36f5.l1 ; 0x36f9
    jmp near loc_372d                ; 0x36fb
@..dos_mem_loc_36f5.l1:
    lea si, word [data_2d40]         ; 0x36fe
@..dos_mem_loc_36f5.l2:
    mov bx, word [cs:si]             ; 0x3702
    or bx, bx                        ; 0x3705
    je short loc_372d                ; 0x3707
    mov ah, 0x48                     ; 0x3709
    push si                          ; 0x370b
    int 0x21 ; DOS allocate memory
    pop si                           ; 0x370e
    jb short @..dos_mem_loc_36f5.l3  ; 0x370f
    mov word [cs:si + 0x2], ax       ; 0x3711
    add si, byte 4                   ; 0x3715
    jmp short @..dos_mem_loc_36f5.l2 ; 0x3718
@..dos_mem_loc_36f5.l3:
    call dos_mem_loc_3760            ; 0x371a
