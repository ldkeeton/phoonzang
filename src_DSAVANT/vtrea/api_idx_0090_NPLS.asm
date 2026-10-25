; auto-generated
api_idx_0090_NPLS:
    mov ax, 0xff70                   ; 0x0b29
    call aztec_csav                  ; 0x0b2c
@..api_idx_0090_NPLS.l1:
    mov bx, word [bp + 0x4]          ; 0x0b2f
    mov al, byte [bx]                ; 0x0b32
    sub ah, ah                       ; 0x0b34
    push ax                          ; 0x0b36
    mov ax, dseg_9098                ; 0x0b37
    push ax                          ; 0x0b3a
    call strpos                      ; 0x0b3b
    add sp, byte 4                   ; 0x0b3e
    mov word [bp - 0x0004], ax       ; 0x0b41
    cmp ax, strict word 0            ; 0x0b44
    jge short @..api_idx_0090_NPLS.l2 ; 0x0b47
    jmp near @..api_idx_0090_NPLS.l9 ; 0x0b49
@..api_idx_0090_NPLS.l2:
    jmp near @..api_idx_0090_NPLS.l7 ; 0x0b4c
jumptable_0c85_case_0:
    inc word [bp + 0x4]              ; 0x0b4f
    mov ax, bss_9154                 ; 0x0b52
    push ax                          ; 0x0b55
    call api_idx_0004_JGSH           ; 0x0b56
    pop cx                           ; 0x0b59
    jmp near @..api_idx_0090_NPLS.l8 ; 0x0b5a
jumptable_0c85_case_1:
    inc word [bp + 0x4]              ; 0x0b5d
    mov ax, bss_9154                 ; 0x0b60
    push ax                          ; 0x0b63
    call api_idx_0004_JGSH           ; 0x0b64
    pop cx                           ; 0x0b67
    mov ax, 0xc6                     ; 0x0b68
    push ax                          ; 0x0b6b
    mov ax, 0x109                    ; 0x0b6c
    push ax                          ; 0x0b6f
    mov ax, 0x92                     ; 0x0b70
    push ax                          ; 0x0b73
    mov ax, 0x37                     ; 0x0b74
    push ax                          ; 0x0b77
    call dissolve_or_show_area       ; 0x0b78
    add sp, byte 8                   ; 0x0b7b
    push word [message_delay]        ; 0x0b7e
    call api_idx_0004_UQUT           ; 0x0b82
    pop cx                           ; 0x0b85
    jmp near @..api_idx_0090_NPLS.l8 ; 0x0b86
jumptable_0c85_case_2:
    inc word [bp + 0x4]              ; 0x0b89
    mov ax, bss_9154                 ; 0x0b8c
    push ax                          ; 0x0b8f
    call api_idx_0004_JGSH           ; 0x0b90
    pop cx                           ; 0x0b93
    mov ax, 0xc6                     ; 0x0b94
    push ax                          ; 0x0b97
    mov ax, 0x109                    ; 0x0b98
    push ax                          ; 0x0b9b
    mov ax, 0x92                     ; 0x0b9c
    push ax                          ; 0x0b9f
    mov ax, 0x37                     ; 0x0ba0
    push ax                          ; 0x0ba3
    call dissolve_or_show_area       ; 0x0ba4
    add sp, byte 8                   ; 0x0ba7
    jmp near @..api_idx_0090_NPLS.l8 ; 0x0baa
jumptable_0c85_case_3:
    inc word [bp + 0x4]              ; 0x0bad
    mov ax, 0                        ; 0x0bb0
    push ax                          ; 0x0bb3
    call redraw_treasure_caption     ; 0x0bb4
    pop cx                           ; 0x0bb7
    mov word [bss_9150], 0           ; 0x0bb8
    jmp near @..api_idx_0090_NPLS.l8 ; 0x0bbe
jumptable_0c85_case_4:
    inc word [bp + 0x4]              ; 0x0bc1
    mov ax, bss_9154                 ; 0x0bc4
    push ax                          ; 0x0bc7
    call api_idx_0004_JGSH           ; 0x0bc8
    pop cx                           ; 0x0bcb
    mov ax, 0                        ; 0x0bcc
    push ax                          ; 0x0bcf
    call loc_NQGV                    ; 0x0bd0
    pop cx                           ; 0x0bd3
    jmp near @..api_idx_0090_NPLS.l8 ; 0x0bd4
