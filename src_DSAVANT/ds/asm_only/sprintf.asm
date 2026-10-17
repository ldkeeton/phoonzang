; auto-generated
; asm only
sprintf:
    push bp                          ; 0x4867
    mov bp, sp                       ; 0x4868
    sub sp, strict word 0x154        ; 0x486a
    push di                          ; 0x486e
    push si                          ; 0x486f
    cld                              ; 0x4870
    mov si, word [bp + 0x6]          ; 0x4871
    mov word [bp - 0x0002], 0        ; 0x4874
@..sprintf.l1:
    mov byte [bp - 0x000b], 0        ; 0x4879
    lodsb                            ; 0x487d
    cmp al, 0x25                     ; 0x487e
    je short @..sprintf.l3           ; 0x4880
ds_string_loc_4882:
    test al, al                      ; 0x4882
    je short @..sprintf.l2           ; 0x4884
    call ds_loc_NJTI                 ; 0x4886
    jmp short @..sprintf.l1          ; 0x4889
@..sprintf.l2:
    mov ax, word [bp - 0x0002]       ; 0x488b
    pop si                           ; 0x488e
    pop di                           ; 0x488f
    mov sp, bp                       ; 0x4890
    pop bp                           ; 0x4892
    ret                              ; 0x4893
@..sprintf.l3:
    mov byte [bp - 0x000c], 0x20     ; 0x4894
    mov byte [bp - 0x000e], 0        ; 0x4898
    mov byte [bp - 0x000d], 0        ; 0x489c
    mov word [bp - 0x0006], 0xffff   ; 0x48a0
@..sprintf.l4:
    lodsb                            ; 0x48a5
    cmp al, 0x2d                     ; 0x48a6
    jne short @..sprintf.l5          ; 0x48a8
    or byte [bp - 0x000b], 8         ; 0x48aa
    jmp short @..sprintf.l4          ; 0x48ae
@..sprintf.l5:
    cmp al, 0x2b                     ; 0x48b0
    jne short @..sprintf.l6          ; 0x48b2
    mov byte [bp - 0x000e], 0x2b     ; 0x48b4
    jmp short @..sprintf.l4          ; 0x48b8
@..sprintf.l6:
    cmp al, 0x20                     ; 0x48ba
    jne short @..sprintf.l7          ; 0x48bc
    cmp byte [bp - 0x000e], 0        ; 0x48be
    jne short @..sprintf.l4          ; 0x48c2
    mov byte [bp - 0x000e], 0x20     ; 0x48c4
    jmp short @..sprintf.l4          ; 0x48c8
@..sprintf.l7:
    cmp al, 0x23                     ; 0x48ca
    jne short @..sprintf.l8          ; 0x48cc
    or byte [bp - 0x000b], 0x10      ; 0x48ce
    jmp short @..sprintf.l4          ; 0x48d2
@..sprintf.l8:
    cmp al, 0x30                     ; 0x48d4
    jne short @..sprintf.l9          ; 0x48d6
    mov byte [bp - 0x000c], 0x30     ; 0x48d8
    lodsb                            ; 0x48dc
@..sprintf.l9:
    call ds_string_loc_TRQP          ; 0x48dd
    test dx, dx                      ; 0x48e0
    jns short @..sprintf.l10         ; 0x48e2
    neg dx                           ; 0x48e4
    or byte [bp - 0x000b], 8         ; 0x48e6
@..sprintf.l10:
    mov word [bp - 0x0004], dx       ; 0x48ea
    cmp al, 0x2e                     ; 0x48ed
    jne short @..sprintf.l11         ; 0x48ef
    lodsb                            ; 0x48f1
    call ds_string_loc_TRQP          ; 0x48f2
    mov word [bp - 0x0006], dx       ; 0x48f5
@..sprintf.l11:
    mov di, cs                       ; 0x48f8
    mov es, di                       ; 0x48fa
