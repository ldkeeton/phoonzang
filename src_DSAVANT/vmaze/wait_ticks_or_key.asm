; auto-generated
wait_ticks_or_key:
    mov ax, 0xfffa                   ; 0x0f8e
    call aztec_csav                  ; 0x0f91
    call flush_keyboard              ; 0x0f94
    mov ax, word [bp + 4]            ; 0x0f97
    cwd                              ; 0x0f9a
    les bx, word [tick_counter_ptr]  ; 0x0f9b
    mov cx, word [es:bx]             ; 0x0f9f
    mov bx, word [es:bx + 2]         ; 0x0fa2
    add ax, cx                       ; 0x0fa6
    adc dx, bx                       ; 0x0fa8
    mov word [bp - 2], dx            ; 0x0faa
    mov word [bp - 4], ax            ; 0x0fad
.back1:
    les bx, word [tick_counter_ptr]  ; 0x0fb0
    mov ax, word [es:bx]             ; 0x0fb4
    mov dx, word [es:bx + 2]         ; 0x0fb7
    cmp dx, word [bp - 2]            ; 0x0fbb
    jg short .forward1               ; 0x0fbe
    jne short .forward2              ; 0x0fc0
    cmp ax, word [bp - 4]            ; 0x0fc2
    jb short .forward2               ; 0x0fc5
.forward1:
    jmp short .return1               ; 0x0fc7
.forward2:
    call poll_fullscreen_hotspot     ; 0x0fc9
    test ax, ax                      ; 0x0fcc
    je short .forward3               ; 0x0fce
    ret                              ; 0x0fd0
.forward3:
    call loc_QQOI                    ; 0x0fd1
    not ax                           ; 0x0fd4
    push ax                          ; 0x0fd6
    call loc_LMUG                    ; 0x0fd7
    pop cx                           ; 0x0fda
    jmp short .back1                 ; 0x0fdb
.return1:
    ret                              ; 0x0fdd
