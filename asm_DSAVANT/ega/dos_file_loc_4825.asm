; auto-generated
dos_file_loc_4825:
    push bp                          ; 0x4825
    mov bp, sp                       ; 0x4826
    sub sp, byte 0x14                ; 0x4828
    push es                          ; 0x482b
    push ds                          ; 0x482c
    push di                          ; 0x482d
    push si                          ; 0x482e
    mov ax, ds                       ; 0x482f
    mov es, ax                       ; 0x4831
    mov ax, word [bp + 0xc]          ; 0x4833
    test ah, 0x80                    ; 0x4836
    je short @..dos_file_loc_4825.l1 ; 0x4839
    dec word [cs:cseg_038f - IMAGE_BASE] ; 0x483b
    mov ax, word [bp + 0xe]          ; 0x4840
    shl ax, 1                        ; 0x4843
    mov bx, 0x2d7                    ; 0x4845
    add bx, ax                       ; 0x4848
    mov ax, word [cs:bx]             ; 0x484a
    mov word [cs:bx], 0              ; 0x484d
    call leaf_loc_1355               ; 0x4852
    call loc_1392                    ; 0x4855
    jmp near @..dos_file_loc_4825.l8 ; 0x4858
@..dos_file_loc_4825.l1:
    mov word [bp - 0x0002], ax       ; 0x485b
    mov ax, word [bp + 0x10]         ; 0x485e
    or ax, ax                        ; 0x4861
    je short @..dos_file_loc_4825.l2 ; 0x4863
    mov ax, word [bp + 0xe]          ; 0x4865
    mov word [bp - 0x0004], ax       ; 0x4868
    call dos_file_loc_45bd           ; 0x486b
    jmp near @..dos_file_loc_4825.l8 ; 0x486e
@..dos_file_loc_4825.l2:
    mov ax, word [bp + 0xe]          ; 0x4871
    shl ax, 1                        ; 0x4874
    mov bx, 0x2d7                    ; 0x4876
    add bx, ax                       ; 0x4879
    mov ax, word [cs:bx]             ; 0x487b
    or ax, ax                        ; 0x487e
    je short @..dos_file_loc_4825.l3 ; 0x4880
    jmp near @..dos_file_loc_4825.l9 ; 0x4882
@..dos_file_loc_4825.l3:
    inc word [cs:cseg_038f - IMAGE_BASE] ; 0x4885
    mov ax, word [cs:cseg_038f - IMAGE_BASE] ; 0x488a
    mov word [cs:bx], ax             ; 0x488e
    dec ax                           ; 0x4891
    mov cl, 2                        ; 0x4892
    shl ax, cl                       ; 0x4894
    mov bx, 0x2eb                    ; 0x4896
    add bx, ax                       ; 0x4899
    mov word [bp - 0x0002], bx       ; 0x489b
    mov ax, word [cs:cseg_0391 - IMAGE_BASE] ; 0x489e
    mov word [cs:bx], ax             ; 0x48a2
    mov ax, 0xfa0                    ; 0x48a5
    mov word [cs:bx + 0x2], ax       ; 0x48a8
    mov di, word [cs:cseg_0391 - IMAGE_BASE] ; 0x48ac
    add word [cs:cseg_0391 - IMAGE_BASE], ax ; 0x48b1
    mov ax, word [cs:cseg_0391 - IMAGE_BASE] ; 0x48b6
    cmp ax, word [cs:cseg_01ff - IMAGE_BASE] ; 0x48ba
    jbe short @..dos_file_loc_4825.l4 ; 0x48bf
    jmp near @..dos_file_loc_4825.l10 ; 0x48c1
@..dos_file_loc_4825.l4:
    mov ax, 0xfa00                   ; 0x48c4
    mov word [bp - 0x0006], ax       ; 0x48c7
    mov ax, di                       ; 0x48ca
    mov cl, 0xa                      ; 0x48cc
    shr ax, cl                       ; 0x48ce
    mov word [cs:cseg_4540 - IMAGE_BASE], ax ; 0x48d0
    call leaf_loc_4442               ; 0x48d4
    and di, strict word 0x3ff        ; 0x48d7
    mov cl, 4                        ; 0x48db
    shl di, cl                       ; 0x48dd
@..dos_file_loc_4825.l5:
    mov dx, di                       ; 0x48df
    test dx, 0xc000                  ; 0x48e1
    je short @..dos_file_loc_4825.l6 ; 0x48e5
    sub di, strict word 0x4000       ; 0x48e7
    inc word [cs:cseg_4540 - IMAGE_BASE] ; 0x48eb
    mov ax, word [cs:cseg_4540 - IMAGE_BASE] ; 0x48f0
    call leaf_loc_4442               ; 0x48f4
@..dos_file_loc_4825.l6:
    mov ax, word [bp - 0x0006]       ; 0x48f7
    or ax, ax                        ; 0x48fa
    je short @..dos_file_loc_4825.l8 ; 0x48fc
    mov cx, 0x1000                   ; 0x48fe
    cmp ax, cx                       ; 0x4901
    jae short @..dos_file_loc_4825.l7 ; 0x4903
    mov cx, ax                       ; 0x4905
@..dos_file_loc_4825.l7:
    sub ax, cx                       ; 0x4907
    mov word [bp - 0x0006], ax       ; 0x4909
    mov ax, word [cs:cseg_0203 - IMAGE_BASE] ; 0x490c
    mov es, ax                       ; 0x4910
    mov ax, word [cs:cseg_01e9 - IMAGE_BASE] ; 0x4912
    mov ds, ax                       ; 0x4916
    mov dx, 0                        ; 0x4918
    mov bx, word [bp + 0xc]          ; 0x491b
    mov ah, 0x3f                     ; 0x491e
    push cx                          ; 0x4920
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x4923
    mov si, 0                        ; 0x4924
    rep movsb                        ; 0x4927
    jmp short @..dos_file_loc_4825.l5 ; 0x4929
@..dos_file_loc_4825.l8:
    pop si                           ; 0x492b
    pop di                           ; 0x492c
    pop ds                           ; 0x492d
    pop es                           ; 0x492e
    mov sp, bp                       ; 0x492f
    pop bp                           ; 0x4931
    ret                              ; 0x4932
@..dos_file_loc_4825.l9:
    mov ax, cs                       ; 0x4933
    mov ds, ax                       ; 0x4935
    mov dx, 0x4a43                   ; 0x4937
