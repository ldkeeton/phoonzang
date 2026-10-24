; auto-generated
wait_ticks_abortable:
    mov ax, 0xfffc                   ; 0x119e
    call aztec_csav                  ; 0x11a1
    call flush_keyboard              ; 0x11a4
    mov ax, word [bp + 0x4]          ; 0x11a7
    cwd                              ; 0x11aa
    les bx, word [tick_counter_ptr]  ; 0x11ab
    mov cx, word [es:bx]             ; 0x11af
    mov bx, word [es:bx + 0x2]       ; 0x11b2
    add ax, cx                       ; 0x11b6
    adc dx, bx                       ; 0x11b8
    mov word [bp - 0x0002], dx       ; 0x11ba
    mov word [bp - 0x0004], ax       ; 0x11bd
@..wait_ticks_abortable.l1:
    les bx, word [tick_counter_ptr]  ; 0x11c0
    mov ax, word [es:bx]             ; 0x11c4
    mov dx, word [es:bx + 0x2]       ; 0x11c7
    cmp dx, word [bp - 0x0002]       ; 0x11cb
    jg short @..wait_ticks_abortable.l2 ; 0x11ce
    jne short @..wait_ticks_abortable.l3 ; 0x11d0
    cmp ax, word [bp - 0x0004]       ; 0x11d2
    jb short @..wait_ticks_abortable.l3 ; 0x11d5
@..wait_ticks_abortable.l2:
    jmp short @..wait_ticks_abortable.l6 ; 0x11d7
@..wait_ticks_abortable.l3:
    call poll_fullscreen_hotspot     ; 0x11d9
    test ax, ax                      ; 0x11dc
    je short @..wait_ticks_abortable.l4 ; 0x11de
    ret                              ; 0x11e0
@..wait_ticks_abortable.l4:
    cmp word [bp + 0x6], byte 0      ; 0x11e1
    je short @..wait_ticks_abortable.l5 ; 0x11e5
    cmp word [space_key_hit], byte 0 ; 0x11e7
    je short @..wait_ticks_abortable.l5 ; 0x11ec
    call api_idx_0004_RPUO           ; 0x11ee
    ret                              ; 0x11f1
@..wait_ticks_abortable.l5:
    call step_party_animation        ; 0x11f2
    jmp short @..wait_ticks_abortable.l1 ; 0x11f5
@..wait_ticks_abortable.l6:
    ret                              ; 0x11f7
