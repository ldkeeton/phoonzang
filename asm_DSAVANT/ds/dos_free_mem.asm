dos_free_mem:
    push bp                          ; 0x460d
    mov bp, sp                       ; 0x460e
    push es                          ; 0x4610
    mov es, word [bp + 0x6]          ; 0x4611
    mov ah, 0x49                     ; 0x4614
    int 0x21 ; DOS free memory
    jae short @..dos_free_mem.l1     ; 0x4618
    mov ax, 0xffff                   ; 0x461a
    jmp near @..dos_free_mem.l2      ; 0x461d
@..dos_free_mem.l1:
    xor ax, ax                       ; 0x4620
@..dos_free_mem.l2:
    pop es                           ; 0x4622
    pop bp                           ; 0x4623
    ret                              ; 0x4624
