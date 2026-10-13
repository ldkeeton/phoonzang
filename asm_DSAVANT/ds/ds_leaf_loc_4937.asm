; auto-generated
ds_leaf_loc_4937:
    mov cx, 0xff0a                   ; 0x4937
ds_loc_493a:
    push ds                          ; 0x493a
    pop es                           ; 0x493b
    mov di, word [bp + 0x8]          ; 0x493c
    mov ax, word [es:di]             ; 0x493f
    add di, byte 2                   ; 0x4942
    test byte [bp - 0x000b], 2       ; 0x4945
    je short ds_loc_4953             ; 0x4949
    mov dx, word [es:di]             ; 0x494b
    add di, byte 2                   ; 0x494e
    jmp short ds_loc_495a            ; 0x4951
ds_loc_4953:
    sub dx, dx                       ; 0x4953
    test ch, ch                      ; 0x4955
    je short ds_loc_4973             ; 0x4957
    cwd                              ; 0x4959
ds_loc_495a:
    test ch, ch                      ; 0x495a
    je short ds_loc_4973             ; 0x495c
    mov ch, byte [bp - 0x000e]       ; 0x495e
    mov byte [bp - 0x000d], ch       ; 0x4961
    test dx, dx                      ; 0x4964
    jns short ds_loc_4973            ; 0x4966
    mov byte [bp - 0x000d], 0x2d     ; 0x4968
    neg dx                           ; 0x496c
    neg ax                           ; 0x496e
    sbb dx, byte 0                   ; 0x4970
ds_loc_4973:
    mov word [bp + 0x8], di          ; 0x4973
    cmp word [bp - 0x0006], byte 0   ; 0x4976
    jge short ds_loc_4981            ; 0x497a
    mov word [bp - 0x0006], 1        ; 0x497c
ds_loc_4981:
    mov ch, 0                        ; 0x4981
    mov di, ss                       ; 0x4983
    mov es, di                       ; 0x4985
    lea di, word [bp - 0x0140]       ; 0x4987
ds_loc_498b:
    test dx, dx                      ; 0x498b
    jne short ds_loc_4993            ; 0x498d
    test ax, ax                      ; 0x498f
    je short ds_loc_49b6             ; 0x4991
ds_loc_4993:
    sub bx, bx                       ; 0x4993
    cmp cx, dx                       ; 0x4995
    ja short ds_loc_49a7             ; 0x4997
    push ax                          ; 0x4999
    mov ax, dx                       ; 0x499a
    sub dx, dx                       ; 0x499c
    div cx                           ; 0x499e
    mov bx, ax                       ; 0x49a0
    pop ax                           ; 0x49a2
    div cx                           ; 0x49a3
    jmp short ds_loc_49a9            ; 0x49a5
ds_loc_49a7:
    div cx                           ; 0x49a7
ds_loc_49a9:
    xchg bx, dx                      ; 0x49a9
    mov bl, byte [cs:bx + 0x464c]    ; 0x49ab
    dec di                           ; 0x49b0
    mov byte [es:di], bl             ; 0x49b1
    jmp short ds_loc_498b            ; 0x49b4
ds_loc_49b6:
    test byte [bp - 0x000b], 0x10    ; 0x49b6
    je short ds_loc_49d1             ; 0x49ba
    cmp cl, 0xa                      ; 0x49bc
    je short ds_loc_49d1             ; 0x49bf
    cmp cl, 0x10                     ; 0x49c1
    jne short ds_loc_49cc            ; 0x49c4
    mov byte [bp - 0x000d], 0x78     ; 0x49c6
    jmp short ds_loc_49d1            ; 0x49ca
ds_loc_49cc:
    dec di                           ; 0x49cc
    mov byte [es:di], 0x30           ; 0x49cd
ds_loc_49d1:
    lea cx, word [bp - 0x0140]       ; 0x49d1
    sub cx, di                       ; 0x49d5
    mov ax, word [bp - 0x0006]       ; 0x49d7
    sub ax, cx                       ; 0x49da
    mov word [bp - 0x0006], ax       ; 0x49dc
    jle short ds_loc_49e4            ; 0x49df
    sub word [bp - 0x0004], ax       ; 0x49e1
