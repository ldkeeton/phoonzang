; auto-generated
loc_4527:
    push bp                          ; 0x4527
    mov bp, sp                       ; 0x4528
    sub sp, byte 0x0a                ; 0x452a
    push ds                          ; 0x452d
    push es                          ; 0x452e
    push si                          ; 0x452f
    push di                          ; 0x4530
    mov ax, ds                       ; 0x4531
    mov es, ax                       ; 0x4533
    mov ax, word [bp + 0xc]          ; 0x4535
    cmp ax, strict word 0x14         ; 0x4538
    jb short @..loc_4527.l1          ; 0x453b
    jmp near @..loc_4527.l3          ; 0x453d
@..loc_4527.l1:
    shl ax, 1                        ; 0x4540
    shl ax, 1                        ; 0x4542
    mov bx, data_4202                ; 0x4544
    add bx, ax                       ; 0x4547
    mov ax, word [cs:bx + 0x2]       ; 0x4549
    mov word [bp - 0x0002], ax       ; 0x454d
    mov ax, word [cs:bx]             ; 0x4550
    or ax, ax                        ; 0x4553
    jne short @..loc_4527.l2         ; 0x4555
    jmp near @..loc_4527.l3          ; 0x4557
@..loc_4527.l2:
    dec ax                           ; 0x455a
    mov word [bp - 0x0004], ax       ; 0x455b
    push word [bp + 0x12]            ; 0x455e
    push word [bp + 0x10]            ; 0x4561
    push word [bp + 0xe]             ; 0x4564
    mov ax, word [bp - 0x0002]       ; 0x4567
    push ax                          ; 0x456a
    xor ax, ax                       ; 0x456b
    push ax                          ; 0x456d
    mov bx, data_0bda                ; 0x456e
    mov ax, word [bp - 0x0004]       ; 0x4571
    shl ax, 1                        ; 0x4574
    shl ax, 1                        ; 0x4576
    add bx, ax                       ; 0x4578
    mov ax, word [cs:bx]             ; 0x457a
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x457d
    push ax                          ; 0x4582
    xor ax, ax                       ; 0x4583
    push ax                          ; 0x4585
    call far [cs:cseg_021a - IMAGE_BASE] ; 0x4586
    add sp, byte 0x0e                ; 0x458b
@..loc_4527.l3:
    pop di                           ; 0x458e
    pop si                           ; 0x458f
    pop es                           ; 0x4590
    pop ds                           ; 0x4591
    mov sp, bp                       ; 0x4592
    pop bp                           ; 0x4594
    ret                              ; 0x4595
