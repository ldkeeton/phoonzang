; auto-generated
; asm only
dos_read_file_5:
    push bp                          ; 0x4624
    mov bp, sp                       ; 0x4625
    sub sp, byte 0x14                ; 0x4627
    push es                          ; 0x462a
    push ds                          ; 0x462b
    push di                          ; 0x462c
    push si                          ; 0x462d
    mov ax, ds                       ; 0x462e
    mov es, ax                       ; 0x4630
    mov ax, word [bp + 0xc]          ; 0x4632
    test ah, 0x80                    ; 0x4635
    je short @..dos_read_file_5.l1   ; 0x4638
    dec word [cs:cseg_028f - IMAGE_BASE] ; 0x463a
    mov ax, word [bp + 0xe]          ; 0x463f
    shl ax, 1                        ; 0x4642
    mov bx, 0x2c3                    ; 0x4644
    add bx, ax                       ; 0x4647
    mov ax, word [cs:bx]             ; 0x4649
    mov word [cs:bx], 0              ; 0x464c
    call leaf_loc_OVON               ; 0x4651
    call loc_KLNH                    ; 0x4654
    jmp near @..dos_read_file_5.l8   ; 0x4657
@..dos_read_file_5.l1:
    mov word [bp - 0x0002], ax       ; 0x465a
    mov ax, word [bp + 0x10]         ; 0x465d
    or ax, ax                        ; 0x4660
    je short @..dos_read_file_5.l2   ; 0x4662
    mov ax, word [bp + 0xe]          ; 0x4664
    mov word [bp - 0x0004], ax       ; 0x4667
    call dos_file_loc_RQKL           ; 0x466a
    jmp near @..dos_read_file_5.l8   ; 0x466d
@..dos_read_file_5.l2:
    mov ax, word [bp + 0xe]          ; 0x4670
    shl ax, 1                        ; 0x4673
    mov bx, 0x2c3                    ; 0x4675
    add bx, ax                       ; 0x4678
    mov ax, word [cs:bx]             ; 0x467a
    or ax, ax                        ; 0x467d
    je short @..dos_read_file_5.l3   ; 0x467f
    jmp near @..dos_read_file_5.l9   ; 0x4681
@..dos_read_file_5.l3:
    inc word [cs:cseg_028f - IMAGE_BASE] ; 0x4684
    mov ax, word [cs:cseg_028f - IMAGE_BASE] ; 0x4689
    mov word [cs:bx], ax             ; 0x468d
    dec ax                           ; 0x4690
    mov cl, 2                        ; 0x4691
    shl ax, cl                       ; 0x4693
    mov bx, 0x2eb                    ; 0x4695
    add bx, ax                       ; 0x4698
    mov word [bp - 0x0002], bx       ; 0x469a
    mov ax, word [cs:cseg_0291 - IMAGE_BASE] ; 0x469d
    mov word [cs:bx], ax             ; 0x46a1
    mov ax, word [cs:cseg_00e9 - IMAGE_BASE] ; 0x46a4
    mov ds, ax                       ; 0x46a8
    xor dx, dx                       ; 0x46aa
    mov cx, 0x1000                   ; 0x46ac
    mov bx, word [bp + 0xc]          ; 0x46af
    mov ah, 0x3f                     ; 0x46b2
    int 0x21 ; DOS read file (handle)
    mov bx, 0                        ; 0x46b6
    mov ax, word [bx]                ; 0x46b9
    mov cx, 6                        ; 0x46bb
    mul cx                           ; 0x46be
    add ax, strict word 4            ; 0x46c0
    mov bx, ax                       ; 0x46c3
    sub bx, byte 6                   ; 0x46c5
    mov cl, byte [bx + 0x5]          ; 0x46c8
    mov al, byte [bx + 0x4]          ; 0x46cb
    mul cl                           ; 0x46ce
    mov cl, 3                        ; 0x46d0
    shl ax, cl                       ; 0x46d2
    mov cx, word [bx + 0x2]          ; 0x46d4
    add ax, cx                       ; 0x46d7
    push ax                          ; 0x46d9
    xor dx, dx                       ; 0x46da
    mov ax, word [bx]                ; 0x46dc
    mov cx, 0x10                     ; 0x46de
    mul cx                           ; 0x46e1
    pop cx                           ; 0x46e3
    add cx, byte 0x0f                ; 0x46e4
    add ax, cx                       ; 0x46e7
    adc dx, byte 0                   ; 0x46e9
    mov word [bp - 0x0006], ax       ; 0x46ec
    mov word [bp - 0x0008], dx       ; 0x46ef
    mov cx, 0x10                     ; 0x46f2
    div cx                           ; 0x46f5
    mov di, word [cs:cseg_0291 - IMAGE_BASE] ; 0x46f7
    mov bx, word [bp - 0x0002]       ; 0x46fc
    mov word [cs:bx + 0x2], ax       ; 0x46ff
    add word [cs:cseg_0291 - IMAGE_BASE], ax ; 0x4703
    mov ax, word [cs:cseg_0291 - IMAGE_BASE] ; 0x4708
    cmp ax, word [cs:cseg_00ff - IMAGE_BASE] ; 0x470c
    jbe short @..dos_read_file_5.l4  ; 0x4711
    jmp near @..dos_read_file_5.l10  ; 0x4713
