; auto-generated
wait_ticks_abortable:
    mov ax, 0xfffc                   ; 0x119e
    call aztec_csav                  ; 0x11a1
    call flush_keyboard              ; 0x11a4
    mov ax, word [bp + 4]            ; 0x11a7
    cwd                              ; 0x11aa
    les bx, word [tick_counter_ptr]  ; 0x11ab
    mov cx, word [es:bx]             ; 0x11af
    mov bx, word [es:bx + 2]         ; 0x11b2
    add ax, cx                       ; 0x11b6
    adc dx, bx                       ; 0x11b8
    mov word [bp - 2], dx            ; 0x11ba
    mov word [bp - 4], ax            ; 0x11bd
.back1:
    les bx, word [tick_counter_ptr]  ; 0x11c0
    mov ax, word [es:bx]             ; 0x11c4
    mov dx, word [es:bx + 2]         ; 0x11c7
    cmp dx, word [bp - 2]            ; 0x11cb
    jg short .forward1               ; 0x11ce
    jne short .forward2              ; 0x11d0
    cmp ax, word [bp - 4]            ; 0x11d2
    jb short .forward2               ; 0x11d5
.forward1:
    jmp short .return1               ; 0x11d7
.forward2:
    call poll_fullscreen_hotspot     ; 0x11d9
    test ax, ax                      ; 0x11dc
    je short .forward3               ; 0x11de
    ret                              ; 0x11e0
.forward3:
    cmp word [bp + 6], byte 0        ; 0x11e1
    je short .forward4               ; 0x11e5
    cmp word [space_key_hit], byte 0 ; 0x11e7
    je short .forward4               ; 0x11ec
    call api_idx_0004_RPUO           ; 0x11ee
    ret                              ; 0x11f1
.forward4:
    call step_party_animation        ; 0x11f2
    jmp short .back1                 ; 0x11f5
.return1:
    ret                              ; 0x11f7
