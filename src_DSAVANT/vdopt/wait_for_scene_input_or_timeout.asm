; auto-generated
wait_for_scene_input_or_timeout:
    mov ax, 0xfffc                   ; 0x02c3
    call $csav                  ; 0x02c6
    call flush_keyboard              ; 0x02c9
    mov ax, word [bp + 4]            ; 0x02cc
    cwd                              ; 0x02cf
    les bx, word [tick_counter_ptr]  ; 0x02d0
    mov cx, word [es:bx]             ; 0x02d4
    mov bx, word [es:bx + 2]         ; 0x02d7
    add ax, cx                       ; 0x02db
    adc dx, bx                       ; 0x02dd
    mov word [bp - 2], dx            ; 0x02df
    mov word [bp - 4], ax            ; 0x02e2
.back1:
    les bx, word [tick_counter_ptr]  ; 0x02e5
    mov ax, word [es:bx]             ; 0x02e9
    mov dx, word [es:bx + 2]         ; 0x02ec
    cmp dx, word [bp - 2]            ; 0x02f0
    jg short .forward1               ; 0x02f3
    jne short .forward2              ; 0x02f5
    cmp ax, word [bp - 4]            ; 0x02f7
    jb short .forward2               ; 0x02fa
.forward1:
    jmp short .return1               ; 0x02fc
.forward2:
    call poll_fullscreen_hotspot     ; 0x02fe
    test ax, ax                      ; 0x0301
    je short .forward3               ; 0x0303
    ret                              ; 0x0305
.forward3:
    call wait_10_ms                  ; 0x0306
    jmp short .back1                 ; 0x0309
.return1:
    ret                              ; 0x030b
