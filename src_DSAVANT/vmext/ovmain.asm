; auto-generated
ovmain:
    mov ax, 0xfffe                   ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [bss_8f22], 0           ; 0x0014
    mov word [bss_9180], 5           ; 0x001a
    les bx, word [tick_counter_ptr]  ; 0x0020
    mov ax, word [es:bx]             ; 0x0024
    mov dx, word [es:bx + 2]         ; 0x0027
    mov word [party_redraw_last_tick_hi], dx ; 0x002b
    mov word [party_redraw_last_tick], ax ; 0x002f
    mov word [bp - 2], 0             ; 0x0032
@..ovmain.l1:
    mov ax, word [bp - 2]            ; 0x0037
    shl ax, 1                        ; 0x003a
    mov bx, ax                       ; 0x003c
    mov word [bx + bss_9182], 0      ; 0x003e
    inc word [bp - 2]                ; 0x0044
    mov ax, word [bp - 2]            ; 0x0047
    cmp ax, strict word 3            ; 0x004a
    jl short @..ovmain.l1            ; 0x004d
    cmp word [saved_screen_pending], byte 0 ; 0x004f
    je short @..ovmain.l2            ; 0x0054
    mov ax, 1                        ; 0x0056
    push ax                          ; 0x0059
    push word [saved_screen_slot]    ; 0x005a
    call restore_saved_screen        ; 0x005e
    add sp, byte 4                   ; 0x0061
    mov word [saved_screen_pending], 0 ; 0x0064
@..ovmain.l2:
    cmp word [game_state], byte 0x17 ; 0x006a
    jne short @..ovmain.l3           ; 0x006f
    call api_idx_0002_VNLG           ; 0x0071
    mov ax, 0xa                      ; 0x0074
    push ax                          ; 0x0077
    call random_below                ; 0x0078
    pop cx                           ; 0x007b
    add ax, strict word 4            ; 0x007c
    push ax                          ; 0x007f
    call api_idx_008a_SRHN           ; 0x0080
    pop cx                           ; 0x0083
@..ovmain.l3:
    cmp word [game_state], byte 0x1b ; 0x0084
    jne short @..ovmain.l4           ; 0x0089
    call api_idx_0012_VNOV           ; 0x008b
@..ovmain.l4:
    cmp word [game_state], byte 0x1e ; 0x008e
    jne short @..ovmain.l5           ; 0x0093
    push word [member_roster_index]  ; 0x0095
    call api_idx_0008_OKSM           ; 0x0099
    pop cx                           ; 0x009c
@..ovmain.l5:
    cmp word [game_state], byte 0x1f ; 0x009d
    jne short @..ovmain.l6           ; 0x00a2
    push word [member_roster_index]  ; 0x00a4
    call loc_HTTH                    ; 0x00a8
    pop cx                           ; 0x00ab
@..ovmain.l6:
    mov word [game_state], 5         ; 0x00ac
    mov ax, 0                        ; 0x00b2
    ret                              ; 0x00b5