@..sprintf.l12:
    mov di, cseg_480d - IMAGE_BASE   ; 0x48fc
    mov cx, 0x15                     ; 0x48ff
    repne scasb                      ; 0x4902
    sub di, strict word 0x460e       ; 0x4904
    shl di, 1                        ; 0x4908
    jmp [cs:di + jumptable_4822 - IMAGE_BASE] ; 0x490a
ds_string_loc_490f:
    or byte [bp - 0x000b], 1         ; 0x490f
    lodsb                            ; 0x4913
    jmp short @..sprintf.l12         ; 0x4914
ds_string_loc_4916:
    or byte [bp - 0x000b], 2         ; 0x4916
ds_string_loc_491a:
    lodsb                            ; 0x491a
    jmp short @..sprintf.l12         ; 0x491b
ds_string_loc_491d:
    or byte [bp - 0x000b], 4         ; 0x491d
    lodsb                            ; 0x4921
    jmp short @..sprintf.l12         ; 0x4922
ds_leaf_loc_4924:
    mov cx, 8                        ; 0x4924
    jmp short @..sprintf.l13         ; 0x4927
ds_leaf_loc_4929:
    or byte [bp - 0x000b], 0x20      ; 0x4929
ds_leaf_loc_492d:
    mov cx, 0x10                     ; 0x492d
    jmp short @..sprintf.l13         ; 0x4930
ds_leaf_loc_4932:
    mov cx, 0xa                      ; 0x4932
    jmp short @..sprintf.l13         ; 0x4935
ds_leaf_loc_4937:
    mov cx, 0xff0a                   ; 0x4937
@..sprintf.l13:
    push ds                          ; 0x493a
    pop es                           ; 0x493b
    mov di, word [bp + 0x8]          ; 0x493c
    mov ax, word [es:di]             ; 0x493f
    add di, byte 2                   ; 0x4942
    test byte [bp - 0x000b], 2       ; 0x4945
    je short @..sprintf.l14          ; 0x4949
    mov dx, word [es:di]             ; 0x494b
    add di, byte 2                   ; 0x494e
    jmp short @..sprintf.l15         ; 0x4951
@..sprintf.l14:
    sub dx, dx                       ; 0x4953
    test ch, ch                      ; 0x4955
    je short @..sprintf.l16          ; 0x4957
    cwd                              ; 0x4959
@..sprintf.l15:
    test ch, ch                      ; 0x495a
    je short @..sprintf.l16          ; 0x495c
    mov ch, byte [bp - 0x000e]       ; 0x495e
    mov byte [bp - 0x000d], ch       ; 0x4961
    test dx, dx                      ; 0x4964
    jns short @..sprintf.l16         ; 0x4966
    mov byte [bp - 0x000d], 0x2d     ; 0x4968
    neg dx                           ; 0x496c
    neg ax                           ; 0x496e
    sbb dx, byte 0                   ; 0x4970
@..sprintf.l16:
    mov word [bp + 0x8], di          ; 0x4973
    cmp word [bp - 0x0006], byte 0   ; 0x4976
    jge short @..sprintf.l17         ; 0x497a
    mov word [bp - 0x0006], 1        ; 0x497c
@..sprintf.l17:
    mov ch, 0                        ; 0x4981
    mov di, ss                       ; 0x4983
    mov es, di                       ; 0x4985
    lea di, word [bp - 0x0140]       ; 0x4987
@..sprintf.l18:
    test dx, dx                      ; 0x498b
    jne short @..sprintf.l19         ; 0x498d
    test ax, ax                      ; 0x498f
    je short @..sprintf.l22          ; 0x4991
@..sprintf.l19:
    sub bx, bx                       ; 0x4993
    cmp cx, dx                       ; 0x4995
    ja short @..sprintf.l20          ; 0x4997
    push ax                          ; 0x4999
    mov ax, dx                       ; 0x499a
    sub dx, dx                       ; 0x499c
    div cx                           ; 0x499e
    mov bx, ax                       ; 0x49a0
    pop ax                           ; 0x49a2
    div cx                           ; 0x49a3
    jmp short @..sprintf.l21         ; 0x49a5
