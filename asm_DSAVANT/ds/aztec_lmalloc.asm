aztec_lmalloc:
    push bp                          ; 0x45d7
    mov bp, sp                       ; 0x45d8
    mov ax, word [bp + 0x4]          ; 0x45da
    mov dx, word [bp + 0x6]          ; 0x45dd
    test dx, dx                      ; 0x45e0
    js short @..aztec_lmalloc.badalloc ; 0x45e2
    add ax, strict word 0xf          ; 0x45e4
    adc dx, byte 0                   ; 0x45e7
    mov cx, 4                        ; 0x45ea
@..aztec_lmalloc.rshift:
    shr dx, 1                        ; 0x45ed
    rcr ax, 1                        ; 0x45ef
    loop @..aztec_lmalloc.rshift     ; 0x45f1
    test dx, dx                      ; 0x45f3
    jne short @..aztec_lmalloc.badalloc ; 0x45f5
    mov bx, ax                       ; 0x45f7
    mov ah, 0x48                     ; 0x45f9
    int 0x21 ; DOS allocate memory
    jb short @..aztec_lmalloc.badalloc ; 0x45fd
    mov dx, ax                       ; 0x45ff
    mov ax, 0                        ; 0x4601
    jmp short @..aztec_lmalloc.lmret ; 0x4604
@..aztec_lmalloc.badalloc:
    mov ax, 0                        ; 0x4606
    mov dx, ax                       ; 0x4609
@..aztec_lmalloc.lmret:
    pop bp                           ; 0x460b
    ret                              ; 0x460c
