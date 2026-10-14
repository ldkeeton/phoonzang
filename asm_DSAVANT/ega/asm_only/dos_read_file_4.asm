; auto-generated
; asm only
dos_read_file_4:
    push bp                          ; 0x4457
    mov bp, sp                       ; 0x4458
    sub sp, byte 0x0e                ; 0x445a
    push es                          ; 0x445d
    push ds                          ; 0x445e
    push di                          ; 0x445f
    push si                          ; 0x4460
    mov ax, ds                       ; 0x4461
    mov es, ax                       ; 0x4463
    cmp word [bp + 0xe], byte 3      ; 0x4465
    jne short @..dos_read_file_4.l2  ; 0x4469
    lea bx, word [bp - 0x000a]       ; 0x446b
    mov dx, bx                       ; 0x446e
    mov ax, ss                       ; 0x4470
    mov ds, ax                       ; 0x4472
    mov cx, 0xa                      ; 0x4474
    mov bx, word [bp + 0x12]         ; 0x4477
    mov ah, 0x3f                     ; 0x447a
    int 0x21 ; DOS read file (handle)
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x447e
    mov ds, ax                       ; 0x4482
    mov cx, word [bp - 0x0004]       ; 0x4484
@..dos_read_file_4.l1:
    push cx                          ; 0x4487
    mov dx, word [bp - 0x0002]       ; 0x4488
    add word [bp - 0x0002], strict word 0x140 ; 0x448b
    mov cx, word [bp - 0x0006]       ; 0x4490
    mov bx, word [bp + 0x12]         ; 0x4493
    mov ah, 0x3f                     ; 0x4496
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x449a
    loop @..dos_read_file_4.l1       ; 0x449b
    jmp near @..dos_read_file_4.l9   ; 0x449d
@..dos_read_file_4.l2:
    cmp word [bp + 0xe], byte 2      ; 0x44a0
    je short @..dos_read_file_4.l3   ; 0x44a4
    jmp near @..dos_read_file_4.l6   ; 0x44a6
@..dos_read_file_4.l3:
    mov ax, word [bp + 0xc]          ; 0x44a9
    shl ax, 1                        ; 0x44ac
    mov bx, 0x25b                    ; 0x44ae
    add bx, ax                       ; 0x44b1
    mov ax, word [cs:bx]             ; 0x44b3
    dec ax                           ; 0x44b6
    mov cl, 2                        ; 0x44b7
    shl ax, cl                       ; 0x44b9
    mov bx, 0x10fb                   ; 0x44bb
    add bx, ax                       ; 0x44be
    mov ax, word [cs:bx]             ; 0x44c0
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x44c3
    mov ds, ax                       ; 0x44c8
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x44ca
    mov es, ax                       ; 0x44ce
    xor si, si                       ; 0x44d0
    lodsw                            ; 0x44d2
    mov word [bp - 0x0002], ax       ; 0x44d3
    lodsw                            ; 0x44d6
    lodsw                            ; 0x44d7
    mov word [bp - 0x0004], ax       ; 0x44d8
    lodsw                            ; 0x44db
    mov word [bp - 0x0006], ax       ; 0x44dc
    lodsw                            ; 0x44df
    lodsw                            ; 0x44e0
@..dos_read_file_4.l4:
    mov di, word [bp - 0x0002]       ; 0x44e1
    add word [bp - 0x0002], strict word 0x140 ; 0x44e4
    mov cx, word [bp - 0x0006]       ; 0x44e9
    rep movsb                        ; 0x44ec
    dec word [bp - 0x0004]           ; 0x44ee
    jne short @..dos_read_file_4.l4  ; 0x44f1
    cmp word [bp + 0x10], byte 0     ; 0x44f3
    je short @..dos_read_file_4.l5   ; 0x44f7
    mov ax, word [bp + 0xc]          ; 0x44f9
    shl ax, 1                        ; 0x44fc
    mov bx, 0x25b                    ; 0x44fe
    add bx, ax                       ; 0x4501
    mov ax, word [cs:bx]             ; 0x4503
    mov word [cs:bx], 0              ; 0x4506
    dec word [cs:cseg_11cb - IMAGE_BASE] ; 0x450b
    call loc_4c93                    ; 0x4510
