; auto-generated
loc_LMUG:
    mov ax, 0                        ; 0x0ea6
    call aztec_csav                  ; 0x0ea9
    les bx, word [tick_counter_ptr]  ; 0x0eac
    mov ax, word [es:bx]             ; 0x0eb0
    mov dx, word [es:bx + 2]         ; 0x0eb3
    cmp dx, word [bss_919c]          ; 0x0eb7
    jl short .forward1               ; 0x0ebb
    jne short .forward2              ; 0x0ebd
    cmp ax, word [bss_919a]          ; 0x0ebf
    ja short .forward2               ; 0x0ec3
.forward1:
    jmp short .forward6              ; 0x0ec5
.forward2:
    call api_idx_0002_QNMM           ; 0x0ec7
    mov ax, 0x3c                     ; 0x0eca
    push ax                          ; 0x0ecd
    call random_below                ; 0x0ece
    pop cx                           ; 0x0ed1
    cwd                              ; 0x0ed2
    push ax                          ; 0x0ed3
    push dx                          ; 0x0ed4
    cmp word [maze_variant], byte 3  ; 0x0ed5
    je short .forward3               ; 0x0eda
    cmp word [maze_variant], byte 5  ; 0x0edc
    jne short .forward4              ; 0x0ee1
.forward3:
    mov ax, 0x3c                     ; 0x0ee3
    jmp short .forward5              ; 0x0ee6
.forward4:
    mov ax, 0                        ; 0x0ee8
.forward5:
    cwd                              ; 0x0eeb
    mov cx, ax                       ; 0x0eec
    mov bx, dx                       ; 0x0eee
    pop dx                           ; 0x0ef0
    pop ax                           ; 0x0ef1
    add ax, cx                       ; 0x0ef2
    adc dx, bx                       ; 0x0ef4
    les bx, word [tick_counter_ptr]  ; 0x0ef6
    mov cx, word [es:bx]             ; 0x0efa
    mov bx, word [es:bx + 2]         ; 0x0efd
    add ax, cx                       ; 0x0f01
    adc dx, bx                       ; 0x0f03
    mov word [bss_919c], dx          ; 0x0f05
    mov word [bss_919a], ax          ; 0x0f09
    jmp short .return1               ; 0x0f0c
.forward6:
    cmp word [bp + 4], byte 0        ; 0x0f0e
    je short .return1                ; 0x0f12
    mov ax, 0xa                      ; 0x0f14
    push ax                          ; 0x0f17
    call delay_ms                    ; 0x0f18
    pop cx                           ; 0x0f1b
.return1:
    ret                              ; 0x0f1c
loc_HVLG:
    mov ax, 0                        ; 0x0f1d
    call aztec_csav                  ; 0x0f20
    les bx, word [tick_counter_ptr]  ; 0x0f23
    mov ax, word [es:bx]             ; 0x0f27
    mov dx, word [es:bx + 2]         ; 0x0f2a
    sub ax, word [party_redraw_last_tick] ; 0x0f2e
    sbb dx, word [party_redraw_last_tick_hi] ; 0x0f32
    push ax                          ; 0x0f36
    push dx                          ; 0x0f37
    mov ax, word [bss_9192]          ; 0x0f38
    cwd                              ; 0x0f3b
    mov cx, ax                       ; 0x0f3c
    mov bx, dx                       ; 0x0f3e
    pop dx                           ; 0x0f40
    pop ax                           ; 0x0f41
    cmp dx, bx                       ; 0x0f42
    jl short .forward1               ; 0x0f44
    jne short .forward2              ; 0x0f46
    cmp ax, cx                       ; 0x0f48
    jae short .forward2              ; 0x0f4a
.forward1:
    jmp short .forward3              ; 0x0f4c
.forward2:
    les bx, word [tick_counter_ptr]  ; 0x0f4e
    mov ax, word [es:bx]             ; 0x0f52
    mov dx, word [es:bx + 2]         ; 0x0f55
    mov word [party_redraw_last_tick_hi], dx ; 0x0f59
    mov word [party_redraw_last_tick], ax ; 0x0f5d
    mov ax, 1                        ; 0x0f60
    ret                              ; 0x0f63
.forward3:
    mov ax, 0                        ; 0x0f64
    ret                              ; 0x0f67
