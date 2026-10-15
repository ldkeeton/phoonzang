; auto-generated
loc_MTSN:
    mov ax, 0                        ; 0x27bd
    call aztec_csav                  ; 0x27c0
    mov ax, word [bp + 0x6]          ; 0x27c3
    add ax, strict word 6            ; 0x27c6
    push ax                          ; 0x27c9
    mov ax, word [bp + 0x4]          ; 0x27ca
    add ax, strict word 0x14         ; 0x27cd
    push ax                          ; 0x27d0
    push word [bp + 0x6]             ; 0x27d1
    push word [bp + 0x4]             ; 0x27d4
    call ds_app_URLN                 ; 0x27d7
    add sp, byte 8                   ; 0x27da
    mov ax, word [bp + 0x8]          ; 0x27dd
    shl ax, 1                        ; 0x27e0
    shl ax, 1                        ; 0x27e2
    mov bx, ax                       ; 0x27e4
    push word [word bx + 0x8]        ; 0x27e6
    mov ax, word [bp + 0x6]          ; 0x27ea
    add ax, strict word 6            ; 0x27ed
    push ax                          ; 0x27f0
    mov ax, word [bp + 0x4]          ; 0x27f1
    add ax, strict word 0x14         ; 0x27f4
    push ax                          ; 0x27f7
    push word [bp + 0x6]             ; 0x27f8
    push word [bp + 0x4]             ; 0x27fb
    call thunk_7                     ; 0x27fe
    add sp, byte 0x0a                ; 0x2801
    mov ax, word [bp + 0x6]          ; 0x2804
    inc ax                           ; 0x2807
    push ax                          ; 0x2808
    mov ax, word [bp + 0x4]          ; 0x2809
    inc ax                           ; 0x280c
    inc ax                           ; 0x280d
    push ax                          ; 0x280e
    call thunk                       ; 0x280f
    add sp, byte 4                   ; 0x2812
    cmp word [bp + 0xa], byte 0      ; 0x2815
    jle short @..loc_MTSN.l1         ; 0x2819
    mov ax, word [bp + 0xa]          ; 0x281b
    cmp ax, word [bp + 0xc]          ; 0x281e
    jg short @..loc_MTSN.l1          ; 0x2821
    mov ax, 0                        ; 0x2823
    push ax                          ; 0x2826
    mov ax, 1                        ; 0x2827
    push ax                          ; 0x282a
    call thunk_3                     ; 0x282b
    add sp, byte 4                   ; 0x282e
    mov ax, 0                        ; 0x2831
    push ax                          ; 0x2834
    mov ax, 3                        ; 0x2835
    push ax                          ; 0x2838
    push word [bp + 0xa]             ; 0x2839
    call ds_app_SHMQ                 ; 0x283c
    add sp, byte 6                   ; 0x283f
    jmp short @..loc_MTSN.l2         ; 0x2842
@..loc_MTSN.l1:
    mov ax, 0                        ; 0x2844
    push ax                          ; 0x2847
    push ax                          ; 0x2848
    call thunk_3                     ; 0x2849
    add sp, byte 4                   ; 0x284c
    mov ax, 0                        ; 0x284f
    push ax                          ; 0x2852
    mov ax, 0x909a                   ; 0x2853
    push ax                          ; 0x2856
    call ds_string_loc_PTIK          ; 0x2857
    add sp, byte 4                   ; 0x285a
@..loc_MTSN.l2:
    ret                              ; 0x285d