ds_loc_49e4:
    mov word [bp - 0x0008], cx       ; 0x49e4
    cmp byte [bp - 0x000d], 0        ; 0x49e7
    je short ds_loc_49f9             ; 0x49eb
    cmp byte [bp - 0x000d], 0x78     ; 0x49ed
    jne short ds_loc_49f6            ; 0x49f1
    dec word [bp - 0x0004]           ; 0x49f3
ds_loc_49f6:
    dec word [bp - 0x0004]           ; 0x49f6
ds_loc_49f9:
    sub word [bp - 0x0004], cx       ; 0x49f9
    jle short ds_loc_4a18            ; 0x49fc
    test byte [bp - 0x000b], 8       ; 0x49fe
    jne short ds_loc_4a18            ; 0x4a02
    cmp byte [bp - 0x000c], 0x30     ; 0x4a04
    jne short ds_loc_4a0d            ; 0x4a08
    call ds_loc_4aba                 ; 0x4a0a
ds_loc_4a0d:
    mov al, byte [bp - 0x000c]       ; 0x4a0d
    call ds_loc_4ad0                 ; 0x4a10
    dec word [bp - 0x0004]           ; 0x4a13
    jg short ds_loc_4a0d             ; 0x4a16
ds_loc_4a18:
    call ds_loc_4aba                 ; 0x4a18
ds_loc_4a1b:
    dec word [bp - 0x0006]           ; 0x4a1b
    js short ds_loc_4a27             ; 0x4a1e
    mov al, 0x30                     ; 0x4a20
    call ds_loc_4ad0                 ; 0x4a22
    jmp short ds_loc_4a1b            ; 0x4a25
ds_loc_4a27:
    dec word [bp - 0x0008]           ; 0x4a27
    js short ds_loc_4a35             ; 0x4a2a
    mov al, byte [es:di]             ; 0x4a2c
    inc di                           ; 0x4a2f
    call ds_loc_4ad0                 ; 0x4a30
    jmp short ds_loc_4a27            ; 0x4a33
ds_loc_4a35:
    dec word [bp - 0x0004]           ; 0x4a35
    js short ds_loc_4a41             ; 0x4a38
    mov al, 0x20                     ; 0x4a3a
    call ds_loc_4ad0                 ; 0x4a3c
    jmp short ds_loc_4a35            ; 0x4a3f
ds_loc_4a41:
    jmp near ds_loc_4879             ; 0x4a41
ds_loc_4a44:
    or byte [bp - 0x000b], 0x20      ; 0x4a44
    add al, 0x20                     ; 0x4a48
ds_loc_4a4a:
    add word [bp + 0x8], byte 8      ; 0x4a4a
    mov ax, cs                       ; 0x4a4e
    mov es, ax                       ; 0x4a50
    mov di, 0x465c                   ; 0x4a52
    sub word [bp - 0x0004], byte 0x0a ; 0x4a55
    jmp short ds_loc_4a27            ; 0x4a59
ds_loc_4a5b:
    call ds_leaf_loc_4aed            ; 0x4a5b
    push di                          ; 0x4a5e
    mov al, 0                        ; 0x4a5f
    mov cx, 0xffff                   ; 0x4a61
    repne scasb                      ; 0x4a64
    not cx                           ; 0x4a66
    dec cx                           ; 0x4a68
    cmp cx, word [bp - 0x0006]       ; 0x4a69
    jbe short ds_loc_4a71            ; 0x4a6c
    mov cx, word [bp - 0x0006]       ; 0x4a6e
ds_loc_4a71:
    pop di                           ; 0x4a71
    mov word [bp - 0x0006], 0        ; 0x4a72
    jmp near ds_loc_49e4             ; 0x4a77
ds_loc_4a7a:
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
    jmp near ds_loc_49e4             ; 0x4a9c
