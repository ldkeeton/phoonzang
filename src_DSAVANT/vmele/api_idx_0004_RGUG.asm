; auto-generated
api_idx_0004_RGUG:
    mov ax, 0xfffc                   ; 0x0102
    call aztec_csav                  ; 0x0105
    call flush_keyboard              ; 0x0108
    mov ax, word [bp + 0x4]          ; 0x010b
    cwd                              ; 0x010e
    les bx, word [tick_counter_ptr]  ; 0x010f
    mov cx, word [es:bx]             ; 0x0113
    mov bx, word [es:bx + 0x2]       ; 0x0116
    add ax, cx                       ; 0x011a
    adc dx, bx                       ; 0x011c
    mov word [bp - 0x0002], dx       ; 0x011e
    mov word [bp - 0x0004], ax       ; 0x0121
@..api_idx_0004_RGUG.l1:
    les bx, word [tick_counter_ptr]  ; 0x0124
    mov ax, word [es:bx]             ; 0x0128
    mov dx, word [es:bx + 0x2]       ; 0x012b
    cmp dx, word [bp - 0x0002]       ; 0x012f
    jg short @..api_idx_0004_RGUG.l2 ; 0x0132
    jne short @..api_idx_0004_RGUG.l3 ; 0x0134
    cmp ax, word [bp - 0x0004]       ; 0x0136
    jb short @..api_idx_0004_RGUG.l3 ; 0x0139
@..api_idx_0004_RGUG.l2:
    jmp short @..api_idx_0004_RGUG.l6 ; 0x013b
@..api_idx_0004_RGUG.l3:
    call ds_app_TMKJ                 ; 0x013d
    test ax, ax                      ; 0x0140
    je short @..api_idx_0004_RGUG.l4 ; 0x0142
    ret                              ; 0x0144
@..api_idx_0004_RGUG.l4:
    mov ax, 1                        ; 0x0145
    push ax                          ; 0x0148
    call poll_filtered_key           ; 0x0149
    pop cx                           ; 0x014c
    test ax, ax                      ; 0x014d
    je short @..api_idx_0004_RGUG.l5 ; 0x014f
    mov ax, 1                        ; 0x0151
    push ax                          ; 0x0154
    call get_filtered_key            ; 0x0155
    pop cx                           ; 0x0158
    cmp al, 0xd                      ; 0x0159
    jne short @..api_idx_0004_RGUG.l5 ; 0x015b
    ret                              ; 0x015d
@..api_idx_0004_RGUG.l5:
    call api_idx_0006_IRNH           ; 0x015e
    jmp short @..api_idx_0004_RGUG.l1 ; 0x0161
@..api_idx_0004_RGUG.l6:
    ret                              ; 0x0163
