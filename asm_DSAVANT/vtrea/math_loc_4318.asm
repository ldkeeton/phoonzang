math_loc_4318:
    mov ax, 0                        ; 0x4318
    call ds_dispatch_f40b            ; 0x431b
    cmp word [bp + 0x8], byte 1      ; 0x431e
    jne short @..math_loc_4318.l3    ; 0x4322
    cmp word [bp + 0x6], byte 0      ; 0x4324
    jle short @..math_loc_4318.l1    ; 0x4328
    mov ax, word [bp + 0x4]          ; 0x432a
    sub word [bp + 0x6], ax          ; 0x432d
    jmp short @..math_loc_4318.l2    ; 0x4330
@..math_loc_4318.l1:
    mov ax, 0                        ; 0x4332
    sub ax, word [bp + 0x4]          ; 0x4335
    cmp ax, word [bp + 0x6]          ; 0x4338
    jge short @..math_loc_4318.l2    ; 0x433b
    mov word [bp + 0x6], ax          ; 0x433d
@..math_loc_4318.l2:
    jmp short @..math_loc_4318.l5    ; 0x4340
@..math_loc_4318.l3:
    cmp word [bp + 0x8], byte 0      ; 0x4342
    jne short @..math_loc_4318.l5    ; 0x4346
    cmp word [bp + 0x6], byte 0      ; 0x4348
    jge short @..math_loc_4318.l4    ; 0x434c
    mov ax, word [bp + 0x4]          ; 0x434e
    add word [bp + 0x6], ax          ; 0x4351
    jmp short @..math_loc_4318.l5    ; 0x4354
@..math_loc_4318.l4:
    mov ax, word [bp + 0x6]          ; 0x4356
    cmp ax, word [bp + 0x4]          ; 0x4359
    jge short @..math_loc_4318.l5    ; 0x435c
    mov ax, word [bp + 0x4]          ; 0x435e
    mov word [bp + 0x6], ax          ; 0x4361
@..math_loc_4318.l5:
    mov ax, word [bp + 0x6]          ; 0x4364
    ret                              ; 0x4367
