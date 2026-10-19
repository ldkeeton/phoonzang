; auto-generated
; asm only
load_score:
    push bp                          ; 0x45fb
    mov bp, sp                       ; 0x45fc
    sub sp, byte 0x0e                ; 0x45fe
    push ds                          ; 0x4601
    push es                          ; 0x4602
    push si                          ; 0x4603
    push di                          ; 0x4604
    mov ax, ds                       ; 0x4605
    mov es, ax                       ; 0x4607
    mov bx, word [bp + 0x12]         ; 0x4609
    shl bx, 1                        ; 0x460c
    shl bx, 1                        ; 0x460e
    add bx, data_46d9                ; 0x4610
    mov word [bp - 0x0002], bx       ; 0x4614
    mov ax, word [cs:bx]             ; 0x4617
    or ax, ax                        ; 0x461a
    je short @..load_score.l1        ; 0x461c
    jmp near @..load_score.l5        ; 0x461e
@..load_score.l1:
    mov bx, word [bp + 0x12]         ; 0x4621
    shl bx, 1                        ; 0x4624
    add bx, data_46f1                ; 0x4626
    mov ax, word [bp + 0x10]         ; 0x462a
    mov word [cs:bx], ax             ; 0x462d
    mov ax, word [cs:cseg_0baa - IMAGE_BASE] ; 0x4630
    inc ax                           ; 0x4634
    mov word [cs:cseg_0baa - IMAGE_BASE], ax ; 0x4635
    mov bx, word [bp - 0x0002]       ; 0x4639
    mov word [cs:bx], ax             ; 0x463c
    dec ax                           ; 0x463f
    mov cl, 2                        ; 0x4640
    shl ax, cl                       ; 0x4642
    mov bx, data_0bda                ; 0x4644
    add bx, ax                       ; 0x4647
    mov word [bp - 0x000a], bx       ; 0x4649
    mov ax, word [cs:cseg_0bac - IMAGE_BASE] ; 0x464c
    mov word [cs:bx], ax             ; 0x4650
    xor ax, ax                       ; 0x4653
    mov word [bp - 0x000c], ax       ; 0x4655
    mov word [bp - 0x000e], ax       ; 0x4658
    mov bx, word [bp - 0x0002]       ; 0x465b
    mov word [cs:bx + 0x2], ax       ; 0x465e
    mov bx, word [bp + 0xe]          ; 0x4662
    cmp bx, byte 0xff                ; 0x4665
    je short @..load_score.l2        ; 0x4668
    mov ah, 0x42                     ; 0x466a
    mov al, 2                        ; 0x466c
    xor cx, cx                       ; 0x466e
    mov dx, cx                       ; 0x4670
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x000c], ax       ; 0x4674
    mov bx, word [bp - 0x0002]       ; 0x4677
    mov word [cs:bx + 0x2], ax       ; 0x467a
    add ax, strict word 0xf          ; 0x467e
    mov cl, 4                        ; 0x4681
    shr ax, cl                       ; 0x4683
    mov word [bp - 0x000e], ax       ; 0x4685
    mov ah, 0x42                     ; 0x4688
    mov al, 0                        ; 0x468a
    mov bx, word [bp + 0xe]          ; 0x468c
    xor cx, cx                       ; 0x468f
    mov dx, cx                       ; 0x4691
    int 0x21 ; DOS seek file (lseek)
@..load_score.l2:
    mov ah, 0x42                     ; 0x4695
    mov al, 2                        ; 0x4697
    mov bx, word [bp + 0xc]          ; 0x4699
    xor cx, cx                       ; 0x469c
    mov dx, cx                       ; 0x469e
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax       ; 0x46a2
    mov word [bp - 0x0006], dx       ; 0x46a5
    mov ah, 0x42                     ; 0x46a8
    mov al, 0                        ; 0x46aa
    mov bx, word [bp + 0xc]          ; 0x46ac
    xor cx, cx                       ; 0x46af
    mov dx, cx                       ; 0x46b1
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [bp - 0x0004]       ; 0x46b5
    add ax, strict word 0xf          ; 0x46b8
    mov cl, 4                        ; 0x46bb
    shr ax, cl                       ; 0x46bd
    mov bx, word [bp - 0x000a]       ; 0x46bf
    add ax, word [bp - 0x000e]       ; 0x46c2
    mov word [cs:bx + 0x2], ax       ; 0x46c5
    add ax, word [cs:cseg_0bac - IMAGE_BASE] ; 0x46c9
    cmp ax, 0x4180                   ; 0x46ce
    jb short @..load_score.l3        ; 0x46d1
    jmp near loc_474e                ; 0x46d3
@..load_score.l3:
    mov word [cs:cseg_0bac - IMAGE_BASE], ax ; 0x46d6
    mov ax, word [cs:bx]             ; 0x46da
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x46dd
    mov ds, ax                       ; 0x46e2
    mov bx, word [bp + 0xe]          ; 0x46e4
    cmp bx, byte 0xff                ; 0x46e7
    je short @..load_score.l4        ; 0x46ea
    xor dx, dx                       ; 0x46ec
    mov cx, word [bp - 0x000c]       ; 0x46ee
    mov ah, 0x3f                     ; 0x46f1
    int 0x21 ; DOS read file (handle)
@..load_score.l4:
    mov bx, word [bp - 0x0002]       ; 0x46f5
    mov bx, word [cs:bx + 0x2]       ; 0x46f8
    mov dx, bx                       ; 0x46fc
    mov bx, word [bp + 0xc]          ; 0x46fe
    mov cx, word [bp - 0x0004]       ; 0x4701
    mov ah, 0x3f                     ; 0x4704
    int 0x21 ; DOS read file (handle)
    xor ax, ax                       ; 0x4708
    pop di                           ; 0x470a
    pop si                           ; 0x470b
    pop es                           ; 0x470c
    pop ds                           ; 0x470d
    mov sp, bp                       ; 0x470e
    pop bp                           ; 0x4710
    ret                              ; 0x4711
@..load_score.l5:
    mov ax, cs                       ; 0x4712
    mov ds, ax                       ; 0x4714
    mov dx, 0x4822                   ; 0x4716
