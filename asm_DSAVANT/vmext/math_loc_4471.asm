math_loc_4471:
    rcl word [si - 0x6e91], cl       ; 0x4471
    into                             ; 0x4475
    xchg cx, ax                      ; 0x4476
    cmp ax, 0xf092                   ; 0x4477
    xchg dx, ax                      ; 0x447a
    jo short @..math_loc_4471.l1     ; 0x447b
    salc                             ; 0x447d
    xchg bx, ax                      ; 0x447e
loc_447f:
    cmp ax, strict word 7            ; 0x447f
    jae short loc_448c               ; 0x4482
    xchg bx, ax                      ; 0x4484
    shl bx, 1                        ; 0x4485
    jmp [cs:bx - 0x6b48]             ; 0x4487
loc_448c:
    mov word [data_91aa], 0          ; 0x448c
loc_4492:
    mov ax, word [data_91aa]         ; 0x4492
    cmp ax, word [data_9b08]         ; 0x4495
    jl short loc_449e                ; 0x4499
    jmp near loc_4d6c                ; 0x449b
loc_449e:
    mov ax, word [data_8f46]         ; 0x449e
    add ax, word [data_8f44]         ; 0x44a1
    add ax, word [data_82ee]         ; 0x44a5
    mov cx, ax                       ; 0x44a9
    mov ax, word [data_91aa]         ; 0x44ab
    add cx, ax                       ; 0x44ae
    mov ax, cx                       ; 0x44b0
    mov cx, 2                        ; 0x44b2
    cwd                              ; 0x44b5
    idiv cx                          ; 0x44b6
    mov word [data_91a4], dx         ; 0x44b8
    mov ax, 1                        ; 0x44bc
    push ax                          ; 0x44bf
    mov ax, 0                        ; 0x44c0
    push ax                          ; 0x44c3
    lea ax, word [bp - 0x0012]       ; 0x44c4
    push ax                          ; 0x44c7
    lea ax, word [bp - 0x0010]       ; 0x44c8
    push ax                          ; 0x44cb
    lea ax, word [bp - 0x000e]       ; 0x44cc
    push ax                          ; 0x44cf
    lea ax, word [bp - 0x000c]       ; 0x44d0
    push ax                          ; 0x44d3
    lea ax, word [bp - 0x000a]       ; 0x44d4
    push ax                          ; 0x44d7
    call loc_1963                    ; 0x44d8
    add sp, byte 0x0e                ; 0x44db
    test ax, ax                      ; 0x44de
    je short loc_4546                ; 0x44e0
    mov ax, word [data_91a8]         ; 0x44e2
    mov cx, 2                        ; 0x44e5
    cwd                              ; 0x44e8
    idiv cx                          ; 0x44e9
    mov ax, dx                       ; 0x44eb
    cmp ax, strict word 1            ; 0x44ed
    jne short loc_4535               ; 0x44f0
    mov ax, word [data_91a8]         ; 0x44f2
    cmp ax, strict word 5            ; 0x44f5
    je short loc_451f                ; 0x44f8
    cmp word [data_9188], byte 0     ; 0x44fa
    je short loc_4509                ; 0x44ff
    mov word [data_9b0a], 0          ; 0x4501
    jmp short loc_451d               ; 0x4507
loc_4509:
    mov ax, 5                        ; 0x4509
    imul word [data_91aa]            ; 0x450c
    mov bx, ax                       ; 0x4510
    mov byte [bx - 0x6e52], 1        ; 0x4512
    mov word [data_9b0a], 4          ; 0x4517
loc_451d:
    jmp short loc_4533               ; 0x451d
loc_451f:
    mov ax, 5                        ; 0x451f
    imul word [data_91aa]            ; 0x4522
    mov bx, ax                       ; 0x4526
    mov byte [bx - 0x6e52], 3        ; 0x4528
    mov word [data_9b0a], 0          ; 0x452d
loc_4533:
    jmp short loc_453b               ; 0x4533
loc_4535:
    mov word [data_9b0a], 2          ; 0x4535
loc_453b:
    mov ax, word [data_9b0a]         ; 0x453b
    mov word [data_9b0c], ax         ; 0x453e
    mov word [data_9b0e], ax         ; 0x4541
    jmp short loc_459f               ; 0x4544