@..dos_read_file_4.l5:
    jmp near @..dos_read_file_4.l9   ; 0x4513
@..dos_read_file_4.l6:
    mov ax, word [bp + 0xc]          ; 0x4516
    shl ax, 1                        ; 0x4519
    mov bx, 0x29b                    ; 0x451b
    add bx, ax                       ; 0x451e
    mov ax, word [cs:bx]             ; 0x4520
    dec ax                           ; 0x4523
    mov cl, 2                        ; 0x4524
    shl ax, cl                       ; 0x4526
    mov bx, 0x2eb                    ; 0x4528
    add bx, ax                       ; 0x452b
    mov ax, word [cs:bx]             ; 0x452d
    mov word [bp - 0x0002], ax       ; 0x4530
    mov cl, 0xa                      ; 0x4533
    shr ax, cl                       ; 0x4535
    mov word [cs:cseg_4540 - IMAGE_BASE], ax ; 0x4537
    call leaf_loc_NIKG               ; 0x453b
    mov si, word [bp - 0x0002]       ; 0x453e
    and si, strict word 0x3ff        ; 0x4541
    mov cl, 4                        ; 0x4545
    shl si, cl                       ; 0x4547
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x4549
    mov es, ax                       ; 0x454d
    mov ax, word [cs:cseg_0203 - IMAGE_BASE] ; 0x454f
    mov ds, ax                       ; 0x4553
    lodsw                            ; 0x4555
    mov word [bp - 0x0002], ax       ; 0x4556
    lodsw                            ; 0x4559
    lodsw                            ; 0x455a
    mov word [bp - 0x0004], ax       ; 0x455b
    lodsw                            ; 0x455e
    mov word [bp - 0x0006], ax       ; 0x455f
    lodsw                            ; 0x4562
    lodsw                            ; 0x4563
@..dos_read_file_4.l7:
    mov di, word [bp - 0x0002]       ; 0x4564
    add word [bp - 0x0002], strict word 0x140 ; 0x4567
    mov cx, word [bp - 0x0006]       ; 0x456c
    rep movsb                        ; 0x456f
    test si, 0xc000                  ; 0x4571
    je short @..dos_read_file_4.l8   ; 0x4575
    inc word [cs:cseg_4540 - IMAGE_BASE] ; 0x4577
    mov ax, word [cs:cseg_4540 - IMAGE_BASE] ; 0x457c
    call leaf_loc_NIKG               ; 0x4580
    and si, strict word 0x3fff       ; 0x4583
@..dos_read_file_4.l8:
    dec word [bp - 0x0004]           ; 0x4587
    jne short @..dos_read_file_4.l7  ; 0x458a
    cmp word [bp + 0x10], byte 0     ; 0x458c
    je short @..dos_read_file_4.l9   ; 0x4590
    mov cx, word [cs:cseg_038f - IMAGE_BASE] ; 0x4592
    dec cx                           ; 0x4597
    mov word [cs:cseg_038f - IMAGE_BASE], cx ; 0x4598
    mov ax, word [bp + 0xc]          ; 0x459d
    shl ax, 1                        ; 0x45a0
    mov bx, 0x29b                    ; 0x45a2
    add bx, ax                       ; 0x45a5
    mov ax, word [cs:bx]             ; 0x45a7
    mov word [cs:bx], 0              ; 0x45aa
    call leaf_loc_IMUV               ; 0x45af
    call loc_1392                    ; 0x45b2
@..dos_read_file_4.l9:
    pop si                           ; 0x45b5
    pop di                           ; 0x45b6
    pop ds                           ; 0x45b7
    pop es                           ; 0x45b8
    mov sp, bp                       ; 0x45b9
    pop bp                           ; 0x45bb
    ret                              ; 0x45bc
