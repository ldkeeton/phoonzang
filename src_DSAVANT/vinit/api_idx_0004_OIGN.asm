; auto-generated
api_idx_0004_OIGN:
    mov ax, 0xfffc                   ; 0x0988
    call aztec_csav                  ; 0x098b
    mov ax, word [bp + 4]            ; 0x098e
    cwd                              ; 0x0991
    les bx, word [tick_counter_ptr]  ; 0x0992
    mov cx, word [es:bx]             ; 0x0996
    mov bx, word [es:bx + 2]         ; 0x0999
    add ax, cx                       ; 0x099d
    adc dx, bx                       ; 0x099f
    mov word [bp - 2], dx            ; 0x09a1
    mov word [bp - 4], ax            ; 0x09a4
.back1:
    les bx, word [tick_counter_ptr]  ; 0x09a7
    mov ax, word [es:bx]             ; 0x09ab
    mov dx, word [es:bx + 2]         ; 0x09ae
    cmp dx, word [bp - 2]            ; 0x09b2
    jg short .forward1               ; 0x09b5
    jne short .forward2              ; 0x09b7
    cmp ax, word [bp - 4]            ; 0x09b9
    jb short .forward2               ; 0x09bc
.forward1:
    jmp short .return1               ; 0x09be
.forward2:
    call api_idx_0002_PUOP           ; 0x09c0
    test ax, ax                      ; 0x09c3
    je short .forward3               ; 0x09c5
    ret                              ; 0x09c7
.forward3:
    mov ax, 0xa                      ; 0x09c8
    push ax                          ; 0x09cb
    call delay_ms                    ; 0x09cc
    pop cx                           ; 0x09cf
    jmp short .back1                 ; 0x09d0
.return1:
    ret                              ; 0x09d2
