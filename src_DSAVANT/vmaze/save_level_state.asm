; auto-generated
save_level_state:
    mov ax, 0                        ; 0x68f2
    call aztec_csav                  ; 0x68f5
    mov ax, 0x10                     ; 0x68f8
    push ax                          ; 0x68fb
    mov ax, word [game_state_arg]    ; 0x68fc
    mov cx, 4                        ; 0x68ff
    shl ax, cl                       ; 0x6902
    add ax, scenario_header_data     ; 0x6904
    push ax                          ; 0x6907
    mov ax, word [game_state_arg]    ; 0x6908
    shl ax, cl                       ; 0x690b
    add ax, party_region + 0x2       ; 0x690d
    push ax                          ; 0x6910
    call aztec_movmem                ; 0x6911
    add sp, byte 6                   ; 0x6914
    mov ax, 0x80                     ; 0x6917
    push ax                          ; 0x691a
    mov ax, word [game_state_arg]    ; 0x691b
    mov cx, 7                        ; 0x691e
    shl ax, cl                       ; 0x6921
    mov cx, ax                       ; 0x6923
    mov ax, word [runtime_buffer_4k_a] ; 0x6925
    mov dx, word [runtime_buffer_4k_a_seg] ; 0x6928
    add ax, cx                       ; 0x692c
    push dx                          ; 0x692e
    push ax                          ; 0x692f
    push ds                          ; 0x6930
    mov ax, bss_8b7e                 ; 0x6931
    push ax                          ; 0x6934
    call app_memmove                 ; 0x6935
    add sp, byte 0xa                 ; 0x6938
    mov ax, 0x80                     ; 0x693b
    push ax                          ; 0x693e
    mov ax, word [game_state_arg]    ; 0x693f
    mov cx, 7                        ; 0x6942
    shl ax, cl                       ; 0x6945
    mov cx, ax                       ; 0x6947
    mov ax, word [runtime_buffer_4k_b] ; 0x6949
    mov dx, word [runtime_buffer_4k_b_seg] ; 0x694c
    add ax, cx                       ; 0x6950
    push dx                          ; 0x6952
    push ax                          ; 0x6953
    push ds                          ; 0x6954
    mov ax, bss_8afe                 ; 0x6955
    push ax                          ; 0x6958
    call app_memmove                 ; 0x6959
    add sp, byte 0xa                 ; 0x695c
    ret                              ; 0x695f
