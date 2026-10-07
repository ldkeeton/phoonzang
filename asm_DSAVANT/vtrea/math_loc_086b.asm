math_loc_086b:
    mov ax, 0                        ; 0x086b
    call ds_dispatch_f40b            ; 0x086e
    les bx, word [data_0002]         ; 0x0871
    mov ax, word [es:bx]             ; 0x0875
    mov dx, word [es:bx + 0x2]       ; 0x0878
    sub ax, word [data_908a]         ; 0x087c
    sbb dx, word [data_908c]         ; 0x0880
    push ax                          ; 0x0884
    push dx                          ; 0x0885
    mov ax, word [data_9124]         ; 0x0886
    cwd                              ; 0x0889
    mov cx, ax                       ; 0x088a
    mov bx, dx                       ; 0x088c
    pop dx                           ; 0x088e
    pop ax                           ; 0x088f
    cmp dx, bx                       ; 0x0890
    jl short @..math_loc_086b.l1     ; 0x0892
    jne short @..math_loc_086b.l2    ; 0x0894
    cmp ax, cx                       ; 0x0896
    jae short @..math_loc_086b.l2    ; 0x0898
@..math_loc_086b.l1:
    jmp short @..math_loc_086b.l4    ; 0x089a
@..math_loc_086b.l2:
    mov ax, word [data_906c]         ; 0x089c
    inc ax                           ; 0x089f
    mov cx, data_0002                ; 0x08a0
    cwd                              ; 0x08a3
    idiv cx                          ; 0x08a4
    mov word [data_906c], dx         ; 0x08a6
    mov ax, word [data_82e8]         ; 0x08aa
    inc ax                           ; 0x08ad
    cwd                              ; 0x08ae
    idiv cx                          ; 0x08af
    mov word [data_82e8], dx         ; 0x08b1
    mov ax, word [data_911e]         ; 0x08b5
    inc ax                           ; 0x08b8
    mov cx, 3                        ; 0x08b9
    cwd                              ; 0x08bc
    idiv cx                          ; 0x08bd
    mov word [data_911e], dx         ; 0x08bf
    cmp word [data_9116], byte 0     ; 0x08c3
    jl short @..math_loc_086b.l3     ; 0x08c8
    inc word [data_9116]             ; 0x08ca
@..math_loc_086b.l3:
    les bx, word [data_0002]         ; 0x08ce
    mov ax, word [es:bx]             ; 0x08d2
    mov dx, word [es:bx + 0x2]       ; 0x08d5
    mov word [data_908c], dx         ; 0x08d9
    mov word [data_908a], ax         ; 0x08dd
    call loc_07de                    ; 0x08e0
    mov ax, 1                        ; 0x08e3
    ret                              ; 0x08e6
