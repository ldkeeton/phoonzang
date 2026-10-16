; auto-generated
leaf_loc_GHQS:
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
    jne short @..leaf_loc_GHQS.l1    ; 0x45fd
    mov ax, 0xd                      ; 0x45ff
@..leaf_loc_GHQS.l1:
    mov word [bp - 0x000a], ax       ; 0x4602
    jmp short loc_LIQJ               ; 0x4605
jumptable_4607:
    dw leaf_loc_URUM - IMAGE_BASE + 0x5055     ; 0x4607
    dw leaf_loc_JNNQ - IMAGE_BASE + 0x5055     ; 0x4609
    dw leaf_loc_MGPR - IMAGE_BASE + 0x5055     ; 0x460b
    dw leaf_loc_MGPR - IMAGE_BASE + 0x5055     ; 0x460d
    dw leaf_loc_GHQS - IMAGE_BASE + 0x5055     ; 0x460f
    dw leaf_loc_GHQS - IMAGE_BASE + 0x5055     ; 0x4611
@..leaf_loc_RSTT.l39:
    sub ax, strict word 0xa          ; 0x4613
    cmp ax, strict word 6            ; 0x4616
    jae short loc_LIQJ               ; 0x4619
    xchg bx, ax                      ; 0x461b
    shl bx, 1                        ; 0x461c
    jmp [cs:bx - 0x69b2]             ; 0x461e
loc_LIQJ:
    cmp word [bp - 0x000c], byte 0xff ; 0x4623
    je short loc_PLIR_4664           ; 0x4627
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
loc_PLIR_4664:
    ret                              ; 0x4664
