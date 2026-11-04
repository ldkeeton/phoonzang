; auto-generated
loc_TTSP:
    mov ax, 0                        ; 0x4011
    call aztec_csav                  ; 0x4014
    les bx, word [tick_counter_ptr]  ; 0x4017
    mov ax, word [es:bx]             ; 0x401b
    mov dx, word [es:bx + 2]         ; 0x401e
    mov word [party_redraw_current_tick_hi], dx ; 0x4022
    mov word [party_redraw_current_tick], ax ; 0x4026
    mov ax, word [party_redraw_current_tick] ; 0x4029
    mov dx, word [party_redraw_current_tick_hi] ; 0x402c
    sub ax, word [party_redraw_last_tick] ; 0x4030
    sbb dx, word [party_redraw_last_tick_hi] ; 0x4034
    mov word [party_redraw_elapsed_ticks_hi], dx ; 0x4038
    mov word [party_redraw_elapsed_ticks], ax ; 0x403c
    mov ax, word [party_redraw_interval] ; 0x403f
    cwd                              ; 0x4042
    mov cx, ax                       ; 0x4043
    mov bx, dx                       ; 0x4045
    mov ax, word [party_redraw_elapsed_ticks] ; 0x4047
    mov dx, word [party_redraw_elapsed_ticks_hi] ; 0x404a
    cmp bx, dx                       ; 0x404e
    jg short .forward1               ; 0x4050
    jne short .forward2              ; 0x4052
    cmp cx, ax                       ; 0x4054
    jbe short .forward2              ; 0x4056
.forward1:
    jmp short .return1               ; 0x4058
.forward2:
    mov ax, word [party_redraw_current_tick] ; 0x405a
    mov dx, word [party_redraw_current_tick_hi] ; 0x405d
    mov word [party_redraw_last_tick_hi], dx ; 0x4061
    mov word [party_redraw_last_tick], ax ; 0x4065
    mov ax, word [banner_animation_frame] ; 0x4068
    inc ax                           ; 0x406b
    mov cx, 3                        ; 0x406c
    cwd                              ; 0x406f
    idiv cx                          ; 0x4070
    mov word [banner_animation_frame], dx ; 0x4072
    push dx                          ; 0x4076
    call draw_title_banner           ; 0x4077
    pop cx                           ; 0x407a
    mov ax, 0x41                     ; 0x407b
    push ax                          ; 0x407e
    mov ax, 0x65                     ; 0x407f
    push ax                          ; 0x4082
    mov ax, 0x19                     ; 0x4083
    push ax                          ; 0x4086
    mov ax, 0x5a                     ; 0x4087
    push ax                          ; 0x408a
    call call_show_area              ; 0x408b
    add sp, byte 8                   ; 0x408e
    mov ax, 0xffff                   ; 0x4091
    push ax                          ; 0x4094
    call advance_party_slot_frames   ; 0x4095
    pop cx                           ; 0x4098
    push word [bp + 4]               ; 0x4099
    call draw_member_realm_points    ; 0x409c
    pop cx                           ; 0x409f
    mov ax, 0xbf                     ; 0x40a0
    push ax                          ; 0x40a3
    mov ax, 0x13f                    ; 0x40a4
    push ax                          ; 0x40a7
    mov ax, 0x7e                     ; 0x40a8
    push ax                          ; 0x40ab
    mov ax, 0xb8                     ; 0x40ac
    push ax                          ; 0x40af
    call call_show_area              ; 0x40b0
    add sp, byte 8                   ; 0x40b3
.return1:
    ret                              ; 0x40b6
