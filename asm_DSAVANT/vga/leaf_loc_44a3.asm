leaf_loc_44a3:
    dec ax                           ; 0x44a3
    mov cl, 2                        ; 0x44a4
    shl ax, cl                       ; 0x44a6
    mov bx, data_0bda                ; 0x44a8
    add bx, ax                       ; 0x44ab
    mov word [bp - 0x0004], bx       ; 0x44ad
    mov ax, word [cs:bx + 0x2]       ; 0x44b0
    sub word [cs:data_0cac], ax      ; 0x44b4
    mov word [bp - 0x0006], ax       ; 0x44b9
@..leaf_loc_44a3.l1:
    mov bx, word [bp - 0x0004]       ; 0x44bc
    mov dx, word [cs:bx]             ; 0x44bf
    add dx, word [cs:data_01e1]      ; 0x44c2
    mov es, dx                       ; 0x44c7
    mov dx, word [cs:bx + 0x4]       ; 0x44c9
    add dx, word [cs:data_01e1]      ; 0x44cd
    mov ds, dx                       ; 0x44d2
    mov cx, word [cs:bx + 0x6]       ; 0x44d4
    or cx, cx                        ; 0x44d8
    je short @..leaf_loc_44a3.l3     ; 0x44da
@..leaf_loc_44a3.l2:
    push cx                          ; 0x44dc
    mov cx, 0x10                     ; 0x44dd
    xor si, si                       ; 0x44e0
    xor di, di                       ; 0x44e2
    rep movsb                        ; 0x44e4
    mov cx, ds                       ; 0x44e6
    inc cx                           ; 0x44e8
    mov ds, cx                       ; 0x44e9
    mov cx, es                       ; 0x44eb
    inc cx                           ; 0x44ed
    mov es, cx                       ; 0x44ee
    pop cx                           ; 0x44f0
    loop @..leaf_loc_44a3.l2         ; 0x44f1
    mov bx, word [bp - 0x0004]       ; 0x44f3
    mov cx, word [bp - 0x0006]       ; 0x44f6
    mov ax, word [cs:bx + 0x4]       ; 0x44f9
    sub ax, cx                       ; 0x44fd
    mov word [cs:bx], ax             ; 0x44ff
    add ax, word [cs:bx + 0x6]       ; 0x4502
    mov word [cs:bx + 0x4], ax       ; 0x4506
    mov ax, word [cs:bx + 0x6]       ; 0x450a
    mov word [cs:bx + 0x2], ax       ; 0x450e
    add bx, byte 4                   ; 0x4512
    mov word [bp - 0x0004], bx       ; 0x4515
    jmp short @..leaf_loc_44a3.l1    ; 0x4518
@..leaf_loc_44a3.l3:
    mov bx, word [bp - 0x0004]       ; 0x451a
    xor ax, ax                       ; 0x451d
    mov word [cs:bx], ax             ; 0x451f
    mov word [cs:bx + 0x2], ax       ; 0x4522
    ret                              ; 0x4526
