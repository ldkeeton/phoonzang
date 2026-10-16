; auto-generated
api_idx_0004_KQNK:
    mov ax, 0xfffc                   ; 0x05e6
    call aztec_csav                  ; 0x05e9
    call bios_kbd_check              ; 0x05ec
    mov ax, word [bp + 0x4]          ; 0x05ef
    cwd                              ; 0x05f2
    les bx, word [dseg_0002]         ; 0x05f3
    mov cx, word [es:bx]             ; 0x05f7
    mov bx, word [es:bx + 0x2]       ; 0x05fa
    add ax, cx                       ; 0x05fe
    adc dx, bx                       ; 0x0600
    mov word [bp - 0x0002], dx       ; 0x0602
    mov word [bp - 0x0004], ax       ; 0x0605
@..api_idx_0004_KQNK.l1:
    les bx, word [dseg_0002]         ; 0x0608
    mov ax, word [es:bx]             ; 0x060c
    mov dx, word [es:bx + 0x2]       ; 0x060f
    cmp dx, word [bp - 0x0002]       ; 0x0613
    jg short @..api_idx_0004_KQNK.l2 ; 0x0616
    jne short @..api_idx_0004_KQNK.l3 ; 0x0618
    cmp ax, word [bp - 0x0004]       ; 0x061a
    jb short @..api_idx_0004_KQNK.l3 ; 0x061d
@..api_idx_0004_KQNK.l2:
    jmp short @..api_idx_0004_KQNK.l6 ; 0x061f
@..api_idx_0004_KQNK.l3:
    call ds_app_TMKJ                 ; 0x0621
    test ax, ax                      ; 0x0624
    je short @..api_idx_0004_KQNK.l4 ; 0x0626
    ret                              ; 0x0628
@..api_idx_0004_KQNK.l4:
    call loc_QQOI                    ; 0x0629
    test ax, ax                      ; 0x062c
    jne short @..api_idx_0004_KQNK.l5 ; 0x062e
    call loc_IJSN                    ; 0x0630
@..api_idx_0004_KQNK.l5:
    jmp short @..api_idx_0004_KQNK.l1 ; 0x0633
@..api_idx_0004_KQNK.l6:
    ret                              ; 0x0635
