api_idx_0018:
    mov ax, 0xffe8                   ; 0x67ff
    call ds_dispatch_f40b            ; 0x6802
    push word [bp + 0x4]             ; 0x6805
    mov ax, 0                        ; 0x6808
    push ax                          ; 0x680b
    call math_loc_66c3               ; 0x680c
    add sp, byte 4                   ; 0x680f
    mov ax, 8                        ; 0x6812
    push ax                          ; 0x6815
    call ds_dispatch_b75e            ; 0x6816
    pop cx                           ; 0x6819
    mov ax, 0x5bf4                   ; 0x681a
    push ax                          ; 0x681d
    lea ax, word [bp - 0x0014]       ; 0x681e
    push ax                          ; 0x6821
    call ds_dispatch_f364            ; 0x6822
    add sp, byte 4                   ; 0x6825
    lea ax, word [bp - 0x0014]       ; 0x6828
    push ax                          ; 0x682b
    mov ax, 1                        ; 0x682c
    push ax                          ; 0x682f
    push ax                          ; 0x6830
    mov ax, 0                        ; 0x6831
    push ax                          ; 0x6834
    mov ax, 0x48e                    ; 0x6835
    push ax                          ; 0x6838
    call api_idx_0026                ; 0x6839
    add sp, byte 0x0a                ; 0x683c
    cmp ax, strict word 2            ; 0x683f
    jne short @..api_idx_0018.l1     ; 0x6842
    ret                              ; 0x6844
