mouse_set_pos_3:
    push bp                          ; 0x34c0
    mov bp, sp                       ; 0x34c1
    sub sp, byte 0x0a                ; 0x34c3
    push ds                          ; 0x34c6
    push es                          ; 0x34c7
    push si                          ; 0x34c8
    push di                          ; 0x34c9
    mov ax, ds                       ; 0x34ca
    mov es, ax                       ; 0x34cc
    cmp byte [cs:data_0228], 1       ; 0x34ce
    je short @..mouse_set_pos_3.l1   ; 0x34d4
    jmp near @..mouse_set_pos_3.l9   ; 0x34d6
@..mouse_set_pos_3.l1:
    mov ax, word [bp + 0xc]          ; 0x34d9
    shl ax, 1                        ; 0x34dc
    mov word [bp - 0x0002], ax       ; 0x34de
    mov ax, word [bp + 0xe]          ; 0x34e1
    mov word [bp - 0x0004], ax       ; 0x34e4
    mov cx, word [cs:data_1bd9]      ; 0x34e7
    shl cx, 1                        ; 0x34ec
    mov dx, word [cs:data_1bdb]      ; 0x34ee
    mov word [bp - 0x0006], cx       ; 0x34f3
    mov word [bp - 0x0008], dx       ; 0x34f6
@..mouse_set_pos_3.l2:
    mov cx, word [bp - 0x0006]       ; 0x34f9
    mov dx, word [bp - 0x0008]       ; 0x34fc
    cmp cx, word [bp - 0x0002]       ; 0x34ff
    jne short @..mouse_set_pos_3.l3  ; 0x3502
    cmp dx, word [bp - 0x0004]       ; 0x3504
    jne short @..mouse_set_pos_3.l3  ; 0x3507
    jmp short @..mouse_set_pos_3.l8  ; 0x3509
@..mouse_set_pos_3.l3:
    cmp cx, word [bp - 0x0002]       ; 0x350b
    je short @..mouse_set_pos_3.l5   ; 0x350e
    js short @..mouse_set_pos_3.l4   ; 0x3510
    sub word [bp - 0x0006], byte 2   ; 0x3512
    jmp short @..mouse_set_pos_3.l5  ; 0x3516
@..mouse_set_pos_3.l4:
    add word [bp - 0x0006], byte 2   ; 0x3518
@..mouse_set_pos_3.l5:
    mov cx, word [bp - 0x0006]       ; 0x351c
    cmp dx, word [bp - 0x0004]       ; 0x351f
    je short @..mouse_set_pos_3.l7   ; 0x3522
    js short @..mouse_set_pos_3.l6   ; 0x3524
    sub word [bp - 0x0008], byte 1   ; 0x3526
    jmp short @..mouse_set_pos_3.l7  ; 0x352a
@..mouse_set_pos_3.l6:
    add word [bp - 0x0008], byte 1   ; 0x352c
@..mouse_set_pos_3.l7:
    mov dx, word [bp - 0x0008]       ; 0x3530
    mov ax, cs                       ; 0x3533
    push ax                          ; 0x3535
    mov ax, 0                        ; 0x3536
    call math_loc_2a4f               ; 0x3539
    mov cx, word [bp - 0x0006]       ; 0x353c
    mov dx, word [bp - 0x0008]       ; 0x353f
    mov ax, 4                        ; 0x3542
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]         ; 0x3547
    or ax, ax                        ; 0x354a
    je short @..mouse_set_pos_3.l2   ; 0x354c
    push ax                          ; 0x354e
    call far [cs:data_01fb]          ; 0x354f
    pop ax                           ; 0x3554
    jmp short @..mouse_set_pos_3.l2  ; 0x3555
@..mouse_set_pos_3.l8:
    mov cx, word [bp - 0x0002]       ; 0x3557
    mov dx, word [bp - 0x0004]       ; 0x355a
    mov ax, 4                        ; 0x355d
    int 0x33 ; BIOS mouse
    mov byte [cs:data_0226], 0       ; 0x3562
@..mouse_set_pos_3.l9:
    pop di                           ; 0x3568
    pop si                           ; 0x3569
    pop es                           ; 0x356a
    pop ds                           ; 0x356b
    mov sp, bp                       ; 0x356c
    pop bp                           ; 0x356e
    ret                              ; 0x356f
