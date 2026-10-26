; auto-generated
ensure_game_disk: ; Aztec csav frame=0x0018
    mov ax, 0xffe8                   ; 0x27e9
    call aztec_csav                  ; 0x27ec
    mov word [bp - 0x16], 0          ; 0x27ef
    mov al, byte [install_mode]      ; 0x27f4
    sub ah, ah                       ; 0x27f7
    jmp short .forward1              ; 0x27f9
.back1:
    mov word [bp - 0x16], 0          ; 0x27fb
    jmp short .forward2              ; 0x2800
.forward1:
    cmp ax, strict word 0            ; 0x2802
    je short .back1                  ; 0x2805
    cmp ax, strict word 1            ; 0x2807
    je short .back1                  ; 0x280a
.forward2:
    cmp byte [install_mode], 5       ; 0x280c
    jne short .forward3              ; 0x2811
    mov ax, word [bp - 0x16]         ; 0x2813
    cmp ax, strict word 0            ; 0x2816
    jle short .forward3              ; 0x2819
    dec ax                           ; 0x281b
    dec ax                           ; 0x281c
    jmp short .forward4              ; 0x281d
.forward3:
    mov ax, word [bp - 0x16]         ; 0x281f
.forward4:
    mov word [bp - 0x18], ax         ; 0x2822
    cmp ax, word [disk_header]       ; 0x2825
    je short .return1                ; 0x2829
    mov ax, 0x3a                     ; 0x282b
    push ax                          ; 0x282e
    mov ax, data_path_prefixes       ; 0x282f
    push ax                          ; 0x2832
    lea ax, word [bp - 0x14]         ; 0x2833
    push ax                          ; 0x2836
    call copy_through_char           ; 0x2837
    add sp, byte 6                   ; 0x283a
    mov ax, 1                        ; 0x283d
    push ax                          ; 0x2840
    push ax                          ; 0x2841
    push word [bp - 0x16]            ; 0x2842
    lea ax, word [bp - 0x14]         ; 0x2845
    push ax                          ; 0x2848
    call prompt_disk_swap            ; 0x2849
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
.return1:
    ret                              ; 0x2862
