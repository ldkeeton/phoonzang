; auto-generated
loc_GSUP:
    mov ax, 0                        ; 0x73bc
    call aztec_csav                  ; 0x73bf
    les bx, word [tick_counter_ptr]  ; 0x73c2
    mov ax, word [es:bx]             ; 0x73c6
    mov dx, word [es:bx + 0x2]       ; 0x73c9
    sub ax, word [party_redraw_last_tick] ; 0x73cd
    sbb dx, word [party_redraw_last_tick_hi] ; 0x73d1
    push ax                          ; 0x73d5
    push dx                          ; 0x73d6
    mov ax, word [bss_a5ae]          ; 0x73d7
    cwd                              ; 0x73da
    mov cx, ax                       ; 0x73db
    mov bx, dx                       ; 0x73dd
    pop dx                           ; 0x73df
    pop ax                           ; 0x73e0
    cmp dx, bx                       ; 0x73e1
    jl short @..loc_GSUP.l1          ; 0x73e3
    jne short @..loc_GSUP.l2         ; 0x73e5
    cmp ax, cx                       ; 0x73e7
    jae short @..loc_GSUP.l2         ; 0x73e9
@..loc_GSUP.l1:
    jmp short @..loc_GSUP.l3         ; 0x73eb
@..loc_GSUP.l2:
    mov ax, word [scene_frame]       ; 0x73ed
    inc ax                           ; 0x73f0
    mov cx, 0xc                      ; 0x73f1
    cwd                              ; 0x73f4
    idiv cx                          ; 0x73f5
    mov word [scene_frame], dx       ; 0x73f7
    les bx, word [tick_counter_ptr]  ; 0x73fb
    mov ax, word [es:bx]             ; 0x73ff
    mov dx, word [es:bx + 0x2]       ; 0x7402
    mov word [party_redraw_last_tick_hi], dx ; 0x7406
    mov word [party_redraw_last_tick], ax ; 0x740a
    mov ax, 1                        ; 0x740d
    ret                              ; 0x7410
@..loc_GSUP.l3:
    mov ax, 0                        ; 0x7411
    ret                              ; 0x7414
