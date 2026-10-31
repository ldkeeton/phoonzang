; auto-generated
build_sample_output_table:
    mov bl, byte [cs:play_device - IMAGE_BASE] ; 0x077b
    shl bl, 1                        ; 0x0780
    xor bh, bh                       ; 0x0782
    jmp [cs:bx + jumptable_0789 - IMAGE_BASE] ; 0x0784
jumptable_0789:
    dw jumptable_0789_case_0 - IMAGE_BASE      ; 0x0789
    dw build_opl_sample_curve - IMAGE_BASE     ; 0x078b
    dw jumptable_0789_case_2 - IMAGE_BASE      ; 0x078d
    dw jumptable_0789_case_2 - IMAGE_BASE      ; 0x078f
    dw build_opl_sample_curve - IMAGE_BASE     ; 0x0791
jumptable_0789_case_0:
    mov ah, 0                        ; 0x0793
    mov al, byte [bp + 0x12]         ; 0x0795
    cmp al, 0x49                     ; 0x0798
    jb short build_sample_output_table.forward1 ; 0x079a
    sub al, 0x49                     ; 0x079c
    shr al, 1                        ; 0x079e
    mov ah, al                       ; 0x07a0
build_sample_output_table.forward1:
    mov byte [cs:sample_count_bias - IMAGE_BASE], ah ; 0x07a2
    mov bx, sample_output_table - IMAGE_BASE ; 0x07a7
    xor cl, cl                       ; 0x07aa
    mov al, byte [bp + 0x12]         ; 0x07ac
    mov byte [cs:sample_count_limit - IMAGE_BASE], al ; 0x07af
build_sample_output_table.back1:
    mov al, byte [bp + 0x12]         ; 0x07b3
    mul cl                           ; 0x07b6
    sub ah, byte [cs:sample_count_bias - IMAGE_BASE] ; 0x07b8
    js short build_sample_output_table.forward2 ; 0x07bd
    cmp ah, byte [cs:sample_count_limit - IMAGE_BASE] ; 0x07bf
    jb short build_sample_output_table.forward3 ; 0x07c4
    mov ah, byte [cs:sample_count_limit - IMAGE_BASE] ; 0x07c6
    jmp near build_sample_output_table.forward3 ; 0x07cb
build_sample_output_table.forward2:
    mov ah, 0                        ; 0x07ce
build_sample_output_table.forward3:
    inc ah                           ; 0x07d0
    mov byte [cs:bx], ah             ; 0x07d2
    inc bx                           ; 0x07d5
    inc cl                           ; 0x07d6
    jne short build_sample_output_table.back1 ; 0x07d8
    ret                              ; 0x07da
jumptable_0789_case_2:
    mov bx, sample_output_table - IMAGE_BASE ; 0x07db
    xor cl, cl                       ; 0x07de
    mov al, byte [bp + 0x12]         ; 0x07e0
    mov dl, al                       ; 0x07e3
    shr al, 1                        ; 0x07e5
    shr al, 1                        ; 0x07e7
build_sample_output_table.back2:
    mov al, dl                       ; 0x07e9
    mul cl                           ; 0x07eb
    mov byte [cs:bx], ah             ; 0x07ed
    inc bx                           ; 0x07f0
    inc cl                           ; 0x07f1
    jne short build_sample_output_table.back2 ; 0x07f3
    ret                              ; 0x07f5
