; auto-generated
loc_IPHP:
    mov ax, 0xfea8                   ; 0x9587
    call aztec_csav                  ; 0x958a
    mov ax, word [bp + 0x4]          ; 0x958d
    mov word [bp - 0x0008], ax       ; 0x9590
    push ax                          ; 0x9593
    call aztec_strlen                ; 0x9594
    pop cx                           ; 0x9597
    mov word [bp - 0x0004], ax       ; 0x9598
    mov bx, word [bp + 0x4]          ; 0x959b
    mov si, ax                       ; 0x959e
    mov byte [bx + si + 0x1], 0      ; 0x95a0
    mov byte [bp - 0x0088], 0        ; 0x95a4
@..loc_IPHP.l1:
    mov bx, word [bp - 0x0008]       ; 0x95a9
    cmp byte [bx], 0                 ; 0x95ac
    jne short @..loc_IPHP.l2         ; 0x95af
    jmp near @..loc_IPHP.l7          ; 0x95b1
@..loc_IPHP.l2:
    mov ax, 0x20                     ; 0x95b4
    push ax                          ; 0x95b7
    push bx                          ; 0x95b8
    call strpos                      ; 0x95b9
    add sp, byte 4                   ; 0x95bc
    mov word [bp - 0x0002], ax       ; 0x95bf
    push ax                          ; 0x95c2
    cmp ax, strict word 0            ; 0x95c3
    pop ax                           ; 0x95c6
    jge short @..loc_IPHP.l3         ; 0x95c7
    push word [bp - 0x0008]          ; 0x95c9
    call aztec_strlen                ; 0x95cc
    pop cx                           ; 0x95cf
@..loc_IPHP.l3:
    mov word [bp - 0x0006], ax       ; 0x95d0
    push ax                          ; 0x95d3
    push word [bp - 0x0008]          ; 0x95d4
    lea ax, word [bp - 0x0158]       ; 0x95d7
    push ax                          ; 0x95db
    call aztec_strncpy               ; 0x95dc
    add sp, byte 6                   ; 0x95df
    mov bx, word [bp - 0x0006]       ; 0x95e2
    add bx, bp                       ; 0x95e5
    mov byte [bx - 0x0158], 0        ; 0x95e7
    lea ax, word [bp - 0x0088]       ; 0x95ec
    push ax                          ; 0x95f0
    lea ax, word [bp - 0x0158]       ; 0x95f1
    push ax                          ; 0x95f5
    call api_idx_000a_HIIM           ; 0x95f6
    add sp, byte 4                   ; 0x95f9
    lea ax, word [bp - 0x0088]       ; 0x95fc
    push ax                          ; 0x9600
    lea ax, word [bp - 0x0108]       ; 0x9601
    push ax                          ; 0x9605
    call aztec_strcpy                ; 0x9606
    add sp, byte 4                   ; 0x9609
    cmp byte [bp - 0x0088], 0        ; 0x960c
    je short @..loc_IPHP.l4          ; 0x9611
    mov ax, dseg_90ee                ; 0x9613
    push ax                          ; 0x9616
    lea ax, word [bp - 0x0108]       ; 0x9617
    push ax                          ; 0x961b
    call aztec_strcat                ; 0x961c
    add sp, byte 4                   ; 0x961f
@..loc_IPHP.l4:
    lea ax, word [bp - 0x0158]       ; 0x9622
    push ax                          ; 0x9626
    lea ax, word [bp - 0x0108]       ; 0x9627
    push ax                          ; 0x962b
    call aztec_strcat                ; 0x962c
    add sp, byte 4                   ; 0x962f
    mov ax, 2                        ; 0x9632
    push ax                          ; 0x9635
    lea ax, word [bp - 0x0108]       ; 0x9636
    push ax                          ; 0x963a
    call ds_loc_JJGM                 ; 0x963b
    add sp, byte 4                   ; 0x963e
    mov word [bp - 0x0004], ax       ; 0x9641
    cmp ax, 0xb8                     ; 0x9644
    jle short @..loc_IPHP.l5         ; 0x9647
    lea ax, word [bp - 0x0088]       ; 0x9649
    push ax                          ; 0x964d
    mov ax, word [bss_93d4]          ; 0x964e
    mov cx, 7                        ; 0x9651
    shl ax, cl                       ; 0x9654
    add ax, 0x91cc                   ; 0x9656
    push ax                          ; 0x9659
    call aztec_strcpy                ; 0x965a
    add sp, byte 4                   ; 0x965d
    mov ax, word [bss_93d4]          ; 0x9660
    shl ax, 1                        ; 0x9663
    mov bx, ax                       ; 0x9665
    mov word [bx - 0x6c34], 2        ; 0x9667
    call api_idx_000e_OOOK           ; 0x966d
    call api_idx_0004_KNGG           ; 0x9670
    lea ax, word [bp - 0x0158]       ; 0x9673
    push ax                          ; 0x9677
    lea ax, word [bp - 0x0088]       ; 0x9678
    push ax                          ; 0x967c
    call aztec_strcpy                ; 0x967d
    add sp, byte 4                   ; 0x9680
    jmp short @..loc_IPHP.l6         ; 0x9683
@..loc_IPHP.l5:
    lea ax, word [bp - 0x0108]       ; 0x9685
    push ax                          ; 0x9689
    lea ax, word [bp - 0x0088]       ; 0x968a
    push ax                          ; 0x968e
    call aztec_strcpy                ; 0x968f
    add sp, byte 4                   ; 0x9692
@..loc_IPHP.l6:
    mov ax, word [bp - 0x0006]       ; 0x9695
    add word [bp - 0x0008], ax       ; 0x9698
    add word [bp - 0x0008], byte 1   ; 0x969b
    jmp near @..loc_IPHP.l1          ; 0x969f
@..loc_IPHP.l7:
    lea ax, word [bp - 0x0088]       ; 0x96a2
    push ax                          ; 0x96a6
    mov ax, word [bss_93d4]          ; 0x96a7
    mov cx, 7                        ; 0x96aa
    shl ax, cl                       ; 0x96ad
    add ax, 0x91cc                   ; 0x96af
    push ax                          ; 0x96b2
    call aztec_strcpy                ; 0x96b3
    add sp, byte 4                   ; 0x96b6
    mov ax, word [bss_93d4]          ; 0x96b9
    shl ax, 1                        ; 0x96bc
    mov bx, ax                       ; 0x96be
    mov word [bx - 0x6c34], 2        ; 0x96c0
    ret                              ; 0x96c6
