; auto-generated
leaf_loc_KOVG:
    cmp word [bp + 0x4], byte 4      ; 0x4431
    jl short @..leaf_loc_KOVG.l1     ; 0x4435
    jmp near @..leaf_loc_KOVG.l16    ; 0x4437
@..leaf_loc_KOVG.l1:
    cmp word [bp + 0x8], byte 1      ; 0x443a
    je short @..leaf_loc_KOVG.l2     ; 0x443e
    cmp word [bp + 0x8], byte 3      ; 0x4440
    jne short @..leaf_loc_KOVG.l3    ; 0x4444
@..leaf_loc_KOVG.l2:
    mov ax, 0                        ; 0x4446
    jmp short @..leaf_loc_KOVG.l4    ; 0x4449
@..leaf_loc_KOVG.l3:
    mov ax, 1                        ; 0x444b
@..leaf_loc_KOVG.l4:
    mov word [bp - 0x0012], ax       ; 0x444e
    mov ax, 0                        ; 0x4451
    cmp word [bp + 0x8], byte 2      ; 0x4454
    jle short @..leaf_loc_KOVG.l5    ; 0x4458
    mov ax, 1                        ; 0x445a
@..leaf_loc_KOVG.l5:
    mov word [bp - 0x0006], ax       ; 0x445d
    mov word [bp - 0x000c], 0xffff   ; 0x4460
    mov ax, word [bp + 0x6]          ; 0x4465
    jmp near @..leaf_loc_KOVG.l14    ; 0x4468
leaf_loc_446b:
    mov word [bp - 0x000c], 9        ; 0x446b
    mov ax, word [bp + 0x4]          ; 0x4470
    mov cx, 4                        ; 0x4473
    shl ax, cl                       ; 0x4476
    mov cx, word [bp - 0x0012]       ; 0x4478
    shl cx, 1                        ; 0x447b
    shl cx, 1                        ; 0x447d
    shl cx, 1                        ; 0x447f
    add ax, cx                       ; 0x4481
    mov cx, word [bp - 0x0006]       ; 0x4483
    shl cx, 1                        ; 0x4486
    shl cx, 1                        ; 0x4488
    add ax, cx                       ; 0x448a
    mov bx, ax                       ; 0x448c
    mov ax, word [bx + 0x3e6]        ; 0x448e
    mov word [bp - 0x000e], ax       ; 0x4492
    mov ax, word [bx + 0x3e8]        ; 0x4495
    mov word [bp - 0x0010], ax       ; 0x4499
    mov word [bp - 0x0008], 4        ; 0x449c
    mov ax, word [bss_82e8]          ; 0x44a1
    add ax, strict word 5            ; 0x44a4
    mov word [bp - 0x000a], ax       ; 0x44a7
    jmp near @..leaf_loc_KOVG.l15    ; 0x44aa
leaf_loc_44ad:
    mov word [bp - 0x000c], 9        ; 0x44ad
    mov ax, word [bp + 0x4]          ; 0x44b2
    mov cx, 4                        ; 0x44b5
    shl ax, cl                       ; 0x44b8
    mov cx, word [bp - 0x0012]       ; 0x44ba
    shl cx, 1                        ; 0x44bd
    shl cx, 1                        ; 0x44bf
    shl cx, 1                        ; 0x44c1
    add ax, cx                       ; 0x44c3
    mov cx, word [bp - 0x0006]       ; 0x44c5
    shl cx, 1                        ; 0x44c8
    shl cx, 1                        ; 0x44ca
    add ax, cx                       ; 0x44cc
    mov bx, ax                       ; 0x44ce
    mov ax, word [bx + 0x436]        ; 0x44d0
    mov word [bp - 0x000e], ax       ; 0x44d4
    mov ax, word [bx + 0x438]        ; 0x44d7
    mov word [bp - 0x0010], ax       ; 0x44db
    mov word [bp - 0x0008], 9        ; 0x44de
    mov ax, 0                        ; 0x44e3
    cmp word [bss_82e8], byte 0      ; 0x44e6
    je short @..leaf_loc_KOVG.l6     ; 0x44eb
    mov ax, 0xa                      ; 0x44ed
@..leaf_loc_KOVG.l6:
    mov word [bp - 0x000a], ax       ; 0x44f0
    jmp near @..leaf_loc_KOVG.l15    ; 0x44f3
leaf_loc_44f6:
    mov word [bp - 0x000c], 0xa      ; 0x44f6
    cmp word [bss_91d4], byte 0      ; 0x44fb
    jne short @..leaf_loc_KOVG.l7    ; 0x4500
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
    jmp short @..leaf_loc_KOVG.l8    ; 0x4524
@..leaf_loc_KOVG.l7:
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
@..leaf_loc_KOVG.l8:
    mov word [bp - 0x000e], ax       ; 0x4548
    cmp word [bss_91d4], byte 0      ; 0x454b
    jne short @..leaf_loc_KOVG.l9    ; 0x4550
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
    jmp short @..leaf_loc_KOVG.l10   ; 0x4574
