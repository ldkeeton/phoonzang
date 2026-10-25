; auto-generated
api_idx_007a_NHII:
    mov ax, 0xff86                   ; 0x4f0c
    call aztec_csav                  ; 0x4f0f
    mov word [animation_frame], 0    ; 0x4f12
    push word [bp + 0x4]             ; 0x4f18
    call api_idx_0060_VPPJ           ; 0x4f1b
    pop cx                           ; 0x4f1e
    mov word [bp - 0x007a], ax       ; 0x4f1f
    mov bx, word [bp + 0x4]          ; 0x4f22
    cmp byte [bx + 0x35], 2          ; 0x4f25
    jne short @..api_idx_007a_NHII.l2 ; 0x4f29
@..api_idx_007a_NHII.l1:
    push word [party_char_count]     ; 0x4f2b
    call random_below                ; 0x4f2f
    pop cx                           ; 0x4f32
    mov word [bp - 0x0006], ax       ; 0x4f33
    push word [bp - 0x0006]          ; 0x4f36
    call member_is_active            ; 0x4f39
    pop cx                           ; 0x4f3c
    test ax, ax                      ; 0x4f3d
    je short @..api_idx_007a_NHII.l1 ; 0x4f3f
    mov word [glyph_painter], 1      ; 0x4f41
    mov ax, 1                        ; 0x4f47
    push ax                          ; 0x4f4a
    call play_sound_effect           ; 0x4f4b
    pop cx                           ; 0x4f4e
    mov bx, word [bp + 0x4]          ; 0x4f4f
    mov al, byte [bx + 0x34]         ; 0x4f52
    sub ah, ah                       ; 0x4f55
    push ax                          ; 0x4f57
    push word [bp - 0x0006]          ; 0x4f58
    push word [bss_91fe]             ; 0x4f5b
    call api_idx_00b8_LTRM           ; 0x4f5f
    add sp, byte 6                   ; 0x4f62
    mov ax, 0                        ; 0x4f65
    ret                              ; 0x4f68
@..api_idx_007a_NHII.l2:
    mov word [bp - 0x0002], 0        ; 0x4f69
@..api_idx_007a_NHII.l3:
    mov ax, word [bp - 0x0002]       ; 0x4f6e
    shl ax, 1                        ; 0x4f71
    mov bx, ax                       ; 0x4f73
    add bx, bp                       ; 0x4f75
    mov word [bx - 0x001c], 1        ; 0x4f77
    inc word [bp - 0x0002]           ; 0x4f7c
    mov ax, word [bp - 0x0002]       ; 0x4f7f
    cmp ax, strict word 5            ; 0x4f82
    jle short @..api_idx_007a_NHII.l3 ; 0x4f85
    mov word [bp - 0x0012], 0xffff   ; 0x4f87
