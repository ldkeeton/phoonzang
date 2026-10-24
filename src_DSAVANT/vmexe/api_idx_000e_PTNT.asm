; auto-generated
api_idx_000e_PTNT:
    mov ax, 0xfff2                   ; 0x178e
    call aztec_csav                  ; 0x1791
    push word [bp + 0x8]             ; 0x1794
    push word [bp + 0x6]             ; 0x1797
    push word [bp + 0x4]             ; 0x179a
    call ds_app_UTUH                 ; 0x179d
    add sp, byte 6                   ; 0x17a0
    push word [bp + 0x4]             ; 0x17a3
    call sum_page_cell_values        ; 0x17a6
    pop cx                           ; 0x17a9
    push word [bp + 0x4]             ; 0x17aa
    call api_idx_0012_PGSL           ; 0x17ad
    pop cx                           ; 0x17b0
    mov si, ax                       ; 0x17b1
    lea di, word [bp - 0x000e]       ; 0x17b3
    mov cx, ds                       ; 0x17b6
    mov es, cx                       ; 0x17b8
    mov cx, 7                        ; 0x17ba
    rep movsw                        ; 0x17bd
    mov al, byte [bp - 0x0004]       ; 0x17bf
    push ax                          ; 0x17c2
    mov ax, 0x248                    ; 0x17c3
    imul word [bp + 0x4]             ; 0x17c6
    mov bx, ax                       ; 0x17c9
    pop ax                           ; 0x17cb
    mov byte [bx + member_state + 0x9], al ; 0x17cc
    ret                              ; 0x17d0
