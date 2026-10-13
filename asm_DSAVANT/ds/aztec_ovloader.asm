aztec_ovloader:
    mov bx, sp                       ; 0x4379
    mov ax, word [bx + 0x2]          ; 0x437b
    mov word [bss_0cfa], ax          ; 0x437e
    call ds_loc_4386                 ; 0x4381
    jmp ax                           ; 0x4384
ds_loc_4386:
    push bp                          ; 0x4386
    mov bp, sp                       ; 0x4387
    add sp, byte 0xae                ; 0x4389
    push di                          ; 0x438c
    push si                          ; 0x438d
    push word [bss_0cfa]             ; 0x438e
    lea ax, word [bp - 0x0052]       ; 0x4392
    push ax                          ; 0x4395
    call aztec_strcpy                ; 0x4396
    add sp, byte 4                   ; 0x4399
    mov ax, 0xc48                    ; 0x439c
    push ax                          ; 0x439f
    lea ax, word [bp - 0x0052]       ; 0x43a0
    push ax                          ; 0x43a3
    call ds_string_loc_4574          ; 0x43a4
    add sp, byte 4                   ; 0x43a7
    mov ax, 0                        ; 0x43aa
    push ax                          ; 0x43ad
    lea ax, word [bp - 0x0052]       ; 0x43ae
    push ax                          ; 0x43b1
    call aztec_open                  ; 0x43b2
    add sp, byte 4                   ; 0x43b5
    mov word [bp - 0x0002], ax       ; 0x43b8
    cmp ax, strict word 0xffff       ; 0x43bb
    jne short @..ds_loc_4386.l1      ; 0x43be
    mov ax, 0xa                      ; 0x43c0
    push ax                          ; 0x43c3
    call ds_loc_4462                 ; 0x43c4
    pop cx                           ; 0x43c7
@..ds_loc_4386.l1:
    mov ax, 0xe                      ; 0x43c8
    push ax                          ; 0x43cb
    lea ax, word [bp - 0x0012]       ; 0x43cc
    push ax                          ; 0x43cf
    push word [bp - 0x0002]          ; 0x43d0
    call ds_leaf_loc_4fb6            ; 0x43d3
    add sp, byte 6                   ; 0x43d6
    cmp ax, strict word 0xe          ; 0x43d9
    je short @..ds_loc_4386.l2       ; 0x43dc
    mov ax, 0x14                     ; 0x43de
    push ax                          ; 0x43e1
    call ds_loc_4462                 ; 0x43e2
    pop cx                           ; 0x43e5
@..ds_loc_4386.l2:
    cmp word [bp - 0x0012], strict word 0xf2 ; 0x43e6
    je short @..ds_loc_4386.l3       ; 0x43eb
    mov ax, 0x1e                     ; 0x43ed
    push ax                          ; 0x43f0
    call ds_loc_4462                 ; 0x43f1
    pop cx                           ; 0x43f4
@..ds_loc_4386.l3:
    mov ax, word [bp - 0x000c]       ; 0x43f5
    add ax, word [bp - 0x000a]       ; 0x43f8
    add ax, word [bp - 0x0008]       ; 0x43fb
    cmp ax, word [dseg_0c78]         ; 0x43fe
    jbe short @..ds_loc_4386.l4      ; 0x4402
    mov ax, 0x28                     ; 0x4404
    push ax                          ; 0x4407
    call ds_loc_4462                 ; 0x4408
    pop cx                           ; 0x440b
@..ds_loc_4386.l4:
    cmp word [bp - 0x0010], strict word 0x5055 ; 0x440c
    jb short @..ds_loc_4386.l5       ; 0x4411
    cmp word [bp - 0x000c], strict word __zdataseg_end ; 0x4413
    jae short @..ds_loc_4386.l6      ; 0x4418
@..ds_loc_4386.l5:
    mov ax, 0x3c                     ; 0x441a
    push ax                          ; 0x441d
    call ds_loc_4462                 ; 0x441e
    pop cx                           ; 0x4421
@..ds_loc_4386.l6:
    push word [bp - 0x000e]          ; 0x4422
    push word [bp - 0x0010]          ; 0x4425
    push word [bp - 0x0002]          ; 0x4428
    call aztec_csread                ; 0x442b
    add sp, byte 6                   ; 0x442e
    cmp ax, word [bp - 0x000e]       ; 0x4431
    jb short @..ds_loc_4386.l7       ; 0x4434
    push word [bp - 0x000a]          ; 0x4436
    push word [bp - 0x000c]          ; 0x4439
    push word [bp - 0x0002]          ; 0x443c
    call ds_leaf_loc_4fb6            ; 0x443f
    add sp, byte 6                   ; 0x4442
    cmp ax, word [bp - 0x000a]       ; 0x4445
    jae short @..ds_loc_4386.l8      ; 0x4448
@..ds_loc_4386.l7:
    mov ax, 0x32                     ; 0x444a
    push ax                          ; 0x444d
    call ds_loc_4462                 ; 0x444e
    pop cx                           ; 0x4451
@..ds_loc_4386.l8:
    push word [bp - 0x0002]          ; 0x4452
    call aztec_close                 ; 0x4455
    pop cx                           ; 0x4458
    mov ax, word [bp - 0x0006]       ; 0x4459
    pop si                           ; 0x445c
    pop di                           ; 0x445d
    mov sp, bp                       ; 0x445e
    pop bp                           ; 0x4460
    ret                              ; 0x4461
ds_loc_4462:
    push bp                          ; 0x4462
    mov bp, sp                       ; 0x4463
    add sp, byte 0xb0                ; 0x4465
    push word [bss_0cfa]             ; 0x4468
    push word [bp + 0x4]             ; 0x446c
    mov ax, 0xc4d                    ; 0x446f
    push ax                          ; 0x4472
    lea ax, word [bp - 0x0050]       ; 0x4473
    push ax                          ; 0x4476
    call ds_loc_44d4                 ; 0x4477
    add sp, byte 8                   ; 0x447a
    lea ax, word [bp - 0x0050]       ; 0x447d
    push ax                          ; 0x4480
    mov ax, 9                        ; 0x4481
    push ax                          ; 0x4484
    call aztec_bdos                  ; 0x4485
    add sp, byte 4                   ; 0x4488
    mov ax, 0x64                     ; 0x448b
    push ax                          ; 0x448e
    call ds_loc_4f73                 ; 0x448f
    pop cx                           ; 0x4492
    mov sp, bp                       ; 0x4493
    pop bp                           ; 0x4495
    ret                              ; 0x4496
