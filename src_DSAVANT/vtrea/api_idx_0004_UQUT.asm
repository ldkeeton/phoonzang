; auto-generated
api_idx_0004_UQUT:
    mov ax, 0xfffc                   ; 0x08eb
    call aztec_csav                  ; 0x08ee
    call flush_keyboard              ; 0x08f1
    mov ax, word [bp + 4]            ; 0x08f4
    cwd                              ; 0x08f7
    les bx, word [tick_counter_ptr]  ; 0x08f8
    mov cx, word [es:bx]             ; 0x08fc
    mov bx, word [es:bx + 2]         ; 0x08ff
    add ax, cx                       ; 0x0903
    adc dx, bx                       ; 0x0905
    mov word [bp - 2], dx            ; 0x0907
    mov word [bp - 4], ax            ; 0x090a
.back1:
    les bx, word [tick_counter_ptr]  ; 0x090d
    mov ax, word [es:bx]             ; 0x0911
    mov dx, word [es:bx + 2]         ; 0x0914
    cmp dx, word [bp - 2]            ; 0x0918
    jg short .forward1               ; 0x091b
    jne short .forward2              ; 0x091d
    cmp ax, word [bp - 4]            ; 0x091f
    jb short .forward2               ; 0x0922
.forward1:
    jmp short .return1               ; 0x0924
.forward2:
    call poll_fullscreen_hotspot     ; 0x0926
    test ax, ax                      ; 0x0929
    je short .forward3               ; 0x092b
    ret                              ; 0x092d
.forward3:
    mov ax, 1                        ; 0x092e
    push ax                          ; 0x0931
    call poll_filtered_key           ; 0x0932
    pop cx                           ; 0x0935
    test ax, ax                      ; 0x0936
    je short .forward4               ; 0x0938
    mov ax, 1                        ; 0x093a
    push ax                          ; 0x093d
    call get_filtered_key            ; 0x093e
    pop cx                           ; 0x0941
    cmp al, 0xd                      ; 0x0942
    jne short .forward4              ; 0x0944
    ret                              ; 0x0946
.forward4:
    call tick_treasure_animation     ; 0x0947
    test ax, ax                      ; 0x094a
    jne short .forward5              ; 0x094c
    call loc_RULJ                    ; 0x094e
.forward5:
    jmp short .back1                 ; 0x0951
.return1:
    ret                              ; 0x0953
