; auto-generated
; asm only
aztec_format:
    push bp                          ; 0x4867
    mov bp, sp                       ; 0x4868
    sub sp, strict word 0x154        ; 0x486a
    push di                          ; 0x486e
    push si                          ; 0x486f
    cld                              ; 0x4870
    mov si, word [bp + 0x6]          ; 0x4871
    mov word [bp - 0x0002], 0        ; 0x4874
@..aztec_format.l1:
    mov byte [bp - 0x000b], 0        ; 0x4879
    lodsb                            ; 0x487d
    cmp al, 0x25                     ; 0x487e
    je short @..aztec_format.l3      ; 0x4880
jumptable_4822_case_20:
    test al, al                      ; 0x4882
    je short @..aztec_format.l2      ; 0x4884
    call ds_loc_NJTI                 ; 0x4886
    jmp short @..aztec_format.l1     ; 0x4889
@..aztec_format.l2:
    mov ax, word [bp - 0x0002]       ; 0x488b
    pop si                           ; 0x488e
    pop di                           ; 0x488f
    mov sp, bp                       ; 0x4890
    pop bp                           ; 0x4892
    ret                              ; 0x4893
@..aztec_format.l3:
    mov byte [bp - 0x000c], 0x20     ; 0x4894
    mov byte [bp - 0x000e], 0        ; 0x4898
    mov byte [bp - 0x000d], 0        ; 0x489c
    mov word [bp - 0x0006], 0xffff   ; 0x48a0
@..aztec_format.l4:
    lodsb                            ; 0x48a5
    cmp al, 0x2d                     ; 0x48a6
    jne short @..aztec_format.l5     ; 0x48a8
    or byte [bp - 0x000b], 8         ; 0x48aa
    jmp short @..aztec_format.l4     ; 0x48ae
@..aztec_format.l5:
    cmp al, 0x2b                     ; 0x48b0
    jne short @..aztec_format.l6     ; 0x48b2
    mov byte [bp - 0x000e], 0x2b     ; 0x48b4
    jmp short @..aztec_format.l4     ; 0x48b8
@..aztec_format.l6:
    cmp al, 0x20                     ; 0x48ba
    jne short @..aztec_format.l7     ; 0x48bc
    cmp byte [bp - 0x000e], 0        ; 0x48be
    jne short @..aztec_format.l4     ; 0x48c2
    mov byte [bp - 0x000e], 0x20     ; 0x48c4
    jmp short @..aztec_format.l4     ; 0x48c8
@..aztec_format.l7:
    cmp al, 0x23                     ; 0x48ca
    jne short @..aztec_format.l8     ; 0x48cc
    or byte [bp - 0x000b], 0x10      ; 0x48ce
    jmp short @..aztec_format.l4     ; 0x48d2
@..aztec_format.l8:
    cmp al, 0x30                     ; 0x48d4
    jne short @..aztec_format.l9     ; 0x48d6
    mov byte [bp - 0x000c], 0x30     ; 0x48d8
    lodsb                            ; 0x48dc
@..aztec_format.l9:
    call ds_string_loc_TRQP          ; 0x48dd
    test dx, dx                      ; 0x48e0
    jns short @..aztec_format.l10    ; 0x48e2
    neg dx                           ; 0x48e4
    or byte [bp - 0x000b], 8         ; 0x48e6
@..aztec_format.l10:
    mov word [bp - 0x0004], dx       ; 0x48ea
    cmp al, 0x2e                     ; 0x48ed
    jne short @..aztec_format.l11    ; 0x48ef
    lodsb                            ; 0x48f1
    call ds_string_loc_TRQP          ; 0x48f2
    mov word [bp - 0x0006], dx       ; 0x48f5
@..aztec_format.l11:
    mov di, cs                       ; 0x48f8
    mov es, di                       ; 0x48fa
@..aztec_format.l12:
    mov di, cseg_480d - IMAGE_BASE   ; 0x48fc
    mov cx, 0x15                     ; 0x48ff
    repne scasb                      ; 0x4902
    sub di, cseg_480e - IMAGE_BASE   ; 0x4904
    shl di, 1                        ; 0x4908
    jmp [cs:di + jumptable_4822 - IMAGE_BASE] ; 0x490a
jumptable_4822_case_0:
    or byte [bp - 0x000b], 1         ; 0x490f
    lodsb                            ; 0x4913
    jmp short @..aztec_format.l12    ; 0x4914
jumptable_4822_case_1:
    or byte [bp - 0x000b], 2         ; 0x4916
jumptable_4822_case_2:
    lodsb                            ; 0x491a
    jmp short @..aztec_format.l12    ; 0x491b
