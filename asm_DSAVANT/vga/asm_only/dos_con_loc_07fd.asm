; auto-generated
; asm only
dos_con_loc_07fd:
    mov ax, cs                       ; 0x07fd
    mov ds, ax                       ; 0x07ff
    mov dx, 0x90d                    ; 0x0801
    mov ah, 9                        ; 0x0804
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0808
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'SAVEAREA out of memory.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

@..dos_alloc_mem.l3:
    pop si                           ; 0x082e
    pop di                           ; 0x082f
    pop ds                           ; 0x0830
    pop es                           ; 0x0831
    mov sp, bp                       ; 0x0832
    pop bp                           ; 0x0834
    ret                              ; 0x0835
