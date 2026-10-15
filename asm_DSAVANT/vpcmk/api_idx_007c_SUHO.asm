; auto-generated
api_idx_007c_SUHO:
    mov ax, 0xff84                   ; 0x4585
    call aztec_csav                  ; 0x4588
    push word [bp + 0x4]             ; 0x458b
    call api_idx_0002_TTLK           ; 0x458e
    pop cx                           ; 0x4591
    mov word [bp - 0x0004], 0        ; 0x4592
    mov word [bp - 0x0002], 0        ; 0x4597
@..api_idx_007c_SUHO.l1:
    mov ax, word [bp - 0x0002]       ; 0x459c
    shl ax, 1                        ; 0x459f
    mov bx, ax                       ; 0x45a1
    cmp word [bx - 0x6892], byte 1   ; 0x45a3
    jne short @..api_idx_007c_SUHO.l2 ; 0x45a8
    mov ax, 1                        ; 0x45aa
    jmp short @..api_idx_007c_SUHO.l3 ; 0x45ad
@..api_idx_007c_SUHO.l2:
    mov ax, 0                        ; 0x45af
@..api_idx_007c_SUHO.l3:
    add bx, bp                       ; 0x45b2
    mov word [bx - 0x007c], ax       ; 0x45b4
    cmp word [bx - 0x007c], byte 0   ; 0x45b7
    je short @..api_idx_007c_SUHO.l4 ; 0x45bb
    inc word [bp - 0x0004]           ; 0x45bd
@..api_idx_007c_SUHO.l4:
    inc word [bp - 0x0002]           ; 0x45c0
    mov ax, word [bp - 0x0002]       ; 0x45c3
    cmp ax, strict word 0xd          ; 0x45c6
    jle short @..api_idx_007c_SUHO.l1 ; 0x45c9
    mov word [bp - 0x0060], 0xffff   ; 0x45cb
    lea ax, word [bp - 0x007c]       ; 0x45d0
    push ax                          ; 0x45d3
    mov ax, 0                        ; 0x45d4
    push ax                          ; 0x45d7
    mov ax, 0xffff                   ; 0x45d8
    push ax                          ; 0x45db
    mov ax, 1                        ; 0x45dc
    push ax                          ; 0x45df
    mov ax, word [bp - 0x0004]       ; 0x45e0
    inc ax                           ; 0x45e3
    inc ax                           ; 0x45e4
    mov cx, 3                        ; 0x45e5
    cwd                              ; 0x45e8
    idiv cx                          ; 0x45e9
    imul cx                          ; 0x45eb
    push ax                          ; 0x45ed
    mov ax, word [bp - 0x0004]       ; 0x45ee
    inc ax                           ; 0x45f1
    inc ax                           ; 0x45f2
    cwd                              ; 0x45f3
    idiv cx                          ; 0x45f4
    push ax                          ; 0x45f6
    mov ax, 0xc                      ; 0x45f7
    push ax                          ; 0x45fa
    mov ax, 0x46                     ; 0x45fb
    push ax                          ; 0x45fe
    mov ax, 0xb                      ; 0x45ff
    push ax                          ; 0x4602
    mov ax, 0x86                     ; 0x4603
    push ax                          ; 0x4606
    mov ax, 0x39                     ; 0x4607
    push ax                          ; 0x460a
    mov ax, 0x452                    ; 0x460b
    push ax                          ; 0x460e
    mov ax, 0x78                     ; 0x460f
    push ax                          ; 0x4612
    call loc_TGJO                    ; 0x4613
    add sp, byte 0x1a                ; 0x4616
    push ax                          ; 0x4619
    mov ax, 0x248                    ; 0x461a
    imul word [bp + 0x4]             ; 0x461d
    mov bx, ax                       ; 0x4620
    pop ax                           ; 0x4622
    mov byte [bx + 0x5e2d], al       ; 0x4623
    mov ax, 0                        ; 0x4627
    push ax                          ; 0x462a
    mov ax, 0x84                     ; 0x462b
    push ax                          ; 0x462e
    call thunk_3                     ; 0x462f
    add sp, byte 4                   ; 0x4632
    mov ax, 0xc                      ; 0x4635
    push ax                          ; 0x4638
    mov ax, 0x5a                     ; 0x4639
    push ax                          ; 0x463c
    call thunk                       ; 0x463d
    add sp, byte 4                   ; 0x4640
    lea ax, word [bp - 0x0054]       ; 0x4643
    push ax                          ; 0x4646
    mov ax, 0x248                    ; 0x4647
    imul word [bp + 0x4]             ; 0x464a
    mov bx, ax                       ; 0x464d
    mov al, byte [bx + 0x5e2d]       ; 0x464f
    sub ah, ah                       ; 0x4653
    add ax, strict word 0x78         ; 0x4655
    push ax                          ; 0x4658
    call ds_app_mem_VKHV             ; 0x4659
    add sp, byte 4                   ; 0x465c
    mov ax, 0                        ; 0x465f
    push ax                          ; 0x4662
    lea ax, word [bp - 0x0054]       ; 0x4663
    push ax                          ; 0x4666
    call ds_string_loc_PTIK          ; 0x4667
    add sp, byte 4                   ; 0x466a
    mov ax, 1                        ; 0x466d
    push ax                          ; 0x4670
    mov ax, 0x248                    ; 0x4671
    imul word [bp + 0x4]             ; 0x4674
    mov bx, ax                       ; 0x4677
    mov al, byte [bx + 0x5e2d]       ; 0x4679
    sub ah, ah                       ; 0x467d
    push ax                          ; 0x467f
    push word [bp + 0x4]             ; 0x4680
    call loc_OLPI                    ; 0x4683
    add sp, byte 6                   ; 0x4686
    mov ax, 1                        ; 0x4689
    push ax                          ; 0x468c
    push word [bp + 0x4]             ; 0x468d
    call api_idx_0002_NSOV           ; 0x4690
    add sp, byte 4                   ; 0x4693
    ret                              ; 0x4696
