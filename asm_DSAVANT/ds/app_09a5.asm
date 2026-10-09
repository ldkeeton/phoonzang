app_09a5: ; Aztec csav frame=0x0004
    mov ax, 0xfffc                   ; 0x09a5
    call aztec_csav                  ; 0x09a8
    mov ax, word [bp + 0x4]          ; 0x09ab
    cwd                              ; 0x09ae
    les bx, word [data_0002]         ; 0x09af
    mov cx, word [es:bx]             ; 0x09b3
    mov bx, word [es:bx + 0x2]       ; 0x09b6
    add ax, cx                       ; 0x09ba
    adc dx, bx                       ; 0x09bc
    mov word [bp - 0x0002], dx       ; 0x09be
    mov word [bp - 0x0004], ax       ; 0x09c1
@..app_09a5.l1:
    les bx, word [data_0002]         ; 0x09c4
    mov ax, word [es:bx]             ; 0x09c8
    mov dx, word [es:bx + 0x2]       ; 0x09cb
    cmp dx, word [bp - 0x0002]       ; 0x09cf
    jg short @..app_09a5.l2          ; 0x09d2
    jne short @..app_09a5.l3         ; 0x09d4
    cmp ax, word [bp - 0x0004]       ; 0x09d6
    jb short @..app_09a5.l3          ; 0x09d9
@..app_09a5.l2:
    jmp short @..app_09a5.l5         ; 0x09db
@..app_09a5.l3:
    call app_0d36                    ; 0x09dd
    test ax, ax                      ; 0x09e0
    je short @..app_09a5.l4          ; 0x09e2
    ret                              ; 0x09e4
@..app_09a5.l4:
    mov ax, 0xa                      ; 0x09e5
    push ax                          ; 0x09e8
    call leaf_loc_36d0               ; 0x09e9
    pop cx                           ; 0x09ec
    jmp short @..app_09a5.l1         ; 0x09ed
@..app_09a5.l5:
    ret                              ; 0x09ef
