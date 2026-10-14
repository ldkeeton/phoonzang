; auto-generated
leaf_loc_NIRQ:
    mov word [bp - 0x000c], 0xa      ; 0x44f6
    cmp word [bss_91d4], byte 0      ; 0x44fb
    jne short @..leaf_loc_NIRQ.l1    ; 0x4500
    mov ax, word [bp + 0x4]          ; 0x4502
    mov cx, 4                        ; 0x4505
    shl ax, cl                       ; 0x4508
    mov cx, word [bp - 0x0012]       ; 0x450a
    shl cx, 1                        ; 0x450d
    shl cx, 1                        ; 0x450f
    shl cx, 1                        ; 0x4511
    add ax, cx                       ; 0x4513
    mov cx, word [bp - 0x0006]       ; 0x4515
    shl cx, 1                        ; 0x4518
    shl cx, 1                        ; 0x451a
    add ax, cx                       ; 0x451c
    mov bx, ax                       ; 0x451e
    mov ax, word [bx + 0x486]        ; 0x4520
    jmp short @..leaf_loc_NIRQ.l2    ; 0x4524
@..leaf_loc_NIRQ.l1:
    mov ax, word [bp + 0x4]          ; 0x4526
    mov cx, 4                        ; 0x4529
    shl ax, cl                       ; 0x452c
    mov cx, word [bp - 0x0012]       ; 0x452e
    shl cx, 1                        ; 0x4531
    shl cx, 1                        ; 0x4533
    shl cx, 1                        ; 0x4535
    add ax, cx                       ; 0x4537
    mov cx, word [bp - 0x0006]       ; 0x4539
    shl cx, 1                        ; 0x453c
    shl cx, 1                        ; 0x453e
    add ax, cx                       ; 0x4540
    mov bx, ax                       ; 0x4542
    mov ax, word [bx + 0x4d6]        ; 0x4544
@..leaf_loc_NIRQ.l2:
    mov word [bp - 0x000e], ax       ; 0x4548
    cmp word [bss_91d4], byte 0      ; 0x454b
    jne short @..leaf_loc_NIRQ.l3    ; 0x4550
    mov ax, word [bp + 0x4]          ; 0x4552
    mov cx, 4                        ; 0x4555
    shl ax, cl                       ; 0x4558
    mov cx, word [bp - 0x0012]       ; 0x455a
    shl cx, 1                        ; 0x455d
    shl cx, 1                        ; 0x455f
    shl cx, 1                        ; 0x4561
    add ax, cx                       ; 0x4563
    mov cx, word [bp - 0x0006]       ; 0x4565
    shl cx, 1                        ; 0x4568
    shl cx, 1                        ; 0x456a
    add ax, cx                       ; 0x456c
    mov bx, ax                       ; 0x456e
    mov ax, word [bx + 0x488]        ; 0x4570
    jmp short @..leaf_loc_NIRQ.l4    ; 0x4574
@..leaf_loc_NIRQ.l3:
    mov ax, word [bp + 0x4]          ; 0x4576
    mov cx, 4                        ; 0x4579
    shl ax, cl                       ; 0x457c
    mov cx, word [bp - 0x0012]       ; 0x457e
    shl cx, 1                        ; 0x4581
    shl cx, 1                        ; 0x4583
    shl cx, 1                        ; 0x4585
    add ax, cx                       ; 0x4587
    mov cx, word [bp - 0x0006]       ; 0x4589
    shl cx, 1                        ; 0x458c
    shl cx, 1                        ; 0x458e
    add ax, cx                       ; 0x4590
    mov bx, ax                       ; 0x4592
    mov ax, word [bx + 0x4d8]        ; 0x4594
@..leaf_loc_NIRQ.l4:
    mov word [bp - 0x0010], ax       ; 0x4598
    mov ax, 7                        ; 0x459b
    cmp word [bss_91d4], byte 0      ; 0x459e
    jne short @..leaf_loc_NIRQ.l5    ; 0x45a3
    mov ax, 3                        ; 0x45a5
@..leaf_loc_NIRQ.l5:
    mov cx, 0                        ; 0x45a8
    cmp word [bp + 0x6], byte 0x0d   ; 0x45ab
    jne short @..leaf_loc_NIRQ.l6    ; 0x45af
    mov cx, 1                        ; 0x45b1
@..leaf_loc_NIRQ.l6:
    add ax, cx                       ; 0x45b4
    mov word [bp - 0x0008], ax       ; 0x45b6
    mov word [bp - 0x000a], 0        ; 0x45b9
    jmp short loc_4623               ; 0x45be
