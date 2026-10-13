; auto-generated
ds_app_27e9: ; Aztec csav frame=0x0018
    mov ax, 0xffe8                   ; 0x27e9
    call aztec_csav                  ; 0x27ec
    mov word [bp - 0x0016], 0        ; 0x27ef
    mov al, byte [bss_5987]          ; 0x27f4
    sub ah, ah                       ; 0x27f7
    jmp short @..ds_app_27e9.l2      ; 0x27f9
@..ds_app_27e9.l1:
    mov word [bp - 0x0016], 0        ; 0x27fb
    jmp short @..ds_app_27e9.l3      ; 0x2800
@..ds_app_27e9.l2:
    cmp ax, strict word 0            ; 0x2802
    je short @..ds_app_27e9.l1       ; 0x2805
    cmp ax, strict word 1            ; 0x2807
    je short @..ds_app_27e9.l1       ; 0x280a
@..ds_app_27e9.l3:
    cmp byte [bss_5987], 5           ; 0x280c
    jne short @..ds_app_27e9.l4      ; 0x2811
    mov ax, word [bp - 0x0016]       ; 0x2813
    cmp ax, strict word 0            ; 0x2816
    jle short @..ds_app_27e9.l4      ; 0x2819
    dec ax                           ; 0x281b
    dec ax                           ; 0x281c
    jmp short @..ds_app_27e9.l5      ; 0x281d
@..ds_app_27e9.l4:
    mov ax, word [bp - 0x0016]       ; 0x281f
@..ds_app_27e9.l5:
    mov word [bp - 0x0018], ax       ; 0x2822
    cmp ax, word [bss_5218]          ; 0x2825
    je short @..ds_app_27e9.l6       ; 0x2829
    mov ax, 0x3a                     ; 0x282b
    push ax                          ; 0x282e
    mov ax, 0x5912                   ; 0x282f
    push ax                          ; 0x2832
    lea ax, word [bp - 0x0014]       ; 0x2833
    push ax                          ; 0x2836
    call ds_app_2359                 ; 0x2837
    add sp, byte 6                   ; 0x283a
    mov ax, 1                        ; 0x283d
    push ax                          ; 0x2840
    push ax                          ; 0x2841
    push word [bp - 0x0016]          ; 0x2842
    lea ax, word [bp - 0x0014]       ; 0x2845
    push ax                          ; 0x2848
    call ds_app_file_23ef            ; 0x2849
    add sp, byte 8                   ; 0x284c
    mov ax, 0xc7                     ; 0x284f
    push ax                          ; 0x2852
    mov ax, 0x13f                    ; 0x2853
    push ax                          ; 0x2856
    mov ax, 0                        ; 0x2857
    push ax                          ; 0x285a
    push ax                          ; 0x285b
    call ds_loc_3b21                 ; 0x285c
    add sp, byte 8                   ; 0x285f
@..ds_app_27e9.l6:
    ret                              ; 0x2862
