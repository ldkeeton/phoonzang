; auto-generated
wait_for_hotspot_timeout:
    mov ax, 0xfffc                   ; 0x09a5
    call aztec_csav                  ; 0x09a8
    mov ax, word [bp + 4]            ; 0x09ab
    cwd                              ; 0x09ae
    les bx, word [tick_counter_ptr]  ; 0x09af
    mov cx, word [es:bx]             ; 0x09b3
    mov bx, word [es:bx + 2]         ; 0x09b6
    add ax, cx                       ; 0x09ba
    adc dx, bx                       ; 0x09bc
    mov word [bp - 2], dx            ; 0x09be
    mov word [bp - 4], ax            ; 0x09c1
.back1:
    les bx, word [tick_counter_ptr]  ; 0x09c4
    mov ax, word [es:bx]             ; 0x09c8
    mov dx, word [es:bx + 2]         ; 0x09cb
    cmp dx, word [bp - 2]            ; 0x09cf
    jg short .forward1               ; 0x09d2
    jne short .forward2              ; 0x09d4
    cmp ax, word [bp - 4]            ; 0x09d6
    jb short .forward2               ; 0x09d9
.forward1:
    jmp short .return1               ; 0x09db
.forward2:
    call poll_fullscreen_hotspot     ; 0x09dd
    test ax, ax                      ; 0x09e0
    je short .forward3               ; 0x09e2
    ret                              ; 0x09e4
.forward3:
    mov ax, 0xa                      ; 0x09e5
    push ax                          ; 0x09e8
    call delay_ms                    ; 0x09e9
    pop cx                           ; 0x09ec
    jmp short .back1                 ; 0x09ed
.return1:
    ret                              ; 0x09ef