@..api_idx_007a_NHII.l4:
    mov word [treasure_caption_on], 1 ; 0x4f8c
    mov ax, 0                        ; 0x4f92
    push ax                          ; 0x4f95
    call redraw_treasure_caption     ; 0x4f96
    pop cx                           ; 0x4f99
    mov word [treasure_caption_on], 0 ; 0x4f9a
    lea ax, word [bp - 0x001c]       ; 0x4fa0
    push ax                          ; 0x4fa3
    mov ax, 0                        ; 0x4fa4
    push ax                          ; 0x4fa7
    mov ax, 0xffff                   ; 0x4fa8
    push ax                          ; 0x4fab
    mov ax, 1                        ; 0x4fac
    push ax                          ; 0x4faf
    mov ax, 5                        ; 0x4fb0
    push ax                          ; 0x4fb3
    mov ax, 2                        ; 0x4fb4
    push ax                          ; 0x4fb7
    mov ax, 0xc                      ; 0x4fb8
    push ax                          ; 0x4fbb
    mov ax, 0x34                     ; 0x4fbc
    push ax                          ; 0x4fbf
    mov ax, 8                        ; 0x4fc0
    push ax                          ; 0x4fc3
    mov ax, 0x9c                     ; 0x4fc4
    push ax                          ; 0x4fc7
    mov ax, 0x52                     ; 0x4fc8
    push ax                          ; 0x4fcb
    mov ax, 0                        ; 0x4fcc
    push ax                          ; 0x4fcf
    mov ax, 0x1450                   ; 0x4fd0
    push ax                          ; 0x4fd3
    call loc_IOMS                    ; 0x4fd4
    add sp, byte 0x1a                ; 0x4fd7
    mov word [bp - 0x0008], ax       ; 0x4fda
    lea ax, word [bp - 0x0078]       ; 0x4fdd
    push ax                          ; 0x4fe0
    mov ax, word [bp - 0x0008]       ; 0x4fe1
    add ax, 0x1450                   ; 0x4fe4
    push ax                          ; 0x4fe7
    call load_message_string         ; 0x4fe8
    add sp, byte 4                   ; 0x4feb
    mov ax, 0x1a                     ; 0x4fee
    push ax                          ; 0x4ff1
    mov ax, 2                        ; 0x4ff2
    push ax                          ; 0x4ff5
    mov ax, 0xc                      ; 0x4ff6
    push ax                          ; 0x4ff9
    mov ax, 0x34                     ; 0x4ffa
    push ax                          ; 0x4ffd
    mov ax, 8                        ; 0x4ffe
    push ax                          ; 0x5001
    mov ax, 0x9c                     ; 0x5002
    push ax                          ; 0x5005
    mov ax, 0x52                     ; 0x5006
    push ax                          ; 0x5009
    push word [bss_9052]             ; 0x500a
    lea ax, word [bp - 0x0078]       ; 0x500e
    push ax                          ; 0x5011
    call api_idx_0008_JJHR           ; 0x5012
    add sp, byte 0x12                ; 0x5015
    mov ax, word [bp - 0x0008]       ; 0x5018
    jmp near @..api_idx_007a_NHII.l18 ; 0x501b
jumptable_51bc_case_1:
    cmp word [mouse_active], byte 0  ; 0x501e
    jne short @..api_idx_007a_NHII.l5 ; 0x5023
    mov ax, 1                        ; 0x5025
    push ax                          ; 0x5028
    call redraw_treasure_caption     ; 0x5029
    pop cx                           ; 0x502c
@..api_idx_007a_NHII.l5:
    call pick_party_member           ; 0x502d
    mov word [bp - 0x0006], ax       ; 0x5030
    cmp ax, strict word 0xffff       ; 0x5033
    je short @..api_idx_007a_NHII.l6 ; 0x5036
    push ax                          ; 0x5038
    call member_is_active            ; 0x5039
    pop cx                           ; 0x503c
    test ax, ax                      ; 0x503d
    je short @..api_idx_007a_NHII.l6 ; 0x503f
    mov word [glyph_painter], 1      ; 0x5041
    mov ax, 1                        ; 0x5047
    push ax                          ; 0x504a
    call play_sound_effect           ; 0x504b
    pop cx                           ; 0x504e
    mov bx, word [bp + 0x4]          ; 0x504f
    mov al, byte [bx + 0x34]         ; 0x5052
    sub ah, ah                       ; 0x5055
    push ax                          ; 0x5057
    push word [bp - 0x0006]          ; 0x5058
    push word [bss_91fe]             ; 0x505b
    call api_idx_00b8_LTRM           ; 0x505f
    add sp, byte 6                   ; 0x5062
    mov ax, 0                        ; 0x5065
    ret                              ; 0x5068
@..api_idx_007a_NHII.l6:
    jmp near @..api_idx_007a_NHII.l19 ; 0x5069
jumptable_51bc_case_0:
    cmp word [mouse_active], byte 0  ; 0x506c
    jne short @..api_idx_007a_NHII.l7 ; 0x5071
    mov ax, 1                        ; 0x5073
    push ax                          ; 0x5076
    call redraw_treasure_caption     ; 0x5077
    pop cx                           ; 0x507a
