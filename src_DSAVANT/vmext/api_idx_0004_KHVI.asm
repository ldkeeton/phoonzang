; auto-generated
api_idx_0004_KHVI:
    mov ax, 0xfffc                   ; 0x05e6
    call aztec_csav                  ; 0x05e9
    call flush_keyboard              ; 0x05ec
    mov ax, word [bp + 4]            ; 0x05ef
    cwd                              ; 0x05f2
    les bx, word [tick_counter_ptr]  ; 0x05f3
    mov cx, word [es:bx]             ; 0x05f7
    mov bx, word [es:bx + 2]         ; 0x05fa
    add ax, cx                       ; 0x05fe
    adc dx, bx                       ; 0x0600
    mov word [bp - 2], dx            ; 0x0602
    mov word [bp - 4], ax            ; 0x0605
.back1:
    les bx, word [tick_counter_ptr]  ; 0x0608
    mov ax, word [es:bx]             ; 0x060c
    mov dx, word [es:bx + 2]         ; 0x060f
    cmp dx, word [bp - 2]            ; 0x0613
    jg short .forward1               ; 0x0616
    jne short .forward2              ; 0x0618
    cmp ax, word [bp - 4]            ; 0x061a
    jb short .forward2               ; 0x061d
.forward1:
    jmp short .return1               ; 0x061f
.forward2:
    call poll_fullscreen_hotspot     ; 0x0621
    test ax, ax                      ; 0x0624
    je short .forward3               ; 0x0626
    ret                              ; 0x0628
.forward3:
    call loc_QQOI                    ; 0x0629
    test ax, ax                      ; 0x062c
    jne short .forward4              ; 0x062e
    call loc_IJSN                    ; 0x0630
.forward4:
    jmp short .back1                 ; 0x0633
.return1:
    ret                              ; 0x0635
