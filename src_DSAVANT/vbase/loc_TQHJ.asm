; auto-generated
loc_TQHJ:
    mov ax, 0                        ; 0x8634
    call aztec_csav                  ; 0x8637
    mov ax, 0                        ; 0x863a
    push ax                          ; 0x863d
    mov ax, dseg_9144                ; 0x863e
    push ax                          ; 0x8641
    call api_idx_0002_LVPS           ; 0x8642
    add sp, byte 4                   ; 0x8645
    mov ax, 0                        ; 0x8648
    push ax                          ; 0x864b
    mov ax, 2                        ; 0x864c
    push ax                          ; 0x864f
    mov ax, 0x91                     ; 0x8650
    push ax                          ; 0x8653
    mov ax, 0x13f                    ; 0x8654
    push ax                          ; 0x8657
    mov ax, 0                        ; 0x8658
    push ax                          ; 0x865b
    push ax                          ; 0x865c
    call gfx_cache_area              ; 0x865d
    add sp, byte 0x0c                ; 0x8660
    mov word [bss_a5b4], dx          ; 0x8663
    mov word [bss_a5b2], ax          ; 0x8667
    mov ax, 0xf                      ; 0x866a
    push ax                          ; 0x866d
    mov ax, 1                        ; 0x866e
    push ax                          ; 0x8671
    call api_idx_0016_LTLN           ; 0x8672
    add sp, byte 4                   ; 0x8675
    mov ax, 0x10                     ; 0x8678
    push ax                          ; 0x867b
    mov ax, 2                        ; 0x867c
    push ax                          ; 0x867f
    call api_idx_0016_LTLN           ; 0x8680
    add sp, byte 4                   ; 0x8683
    mov ax, 0x11                     ; 0x8686
    push ax                          ; 0x8689
    mov ax, 3                        ; 0x868a
    push ax                          ; 0x868d
    call api_idx_0016_LTLN           ; 0x868e
    add sp, byte 4                   ; 0x8691
    mov ax, word [bp + 0x6]          ; 0x8694
    mov word [bss_a5b6], ax          ; 0x8697
    mov ax, word [bp + 0x8]          ; 0x869a
    mov word [bss_a5b8], ax          ; 0x869d
    mov ax, word [bp + 0xa]          ; 0x86a0
    mov word [bss_a5ba], ax          ; 0x86a3
    mov ax, word [bp + 0xc]          ; 0x86a6
    mov word [bss_a5bc], ax          ; 0x86a9
    mov word [bss_a5b0], 0           ; 0x86ac
    mov word [bss_a4a4], 1           ; 0x86b2
    mov ax, 0                        ; 0x86b8
    cmp word [bp + 0x8], byte 0      ; 0x86bb
    jne short @..loc_TQHJ.l1         ; 0x86bf
    mov ax, 0x14                     ; 0x86c1
@..loc_TQHJ.l1:
    mov word [bss_a5ce], ax          ; 0x86c4
    mov ax, dseg_9151                ; 0x86c7
    push ax                          ; 0x86ca
    mov ax, bss_a5c6                 ; 0x86cb
    push ax                          ; 0x86ce
    call aztec_strcpy                ; 0x86cf
    add sp, byte 4                   ; 0x86d2
    mov word [bss_a5ae], 5           ; 0x86d5
    les bx, word [dseg_0002]         ; 0x86db
    mov ax, word [es:bx]             ; 0x86df
    mov dx, word [es:bx + 0x2]       ; 0x86e2
    mov word [bss_908c], dx          ; 0x86e6
    mov word [bss_908a], ax          ; 0x86ea
    call api_idx_000a_THHN           ; 0x86ed
    mov ax, 0                        ; 0x86f0
    push ax                          ; 0x86f3
    push ax                          ; 0x86f4
    push ax                          ; 0x86f5
    call gfx_reset_rgb               ; 0x86f6
    add sp, byte 6                   ; 0x86f9
    mov ax, 0xc7                     ; 0x86fc
    push ax                          ; 0x86ff
    mov ax, 0x13f                    ; 0x8700
    push ax                          ; 0x8703
    mov ax, 0                        ; 0x8704
    push ax                          ; 0x8707
    push ax                          ; 0x8708
    call gfx_show_area               ; 0x8709
    add sp, byte 8                   ; 0x870c
    mov ax, 0                        ; 0x870f
    push ax                          ; 0x8712
    call gfx_fade_in                 ; 0x8713
    pop cx                           ; 0x8716
    mov ax, 0                        ; 0x8717
    push ax                          ; 0x871a
    push word [bp + 0x4]             ; 0x871b
    call loc_LIQV                    ; 0x871e
    add sp, byte 4                   ; 0x8721
    mov ax, 0x11                     ; 0x8724
    push ax                          ; 0x8727
    call loc_GUNQ                    ; 0x8728
    pop cx                           ; 0x872b
    mov ax, 0x10                     ; 0x872c
    push ax                          ; 0x872f
    call loc_GUNQ                    ; 0x8730
    pop cx                           ; 0x8733
    mov ax, 0xf                      ; 0x8734
    push ax                          ; 0x8737
    call loc_GUNQ                    ; 0x8738
    pop cx                           ; 0x873b
    mov ax, 0                        ; 0x873c
    push ax                          ; 0x873f
    mov ax, 1                        ; 0x8740
    push ax                          ; 0x8743
    push word [bss_a5b4]             ; 0x8744
    push word [bss_a5b2]             ; 0x8748
    call gfx_restore_screen          ; 0x874c
    add sp, byte 8                   ; 0x874f
    call loc_QSVI                    ; 0x8752
    ret                              ; 0x8755
