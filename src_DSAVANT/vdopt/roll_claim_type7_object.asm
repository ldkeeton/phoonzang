; auto-generated
roll_claim_type7_object:
    mov ax, 0xfff2                   ; 0x06e8
    call aztec_csav                  ; 0x06eb
    call find_party_type7_object     ; 0x06ee
    mov word [bp - 0x000e], ax       ; 0x06f1
    cmp ax, strict word 0xffff       ; 0x06f4
    jne short @..roll_claim_type7_object.l1 ; 0x06f7
    mov ax, 0xffff                   ; 0x06f9
    ret                              ; 0x06fc
@..roll_claim_type7_object.l1:
    mov ax, word [bp - 0x000e]       ; 0x06fd
    shl ax, 1                        ; 0x0700
    mov si, ax                       ; 0x0702
    mov bx, word [maze_tables]       ; 0x0704
    mov ax, word [bx + si + maze_tables_rec.f_01e0] ; 0x0708
    mov word [bp - 0x0006], ax       ; 0x070c
    mov si, word [bp - 0x000e]       ; 0x070f
    mov al, byte [bx + si + spell_table + spell_table_rec_size*178 + spell_table_rec.f_0004] ; 0x0712
    sub ah, ah                       ; 0x0716
    mov word [bp - 0x0002], ax       ; 0x0718
    mov ax, 5                        ; 0x071b
    push ax                          ; 0x071e
    mov ax, 0                        ; 0x071f
    push ax                          ; 0x0722
    push word [bp - 0x0002]          ; 0x0723
    call get_bits                    ; 0x0726
    add sp, byte 6                   ; 0x0729
    mov word [bp - 0x0004], ax       ; 0x072c
    mov word [bp - 0x000a], 0        ; 0x072f
    mov ax, word [bp - 0x000e]       ; 0x0734
    shl ax, 1                        ; 0x0737
    mov si, ax                       ; 0x0739
    mov bx, word [maze_tables]       ; 0x073b
    mov ax, word [bx + si + maze_tables_rec.f_03c0] ; 0x073f
    mov word [bp - 0x0002], ax       ; 0x0743
    mov ax, 2                        ; 0x0746
    push ax                          ; 0x0749
    mov ax, word [party_tag]         ; 0x074a
    shl ax, 1                        ; 0x074d
    push ax                          ; 0x074f
    push word [bp - 0x0002]          ; 0x0750
    call get_bits                    ; 0x0753
    add sp, byte 6                   ; 0x0756
    cmp ax, strict word 2            ; 0x0759
    jne short @..roll_claim_type7_object.l2 ; 0x075c
    cmp word [bp - 0x0004], byte 0   ; 0x075e
    jne short @..roll_claim_type7_object.l2 ; 0x0762
    mov word [bp - 0x000a], 1        ; 0x0764
@..roll_claim_type7_object.l2:
    mov word [bp - 0x000c], 0        ; 0x0769
    mov ax, word [bp + 0x4]          ; 0x076e
    shl ax, 1                        ; 0x0771
    push ax                          ; 0x0773
    call random_below                ; 0x0774
    pop cx                           ; 0x0777
    push ax                          ; 0x0778
    mov ax, word [bp + 0x4]          ; 0x0779
    shl ax, 1                        ; 0x077c
    push ax                          ; 0x077e
    call random_below                ; 0x077f
    pop cx                           ; 0x0782
    mov cx, ax                       ; 0x0783
    pop ax                           ; 0x0785
    add ax, cx                       ; 0x0786
    push ax                          ; 0x0788
    mov ax, word [bp + 0x4]          ; 0x0789
    shl ax, 1                        ; 0x078c
    push ax                          ; 0x078e
    call random_below                ; 0x078f
    pop cx                           ; 0x0792
    mov cx, ax                       ; 0x0793
    pop ax                           ; 0x0795
    add ax, cx                       ; 0x0796
    inc ax                           ; 0x0798
    inc ax                           ; 0x0799
    inc ax                           ; 0x079a
    mov cx, 2                        ; 0x079b
    cwd                              ; 0x079e
    idiv cx                          ; 0x079f
    mov word [bp - 0x0008], ax       ; 0x07a1
    cmp ax, word [bp - 0x0004]       ; 0x07a4
    jge short @..roll_claim_type7_object.l3 ; 0x07a7
    mov word [bp - 0x000c], 1        ; 0x07a9
@..roll_claim_type7_object.l3:
    cmp word [bp - 0x000a], byte 0   ; 0x07ae
    je short @..roll_claim_type7_object.l4 ; 0x07b2
    mov word [bp - 0x000c], 2        ; 0x07b4
@..roll_claim_type7_object.l4:
    cmp word [bp - 0x000c], byte 0   ; 0x07b9
    jne short @..roll_claim_type7_object.l5 ; 0x07bd
    push word [bp - 0x000e]          ; 0x07bf
    call claim_type7_object          ; 0x07c2
    pop cx                           ; 0x07c5
@..roll_claim_type7_object.l5:
    mov ax, word [bp - 0x000c]       ; 0x07c6
    add ax, 0x841                    ; 0x07c9
    mov word [pending_event], ax     ; 0x07cc
    mov ax, word [bp - 0x000c]       ; 0x07cf
    mov word [pending_event_hi], ax  ; 0x07d2
    mov ax, 0                        ; 0x07d5
    ret                              ; 0x07d8
