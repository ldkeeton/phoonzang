; auto-generated
; asm only
dos_con_loc_GIQJ:
    push ax                          ; 0x4461
    mov bx, data_46d9                ; 0x4462
    mov cx, 5                        ; 0x4465
@..dos_con_loc_GIQJ.l1:
    cmp ax, word [cs:bx]             ; 0x4468
    jae short @..dos_con_loc_GIQJ.l2 ; 0x446b
    dec word [cs:bx]                 ; 0x446d
    push ds                          ; 0x4470
    push ax                          ; 0x4471
    push bx                          ; 0x4472
    push cx                          ; 0x4473
    push dx                          ; 0x4474
    mov ax, cs                       ; 0x4475
    mov ds, ax                       ; 0x4477
    mov dx, 0x458c                   ; 0x4479
    mov ah, 9                        ; 0x447c
    int 0x21 ; DOS string output
    pop dx                           ; 0x4480
    pop cx                           ; 0x4481
    pop bx                           ; 0x4482
    pop ax                           ; 0x4483
    pop ds                           ; 0x4484
@..dos_con_loc_GIQJ.l2:
    add bx, byte 4                   ; 0x4485
    loop @..dos_con_loc_GIQJ.l1      ; 0x4488
    pop ax                           ; 0x448a
    ret                              ; 0x448b

    db 0x0d, 0x0a, 0x07
    db 'Score slot moved.', 0
    db 0x0a, 0x24

