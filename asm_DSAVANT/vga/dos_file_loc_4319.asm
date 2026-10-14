; auto-generated
dos_file_loc_4319:
    mov cx, word [bp - 0x0002]       ; 0x4319
    xor bx, bx                       ; 0x431c
@..dos_file_loc_4319.l1:
    shl al, 1                        ; 0x431e
    jb short @..dos_file_loc_4319.l4 ; 0x4320
    test word [bx], 0x8000           ; 0x4322
    jne short @..dos_file_loc_4319.l2 ; 0x4326
    mov bx, word [bx]                ; 0x4328
    jmp short @..dos_file_loc_4319.l6 ; 0x432a
@..dos_file_loc_4319.l2:
    mov bx, word [bx]                ; 0x432c
    neg bx                           ; 0x432e
    shl bx, 1                        ; 0x4330
    shl bx, 1                        ; 0x4332
@..dos_file_loc_4319.l3:
    loop @..dos_file_loc_4319.l1     ; 0x4334
    mov cx, 8                        ; 0x4336
    lodsb                            ; 0x4339
    cmp si, strict word 0x1400       ; 0x433a
    jb short @..dos_file_loc_4319.l1 ; 0x433e
    push ax                          ; 0x4340
    push di                          ; 0x4341
    push bx                          ; 0x4342
    push cx                          ; 0x4343
    mov dx, 0x400                    ; 0x4344
    mov bx, word [bp + 0xc]          ; 0x4347
    mov cx, 0x1000                   ; 0x434a
    mov ah, 0x3f                     ; 0x434d
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4351
    pop cx                           ; 0x4354
    pop bx                           ; 0x4355
    pop di                           ; 0x4356
    pop ax                           ; 0x4357
    jmp short @..dos_file_loc_4319.l1 ; 0x4358
@..dos_file_loc_4319.l4:
    test word [bx + 0x2], 0x8000     ; 0x435a
    jne short @..dos_file_loc_4319.l5 ; 0x435f
    mov bx, word [bx + 0x2]          ; 0x4361
    jmp short @..dos_file_loc_4319.l6 ; 0x4364
@..dos_file_loc_4319.l5:
    mov bx, word [bx + 0x2]          ; 0x4366
    neg bx                           ; 0x4369
    shl bx, 1                        ; 0x436b
    shl bx, 1                        ; 0x436d
    jmp short @..dos_file_loc_4319.l3 ; 0x436f
@..dos_file_loc_4319.l6:
    dec cx                           ; 0x4371
    jne short @..dos_file_loc_4319.l7 ; 0x4372
    mov cx, 8                        ; 0x4374
    lodsb                            ; 0x4377
    cmp si, strict word 0x1400       ; 0x4378
    jb short @..dos_file_loc_4319.l7 ; 0x437c
    push ax                          ; 0x437e
    push di                          ; 0x437f
    push bx                          ; 0x4380
    push cx                          ; 0x4381
    mov dx, 0x400                    ; 0x4382
    mov bx, word [bp + 0xc]          ; 0x4385
    mov cx, 0x1000                   ; 0x4388
    mov ah, 0x3f                     ; 0x438b
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x438f
    pop cx                           ; 0x4392
    pop bx                           ; 0x4393
    pop di                           ; 0x4394
    pop ax                           ; 0x4395
@..dos_file_loc_4319.l7:
    mov word [bp - 0x0002], cx       ; 0x4396
    ret                              ; 0x4399
