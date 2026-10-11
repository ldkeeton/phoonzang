api_idx_0004:
    mov ax, 0xfffc                   ; 0x08eb
    call ds_dispatch_f40b            ; 0x08ee
    call ds_dispatch_ec17            ; 0x08f1
    mov ax, word [bp + 0x4]          ; 0x08f4
    cwd                              ; 0x08f7
    les bx, word [dseg_0002]         ; 0x08f8
    mov cx, word [es:bx]             ; 0x08fc
    mov bx, word [es:bx + 0x2]       ; 0x08ff
    add ax, cx                       ; 0x0903
    adc dx, bx                       ; 0x0905
    mov word [bp - 0x0002], dx       ; 0x0907
    mov word [bp - 0x0004], ax       ; 0x090a
@..api_idx_0004.l1:
    les bx, word [dseg_0002]         ; 0x090d
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
@..api_idx_0004.l4:
    mov ax, 1                        ; 0x092e
    push ax                          ; 0x0931
    call ds_dispatch_ea50            ; 0x0932
    pop cx                           ; 0x0935
    test ax, ax                      ; 0x0936
    je short @..api_idx_0004.l5      ; 0x0938
    mov ax, 1                        ; 0x093a
    push ax                          ; 0x093d
    call ds_dispatch_eb32            ; 0x093e
    pop cx                           ; 0x0941
    cmp al, 0xd                      ; 0x0942
    jne short @..api_idx_0004.l5     ; 0x0944
    ret                              ; 0x0946
@..api_idx_0004.l5:
    call loc_086b                    ; 0x0947
    test ax, ax                      ; 0x094a
    jne short @..api_idx_0004.l6     ; 0x094c
    call loc_82a9                    ; 0x094e
@..api_idx_0004.l6:
    jmp short @..api_idx_0004.l1     ; 0x0951
@..api_idx_0004.l7:
    ret                              ; 0x0953
