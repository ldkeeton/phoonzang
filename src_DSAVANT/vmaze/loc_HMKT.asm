; auto-generated
loc_HMKT:
    mov ax, 0                        ; 0x7cb4
    call aztec_csav                  ; 0x7cb7
.back1:
    cmp word [bp + 4], byte 0        ; 0x7cba
    jle short .return1               ; 0x7cbe
    cmp word [bp + 6], byte 0        ; 0x7cc0
    je short .forward1               ; 0x7cc4
    mov ax, word [party_status_frame] ; 0x7cc6
    inc ax                           ; 0x7cc9
    mov cx, 2                        ; 0x7cca
    cwd                              ; 0x7ccd
    idiv cx                          ; 0x7cce
    mov word [party_status_frame], dx ; 0x7cd0
    call redraw_maze_view            ; 0x7cd4
    mov ax, 0x10                     ; 0x7cd7
    push ax                          ; 0x7cda
    call play_sound_effect           ; 0x7cdb
    pop cx                           ; 0x7cde
.forward1:
    dec word [bp + 4]                ; 0x7cdf
    jmp short .back1                 ; 0x7ce2
.return1:
    ret                              ; 0x7ce4
