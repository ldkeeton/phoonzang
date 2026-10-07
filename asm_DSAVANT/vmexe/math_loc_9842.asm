math_loc_9842:
    mov ax, 0                        ; 0x9842
    call ds_dispatch_f40b            ; 0x9845
    push word [data_8462]            ; 0x9848
    push word [data_8464]            ; 0x984c
    mov ax, 0x90e6                   ; 0x9850
    push ax                          ; 0x9853
    call math_loc_15ab               ; 0x9854
    add sp, byte 6                   ; 0x9857
    mov ax, data_9136                ; 0x985a
    push ax                          ; 0x985d
    mov ax, 0xcef                    ; 0x985e
    push ax                          ; 0x9861
    call ds_dispatch_b53b            ; 0x9862
    add sp, byte 4                   ; 0x9865
    mov byte [data_9186], 0          ; 0x9868
    mov ax, 0x43                     ; 0x986d
    push ax                          ; 0x9870
    push ax                          ; 0x9871
    mov ax, 1                        ; 0x9872
    push ax                          ; 0x9875
    mov ax, data_9186                ; 0x9876
    push ax                          ; 0x9879
    mov ax, data_9136                ; 0x987a
    push ax                          ; 0x987d
    mov ax, 0x90e6                   ; 0x987e
    push ax                          ; 0x9881
    mov ax, 0                        ; 0x9882
    push ax                          ; 0x9885
    call api_idx_0004_4              ; 0x9886
    add sp, byte 0x0e                ; 0x9889
    mov ax, word [data_9058]         ; 0x988c
    mov cx, 2                        ; 0x988f
    cwd                              ; 0x9892
    idiv cx                          ; 0x9893
    push ax                          ; 0x9895
    call api_idx_0004_5              ; 0x9896
    pop cx                           ; 0x9899
    ret                              ; 0x989a
