api_idx_0018:
    mov ax, 0xffe8                   ; 0x67ff
    call ds_dispatch_f40b            ; 0x6802
    push word [bp + 0x4]             ; 0x6805
    mov ax, 0                        ; 0x6808
    push ax                          ; 0x680b
    call loc_66c3                    ; 0x680c
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
@..api_idx_0018.l1:
    lea ax, word [bp - 0x0014]       ; 0x6845
    push ax                          ; 0x6848
    call ds_dispatch_fa90            ; 0x6849
    pop cx                           ; 0x684c
    test ax, ax                      ; 0x684d
    je short @..api_idx_0018.l3      ; 0x684f
    lea ax, word [bp - 0x0014]       ; 0x6851
    push ax                          ; 0x6854
    call loc_6626                    ; 0x6855
    pop cx                           ; 0x6858
    cmp ax, strict word 0xffff       ; 0x6859
    jne short @..api_idx_0018.l2     ; 0x685c
    jmp short @..api_idx_0018.l3     ; 0x685e
@..api_idx_0018.l2:
    lea ax, word [bp - 0x0014]       ; 0x6860
    push ax                          ; 0x6863
    mov ax, 0x5bf4                   ; 0x6864
    push ax                          ; 0x6867
    call ds_dispatch_f364            ; 0x6868
    add sp, byte 4                   ; 0x686b
    mov ax, 1                        ; 0x686e
    push ax                          ; 0x6871
    push word [bp + 0x4]             ; 0x6872
    mov ax, 0x5bf4                   ; 0x6875
    push ax                          ; 0x6878
    call api_idx_0002_2              ; 0x6879
    add sp, byte 6                   ; 0x687c
    push word [bp + 0x4]             ; 0x687f
    call loc_67e2                    ; 0x6882
    pop cx                           ; 0x6885
@..api_idx_0018.l3:
    ret                              ; 0x6886
