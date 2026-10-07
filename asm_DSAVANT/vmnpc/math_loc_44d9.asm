math_loc_44d9:
    int3                             ; 0x44d9
    xchg cx, ax                      ; 0x44da
    db 0xf2, 0x92 ; xchg dx, ax
    db 0xf2, 0x92 ; xchg dx, ax
    sub word [si - 0x6bd4], dx       ; 0x44df
    jge short @..math_loc_44d9.l1    ; 0x44e3
loc_44e5:
    cmp ax, strict word 6            ; 0x44e5
    jae short loc_44f2               ; 0x44e8
    xchg bx, ax                      ; 0x44ea
    shl bx, 1                        ; 0x44eb
    jmp [cs:bx - 0x6ae0]             ; 0x44ed
loc_44f2:
    jmp short loc_4486               ; 0x44f2
loc_44f4:
    cmp word [bp - 0x001a], byte 0   ; 0x44f4
    je short loc_44fd                ; 0x44f8
    jmp near loc_4141                ; 0x44fa
loc_44fd:
    mov ax, 1                        ; 0x44fd
    push ax                          ; 0x4500
    push word [bp - 0x0038]          ; 0x4501
    db 0xe8, 0x52, 0x7f ; call 0xc459
    add sp, byte 4                   ; 0x4507
    mov ax, word [bp - 0x0020]       ; 0x450a
    mov word [data_904e], ax         ; 0x450d
    mov ax, word [data_9050]         ; 0x4510
    ret                              ; 0x4513