jumptable_0c85_case_5:
    inc word [bp + 0x4]              ; 0x0bd7
    mov ax, 0x10                     ; 0x0bda
    push ax                          ; 0x0bdd
    mov ax, 0xa                      ; 0x0bde
    push ax                          ; 0x0be1
    call load_monster_picture        ; 0x0be2
    add sp, byte 4                   ; 0x0be5
    mov byte [bp - 0x0090], 1        ; 0x0be8
    mov byte [bp - 0x008f], 0        ; 0x0bed
    mov ax, 0                        ; 0x0bf2
    push ax                          ; 0x0bf5
    push ax                          ; 0x0bf6
    lea ax, word [bp - 0x0090]       ; 0x0bf7
    push ax                          ; 0x0bfb
    mov ax, 0                        ; 0x0bfc
    push ax                          ; 0x0bff
    mov ax, 0xc7                     ; 0x0c00
    push ax                          ; 0x0c03
    mov ax, 0                        ; 0x0c04
    push ax                          ; 0x0c07
    mov ax, 0x13f                    ; 0x0c08
    push ax                          ; 0x0c0b
    mov ax, 0                        ; 0x0c0c
    push ax                          ; 0x0c0f
    mov ax, 0x92                     ; 0x0c10
    push ax                          ; 0x0c13
    mov ax, 0x59                     ; 0x0c14
    push ax                          ; 0x0c17
    mov ax, 0x10                     ; 0x0c18
    push ax                          ; 0x0c1b
    call gfx_draw_text               ; 0x0c1c
    add sp, byte 0x16                ; 0x0c1f
    mov ax, 0x10                     ; 0x0c22
    push ax                          ; 0x0c25
    call free_picture_slot           ; 0x0c26
    pop cx                           ; 0x0c29
    jmp near @..api_idx_0090_NPLS.l8 ; 0x0c2a
jumptable_0c85_case_6:
    inc word [bp + 0x4]              ; 0x0c2d
    mov bx, word [bp + 0x4]          ; 0x0c30
    mov al, byte [bx]                ; 0x0c33
    sub ah, ah                       ; 0x0c35
    mov word [bp - 0x0006], ax       ; 0x0c37
    cmp ax, strict word 0x63         ; 0x0c3a
    jne short @..api_idx_0090_NPLS.l3 ; 0x0c3d
    mov word [bp - 0x0006], 0x20     ; 0x0c3f
@..api_idx_0090_NPLS.l3:
    cmp word [bp - 0x0006], byte 0   ; 0x0c44
    jle short @..api_idx_0090_NPLS.l6 ; 0x0c48
    mov ax, word [bp - 0x0006]       ; 0x0c4a
    cmp ax, strict word 5            ; 0x0c4d
    jl short @..api_idx_0090_NPLS.l4 ; 0x0c50
    cmp ax, strict word 8            ; 0x0c52
    je short @..api_idx_0090_NPLS.l4 ; 0x0c55
    cmp ax, strict word 9            ; 0x0c57
    jne short @..api_idx_0090_NPLS.l5 ; 0x0c5a
@..api_idx_0090_NPLS.l4:
    push ax                          ; 0x0c5c
    call play_sound_effect           ; 0x0c5d
    pop cx                           ; 0x0c60
    jmp short @..api_idx_0090_NPLS.l6 ; 0x0c61
@..api_idx_0090_NPLS.l5:
    push word [bp - 0x0006]          ; 0x0c63
    call ensure_sound_loaded         ; 0x0c66
    pop cx                           ; 0x0c69
    mov ax, 0x10                     ; 0x0c6a
    push ax                          ; 0x0c6d
    call play_sound_effect           ; 0x0c6e
    pop cx                           ; 0x0c71
    mov ax, 0x10                     ; 0x0c72
    push ax                          ; 0x0c75
    call wait_and_free_sound         ; 0x0c76
    pop cx                           ; 0x0c79
    mov word [loaded_sound_id], 0xffff ; 0x0c7a
@..api_idx_0090_NPLS.l6:
    inc word [bp + 0x4]              ; 0x0c80
    jmp short @..api_idx_0090_NPLS.l8 ; 0x0c83
