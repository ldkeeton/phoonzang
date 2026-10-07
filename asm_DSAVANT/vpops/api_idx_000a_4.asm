api_idx_000a_4:
    mov ax, 0xfff6                   ; 0x2947
    call ds_dispatch_f40b            ; 0x294a
    call loc_108d                    ; 0x294d
    mov ax, 1                        ; 0x2950
    push ax                          ; 0x2953
    push ax                          ; 0x2954
    mov ax, 0x7ea                    ; 0x2955
    push ax                          ; 0x2958
    push word [bp + 0x4]             ; 0x2959
    call api_idx_0044                ; 0x295c
    add sp, byte 8                   ; 0x295f
    mov word [bp - 0x0004], ax       ; 0x2962
    mov ax, word [data_904e]         ; 0x2965
    mov word [bp - 0x0002], ax       ; 0x2968
    cmp word [bp - 0x0004], byte 1   ; 0x296b
    jne short @..api_idx_000a_4.l1   ; 0x296f
    mov ax, 0xffff                   ; 0x2971
    ret                              ; 0x2974
