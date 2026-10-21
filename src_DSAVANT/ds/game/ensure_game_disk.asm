; auto-generated
ensure_game_disk: ; Aztec csav frame=0x0018
    mov ax, 0xffe8                   ; 0x27e9
    call aztec_csav                  ; 0x27ec
    mov word [bp - 0x0016], 0        ; 0x27ef
    mov al, byte [install_mode]      ; 0x27f4
    sub ah, ah                       ; 0x27f7
    jmp short @..ensure_game_disk.l2 ; 0x27f9
@..ensure_game_disk.l1:
    mov word [bp - 0x0016], 0        ; 0x27fb
    jmp short @..ensure_game_disk.l3 ; 0x2800
@..ensure_game_disk.l2:
    cmp ax, strict word 0            ; 0x2802
    je short @..ensure_game_disk.l1  ; 0x2805
    cmp ax, strict word 1            ; 0x2807
    je short @..ensure_game_disk.l1  ; 0x280a
@..ensure_game_disk.l3:
    cmp byte [install_mode], 5       ; 0x280c
    jne short @..ensure_game_disk.l4 ; 0x2811
    mov ax, word [bp - 0x0016]       ; 0x2813
    cmp ax, strict word 0            ; 0x2816
    jle short @..ensure_game_disk.l4 ; 0x2819
    dec ax                           ; 0x281b
    dec ax                           ; 0x281c
    jmp short @..ensure_game_disk.l5 ; 0x281d
@..ensure_game_disk.l4:
    mov ax, word [bp - 0x0016]       ; 0x281f
@..ensure_game_disk.l5:
    mov word [bp - 0x0018], ax       ; 0x2822
    cmp ax, word [bss_5218]          ; 0x2825
    je short @..ensure_game_disk.l6  ; 0x2829
    mov ax, 0x3a                     ; 0x282b
    push ax                          ; 0x282e
    mov ax, data_path_prefixes       ; 0x282f
    push ax                          ; 0x2832
    lea ax, word [bp - 0x0014]       ; 0x2833
    push ax                          ; 0x2836
    call copy_through_char           ; 0x2837
    add sp, byte 6                   ; 0x283a
    mov ax, 1                        ; 0x283d
    push ax                          ; 0x2840
    push ax                          ; 0x2841
    push word [bp - 0x0016]          ; 0x2842
    lea ax, word [bp - 0x0014]       ; 0x2845
    push ax                          ; 0x2848
    call ds_app_file_QQMM            ; 0x2849
    add sp, byte 8                   ; 0x284c
    mov ax, 0xc7                     ; 0x284f
    push ax                          ; 0x2852
    mov ax, 0x13f                    ; 0x2853
    push ax                          ; 0x2856
    mov ax, 0                        ; 0x2857
    push ax                          ; 0x285a
    push ax                          ; 0x285b
    call gfx_show_area               ; 0x285c
    add sp, byte 8                   ; 0x285f
@..ensure_game_disk.l6:
    ret                              ; 0x2862
