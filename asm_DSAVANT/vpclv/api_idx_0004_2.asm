api_idx_0004_2:
    mov ax, 0xfffc                   ; 0x0e3b
    call aztec_csav                  ; 0x0e3e
    mov word [bp - 0x0004], 0        ; 0x0e41
    mov word [bp - 0x0002], 0        ; 0x0e46
@..api_idx_0004_2.l1:
    mov ax, 6                        ; 0x0e4b
    imul word [bp - 0x0002]          ; 0x0e4e
    mov bx, ax                       ; 0x0e51
    mov al, byte [bx + 0x620]        ; 0x0e53
    sub ah, ah                       ; 0x0e57
    cmp ax, word [bp + 0x6]          ; 0x0e59
    jne short @..api_idx_0004_2.l2   ; 0x0e5c
    push word [bp - 0x0002]          ; 0x0e5e
    mov ax, 0x248                    ; 0x0e61
    imul word [bp + 0x4]             ; 0x0e64
    add ax, 0x5e12                   ; 0x0e67
    push ax                          ; 0x0e6a
    call ds_leaf_loc_3ebb            ; 0x0e6b
    add sp, byte 4                   ; 0x0e6e
    test ax, ax                      ; 0x0e71
    je short @..api_idx_0004_2.l2    ; 0x0e73
    mov ax, 0x14                     ; 0x0e75
    imul word [bp - 0x0004]          ; 0x0e78
    add ax, 0xe38                    ; 0x0e7b
    push ax                          ; 0x0e7e
    mov ax, word [bp - 0x0002]       ; 0x0e7f
    add ax, 0xfa0                    ; 0x0e82
    push ax                          ; 0x0e85
    call ds_app_mem_0782             ; 0x0e86
    add sp, byte 4                   ; 0x0e89
    mov ax, word [bp - 0x0002]       ; 0x0e8c
    mov cx, word [bp - 0x0004]       ; 0x0e8f
    shl cx, 1                        ; 0x0e92
    mov bx, cx                       ; 0x0e94
    mov word [bx - 0x6bc4], ax       ; 0x0e96
    inc word [bp - 0x0004]           ; 0x0e9a
@..api_idx_0004_2.l2:
    inc word [bp - 0x0002]           ; 0x0e9d
    mov ax, word [bp - 0x0002]       ; 0x0ea0
    cmp ax, strict word 0x66         ; 0x0ea3
    jl short @..api_idx_0004_2.l1    ; 0x0ea6
    mov ax, word [bp - 0x0004]       ; 0x0ea8
    ret                              ; 0x0eab