jumptable_0c85:
    dw jumptable_0c85_case_0 - IMAGE_BASE + __zres_end ; 0x0c85
    dw jumptable_0c85_case_1 - IMAGE_BASE + __zres_end ; 0x0c87
    dw jumptable_0c85_case_2 - IMAGE_BASE + __zres_end ; 0x0c89
    dw jumptable_0c85_case_3 - IMAGE_BASE + __zres_end ; 0x0c8b
    dw jumptable_0c85_case_4 - IMAGE_BASE + __zres_end ; 0x0c8d
    dw jumptable_0c85_case_5 - IMAGE_BASE + __zres_end ; 0x0c8f
    dw jumptable_0c85_case_6 - IMAGE_BASE + __zres_end ; 0x0c91
@..api_idx_0090_NPLS.l7:
    cmp ax, strict word 7            ; 0x0c93
    jae short @..api_idx_0090_NPLS.l8 ; 0x0c96
    xchg bx, ax                      ; 0x0c98
    shl bx, 1                        ; 0x0c99
    jmp [cs:bx + jumptable_0c85 - IMAGE_BASE + __zres_end] ; 0x0c9b
@..api_idx_0090_NPLS.l8:
    jmp near @..api_idx_0090_NPLS.l1 ; 0x0ca0
@..api_idx_0090_NPLS.l9:
    cmp byte [bss_9154], 0           ; 0x0ca3
    je short @..api_idx_0090_NPLS.l10 ; 0x0ca8
    mov ax, bss_9154                 ; 0x0caa
    push ax                          ; 0x0cad
    lea ax, word [bp - 0x0086]       ; 0x0cae
    push ax                          ; 0x0cb2
    call aztec_strcpy                ; 0x0cb3
    add sp, byte 4                   ; 0x0cb6
    mov ax, dseg_90a0                ; 0x0cb9
    push ax                          ; 0x0cbc
    lea ax, word [bp - 0x0086]       ; 0x0cbd
    push ax                          ; 0x0cc1
    call aztec_strcat                ; 0x0cc2
    add sp, byte 4                   ; 0x0cc5
    push word [bp + 0x4]             ; 0x0cc8
    lea ax, word [bp - 0x0086]       ; 0x0ccb
    push ax                          ; 0x0ccf
    call aztec_strcat                ; 0x0cd0
    add sp, byte 4                   ; 0x0cd3
    jmp short @..api_idx_0090_NPLS.l11 ; 0x0cd6
@..api_idx_0090_NPLS.l10:
    push word [bp + 0x4]             ; 0x0cd8
    lea ax, word [bp - 0x0086]       ; 0x0cdb
    push ax                          ; 0x0cdf
    call aztec_strcpy                ; 0x0ce0
    add sp, byte 4                   ; 0x0ce3
@..api_idx_0090_NPLS.l11:
    mov ax, 2                        ; 0x0ce6
    push ax                          ; 0x0ce9
    lea ax, word [bp - 0x0086]       ; 0x0cea
    push ax                          ; 0x0cee
    call measure_text_width          ; 0x0cef
    add sp, byte 4                   ; 0x0cf2
    mov word [bp - 0x0002], ax       ; 0x0cf5
    cmp ax, 0xb8                     ; 0x0cf8
    jle short @..api_idx_0090_NPLS.l12 ; 0x0cfb
    mov ax, bss_9154                 ; 0x0cfd
    push ax                          ; 0x0d00
    call api_idx_0004_JGSH           ; 0x0d01
    pop cx                           ; 0x0d04
    push word [bp + 0x4]             ; 0x0d05
    mov ax, bss_9154                 ; 0x0d08
    push ax                          ; 0x0d0b
    call aztec_strcpy                ; 0x0d0c
    add sp, byte 4                   ; 0x0d0f
    jmp short @..api_idx_0090_NPLS.l13 ; 0x0d12
@..api_idx_0090_NPLS.l12:
    lea ax, word [bp - 0x0086]       ; 0x0d14
    push ax                          ; 0x0d18
    mov ax, bss_9154                 ; 0x0d19
    push ax                          ; 0x0d1c
    call aztec_strcpy                ; 0x0d1d
    add sp, byte 4                   ; 0x0d20
@..api_idx_0090_NPLS.l13:
    ret                              ; 0x0d23
