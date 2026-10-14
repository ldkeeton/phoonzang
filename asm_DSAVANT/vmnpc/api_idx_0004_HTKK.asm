; auto-generated
api_idx_0004_HTKK:
    mov ax, 0xfffc                   ; 0x119e
    call aztec_csav                  ; 0x11a1
    call bios_kbd_check              ; 0x11a4
    mov ax, word [bp + 0x4]          ; 0x11a7
    cwd                              ; 0x11aa
    les bx, word [dseg_0002]         ; 0x11ab
    mov cx, word [es:bx]             ; 0x11af
    mov bx, word [es:bx + 0x2]       ; 0x11b2
    add ax, cx                       ; 0x11b6
    adc dx, bx                       ; 0x11b8
    mov word [bp - 0x0002], dx       ; 0x11ba
    mov word [bp - 0x0004], ax       ; 0x11bd
@..api_idx_0004_HTKK.l1:
    les bx, word [dseg_0002]         ; 0x11c0
    mov ax, word [es:bx]             ; 0x11c4
    mov dx, word [es:bx + 0x2]       ; 0x11c7
    cmp dx, word [bp - 0x0002]       ; 0x11cb
    jg short @..api_idx_0004_HTKK.l2 ; 0x11ce
    jne short @..api_idx_0004_HTKK.l3 ; 0x11d0
    cmp ax, word [bp - 0x0004]       ; 0x11d2
    jb short @..api_idx_0004_HTKK.l3 ; 0x11d5
@..api_idx_0004_HTKK.l2:
    jmp short @..api_idx_0004_HTKK.l6 ; 0x11d7
@..api_idx_0004_HTKK.l3:
    call ds_app_NMTN                 ; 0x11d9
    test ax, ax                      ; 0x11dc
    je short @..api_idx_0004_HTKK.l4 ; 0x11de
    ret                              ; 0x11e0
@..api_idx_0004_HTKK.l4:
    cmp word [bp + 0x6], byte 0      ; 0x11e1
    je short @..api_idx_0004_HTKK.l5 ; 0x11e5
    cmp word [bss_59fc], byte 0      ; 0x11e7
    je short @..api_idx_0004_HTKK.l5 ; 0x11ec
    call api_idx_0004_VKRR           ; 0x11ee
    ret                              ; 0x11f1
@..api_idx_0004_HTKK.l5:
    call api_idx_0006_TPUL           ; 0x11f2
    jmp short @..api_idx_0004_HTKK.l1 ; 0x11f5
@..api_idx_0004_HTKK.l6:
    ret                              ; 0x11f7
