; auto-generated
aztec_lmalloc:
    push bp                          ; 0x45d7
    mov bp, sp                       ; 0x45d8
    mov ax, word [bp + 0x4]          ; 0x45da
    mov dx, word [bp + 0x6]          ; 0x45dd
    test dx, dx                      ; 0x45e0
    js short @..aztec_dos20_lmalloc.badalloc ; 0x45e2
    add ax, strict word 0xf          ; 0x45e4
    adc dx, byte 0                   ; 0x45e7
    mov cx, 4                        ; 0x45ea
@..aztec_dos20_lmalloc.rshift:
    shr dx, 1                        ; 0x45ed
    rcr ax, 1                        ; 0x45ef
    loop @..aztec_dos20_lmalloc.rshift ; 0x45f1
    test dx, dx                      ; 0x45f3
    jne short @..aztec_dos20_lmalloc.badalloc ; 0x45f5
    mov bx, ax                       ; 0x45f7
    mov ah, 0x48                     ; 0x45f9
    int 0x21 ; DOS allocate memory
    jb short @..aztec_dos20_lmalloc.badalloc ; 0x45fd
    mov dx, ax                       ; 0x45ff
    mov ax, 0                        ; 0x4601
    jmp short @..aztec_dos20_lmalloc.lmret ; 0x4604
@..aztec_dos20_lmalloc.badalloc:
    mov ax, 0                        ; 0x4606
    mov dx, ax                       ; 0x4609
@..aztec_dos20_lmalloc.lmret:
    pop bp                           ; 0x460b
    ret                              ; 0x460c
aztec_lfree:
    push bp                          ; 0x460d
    mov bp, sp                       ; 0x460e
    push es                          ; 0x4610
    mov es, word [bp + 0x6]          ; 0x4611
    mov ah, 0x49                     ; 0x4614
    int 0x21 ; DOS free memory
    jae short @..aztec_dos20_lmalloc.other_return ; 0x4618
    mov ax, 0xffff                   ; 0x461a
    jmp near @..aztec_dos20_lmalloc.exit ; 0x461d
@..aztec_dos20_lmalloc.other_return:
    xor ax, ax                       ; 0x4620
@..aztec_dos20_lmalloc.exit:
    pop es                           ; 0x4622
    pop bp                           ; 0x4623
    ret                              ; 0x4624
aztec_lrealloc:
    push bp                          ; 0x4625
    mov bp, sp                       ; 0x4626
    mov ax, word [bp + 0x8]          ; 0x4628
    mov dx, word [bp + 0xa]          ; 0x462b
    mov cx, 4                        ; 0x462e
@..aztec_dos20_lmalloc.right_shift:
    shr dx, 1                        ; 0x4631
    rcr ax, 1                        ; 0x4633
    loop @..aztec_dos20_lmalloc.right_shift ; 0x4635
    mov bx, ax                       ; 0x4637
    mov ah, 0x4a                     ; 0x4639
    mov es, word [bp + 0x6]          ; 0x463b
    int 0x21 ; DOS resize memory block
    jb short @..aztec_dos20_lmalloc.failure ; 0x4640
    mov ax, word [bp + 0x4]          ; 0x4642
    mov dx, word [bp + 0x6]          ; 0x4645
@..aztec_dos20_lmalloc.return:
    pop bp                           ; 0x4648
    ret                              ; 0x4649
@..aztec_dos20_lmalloc.failure:
    xor ax, ax                       ; 0x464a
    xor dx, dx                       ; 0x464c
    jmp short @..aztec_dos20_lmalloc.return ; 0x464e