@..leaf_loc_KOVG.l9:
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
@..leaf_loc_KOVG.l10:
    mov word [bp - 0x0010], ax       ; 0x4598
    mov ax, 7                        ; 0x459b
    cmp word [bss_91d4], byte 0      ; 0x459e
    jne short @..leaf_loc_KOVG.l11   ; 0x45a3
    mov ax, 3                        ; 0x45a5
@..leaf_loc_KOVG.l11:
    mov cx, 0                        ; 0x45a8
    cmp word [bp + 0x6], byte 0x0d   ; 0x45ab
    jne short @..leaf_loc_KOVG.l12   ; 0x45af
    mov cx, 1                        ; 0x45b1
@..leaf_loc_KOVG.l12:
    add ax, cx                       ; 0x45b4
    mov word [bp - 0x0008], ax       ; 0x45b6
    mov word [bp - 0x000a], 0        ; 0x45b9
    jmp short @..leaf_loc_KOVG.l15   ; 0x45be
leaf_loc_45c0:
    mov word [bp - 0x000c], 0xa      ; 0x45c0
    mov ax, word [bp + 0x4]          ; 0x45c5
    mov cx, 4                        ; 0x45c8
    shl ax, cl                       ; 0x45cb
    mov cx, word [bp - 0x0012]       ; 0x45cd
    shl cx, 1                        ; 0x45d0
    shl cx, 1                        ; 0x45d2
    shl cx, 1                        ; 0x45d4
    add ax, cx                       ; 0x45d6
    mov cx, word [bp - 0x0006]       ; 0x45d8
    shl cx, 1                        ; 0x45db
    shl cx, 1                        ; 0x45dd
    add ax, cx                       ; 0x45df
    mov bx, ax                       ; 0x45e1
    mov ax, word [bx + 0x526]        ; 0x45e3
    mov word [bp - 0x000e], ax       ; 0x45e7
    mov ax, word [bx + 0x528]        ; 0x45ea
    mov word [bp - 0x0010], ax       ; 0x45ee
    mov word [bp - 0x0008], 0xc      ; 0x45f1
    mov ax, 0xe                      ; 0x45f6
    cmp word [bp + 0x6], byte 0x0e   ; 0x45f9
    jne short @..leaf_loc_KOVG.l13   ; 0x45fd
    mov ax, 0xd                      ; 0x45ff
@..leaf_loc_KOVG.l13:
    mov word [bp - 0x000a], ax       ; 0x4602
    jmp short @..leaf_loc_KOVG.l15   ; 0x4605
jumptable_4607:
    dw leaf_loc_446b - IMAGE_BASE + __zres_end ; 0x4607
    dw leaf_loc_44ad - IMAGE_BASE + __zres_end ; 0x4609
    dw leaf_loc_44f6 - IMAGE_BASE + __zres_end ; 0x460b
    dw leaf_loc_44f6 - IMAGE_BASE + __zres_end ; 0x460d
    dw leaf_loc_45c0 - IMAGE_BASE + __zres_end ; 0x460f
    dw leaf_loc_45c0 - IMAGE_BASE + __zres_end ; 0x4611
@..leaf_loc_KOVG.l14:
    sub ax, strict word 0xa          ; 0x4613
    cmp ax, strict word 6            ; 0x4616
    jae short @..leaf_loc_KOVG.l15   ; 0x4619
    xchg bx, ax                      ; 0x461b
    shl bx, 1                        ; 0x461c
    jmp [cs:bx + jumptable_4607 - IMAGE_BASE + __zres_end] ; 0x461e
@..leaf_loc_KOVG.l15:
    cmp word [bp - 0x000c], byte 0xff ; 0x4623
    je short @..leaf_loc_KOVG.l16    ; 0x4627
    mov ax, 3                        ; 0x4629
    push ax                          ; 0x462c
    mov ax, 1                        ; 0x462d
    push ax                          ; 0x4630
    push word [bp - 0x0006]          ; 0x4631
    mov ax, word [bp + 0x4]          ; 0x4634
    shl ax, 1                        ; 0x4637
    mov bx, ax                       ; 0x4639
    push word [bx + 0x576]           ; 0x463b
    push word [bp + 0x4]             ; 0x463f
    mov ax, 0xf8                     ; 0x4642
    push ax                          ; 0x4645
    mov ax, 0x48                     ; 0x4646
    push ax                          ; 0x4649
    mov ax, 0                        ; 0x464a
    push ax                          ; 0x464d
    push ax                          ; 0x464e
    push word [bp - 0x000a]          ; 0x464f
    push word [bp - 0x0008]          ; 0x4652
    push word [bp - 0x0010]          ; 0x4655
    push word [bp - 0x000e]          ; 0x4658
    push word [bp - 0x000c]          ; 0x465b
    call api_idx_0004_OVUO           ; 0x465e
    add sp, byte 0x1c                ; 0x4661
@..leaf_loc_KOVG.l16:
    ret                              ; 0x4664
