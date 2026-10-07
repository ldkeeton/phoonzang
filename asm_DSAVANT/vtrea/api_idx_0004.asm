api_idx_0004:
    mov ax, 0xfffc                   ; 0x08eb
    call ds_dispatch_f40b            ; 0x08ee
    call ds_dispatch_ec17            ; 0x08f1
    mov ax, word [bp + 0x4]          ; 0x08f4
    cwd                              ; 0x08f7
    les bx, word [data_0002]         ; 0x08f8
    mov cx, word [es:bx]             ; 0x08fc
    mov bx, word [es:bx + 0x2]       ; 0x08ff
    add ax, cx                       ; 0x0903
    adc dx, bx                       ; 0x0905
    mov word [bp - 0x0002], dx       ; 0x0907
    mov word [bp - 0x0004], ax       ; 0x090a
@..api_idx_0004.l1:
    les bx, word [data_0002]         ; 0x090d
    mov ax, word [es:bx]             ; 0x0911
    mov dx, word [es:bx + 0x2]       ; 0x0914
    cmp dx, word [bp - 0x0002]       ; 0x0918
    jg short @..api_idx_0004.l2      ; 0x091b
    jne short @..api_idx_0004.l3     ; 0x091d
    cmp ax, word [bp - 0x0004]       ; 0x091f
    jb short @..api_idx_0004.l3      ; 0x0922
@..api_idx_0004.l2:
    jmp short @..api_idx_0004.l7     ; 0x0924
@..api_idx_0004.l3:
    call ds_dispatch_baef            ; 0x0926
    test ax, ax                      ; 0x0929
    je short @..api_idx_0004.l4      ; 0x092b
    ret                              ; 0x092d