@..dos_read_file_5.l4:
    mov ax, di                       ; 0x4716
    mov cl, 0xa                      ; 0x4718
    shr ax, cl                       ; 0x471a
    mov word [cs:cseg_4440 - IMAGE_BASE], ax ; 0x471c
    call leaf_loc_HLGJ               ; 0x4720
    and di, strict word 0x3ff        ; 0x4723
    mov cl, 4                        ; 0x4727
    shl di, cl                       ; 0x4729
    xor si, si                       ; 0x472b
    mov ax, word [cs:cseg_00e9 - IMAGE_BASE] ; 0x472d
    mov ds, ax                       ; 0x4731
    mov ax, word [cs:cseg_0103 - IMAGE_BASE] ; 0x4733
    mov es, ax                       ; 0x4737
    mov cx, 0x1000                   ; 0x4739
    rep movsb                        ; 0x473c
    mov ax, word [bp - 0x0006]       ; 0x473e
    mov dx, word [bp - 0x0008]       ; 0x4741
    sub ax, 0x1000                   ; 0x4744
    sbb dx, byte 0                   ; 0x4747
    mov word [bp - 0x0006], ax       ; 0x474a
    mov word [bp - 0x0008], dx       ; 0x474d
@..dos_read_file_5.l5:
    mov dx, di                       ; 0x4750
    test dx, 0xc000                  ; 0x4752
    je short @..dos_read_file_5.l6   ; 0x4756
    sub di, strict word 0x4000       ; 0x4758
    inc word [cs:cseg_4440 - IMAGE_BASE] ; 0x475c
    mov ax, word [cs:cseg_4440 - IMAGE_BASE] ; 0x4761
    call leaf_loc_HLGJ               ; 0x4765
@..dos_read_file_5.l6:
    mov ax, word [bp - 0x0006]       ; 0x4768
    mov dx, word [bp - 0x0008]       ; 0x476b
    or ax, dx                        ; 0x476e
    je short @..dos_read_file_5.l8   ; 0x4770
    mov cx, 0x1000                   ; 0x4772
    mov ax, word [bp - 0x0006]       ; 0x4775
    or dx, dx                        ; 0x4778
    jne short @..dos_read_file_5.l7  ; 0x477a
    cmp ax, cx                       ; 0x477c
    jae short @..dos_read_file_5.l7  ; 0x477e
    mov cx, ax                       ; 0x4780
@..dos_read_file_5.l7:
    sub ax, cx                       ; 0x4782
    sbb dx, byte 0                   ; 0x4784
    mov word [bp - 0x0006], ax       ; 0x4787
    mov word [bp - 0x0008], dx       ; 0x478a
    mov dx, 0                        ; 0x478d
    mov bx, word [bp + 0xc]          ; 0x4790
    mov ah, 0x3f                     ; 0x4793
    push cx                          ; 0x4795
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x4798
    mov si, 0                        ; 0x4799
    rep movsb                        ; 0x479c
    jmp short @..dos_read_file_5.l5  ; 0x479e
@..dos_read_file_5.l8:
    pop si                           ; 0x47a0
    pop di                           ; 0x47a1
    pop ds                           ; 0x47a2
    pop es                           ; 0x47a3
    mov sp, bp                       ; 0x47a4
    pop bp                           ; 0x47a6
    ret                              ; 0x47a7
@..dos_read_file_5.l9:
    mov ax, cs                       ; 0x47a8
    mov ds, ax                       ; 0x47aa
    mov dx, 0x48b8                   ; 0x47ac