loc_4546:
    mov ax, 0                        ; 0x4546
    push ax                          ; 0x4549
    push word [bp - 0x0012]          ; 0x454a
    push word [bp - 0x0010]          ; 0x454d
    push word [bp - 0x000e]          ; 0x4550
    push word [bp - 0x000c]          ; 0x4553
    push word [bp - 0x000a]          ; 0x4556
    call api_idx_0008_3              ; 0x4559
    add sp, byte 0x0c                ; 0x455c
    mov word [data_9b0a], ax         ; 0x455f
    mov ax, 0                        ; 0x4562
    push ax                          ; 0x4565
    push word [bp - 0x0012]          ; 0x4566
    push word [bp - 0x0010]          ; 0x4569
    push word [bp - 0x000e]          ; 0x456c
    push word [bp - 0x000c]          ; 0x456f
    push word [bp - 0x000a]          ; 0x4572
    push ax                          ; 0x4575
    call api_idx_0008_4              ; 0x4576
    add sp, byte 0x0e                ; 0x4579
    mov word [data_9b0c], ax         ; 0x457c
    mov ax, 0                        ; 0x457f
    push ax                          ; 0x4582
    push word [bp - 0x0012]          ; 0x4583
    push word [bp - 0x0010]          ; 0x4586
    push word [bp - 0x000e]          ; 0x4589
    push word [bp - 0x000c]          ; 0x458c
    push word [bp - 0x000a]          ; 0x458f
    mov ax, 2                        ; 0x4592
    push ax                          ; 0x4595
    call api_idx_0008_4              ; 0x4596
    add sp, byte 0x0e                ; 0x4599
    mov word [data_9b0e], ax         ; 0x459c
loc_459f:
    mov ax, 0xffff                   ; 0x459f
    push ax                          ; 0x45a2
    push word [bp - 0x0012]          ; 0x45a3
    push word [bp - 0x0010]          ; 0x45a6
    push word [bp - 0x000e]          ; 0x45a9
    push word [bp - 0x000c]          ; 0x45ac
    push word [bp - 0x000a]          ; 0x45af
    call api_idx_0008_3              ; 0x45b2
    add sp, byte 0x0c                ; 0x45b5
    mov word [data_9b10], ax         ; 0x45b8
    mov ax, 1                        ; 0x45bb
    push ax                          ; 0x45be
    push word [bp - 0x0012]          ; 0x45bf
    push word [bp - 0x0010]          ; 0x45c2
    push word [bp - 0x000e]          ; 0x45c5
    push word [bp - 0x000c]          ; 0x45c8
    push word [bp - 0x000a]          ; 0x45cb
    call api_idx_0008_3              ; 0x45ce
    add sp, byte 0x0c                ; 0x45d1
    mov word [data_9b12], ax         ; 0x45d4
    cmp word [data_91aa], byte 1     ; 0x45d7
    jle short loc_4658               ; 0x45dc
    mov ax, 0xfffe                   ; 0x45de
    push ax                          ; 0x45e1
    push word [bp - 0x0012]          ; 0x45e2
    push word [bp - 0x0010]          ; 0x45e5
    push word [bp - 0x000e]          ; 0x45e8
    push word [bp - 0x000c]          ; 0x45eb
    push word [bp - 0x000a]          ; 0x45ee
    call api_idx_0008_3              ; 0x45f1
    add sp, byte 0x0c                ; 0x45f4
    mov word [data_9b14], ax         ; 0x45f7
    mov ax, 2                        ; 0x45fa
    push ax                          ; 0x45fd
    push word [bp - 0x0012]          ; 0x45fe
    push word [bp - 0x0010]          ; 0x4601
    push word [bp - 0x000e]          ; 0x4604
    push word [bp - 0x000c]          ; 0x4607
    push word [bp - 0x000a]          ; 0x460a
    call api_idx_0008_3              ; 0x460d
    add sp, byte 0x0c                ; 0x4610
    mov word [data_9b16], ax         ; 0x4613
    mov ax, 0xffff                   ; 0x4616
    push ax                          ; 0x4619
    push word [bp - 0x0012]          ; 0x461a
    push word [bp - 0x0010]          ; 0x461d
    push word [bp - 0x000e]          ; 0x4620
    push word [bp - 0x000c]          ; 0x4623
    push word [bp - 0x000a]          ; 0x4626
    mov ax, 0                        ; 0x4629
    push ax                          ; 0x462c
    call api_idx_0008_4              ; 0x462d
    add sp, byte 0x0e                ; 0x4630
    mov word [data_9b18], ax         ; 0x4633
    mov ax, 1                        ; 0x4636
    push ax                          ; 0x4639
    push word [bp - 0x0012]          ; 0x463a
    push word [bp - 0x0010]          ; 0x463d
    push word [bp - 0x000e]          ; 0x4640
    push word [bp - 0x000c]          ; 0x4643
    push word [bp - 0x000a]          ; 0x4646
    mov ax, 2                        ; 0x4649
    push ax                          ; 0x464c
    call api_idx_0008_4              ; 0x464d
    add sp, byte 0x0e                ; 0x4650
    mov word [data_9b1a], ax         ; 0x4653
    jmp short loc_4670               ; 0x4656
loc_4658:
    mov word [data_9b14], 0          ; 0x4658
    mov word [data_9b16], 0          ; 0x465e
    mov word [data_9b18], 0          ; 0x4664
    mov word [data_9b1a], 0          ; 0x466a
