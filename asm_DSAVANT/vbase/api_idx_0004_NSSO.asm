; auto-generated
api_idx_0004_NSSO:
    mov ax, 0xfffc                   ; 0x6c87
    call aztec_csav                  ; 0x6c8a
    call bios_kbd_check              ; 0x6c8d
    mov ax, word [bp + 0x4]          ; 0x6c90
    cwd                              ; 0x6c93
    les bx, word [dseg_0002]         ; 0x6c94
    mov cx, word [es:bx]             ; 0x6c98
    mov bx, word [es:bx + 0x2]       ; 0x6c9b
    add ax, cx                       ; 0x6c9f
    adc dx, bx                       ; 0x6ca1
    mov word [bp - 0x0002], dx       ; 0x6ca3
    mov word [bp - 0x0004], ax       ; 0x6ca6
@..api_idx_0004_NSSO.l1:
    les bx, word [dseg_0002]         ; 0x6ca9
    mov ax, word [es:bx]             ; 0x6cad
    mov dx, word [es:bx + 0x2]       ; 0x6cb0
    cmp dx, word [bp - 0x0002]       ; 0x6cb4
    jg short @..api_idx_0004_NSSO.l2 ; 0x6cb7
    jne short @..api_idx_0004_NSSO.l3 ; 0x6cb9
    cmp ax, word [bp - 0x0004]       ; 0x6cbb
    jb short @..api_idx_0004_NSSO.l3 ; 0x6cbe
@..api_idx_0004_NSSO.l2:
    jmp short @..api_idx_0004_NSSO.l5 ; 0x6cc0
@..api_idx_0004_NSSO.l3:
    call ds_app_NMTN                 ; 0x6cc2
    test ax, ax                      ; 0x6cc5
    je short @..api_idx_0004_NSSO.l4 ; 0x6cc7
    ret                              ; 0x6cc9
@..api_idx_0004_NSSO.l4:
    call loc_6c5c                    ; 0x6cca
    jmp short @..api_idx_0004_NSSO.l1 ; 0x6ccd
@..api_idx_0004_NSSO.l5:
    ret                              ; 0x6ccf
