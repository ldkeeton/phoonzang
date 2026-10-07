api_idx_0004:
    mov ax, 0xfffc                   ; 0x0988
    call ds_dispatch_f40b            ; 0x098b
    mov ax, word [bp + 0x4]          ; 0x098e
    cwd                              ; 0x0991
    les bx, word [data_0002]         ; 0x0992
    mov cx, word [es:bx]             ; 0x0996
    mov bx, word [es:bx + 0x2]       ; 0x0999
    add ax, cx                       ; 0x099d
    adc dx, bx                       ; 0x099f
    mov word [bp - 0x0002], dx       ; 0x09a1
    mov word [bp - 0x0004], ax       ; 0x09a4
@..api_idx_0004.l1:
    les bx, word [data_0002]         ; 0x09a7
    mov ax, word [es:bx]             ; 0x09ab
    mov dx, word [es:bx + 0x2]       ; 0x09ae
    cmp dx, word [bp - 0x0002]       ; 0x09b2
    jg short @..api_idx_0004.l2      ; 0x09b5
    jne short @..api_idx_0004.l3     ; 0x09b7
    cmp ax, word [bp - 0x0004]       ; 0x09b9
    jb short @..api_idx_0004.l3      ; 0x09bc
@..api_idx_0004.l2:
    jmp short @..api_idx_0004.l5     ; 0x09be
@..api_idx_0004.l3:
    call api_idx_0002_6              ; 0x09c0
    test ax, ax                      ; 0x09c3
    je short @..api_idx_0004.l4      ; 0x09c5
    ret                              ; 0x09c7
