; auto-generated
leaf_loc_VJPL:
    cmp word [bp + 0x4], byte 4      ; 0x4431
    jl short @..leaf_loc_VJPL.l34    ; 0x4435
    jmp near loc_4664                ; 0x4437
@..leaf_loc_VJPL.l34:
    cmp word [bp + 0x8], byte 1      ; 0x443a
    je short @..leaf_loc_VJPL.l35    ; 0x443e
    cmp word [bp + 0x8], byte 3      ; 0x4440
    jne short @..leaf_loc_VJPL.l36   ; 0x4444
@..leaf_loc_VJPL.l35:
    mov ax, 0                        ; 0x4446
    jmp short @..leaf_loc_VJPL.l37   ; 0x4449
@..leaf_loc_VJPL.l36:
    mov ax, 1                        ; 0x444b
@..leaf_loc_VJPL.l37:
    mov word [bp - 0x0012], ax       ; 0x444e
    mov ax, 0                        ; 0x4451
    cmp word [bp + 0x8], byte 2      ; 0x4454
    jle short @..leaf_loc_VJPL.l38   ; 0x4458
    mov ax, 1                        ; 0x445a
@..leaf_loc_VJPL.l38:
    mov word [bp - 0x0006], ax       ; 0x445d
    mov word [bp - 0x000c], 0xffff   ; 0x4460
    mov ax, word [bp + 0x6]          ; 0x4465
    jmp near @..leaf_loc_VJPL.l39    ; 0x4468
