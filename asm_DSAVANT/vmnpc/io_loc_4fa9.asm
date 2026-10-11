io_loc_4fa9:
    jne short @..io_loc_4fa9.l3      ; 0x4fa9
    scasw                            ; 0x4fab
    popf                             ; 0x4fac
    scasw                            ; 0x4fad
    popf                             ; 0x4fae
    jmp short @..io_loc_4fa9.l4      ; 0x4faf
    db 0xee, 0x9e, 0x3f, 0x9f
loc_4fb5:
    cmp ax, strict word 6            ; 0x4fb5
    jae short loc_4fc2               ; 0x4fb8
    xchg bx, ax                      ; 0x4fba
    shl bx, 1                        ; 0x4fbb
    jmp [cs:bx - 0x6010]             ; 0x4fbd
loc_4fc2:
    jmp short loc_4f48               ; 0x4fc2
loc_4fc4:
    cmp word [bp - 0x001a], byte 0   ; 0x4fc4
    je short loc_4fcd                ; 0x4fc8
    jmp near loc_4be7                ; 0x4fca
loc_4fcd:
    mov ax, 1                        ; 0x4fcd
    push ax                          ; 0x4fd0
    push word [bp - 0x0038]          ; 0x4fd1
    db 0xe8, 0x82, 0x74 ; call 0xc459
    add sp, byte 4                   ; 0x4fd7
    mov word [dseg_93d8], 0x8f       ; 0x4fda
    mov ax, word [bp - 0x0020]       ; 0x4fe0
    mov word [dseg_904e], ax         ; 0x4fe3
    mov ax, word [dseg_9050]         ; 0x4fe6
    ret                              ; 0x4fe9
