; auto-generated
load_sound_file: ; Aztec csav frame=0x0018
    mov ax, 0xffe8                   ; 0x2923
    call aztec_csav                  ; 0x2926
    mov ax, 0                        ; 0x2929
    push ax                          ; 0x292c
    call gfx_wait_sound              ; 0x292d
    pop cx                           ; 0x2930
    mov ax, 0                        ; 0x2931
    push ax                          ; 0x2934
    push word [bp + 0x4]             ; 0x2935
    mov ax, 0xc                      ; 0x2938
    imul word [bp + 0x6]             ; 0x293b
    add ax, strict word sound_slot_info ; 0x293e
    push ax                          ; 0x2941
    mov ax, 9                        ; 0x2942
    push ax                          ; 0x2945
    call data_record_io              ; 0x2946
    add sp, byte 8                   ; 0x2949
    mov word [bp - 0x0002], 1        ; 0x294c
    mov ax, 0xc                      ; 0x2951
    imul word [bp + 0x6]             ; 0x2954
    mov bx, ax                       ; 0x2957
    cmp word [bx + sound_slot_info + 0x6], byte 0 ; 0x2959
    jne short @..load_sound_file.l1  ; 0x295e
    cmp word [bx + sound_slot_info + 0x4], byte 0 ; 0x2960
@..load_sound_file.l1:
    jne short @..load_sound_file.l3  ; 0x2965
    mov ax, word [bx + sound_slot_info] ; 0x2967
    mov word [bp + 0x4], ax          ; 0x296b
    mov ax, 1                        ; 0x296e
    cmp word [bp + 0x8], byte 0      ; 0x2971
    je short @..load_sound_file.l2   ; 0x2975
    mov ax, 0                        ; 0x2977
@..load_sound_file.l2:
    mov word [bp - 0x0002], ax       ; 0x297a
@..load_sound_file.l3:
    cmp word [bp - 0x0002], byte 0   ; 0x297d
    je short @..load_sound_file.l6   ; 0x2981
    mov ax, dseg_0bd7                ; 0x2983
    push ax                          ; 0x2986
    lea ax, word [bp - 0x0018]       ; 0x2987
    push ax                          ; 0x298a
    call aztec_strcpy                ; 0x298b
    add sp, byte 4                   ; 0x298e
    mov ax, word [bp + 0x4]          ; 0x2991
    mov cx, 0xa                      ; 0x2994
    cwd                              ; 0x2997
    idiv cx                          ; 0x2998
    add ax, strict word 0x30         ; 0x299a
    mov byte [bp - 0x0013], al       ; 0x299d
    add dx, byte 0x30                ; 0x29a0
    mov ax, dx                       ; 0x29a3
    mov byte [bp - 0x0012], al       ; 0x29a5
    mov ax, 0                        ; 0x29a8
    push ax                          ; 0x29ab
    mov ax, 1                        ; 0x29ac
    push ax                          ; 0x29af
    lea ax, word [bp - 0x0018]       ; 0x29b0
    push ax                          ; 0x29b3
    call data_file_path              ; 0x29b4
    add sp, byte 4                   ; 0x29b7
    push ax                          ; 0x29ba
    call aztec_open                  ; 0x29bb
    add sp, byte 4                   ; 0x29be
    mov word [bp - 0x0004], ax       ; 0x29c1
    cmp ax, strict word 0xffff       ; 0x29c4
    jne short @..load_sound_file.l4  ; 0x29c7
    mov ax, 0xb                      ; 0x29c9
    push ax                          ; 0x29cc
    call fatal_error                 ; 0x29cd
    pop cx                           ; 0x29d0
@..load_sound_file.l4:
    push word [bp + 0x6]             ; 0x29d1
    push word [bp - 0x0004]          ; 0x29d4
    call gfx_load_sound              ; 0x29d7
    add sp, byte 4                   ; 0x29da
    test ax, ax                      ; 0x29dd
    je short @..load_sound_file.l5   ; 0x29df
    mov ax, 0xc                      ; 0x29e1
    push ax                          ; 0x29e4
    call fatal_error                 ; 0x29e5
    pop cx                           ; 0x29e8
@..load_sound_file.l5:
    push word [bp - 0x0004]          ; 0x29e9
    call aztec_close                 ; 0x29ec
    pop cx                           ; 0x29ef
@..load_sound_file.l6:
    ret                              ; 0x29f0
