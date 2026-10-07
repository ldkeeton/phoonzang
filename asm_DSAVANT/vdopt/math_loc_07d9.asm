math_loc_07d9:
    mov ax, 0                        ; 0x07d9
    call ds_dispatch_f40b            ; 0x07dc
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
    call api_idx_0004                ; 0x07f3
    add sp, byte 0x0a                ; 0x07f6
    test ax, ax                      ; 0x07f9
    je short @..math_loc_07d9.l3     ; 0x07fb
    mov ax, word [data_5b6e]         ; 0x07fd
    mov cx, data_0002                ; 0x0800
    cwd                              ; 0x0803
    idiv cx                          ; 0x0804
    mov ax, dx                       ; 0x0806
    test ax, ax                      ; 0x0808
    je short @..math_loc_07d9.l1     ; 0x080a
    mov ax, cx                       ; 0x080c
    jmp short @..math_loc_07d9.l2    ; 0x080e
@..math_loc_07d9.l1:
    mov ax, 4                        ; 0x0810
    mov cx, word [data_5b6e]         ; 0x0813
    cmp cx, byte 6                   ; 0x0817
    jne short @..math_loc_07d9.l2    ; 0x081a
    mov ax, 0                        ; 0x081c
@..math_loc_07d9.l2:
    ret                              ; 0x081f
