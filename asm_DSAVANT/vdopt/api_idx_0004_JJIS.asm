; auto-generated
api_idx_0004_JJIS:
    mov ax, 0xfffc                   ; 0x02c3
    call aztec_csav                  ; 0x02c6
    call bios_kbd_check              ; 0x02c9
    mov ax, word [bp + 0x4]          ; 0x02cc
    cwd                              ; 0x02cf
    les bx, word [dseg_0002]         ; 0x02d0
    mov cx, word [es:bx]             ; 0x02d4
    mov bx, word [es:bx + 0x2]       ; 0x02d7
    add ax, cx                       ; 0x02db
    adc dx, bx                       ; 0x02dd
    mov word [bp - 0x0002], dx       ; 0x02df
    mov word [bp - 0x0004], ax       ; 0x02e2
@..api_idx_0004_JJIS.l1:
    les bx, word [dseg_0002]         ; 0x02e5
    mov ax, word [es:bx]             ; 0x02e9
    mov dx, word [es:bx + 0x2]       ; 0x02ec
    cmp dx, word [bp - 0x0002]       ; 0x02f0
    jg short @..api_idx_0004_JJIS.l2 ; 0x02f3
    jne short @..api_idx_0004_JJIS.l3 ; 0x02f5
    cmp ax, word [bp - 0x0004]       ; 0x02f7
    jb short @..api_idx_0004_JJIS.l3 ; 0x02fa
@..api_idx_0004_JJIS.l2:
    jmp short @..api_idx_0004_JJIS.l5 ; 0x02fc
@..api_idx_0004_JJIS.l3:
    call ds_app_NMTN                 ; 0x02fe
    test ax, ax                      ; 0x0301
    je short @..api_idx_0004_JJIS.l4 ; 0x0303
    ret                              ; 0x0305
@..api_idx_0004_JJIS.l4:
    call loc_LQKO                    ; 0x0306
    jmp short @..api_idx_0004_JJIS.l1 ; 0x0309
@..api_idx_0004_JJIS.l5:
    ret                              ; 0x030b