@..sprintf.l20:
    div cx                           ; 0x49a7
@..sprintf.l21:
    xchg bx, dx                      ; 0x49a9
    mov bl, byte [cs:bx + cseg_484c - IMAGE_BASE] ; 0x49ab
    dec di                           ; 0x49b0
    mov byte [es:di], bl             ; 0x49b1
    jmp short @..sprintf.l18         ; 0x49b4
@..sprintf.l22:
    test byte [bp - 0x000b], 0x10    ; 0x49b6
    je short @..sprintf.l24          ; 0x49ba
    cmp cl, 0xa                      ; 0x49bc
    je short @..sprintf.l24          ; 0x49bf
    cmp cl, 0x10                     ; 0x49c1
    jne short @..sprintf.l23         ; 0x49c4
    mov byte [bp - 0x000d], 0x78     ; 0x49c6
    jmp short @..sprintf.l24         ; 0x49ca
@..sprintf.l23:
    dec di                           ; 0x49cc
    mov byte [es:di], 0x30           ; 0x49cd
@..sprintf.l24:
    lea cx, word [bp - 0x0140]       ; 0x49d1
    sub cx, di                       ; 0x49d5
    mov ax, word [bp - 0x0006]       ; 0x49d7
    sub ax, cx                       ; 0x49da
    mov word [bp - 0x0006], ax       ; 0x49dc
    jle short @..sprintf.l25         ; 0x49df
    sub word [bp - 0x0004], ax       ; 0x49e1
@..sprintf.l25:
    mov word [bp - 0x0008], cx       ; 0x49e4
    cmp byte [bp - 0x000d], 0        ; 0x49e7
    je short @..sprintf.l27          ; 0x49eb
    cmp byte [bp - 0x000d], 0x78     ; 0x49ed
    jne short @..sprintf.l26         ; 0x49f1
    dec word [bp - 0x0004]           ; 0x49f3
@..sprintf.l26:
    dec word [bp - 0x0004]           ; 0x49f6
@..sprintf.l27:
    sub word [bp - 0x0004], cx       ; 0x49f9
    jle short @..sprintf.l29         ; 0x49fc
    test byte [bp - 0x000b], 8       ; 0x49fe
    jne short @..sprintf.l29         ; 0x4a02
    cmp byte [bp - 0x000c], 0x30     ; 0x4a04
    jne short @..sprintf.l28         ; 0x4a08
    call ds_loc_MRST                 ; 0x4a0a
@..sprintf.l28:
    mov al, byte [bp - 0x000c]       ; 0x4a0d
    call ds_loc_NJTI                 ; 0x4a10
    dec word [bp - 0x0004]           ; 0x4a13
    jg short @..sprintf.l28          ; 0x4a16
@..sprintf.l29:
    call ds_loc_MRST                 ; 0x4a18
@..sprintf.l30:
    dec word [bp - 0x0006]           ; 0x4a1b
    js short @..sprintf.l31          ; 0x4a1e
    mov al, 0x30                     ; 0x4a20
    call ds_loc_NJTI                 ; 0x4a22
    jmp short @..sprintf.l30         ; 0x4a25
@..sprintf.l31:
    dec word [bp - 0x0008]           ; 0x4a27
    js short @..sprintf.l32          ; 0x4a2a
    mov al, byte [es:di]             ; 0x4a2c
    inc di                           ; 0x4a2f
    call ds_loc_NJTI                 ; 0x4a30
    jmp short @..sprintf.l31         ; 0x4a33
@..sprintf.l32:
    dec word [bp - 0x0004]           ; 0x4a35
    js short @..sprintf.l33          ; 0x4a38
    mov al, 0x20                     ; 0x4a3a
    call ds_loc_NJTI                 ; 0x4a3c
    jmp short @..sprintf.l32         ; 0x4a3f
@..sprintf.l33:
    jmp near @..sprintf.l1           ; 0x4a41
ds_loc_GHJS:
    or byte [bp - 0x000b], 0x20      ; 0x4a44
    add al, 0x20                     ; 0x4a48
