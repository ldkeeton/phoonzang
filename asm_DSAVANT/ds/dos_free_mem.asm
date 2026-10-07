dos_free_mem:
    push bp
    mov bp, sp
    push es
    mov es, word [bp + 0x6]
    mov ah, 0x49
    int 0x21 ; DOS free memory
    jae short @..dos_free_mem.l1
    mov ax, 0xffff
    jmp near @..dos_free_mem.l2
@..dos_free_mem.l1:
    xor ax, ax
@..dos_free_mem.l2:
    pop es
    pop bp
    ret