@..api_idx_007a_NHII.l7:
    call pick_party_member           ; 0x507b
    mov word [bp - 0x0006], ax       ; 0x507e
    cmp ax, strict word 0xffff       ; 0x5081
    jne short @..api_idx_007a_NHII.l8 ; 0x5084
    jmp near @..api_idx_007a_NHII.l11 ; 0x5086
@..api_idx_007a_NHII.l8:
    push ax                          ; 0x5089
    call member_is_active            ; 0x508a
    pop cx                           ; 0x508d
    test ax, ax                      ; 0x508e
    jne short @..api_idx_007a_NHII.l9 ; 0x5090
    jmp near @..api_idx_007a_NHII.l11 ; 0x5092
@..api_idx_007a_NHII.l9:
    mov ax, 0                        ; 0x5095
    push ax                          ; 0x5098
    call redraw_treasure_caption     ; 0x5099
    pop cx                           ; 0x509c
    mov bx, word [bp + 0x4]          ; 0x509d
    mov al, byte [bx + 0x34]         ; 0x50a0
    sub ah, ah                       ; 0x50a3
    push ax                          ; 0x50a5
    push word [bp - 0x007a]          ; 0x50a6
    mov ax, 1                        ; 0x50a9
    push ax                          ; 0x50ac
    push ax                          ; 0x50ad
    mov ax, 0x145a                   ; 0x50ae
    push ax                          ; 0x50b1
    push word [bp - 0x0006]          ; 0x50b2
    call api_idx_0084_IMVQ           ; 0x50b5
    add sp, byte 0x0c                ; 0x50b8
    mov word [bp - 0x0002], ax       ; 0x50bb
    cmp word [bp - 0x0002], byte 0   ; 0x50be
    jne short @..api_idx_007a_NHII.l10 ; 0x50c2
    mov word [glyph_painter], 1      ; 0x50c4
    lea ax, word [bp - 0x0078]       ; 0x50ca
    push ax                          ; 0x50cd
    mov ax, MSG_YOU_DISARMED_THE_TRAP ; 0x50ce
    push ax                          ; 0x50d1
    call load_message_string         ; 0x50d2
    add sp, byte 4                   ; 0x50d5
    mov ax, 1                        ; 0x50d8
    push ax                          ; 0x50db
    mov ax, 2                        ; 0x50dc
    push ax                          ; 0x50df
    push word [bss_91d4]             ; 0x50e0
    lea ax, word [bp - 0x0078]       ; 0x50e4
    push ax                          ; 0x50e7
    call loc_OOHI                    ; 0x50e8
    add sp, byte 8                   ; 0x50eb
    mov ax, 0                        ; 0x50ee
    ret                              ; 0x50f1
@..api_idx_007a_NHII.l10:
    cmp word [bp - 0x0002], byte 1   ; 0x50f2
    jne short @..api_idx_007a_NHII.l11 ; 0x50f6
    mov word [glyph_painter], 1      ; 0x50f8
    mov ax, 1                        ; 0x50fe
    push ax                          ; 0x5101
    call play_sound_effect           ; 0x5102
    pop cx                           ; 0x5105
    mov bx, word [bp + 0x4]          ; 0x5106
    mov al, byte [bx + 0x34]         ; 0x5109
    sub ah, ah                       ; 0x510c
    push ax                          ; 0x510e
    push word [bp - 0x0006]          ; 0x510f
    push word [bss_91fe]             ; 0x5112
    call api_idx_00b8_LTRM           ; 0x5116
    add sp, byte 6                   ; 0x5119
    mov ax, 0                        ; 0x511c
    ret                              ; 0x511f
@..api_idx_007a_NHII.l11:
    jmp near @..api_idx_007a_NHII.l19 ; 0x5120
jumptable_51bc_case_2:
    cmp word [mouse_active], byte 0  ; 0x5123
    jne short @..api_idx_007a_NHII.l12 ; 0x5128
    mov ax, 1                        ; 0x512a
    push ax                          ; 0x512d
    call redraw_treasure_caption     ; 0x512e
    pop cx                           ; 0x5131
