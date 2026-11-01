; auto-generated
wait_for_scene_input_or_timeout:
    mov ax, 0xfffc                   ; 0x6c87
    call aztec_csav                  ; 0x6c8a
    call flush_keyboard              ; 0x6c8d
    mov ax, word [bp + 4]            ; 0x6c90
    cwd                              ; 0x6c93
    les bx, word [tick_counter_ptr]  ; 0x6c94
    mov cx, word [es:bx]             ; 0x6c98
    mov bx, word [es:bx + 2]         ; 0x6c9b
    add ax, cx                       ; 0x6c9f
    adc dx, bx                       ; 0x6ca1
    mov word [bp - 2], dx            ; 0x6ca3
    mov word [bp - 4], ax            ; 0x6ca6
.back1:
    les bx, word [tick_counter_ptr]  ; 0x6ca9
    mov ax, word [es:bx]             ; 0x6cad
    mov dx, word [es:bx + 2]         ; 0x6cb0
    cmp dx, word [bp - 2]            ; 0x6cb4
    jg short .forward1               ; 0x6cb7
    jne short .forward2              ; 0x6cb9
    cmp ax, word [bp - 4]            ; 0x6cbb
    jb short .forward2               ; 0x6cbe
.forward1:
    jmp short .return1               ; 0x6cc0
.forward2:
    call poll_fullscreen_hotspot     ; 0x6cc2
    test ax, ax                      ; 0x6cc5
    je short .forward3               ; 0x6cc7
    ret                              ; 0x6cc9
.forward3:
    call refresh_scene_frame_if_active ; 0x6cca
    jmp short .back1                 ; 0x6ccd
.return1:
    ret                              ; 0x6ccf
