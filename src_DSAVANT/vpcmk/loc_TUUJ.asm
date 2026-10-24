; auto-generated
loc_TUUJ:
    mov ax, 0                        ; 0x66c3
    call aztec_csav                  ; 0x66c6
    mov ax, 0                        ; 0x66c9
    push ax                          ; 0x66cc
    push word [bp + 0x6]             ; 0x66cd
    mov ax, 0x248                    ; 0x66d0
    imul word [bp + 0x4]             ; 0x66d3
    add ax, party_records            ; 0x66d6
    push ax                          ; 0x66d9
    call api_idx_0002_SJMT           ; 0x66da
    add sp, byte 6                   ; 0x66dd
    mov word [bss_9594], 0xffff      ; 0x66e0
    push word [bp + 0x4]             ; 0x66e6
    call api_idx_0054_RLST           ; 0x66e9
    pop cx                           ; 0x66ec
    mov ax, 0                        ; 0x66ed
    push ax                          ; 0x66f0
    mov ax, 0x248                    ; 0x66f1
    imul word [bp + 0x4]             ; 0x66f4
    mov bx, ax                       ; 0x66f7
    mov al, byte [bx + member_state] ; 0x66f9
    sub ah, ah                       ; 0x66fd
    push ax                          ; 0x66ff
    call api_idx_0016_JNJG           ; 0x6700
    add sp, byte 4                   ; 0x6703
    mov ax, 0x12                     ; 0x6706
    push ax                          ; 0x6709
    mov ax, 0xe                      ; 0x670a
    push ax                          ; 0x670d
    push word [bp + 0x4]             ; 0x670e
    call api_idx_0010_GGGV           ; 0x6711
    add sp, byte 6                   ; 0x6714
    mov ax, 0                        ; 0x6717
    push ax                          ; 0x671a
    push word [bp + 0x4]             ; 0x671b
    call api_idx_0002_SSJN           ; 0x671e
    add sp, byte 4                   ; 0x6721
    mov ax, 0xc7                     ; 0x6724
    push ax                          ; 0x6727
    mov ax, 0x13f                    ; 0x6728
    push ax                          ; 0x672b
    mov ax, 0                        ; 0x672c
    push ax                          ; 0x672f
    push ax                          ; 0x6730
    call gfx_show_area               ; 0x6731
    add sp, byte 8                   ; 0x6734
    ret                              ; 0x6737
