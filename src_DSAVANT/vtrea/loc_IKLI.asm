; auto-generated
loc_IKLI:
    mov ax, 0                        ; 0x086b
    call aztec_csav                  ; 0x086e
    les bx, word [tick_counter_ptr]  ; 0x0871
    mov ax, word [es:bx]             ; 0x0875
    mov dx, word [es:bx + 0x2]       ; 0x0878
    sub ax, word [party_redraw_last_tick] ; 0x087c
    sbb dx, word [bss_908c]          ; 0x0880
    push ax                          ; 0x0884
    push dx                          ; 0x0885
    mov ax, word [party_redraw_interval] ; 0x0886
    cwd                              ; 0x0889
    mov cx, ax                       ; 0x088a
    mov bx, dx                       ; 0x088c
    pop dx                           ; 0x088e
    pop ax                           ; 0x088f
    cmp dx, bx                       ; 0x0890
    jl short @..loc_IKLI.l1          ; 0x0892
    jne short @..loc_IKLI.l2         ; 0x0894
    cmp ax, cx                       ; 0x0896
    jae short @..loc_IKLI.l2         ; 0x0898
@..loc_IKLI.l1:
    jmp short @..loc_IKLI.l4         ; 0x089a
@..loc_IKLI.l2:
    mov ax, word [screen_cache_index] ; 0x089c
    inc ax                           ; 0x089f
    mov cx, 2                        ; 0x08a0
    cwd                              ; 0x08a3
    idiv cx                          ; 0x08a4
    mov word [screen_cache_index], dx ; 0x08a6
    mov ax, word [bss_82e8]          ; 0x08aa
    inc ax                           ; 0x08ad
    cwd                              ; 0x08ae
    idiv cx                          ; 0x08af
    mov word [bss_82e8], dx          ; 0x08b1
    mov ax, word [animation_frame]   ; 0x08b5
    inc ax                           ; 0x08b8
    mov cx, 3                        ; 0x08b9
    cwd                              ; 0x08bc
    idiv cx                          ; 0x08bd
    mov word [animation_frame], dx   ; 0x08bf
    cmp word [animation_index], byte 0 ; 0x08c3
    jl short @..loc_IKLI.l3          ; 0x08c8
    inc word [animation_index]       ; 0x08ca
@..loc_IKLI.l3:
    les bx, word [tick_counter_ptr]  ; 0x08ce
    mov ax, word [es:bx]             ; 0x08d2
    mov dx, word [es:bx + 0x2]       ; 0x08d5
    mov word [bss_908c], dx          ; 0x08d9
    mov word [party_redraw_last_tick], ax ; 0x08dd
    call update_treasure_frame       ; 0x08e0
    mov ax, 1                        ; 0x08e3
    ret                              ; 0x08e6
@..loc_IKLI.l4:
    mov ax, 0                        ; 0x08e7
    ret                              ; 0x08ea
