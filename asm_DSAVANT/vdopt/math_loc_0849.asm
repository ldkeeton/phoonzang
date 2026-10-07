math_loc_0849:
    mov ax, 0                        ; 0x0849
    call ds_dispatch_f40b            ; 0x084c
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
    call api_idx_0004                ; 0x0863
    add sp, byte 0x0a                ; 0x0866
    test ax, ax                      ; 0x0869
    je short @..math_loc_0849.l3     ; 0x086b
    mov ax, word [data_5b6e]         ; 0x086d
    mov cx, data_0002                ; 0x0870
    cwd                              ; 0x0873
    idiv cx                          ; 0x0874
    mov ax, dx                       ; 0x0876
    test ax, ax                      ; 0x0878
    je short @..math_loc_0849.l1     ; 0x087a
    mov ax, cx                       ; 0x087c
    jmp short @..math_loc_0849.l2    ; 0x087e
@..math_loc_0849.l1:
    mov ax, 4                        ; 0x0880
    mov cx, word [data_5b6e]         ; 0x0883
    cmp cx, byte 6                   ; 0x0887
    jne short @..math_loc_0849.l2    ; 0x088a
    mov ax, 0                        ; 0x088c
@..math_loc_0849.l2:
    ret                              ; 0x088f
