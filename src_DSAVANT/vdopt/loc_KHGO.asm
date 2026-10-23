; auto-generated
loc_KHGO:
    mov ax, 0                        ; 0x0849
    call aztec_csav                  ; 0x084c
    push word [bp + 0x6]             ; 0x084f
    mov ax, word [bp + 0x4]          ; 0x0852
    dec ax                           ; 0x0855
    push ax                          ; 0x0856
    lea ax, word [bp + 0xc]          ; 0x0857
    push ax                          ; 0x085a
    lea ax, word [bp + 0xa]          ; 0x085b
    push ax                          ; 0x085e
    lea ax, word [bp + 0x8]          ; 0x085f
    push ax                          ; 0x0862
    call find_map_piece              ; 0x0863
    add sp, byte 0x0a                ; 0x0866
    test ax, ax                      ; 0x0869
    je short @..loc_KHGO.l3          ; 0x086b
    mov ax, word [maze_variant]      ; 0x086d
    mov cx, 2                        ; 0x0870
    cwd                              ; 0x0873
    idiv cx                          ; 0x0874
    mov ax, dx                       ; 0x0876
    test ax, ax                      ; 0x0878
    je short @..loc_KHGO.l1          ; 0x087a
    mov ax, cx                       ; 0x087c
    jmp short @..loc_KHGO.l2         ; 0x087e
@..loc_KHGO.l1:
    mov ax, 4                        ; 0x0880
    mov cx, word [maze_variant]      ; 0x0883
    cmp cx, byte 6                   ; 0x0887
    jne short @..loc_KHGO.l2         ; 0x088a
    mov ax, 0                        ; 0x088c
@..loc_KHGO.l2:
    ret                              ; 0x088f
@..loc_KHGO.l3:
    mov ax, 4                        ; 0x0890
    push ax                          ; 0x0893
    mov ax, word [bp + 0xc]          ; 0x0894
    mov cx, 6                        ; 0x0897
    shl ax, cl                       ; 0x089a
    mov cx, word [bp + 0xa]          ; 0x089c
    shl cx, 1                        ; 0x089f
    shl cx, 1                        ; 0x08a1
    shl cx, 1                        ; 0x08a3
    add ax, cx                       ; 0x08a5
    add ax, word [bp + 0x8]          ; 0x08a7
    push ax                          ; 0x08aa
    mov ax, word [maze_data]         ; 0x08ab
    add ax, 0x290                    ; 0x08ae
    push ax                          ; 0x08b1
    call ds_leaf_loc_NPSL            ; 0x08b2
    add sp, byte 6                   ; 0x08b5
    ret                              ; 0x08b8
