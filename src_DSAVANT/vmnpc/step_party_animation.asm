; auto-generated
step_party_animation:
    mov ax, 0xfffa                   ; 0x0f50
    call aztec_csav                  ; 0x0f53
    mov ax, word [bss_845e]          ; 0x0f56
    jmp near @..step_party_animation.l12 ; 0x0f59
@..step_party_animation.l1:
    push word [bss_93d8]             ; 0x0f5c
    mov ax, 0xf7                     ; 0x0f60
    push ax                          ; 0x0f63
    mov ax, 0x20                     ; 0x0f64
    push ax                          ; 0x0f67
    mov ax, 0x48                     ; 0x0f68
    push ax                          ; 0x0f6b
    call gfx_show_area               ; 0x0f6c
    add sp, byte 8                   ; 0x0f6f
    jmp near @..step_party_animation.l16 ; 0x0f72
@..step_party_animation.l2:
    les bx, word [tick_counter_ptr]  ; 0x0f75
    mov ax, word [es:bx]             ; 0x0f79
    mov dx, word [es:bx + 0x2]       ; 0x0f7c
    sub ax, word [party_redraw_last_tick] ; 0x0f80
    sbb dx, word [bss_908c]          ; 0x0f84
    push ax                          ; 0x0f88
    push dx                          ; 0x0f89
    mov ax, word [bss_93d6]          ; 0x0f8a
    cwd                              ; 0x0f8d
    mov cx, ax                       ; 0x0f8e
    mov bx, dx                       ; 0x0f90
    pop dx                           ; 0x0f92
    pop ax                           ; 0x0f93
    cmp dx, bx                       ; 0x0f94
    jl short @..step_party_animation.l3 ; 0x0f96
    jne short @..step_party_animation.l4 ; 0x0f98
    cmp ax, cx                       ; 0x0f9a
    jae short @..step_party_animation.l4 ; 0x0f9c
@..step_party_animation.l3:
    jmp short @..step_party_animation.l5 ; 0x0f9e
@..step_party_animation.l4:
    mov ax, word [screen_cache_index] ; 0x0fa0
    inc ax                           ; 0x0fa3
    mov cx, 2                        ; 0x0fa4
    cwd                              ; 0x0fa7
    idiv cx                          ; 0x0fa8
    mov word [screen_cache_index], dx ; 0x0faa
@..step_party_animation.l5:
    mov ax, 0                        ; 0x0fae
    push ax                          ; 0x0fb1
    push ax                          ; 0x0fb2
    mov ax, word [screen_cache_index] ; 0x0fb3
    shl ax, 1                        ; 0x0fb6
    shl ax, 1                        ; 0x0fb8
    mov bx, ax                       ; 0x0fba
    push word [bx + bss_9062]        ; 0x0fbc
    push word [bx + screen_cache]    ; 0x0fc0
    call gfx_restore_screen          ; 0x0fc4
    add sp, byte 8                   ; 0x0fc7
    mov word [bp - 0x0002], 0        ; 0x0fca
@..step_party_animation.l6:
    mov ax, word [bp - 0x0002]       ; 0x0fcf
    shl ax, 1                        ; 0x0fd2
    mov bx, ax                       ; 0x0fd4
    mov bx, word [bx + overlay_list + 0x2] ; 0x0fd6
    mov byte [bx + 0x14], 0xff       ; 0x0fda
    inc word [bp - 0x0002]           ; 0x0fde
    mov ax, word [bp - 0x0002]       ; 0x0fe1
    cmp ax, strict word 0xc          ; 0x0fe4
    jl short @..step_party_animation.l6 ; 0x0fe7
    mov word [overlay_list], 0       ; 0x0fe9
    jmp near @..step_party_animation.l16 ; 0x0fef
@..step_party_animation.l7:
    call loc_KRMP                    ; 0x0ff2
    mov word [bp - 0x0006], ax       ; 0x0ff5
    mov word [bp - 0x0002], 0        ; 0x0ff8
@..step_party_animation.l8:
    mov word [bp - 0x0004], 0        ; 0x0ffd
@..step_party_animation.l9:
    push word [bp - 0x0006]          ; 0x1002
    mov ax, 0xf8                     ; 0x1005
    push ax                          ; 0x1008
    mov ax, 0x48                     ; 0x1009
    push ax                          ; 0x100c
    mov ax, 6                        ; 0x100d
    imul word [bp - 0x0002]          ; 0x1010
    mov cx, word [bp - 0x0004]       ; 0x1013
    shl cx, 1                        ; 0x1016
    add ax, cx                       ; 0x1018
    mov bx, ax                       ; 0x101a
    mov cx, word [bx + 0x5c8]        ; 0x101c
    mov ax, 0x64                     ; 0x1020
    sub ax, cx                       ; 0x1023
    push ax                          ; 0x1025
    mov ax, 0                        ; 0x1026
    push ax                          ; 0x1029
    push word [bp - 0x0004]          ; 0x102a
    push word [bp - 0x0002]          ; 0x102d
    call api_idx_0018_TROH           ; 0x1030
    add sp, byte 0x0e                ; 0x1033
    inc word [bp - 0x0004]           ; 0x1036
    mov ax, word [bp - 0x0004]       ; 0x1039
    cmp ax, strict word 3            ; 0x103c
    jl short @..step_party_animation.l9 ; 0x103f
    inc word [bp - 0x0002]           ; 0x1041
    mov ax, word [bp - 0x0002]       ; 0x1044
    cmp ax, strict word 3            ; 0x1047
    jl short @..step_party_animation.l8 ; 0x104a
    call queue_marker_overlay        ; 0x104c
    cmp word [bp - 0x0006], byte 0   ; 0x104f
    je short @..step_party_animation.l10 ; 0x1053
    mov ax, word [party_status_frame] ; 0x1055
    inc ax                           ; 0x1058
    mov cx, 2                        ; 0x1059
    cwd                              ; 0x105c
    idiv cx                          ; 0x105d
    mov word [party_status_frame], dx ; 0x105f
@..step_party_animation.l10:
    call draw_party_status_glyphs    ; 0x1063
    jmp short @..step_party_animation.l16 ; 0x1066
@..step_party_animation.l11:
    push word [bss_845e]             ; 0x1068
    call loc_SSIO                    ; 0x106c
    pop cx                           ; 0x106f
    jmp short @..step_party_animation.l16 ; 0x1070
@..step_party_animation.l12:
    cmp ax, strict word 0xfffd       ; 0x1072
    jne short @..step_party_animation.l13 ; 0x1075
    jmp near @..step_party_animation.l1 ; 0x1077
@..step_party_animation.l13:
    cmp ax, strict word 0xfffe       ; 0x107a
    jne short @..step_party_animation.l14 ; 0x107d
    jmp near @..step_party_animation.l2 ; 0x107f
@..step_party_animation.l14:
    cmp ax, strict word 0xffff       ; 0x1082
    jne short @..step_party_animation.l15 ; 0x1085
    jmp near @..step_party_animation.l7 ; 0x1087
@..step_party_animation.l15:
    jmp short @..step_party_animation.l11 ; 0x108a
@..step_party_animation.l16:
    inc word [bss_845e]              ; 0x108c
    mov ax, word [bss_845e]          ; 0x1090
    cmp ax, strict word 0xc          ; 0x1093
    jne short @..step_party_animation.l17 ; 0x1096
    mov word [bss_845e], 0xfffd      ; 0x1098
@..step_party_animation.l17:
    ret                              ; 0x109e