jumptable_4822_case_3:
    or byte [bp - 0x000b], 4         ; 0x491d
    lodsb                            ; 0x4921
    jmp short @..aztec_format.l12    ; 0x4922
jumptable_4822_case_5:
    mov cx, 8                        ; 0x4924
    jmp short @..aztec_format.l13    ; 0x4927
jumptable_4822_case_7:
    or byte [bp - 0x000b], 0x20      ; 0x4929
jumptable_4822_case_6:
    mov cx, 0x10                     ; 0x492d
    jmp short @..aztec_format.l13    ; 0x4930
jumptable_4822_case_8:
    mov cx, 0xa                      ; 0x4932
    jmp short @..aztec_format.l13    ; 0x4935
jumptable_4822_case_9:
    mov cx, 0xff0a                   ; 0x4937
@..aztec_format.l13:
    push ds                          ; 0x493a
    pop es                           ; 0x493b
    mov di, word [bp + 0x8]          ; 0x493c
    mov ax, word [es:di]             ; 0x493f
    add di, byte 2                   ; 0x4942
    test byte [bp - 0x000b], 2       ; 0x4945
    je short @..aztec_format.l14     ; 0x4949
    mov dx, word [es:di]             ; 0x494b
    add di, byte 2                   ; 0x494e
    jmp short @..aztec_format.l15    ; 0x4951
@..aztec_format.l14:
    sub dx, dx                       ; 0x4953
    test ch, ch                      ; 0x4955
    je short @..aztec_format.l16     ; 0x4957
    cwd                              ; 0x4959
@..aztec_format.l15:
    test ch, ch                      ; 0x495a
    je short @..aztec_format.l16     ; 0x495c
    mov ch, byte [bp - 0x000e]       ; 0x495e
    mov byte [bp - 0x000d], ch       ; 0x4961
    test dx, dx                      ; 0x4964
    jns short @..aztec_format.l16    ; 0x4966
    mov byte [bp - 0x000d], 0x2d     ; 0x4968
    neg dx                           ; 0x496c
    neg ax                           ; 0x496e
    sbb dx, byte 0                   ; 0x4970
@..aztec_format.l16:
    mov word [bp + 0x8], di          ; 0x4973
    cmp word [bp - 0x0006], byte 0   ; 0x4976
    jge short @..aztec_format.l17    ; 0x497a
    mov word [bp - 0x0006], 1        ; 0x497c
@..aztec_format.l17:
    mov ch, 0                        ; 0x4981
    mov di, ss                       ; 0x4983
    mov es, di                       ; 0x4985
    lea di, word [bp - 0x0140]       ; 0x4987
@..aztec_format.l18:
    test dx, dx                      ; 0x498b
    jne short @..aztec_format.l19    ; 0x498d
    test ax, ax                      ; 0x498f
    je short @..aztec_format.l22     ; 0x4991
@..aztec_format.l19:
    sub bx, bx                       ; 0x4993
    cmp cx, dx                       ; 0x4995
    ja short @..aztec_format.l20     ; 0x4997
    push ax                          ; 0x4999
    mov ax, dx                       ; 0x499a
    sub dx, dx                       ; 0x499c
    div cx                           ; 0x499e
    mov bx, ax                       ; 0x49a0
    pop ax                           ; 0x49a2
    div cx                           ; 0x49a3
    jmp short @..aztec_format.l21    ; 0x49a5
@..aztec_format.l20:
    div cx                           ; 0x49a7
@..aztec_format.l21:
    xchg bx, dx                      ; 0x49a9
    mov bl, byte [cs:bx + cseg_484c - IMAGE_BASE] ; 0x49ab
    dec di                           ; 0x49b0
    mov byte [es:di], bl             ; 0x49b1
    jmp short @..aztec_format.l18    ; 0x49b4
@..aztec_format.l22:
    test byte [bp - 0x000b], 0x10    ; 0x49b6
    je short @..aztec_format.l24     ; 0x49ba
    cmp cl, 0xa                      ; 0x49bc
    je short @..aztec_format.l24     ; 0x49bf
    cmp cl, 0x10                     ; 0x49c1
    jne short @..aztec_format.l23    ; 0x49c4
    mov byte [bp - 0x000d], 0x78     ; 0x49c6
    jmp short @..aztec_format.l24    ; 0x49ca
@..aztec_format.l23:
    dec di                           ; 0x49cc
    mov byte [es:di], 0x30           ; 0x49cd
@..aztec_format.l24:
    lea cx, word [bp - 0x0140]       ; 0x49d1
    sub cx, di                       ; 0x49d5
    mov ax, word [bp - 0x0006]       ; 0x49d7
    sub ax, cx                       ; 0x49da
    mov word [bp - 0x0006], ax       ; 0x49dc
    jle short @..aztec_format.l25    ; 0x49df
    sub word [bp - 0x0004], ax       ; 0x49e1
