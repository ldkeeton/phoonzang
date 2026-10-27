; auto-generated
wait_ticks_with_events:
    mov ax, 0xfffc                   ; 0x0102
    call aztec_csav                  ; 0x0105
    call flush_keyboard              ; 0x0108
    mov ax, word [bp + 4]            ; 0x010b
    cwd                              ; 0x010e
    les bx, word [tick_counter_ptr]  ; 0x010f
    mov cx, word [es:bx]             ; 0x0113
    mov bx, word [es:bx + 2]         ; 0x0116
    add ax, cx                       ; 0x011a
    adc dx, bx                       ; 0x011c
    mov word [bp - 2], dx            ; 0x011e
    mov word [bp - 4], ax            ; 0x0121
.back1:
    les bx, word [tick_counter_ptr]  ; 0x0124
    mov ax, word [es:bx]             ; 0x0128
    mov dx, word [es:bx + 2]         ; 0x012b
    cmp dx, word [bp - 2]            ; 0x012f
    jg short .forward1               ; 0x0132
    jne short .forward2              ; 0x0134
    cmp ax, word [bp - 4]            ; 0x0136
    jb short .forward2               ; 0x0139
.forward1:
    jmp short .return1               ; 0x013b
.forward2:
    call poll_fullscreen_hotspot     ; 0x013d
    test ax, ax                      ; 0x0140
    je short .forward3               ; 0x0142
    ret                              ; 0x0144
.forward3:
    mov ax, 1                        ; 0x0145
    push ax                          ; 0x0148
    call poll_filtered_key           ; 0x0149
    pop cx                           ; 0x014c
    test ax, ax                      ; 0x014d
    je short .forward4               ; 0x014f
    mov ax, 1                        ; 0x0151
    push ax                          ; 0x0154
    call get_filtered_key            ; 0x0155
    pop cx                           ; 0x0158
    cmp al, 0xd                      ; 0x0159
    jne short .forward4              ; 0x015b
    ret                              ; 0x015d
.forward4:
    call api_idx_0006_LJUS           ; 0x015e
    jmp short .back1                 ; 0x0161
.return1:
    ret                              ; 0x0163
