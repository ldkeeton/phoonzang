; auto-generated
loc_UOPP:
    mov ax, 0                        ; 0x07d9
    call aztec_csav                  ; 0x07dc
    mov ax, word [bp + 0x6]          ; 0x07df
    dec ax                           ; 0x07e2
    push ax                          ; 0x07e3
    push word [bp + 0x4]             ; 0x07e4
    lea ax, word [bp + 0xc]          ; 0x07e7
    push ax                          ; 0x07ea
    lea ax, word [bp + 0xa]          ; 0x07eb
    push ax                          ; 0x07ee
    lea ax, word [bp + 0x8]          ; 0x07ef
    push ax                          ; 0x07f2
    call find_map_piece              ; 0x07f3
    add sp, byte 0x0a                ; 0x07f6
    test ax, ax                      ; 0x07f9
    je short @..loc_UOPP.l3          ; 0x07fb
    mov ax, word [maze_variant]      ; 0x07fd
    mov cx, 2                        ; 0x0800
    cwd                              ; 0x0803
    idiv cx                          ; 0x0804
    mov ax, dx                       ; 0x0806
    test ax, ax                      ; 0x0808
    je short @..loc_UOPP.l1          ; 0x080a
    mov ax, cx                       ; 0x080c
    jmp short @..loc_UOPP.l2         ; 0x080e
@..loc_UOPP.l1:
    mov ax, 4                        ; 0x0810
    mov cx, word [maze_variant]      ; 0x0813
    cmp cx, byte 6                   ; 0x0817
    jne short @..loc_UOPP.l2         ; 0x081a
    mov ax, 0                        ; 0x081c
@..loc_UOPP.l2:
    ret                              ; 0x081f
@..loc_UOPP.l3:
    mov ax, 4                        ; 0x0820
    push ax                          ; 0x0823
    mov ax, word [bp + 0xc]          ; 0x0824
    mov cx, 6                        ; 0x0827
    shl ax, cl                       ; 0x082a
    mov cx, word [bp + 0xa]          ; 0x082c
    shl cx, 1                        ; 0x082f
    shl cx, 1                        ; 0x0831
    shl cx, 1                        ; 0x0833
    add ax, cx                       ; 0x0835
    add ax, word [bp + 0x8]          ; 0x0837
    push ax                          ; 0x083a
    mov ax, word [maze_data]         ; 0x083b
    add ax, 0x90                     ; 0x083e
    push ax                          ; 0x0841
    call ds_leaf_loc_NPSL            ; 0x0842
    add sp, byte 6                   ; 0x0845
    ret                              ; 0x0848
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