@..aztec_format.l25:
    mov word [bp - 0x0008], cx       ; 0x49e4
    cmp byte [bp - 0x000d], 0        ; 0x49e7
    je short @..aztec_format.l27     ; 0x49eb
    cmp byte [bp - 0x000d], 0x78     ; 0x49ed
    jne short @..aztec_format.l26    ; 0x49f1
    dec word [bp - 0x0004]           ; 0x49f3
@..aztec_format.l26:
    dec word [bp - 0x0004]           ; 0x49f6
@..aztec_format.l27:
    sub word [bp - 0x0004], cx       ; 0x49f9
    jle short @..aztec_format.l29    ; 0x49fc
    test byte [bp - 0x000b], 8       ; 0x49fe
    jne short @..aztec_format.l29    ; 0x4a02
    cmp byte [bp - 0x000c], 0x30     ; 0x4a04
    jne short @..aztec_format.l28    ; 0x4a08
    call ds_loc_MRST                 ; 0x4a0a
@..aztec_format.l28:
    mov al, byte [bp - 0x000c]       ; 0x4a0d
    call ds_loc_NJTI                 ; 0x4a10
    dec word [bp - 0x0004]           ; 0x4a13
    jg short @..aztec_format.l28     ; 0x4a16
@..aztec_format.l29:
    call ds_loc_MRST                 ; 0x4a18
@..aztec_format.l30:
    dec word [bp - 0x0006]           ; 0x4a1b
    js short @..aztec_format.l31     ; 0x4a1e
    mov al, 0x30                     ; 0x4a20
    call ds_loc_NJTI                 ; 0x4a22
    jmp short @..aztec_format.l30    ; 0x4a25
@..aztec_format.l31:
    dec word [bp - 0x0008]           ; 0x4a27
    js short @..aztec_format.l32     ; 0x4a2a
    mov al, byte [es:di]             ; 0x4a2c
    inc di                           ; 0x4a2f
    call ds_loc_NJTI                 ; 0x4a30
    jmp short @..aztec_format.l31    ; 0x4a33
@..aztec_format.l32:
    dec word [bp - 0x0004]           ; 0x4a35
    js short @..aztec_format.l33     ; 0x4a38
    mov al, 0x20                     ; 0x4a3a
    call ds_loc_NJTI                 ; 0x4a3c
    jmp short @..aztec_format.l32    ; 0x4a3f
@..aztec_format.l33:
    jmp near @..aztec_format.l1      ; 0x4a41
jumptable_4822_case_16:
    or byte [bp - 0x000b], 0x20      ; 0x4a44
    add al, 0x20                     ; 0x4a48
jumptable_4822_case_15:
    add word [bp + 0x8], byte 8      ; 0x4a4a
    mov ax, cs                       ; 0x4a4e
    mov es, ax                       ; 0x4a50
    mov di, 0x465c                   ; 0x4a52
    sub word [bp - 0x0004], byte 0x0a ; 0x4a55
    jmp short @..aztec_format.l31    ; 0x4a59
jumptable_4822_case_11:
    call ds_leaf_loc_GSJQ            ; 0x4a5b
    push di                          ; 0x4a5e
    mov al, 0                        ; 0x4a5f
    mov cx, 0xffff                   ; 0x4a61
    repne scasb                      ; 0x4a64
    not cx                           ; 0x4a66
    dec cx                           ; 0x4a68
    cmp cx, word [bp - 0x0006]       ; 0x4a69
    jbe short @..aztec_format.l34    ; 0x4a6c
    mov cx, word [bp - 0x0006]       ; 0x4a6e
@..aztec_format.l34:
    pop di                           ; 0x4a71
    mov word [bp - 0x0006], 0        ; 0x4a72
    jmp near @..aztec_format.l25     ; 0x4a77
jumptable_4822_case_12:
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
    jmp near @..aztec_format.l25     ; 0x4a9c
jumptable_4822_case_13:
    jmp near @..aztec_format.l1      ; 0x4a9f
jumptable_4822_case_14:
    call ds_leaf_loc_GSJQ            ; 0x4aa2
    mov ax, word [bp - 0x0002]       ; 0x4aa5
    mov word [es:di], ax             ; 0x4aa8
    test byte [bp - 0x000b], 2       ; 0x4aab
    je short @..aztec_format.l35     ; 0x4aaf
    mov word [es:di + 0x2], 0        ; 0x4ab1
@..aztec_format.l35:
    jmp near @..aztec_format.l1      ; 0x4ab7
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
