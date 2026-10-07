dos_mem_loc_3760:
    push es                          ; 0x3760
@..dos_mem_loc_3760.l1:
    sub si, byte 4                   ; 0x3761
    mov bx, word [cs:si]             ; 0x3764
    or bx, bx                        ; 0x3767
    je short @..dos_mem_loc_3760.l2  ; 0x3769
    mov bx, word [cs:si + 0x2]       ; 0x376b
    mov es, bx                       ; 0x376f
    mov ah, 0x49                     ; 0x3771
    push si                          ; 0x3773
    int 0x21 ; DOS free memory
    pop si                           ; 0x3776
    jmp short @..dos_mem_loc_3760.l1 ; 0x3777
@..dos_mem_loc_3760.l2:
    pop es                           ; 0x3779
    ret                              ; 0x377a