@..api_idx_007a_NHII.l12:
    call pick_party_member           ; 0x5132
    mov word [bp - 0x0006], ax       ; 0x5135
    cmp ax, strict word 0xffff       ; 0x5138
    jne short @..api_idx_007a_NHII.l13 ; 0x513b
    jmp near @..api_idx_007a_NHII.l17 ; 0x513d
@..api_idx_007a_NHII.l13:
    push ax                          ; 0x5140
    call member_is_active            ; 0x5141
    pop cx                           ; 0x5144
    test ax, ax                      ; 0x5145
    je short @..api_idx_007a_NHII.l17 ; 0x5147
    mov word [bss_95e0], 0           ; 0x5149
    mov bx, word [bp + 0x4]          ; 0x514f
    mov al, byte [bx + 0x34]         ; 0x5152
    sub ah, ah                       ; 0x5155
    mov word [bss_95de], ax          ; 0x5157
    cmp word [bp - 0x0008], byte 2   ; 0x515a
    jne short @..api_idx_007a_NHII.l14 ; 0x515e
    push word [bp - 0x0006]          ; 0x5160
    call cast_spell_from_dialog      ; 0x5163
    pop cx                           ; 0x5166
    jmp short @..api_idx_007a_NHII.l15 ; 0x5167
@..api_idx_007a_NHII.l14:
    cmp word [bp - 0x0008], byte 3   ; 0x5169
    jne short @..api_idx_007a_NHII.l15 ; 0x516d
    push word [bp - 0x0006]          ; 0x516f
    call api_idx_0092_GSQH           ; 0x5172
    pop cx                           ; 0x5175
@..api_idx_007a_NHII.l15:
    cmp word [bss_95e0], byte 1      ; 0x5176
    jne short @..api_idx_007a_NHII.l16 ; 0x517b
    mov word [glyph_painter], 1      ; 0x517d
    mov ax, 0                        ; 0x5183
    ret                              ; 0x5186
@..api_idx_007a_NHII.l16:
    cmp word [bss_95e0], byte 0xff   ; 0x5187
    jne short @..api_idx_007a_NHII.l17 ; 0x518c
    mov word [glyph_painter], 1      ; 0x518e
    mov ax, 1                        ; 0x5194
    push ax                          ; 0x5197
    call play_sound_effect           ; 0x5198
    pop cx                           ; 0x519b
    mov bx, word [bp + 0x4]          ; 0x519c
    mov al, byte [bx + 0x34]         ; 0x519f
    sub ah, ah                       ; 0x51a2
    push ax                          ; 0x51a4
    push word [bp - 0x0006]          ; 0x51a5
    push word [bss_91fe]             ; 0x51a8
    call api_idx_00b8_LTRM           ; 0x51ac
    add sp, byte 6                   ; 0x51af
    mov ax, 0                        ; 0x51b2
    ret                              ; 0x51b5
@..api_idx_007a_NHII.l17:
    jmp short @..api_idx_007a_NHII.l19 ; 0x51b6
jumptable_51bc_case_4:
    mov ax, 0xffff                   ; 0x51b8
    ret                              ; 0x51bb
jumptable_51bc:
    dw jumptable_51bc_case_0 - IMAGE_BASE + __zres_end ; 0x51bc
    dw jumptable_51bc_case_1 - IMAGE_BASE + __zres_end ; 0x51be
    dw jumptable_51bc_case_2 - IMAGE_BASE + __zres_end ; 0x51c0
    dw jumptable_51bc_case_2 - IMAGE_BASE + __zres_end ; 0x51c2
    dw jumptable_51bc_case_4 - IMAGE_BASE + __zres_end ; 0x51c4
@..api_idx_007a_NHII.l18:
    cmp ax, strict word 5            ; 0x51c6
    jae short @..api_idx_007a_NHII.l19 ; 0x51c9
    xchg bx, ax                      ; 0x51cb
    shl bx, 1                        ; 0x51cc
    jmp [cs:bx + jumptable_51bc - IMAGE_BASE + __zres_end] ; 0x51ce
@..api_idx_007a_NHII.l19:
    jmp near @..api_idx_007a_NHII.l4 ; 0x51d3
    db 0xc3
