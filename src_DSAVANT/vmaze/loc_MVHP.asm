; auto-generated
loc_MVHP:
    mov ax, 0                        ; 0x6b5a
    call aztec_csav                  ; 0x6b5d
    cmp word [bss_9b48], byte 0      ; 0x6b60
    je short @..loc_MVHP.l1          ; 0x6b65
    ret                              ; 0x6b67
@..loc_MVHP.l1:
    mov ax, 0xc6                     ; 0x6b68
    push ax                          ; 0x6b6b
    mov ax, 0x109                    ; 0x6b6c
    push ax                          ; 0x6b6f
    mov ax, 0x92                     ; 0x6b70
    push ax                          ; 0x6b73
    mov ax, 0x37                     ; 0x6b74
    push ax                          ; 0x6b77
    call dissolve_or_show_area       ; 0x6b78
    add sp, byte 8                   ; 0x6b7b
    mov ax, 0x3c                     ; 0x6b7e
    push ax                          ; 0x6b81
    call random_below                ; 0x6b82
    pop cx                           ; 0x6b85
    cwd                              ; 0x6b86
    les bx, word [tick_counter_ptr]  ; 0x6b87
    mov cx, word [es:bx]             ; 0x6b8b
    mov bx, word [es:bx + 0x2]       ; 0x6b8e
    add ax, cx                       ; 0x6b92
    adc dx, bx                       ; 0x6b94
    add ax, strict word 0x24         ; 0x6b96
    adc dx, byte 0                   ; 0x6b99
    mov word [bss_919c], dx          ; 0x6b9c
    mov word [bss_919a], ax          ; 0x6ba0
    cmp word [bp + 0x4], byte 0      ; 0x6ba3
    je short @..loc_MVHP.l3          ; 0x6ba7
    mov ax, word [message_delay]     ; 0x6ba9
    cmp byte [no_dissolve], 0        ; 0x6bac
    je short @..loc_MVHP.l2          ; 0x6bb1
    shl ax, 1                        ; 0x6bb3
@..loc_MVHP.l2:
    push ax                          ; 0x6bb5
    call wait_ticks_or_key           ; 0x6bb6
    pop cx                           ; 0x6bb9
    jmp short @..loc_MVHP.l5         ; 0x6bba
@..loc_MVHP.l3:
    call ds_app_TMKJ                 ; 0x6bbc
    test ax, ax                      ; 0x6bbf
    jne short @..loc_MVHP.l5         ; 0x6bc1
    call loc_HVLG                    ; 0x6bc3
    test ax, ax                      ; 0x6bc6
    je short @..loc_MVHP.l4          ; 0x6bc8
    mov ax, word [party_status_frame] ; 0x6bca
    inc ax                           ; 0x6bcd
    mov cx, 2                        ; 0x6bce
    cwd                              ; 0x6bd1
    idiv cx                          ; 0x6bd2
    mov word [party_status_frame], dx ; 0x6bd4
    cmp word [hotspot_hit], byte 0   ; 0x6bd8
    jne short @..loc_MVHP.l4         ; 0x6bdd
    call redraw_maze_view            ; 0x6bdf
@..loc_MVHP.l4:
    mov ax, 0                        ; 0x6be2
    push ax                          ; 0x6be5
    call loc_LMUG                    ; 0x6be6
    pop cx                           ; 0x6be9
    jmp short @..loc_MVHP.l3         ; 0x6bea
@..loc_MVHP.l5:
    cmp word [bss_59fa], byte 0      ; 0x6bec
    je short @..loc_MVHP.l6          ; 0x6bf1
    cmp word [bss_9b4a], byte 0      ; 0x6bf3
    jne short @..loc_MVHP.l6         ; 0x6bf8
    mov word [bss_9b48], 1           ; 0x6bfa
@..loc_MVHP.l6:
    call restore_area_a_draw_glyph   ; 0x6c00
    mov word [bss_9b4c], 0           ; 0x6c03
    ret                              ; 0x6c09
