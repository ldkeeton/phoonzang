; auto-generated
ds_app_OIGN: ; Aztec csav frame=0x0004
    mov ax, 0xfffc                   ; 0x09a5
    call aztec_csav                  ; 0x09a8
    mov ax, word [bp + 0x4]          ; 0x09ab
    cwd                              ; 0x09ae
    les bx, word [dseg_0002]         ; 0x09af
    mov cx, word [es:bx]             ; 0x09b3
    mov bx, word [es:bx + 0x2]       ; 0x09b6
    add ax, cx                       ; 0x09ba
    adc dx, bx                       ; 0x09bc
    mov word [bp - 0x0002], dx       ; 0x09be
    mov word [bp - 0x0004], ax       ; 0x09c1
@..ds_app_OIGN.l1:
    les bx, word [dseg_0002]         ; 0x09c4
    mov ax, word [es:bx]             ; 0x09c8
    mov dx, word [es:bx + 0x2]       ; 0x09cb
    cmp dx, word [bp - 0x0002]       ; 0x09cf
    jg short @..ds_app_OIGN.l2       ; 0x09d2
    jne short @..ds_app_OIGN.l3      ; 0x09d4
    cmp ax, word [bp - 0x0004]       ; 0x09d6
    jb short @..ds_app_OIGN.l3       ; 0x09d9
@..ds_app_OIGN.l2:
    jmp short @..ds_app_OIGN.l5      ; 0x09db
@..ds_app_OIGN.l3:
    call ds_app_TMKJ                 ; 0x09dd
    test ax, ax                      ; 0x09e0
    je short @..ds_app_OIGN.l4       ; 0x09e2
    ret                              ; 0x09e4
@..ds_app_OIGN.l4:
    mov ax, 0xa                      ; 0x09e5
    push ax                          ; 0x09e8
    call delay_ticks                 ; 0x09e9
    pop cx                           ; 0x09ec
    jmp short @..ds_app_OIGN.l1      ; 0x09ed
@..ds_app_OIGN.l5:
    ret                              ; 0x09ef