ds_loc_RLKL:
    add word [bp + 0x8], byte 8      ; 0x4a4a
    mov ax, cs                       ; 0x4a4e
    mov es, ax                       ; 0x4a50
    mov di, 0x465c                   ; 0x4a52
    sub word [bp - 0x0004], byte 0x0a ; 0x4a55
    jmp short @..sprintf.l31         ; 0x4a59
ds_loc_QMOJ:
    call ds_leaf_loc_GSJQ            ; 0x4a5b
    push di                          ; 0x4a5e
    mov al, 0                        ; 0x4a5f
    mov cx, 0xffff                   ; 0x4a61
    repne scasb                      ; 0x4a64
    not cx                           ; 0x4a66
    dec cx                           ; 0x4a68
    cmp cx, word [bp - 0x0006]       ; 0x4a69
    jbe short @..sprintf.l34         ; 0x4a6c
    mov cx, word [bp - 0x0006]       ; 0x4a6e
@..sprintf.l34:
    pop di                           ; 0x4a71
    mov word [bp - 0x0006], 0        ; 0x4a72
    jmp near @..sprintf.l25          ; 0x4a77
ds_loc_OKTP:
    push ds                          ; 0x4a7a
    pop es                           ; 0x4a7b
    mov di, word [bp + 0x8]          ; 0x4a7c
    mov al, byte [es:di]             ; 0x4a7f
    add di, byte 2                   ; 0x4a82
    mov word [bp + 0x8], di          ; 0x4a85
    mov byte [bp - 0x0154], al       ; 0x4a88
    mov cx, 1                        ; 0x4a8c
    mov ax, ss                       ; 0x4a8f
    mov es, ax                       ; 0x4a91
    lea di, word [bp - 0x0154]       ; 0x4a93
    mov word [bp - 0x0006], 0        ; 0x4a97
    jmp near @..sprintf.l25          ; 0x4a9c
ds_string_loc_4a9f:
    jmp near @..sprintf.l1           ; 0x4a9f
ds_string_loc_4aa2:
    call ds_leaf_loc_GSJQ            ; 0x4aa2
    mov ax, word [bp - 0x0002]       ; 0x4aa5
    mov word [es:di], ax             ; 0x4aa8
    test byte [bp - 0x000b], 2       ; 0x4aab
    je short @..sprintf.l35          ; 0x4aaf
    mov word [es:di + 0x2], 0        ; 0x4ab1
@..sprintf.l35:
    jmp near @..sprintf.l1           ; 0x4ab7
ds_loc_MRST:
    mov al, byte [bp - 0x000d]       ; 0x4aba
    test al, al                      ; 0x4abd
    je short ds_loc_PLIR             ; 0x4abf
    cmp al, 0x78                     ; 0x4ac1
    jne short @..ds_loc_MRST.l1      ; 0x4ac3
    mov al, 0x30                     ; 0x4ac5
    call ds_loc_NJTI                 ; 0x4ac7
    mov al, 0x78                     ; 0x4aca
@..ds_loc_MRST.l1:
    mov byte [bp - 0x000d], 0        ; 0x4acc
ds_loc_NJTI:
    inc word [bp - 0x0002]           ; 0x4ad0
    test byte [bp - 0x000b], 0x20    ; 0x4ad3
    je short @..ds_loc_NJTI.l1       ; 0x4ad7
    cmp al, 0x61                     ; 0x4ad9
    jb short @..ds_loc_NJTI.l1       ; 0x4adb
    cmp al, 0x7a                     ; 0x4add
    ja short @..ds_loc_NJTI.l1       ; 0x4adf
    sub al, 0x20                     ; 0x4ae1
@..ds_loc_NJTI.l1:
    push es                          ; 0x4ae3
    sub ah, ah                       ; 0x4ae4
    push ax                          ; 0x4ae6
    call [bp + 0x4]                  ; 0x4ae7
    pop ax                           ; 0x4aea
    pop es                           ; 0x4aeb
ds_loc_PLIR:
    ret                              ; 0x4aec
