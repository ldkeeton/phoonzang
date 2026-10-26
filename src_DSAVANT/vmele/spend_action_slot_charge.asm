; auto-generated
spend_action_slot_charge:
    mov ax, 0xfff8                   ; 0x306a
    call aztec_csav                  ; 0x306d
    mov word [bp - 2], 0             ; 0x3070
@..spend_action_slot_charge.l1:
    mov word [bp - 4], 0             ; 0x3075
@..spend_action_slot_charge.l2:
    mov ax, word [bp - 2]            ; 0x307a
    shl ax, 1                        ; 0x307d
    mov bx, ax                       ; 0x307f
    mov bx, word [bx + party_char]   ; 0x3081
    mov si, word [bp - 4]            ; 0x3085
    mov al, byte [bx + si + member_rec.charge] ; 0x3088
    sub ah, ah                       ; 0x308c
    mov word [bp - 8], ax            ; 0x308e
    cmp ax, strict word 0            ; 0x3091
    jg short @..spend_action_slot_charge.l3 ; 0x3094
    jmp near @..spend_action_slot_charge.l8 ; 0x3096
@..spend_action_slot_charge.l3:
    mov ax, si                       ; 0x3099
    jmp short @..spend_action_slot_charge.l4 ; 0x309b
jumptable_30ea_case_0:
    mov ax, word [bp - 8]            ; 0x309d
    mov cx, 0xa                      ; 0x30a0
    cwd                              ; 0x30a3
    idiv cx                          ; 0x30a4
    mov word [bp - 6], ax            ; 0x30a6
    jmp short @..spend_action_slot_charge.l5 ; 0x30a9
jumptable_30ea_case_1:
    mov ax, word [bp - 8]            ; 0x30ab
    mov cx, 0xa                      ; 0x30ae
    cwd                              ; 0x30b1
    idiv cx                          ; 0x30b2
    mov word [bp - 6], ax            ; 0x30b4
    jmp short @..spend_action_slot_charge.l5 ; 0x30b7
jumptable_30ea_case_2:
    mov ax, word [bp - 8]            ; 0x30b9
    mov cx, 0xc                      ; 0x30bc
    cwd                              ; 0x30bf
    idiv cx                          ; 0x30c0
    mov word [bp - 6], ax            ; 0x30c2
    jmp short @..spend_action_slot_charge.l5 ; 0x30c5
jumptable_30ea_case_3:
    mov ax, word [bp - 8]            ; 0x30c7
    mov cx, 0xc                      ; 0x30ca
    cwd                              ; 0x30cd
    idiv cx                          ; 0x30ce
    mov word [bp - 6], ax            ; 0x30d0
    jmp short @..spend_action_slot_charge.l5 ; 0x30d3
jumptable_30ea_case_4:
    mov ax, word [bp - 8]            ; 0x30d5
    mov cx, 0x14                     ; 0x30d8
    cwd                              ; 0x30db
    idiv cx                          ; 0x30dc
    mov word [bp - 6], ax            ; 0x30de
    jmp short @..spend_action_slot_charge.l5 ; 0x30e1
jumptable_30ea_case_5:
    mov word [bp - 6], 1             ; 0x30e3
    jmp short @..spend_action_slot_charge.l5 ; 0x30e8
jumptable_30ea:
    dw jumptable_30ea_case_0 - IMAGE_BASE + __zres_end ; 0x30ea
    dw jumptable_30ea_case_1 - IMAGE_BASE + __zres_end ; 0x30ec
    dw jumptable_30ea_case_2 - IMAGE_BASE + __zres_end ; 0x30ee
    dw jumptable_30ea_case_3 - IMAGE_BASE + __zres_end ; 0x30f0
    dw jumptable_30ea_case_4 - IMAGE_BASE + __zres_end ; 0x30f2
    dw jumptable_30ea_case_5 - IMAGE_BASE + __zres_end ; 0x30f4
@..spend_action_slot_charge.l4:
    cmp ax, strict word 6            ; 0x30f6
    jae short @..spend_action_slot_charge.l5 ; 0x30f9
    xchg bx, ax                      ; 0x30fb
    shl bx, 1                        ; 0x30fc
    jmp [cs:bx + jumptable_30ea - IMAGE_BASE + __zres_end] ; 0x30fe
@..spend_action_slot_charge.l5:
    cmp word [bp - 6], byte 1        ; 0x3103
    jge short @..spend_action_slot_charge.l6 ; 0x3107
    mov word [bp - 6], 1             ; 0x3109
@..spend_action_slot_charge.l6:
    mov ax, word [bp - 6]            ; 0x310e
    sub word [bp - 8], ax            ; 0x3111
    cmp word [bp - 8], byte 0        ; 0x3114
    jge short @..spend_action_slot_charge.l7 ; 0x3118
    mov word [bp - 8], 0             ; 0x311a
@..spend_action_slot_charge.l7:
    mov al, byte [bp - 8]            ; 0x311f
    mov cx, word [bp - 2]            ; 0x3122
    shl cx, 1                        ; 0x3125
    mov bx, cx                       ; 0x3127
    mov bx, word [bx + party_char]   ; 0x3129
    mov si, word [bp - 4]            ; 0x312d
    mov byte [bx + si + member_rec.charge], al ; 0x3130
@..spend_action_slot_charge.l8:
    inc word [bp - 4]                ; 0x3134
    mov ax, word [bp - 4]            ; 0x3137
    cmp ax, strict word 6            ; 0x313a
    jge short @..spend_action_slot_charge.l9 ; 0x313d
    jmp near @..spend_action_slot_charge.l2 ; 0x313f
@..spend_action_slot_charge.l9:
    mov word [bp - 4], 0             ; 0x3142
@..spend_action_slot_charge.l10:
    mov ax, word [bp - 2]            ; 0x3147
    shl ax, 1                        ; 0x314a
    mov bx, ax                       ; 0x314c
    mov bx, word [bx + party_char]   ; 0x314e
    mov si, word [bp - 4]            ; 0x3152
    cmp byte [bx + si + member_rec.delay], 0 ; 0x3155
    jbe short @..spend_action_slot_charge.l11 ; 0x315a
    dec byte [bx + si + 0x192]       ; 0x315c
@..spend_action_slot_charge.l11:
    inc word [bp - 4]                ; 0x3160
    mov ax, word [bp - 4]            ; 0x3163
    cmp ax, strict word 6            ; 0x3166
    jl short @..spend_action_slot_charge.l10 ; 0x3169
    inc word [bp - 2]                ; 0x316b
    mov ax, word [bp - 2]            ; 0x316e
    cmp ax, strict word 7            ; 0x3171
    jge short @..spend_action_slot_charge.l12 ; 0x3174
    jmp near @..spend_action_slot_charge.l1 ; 0x3176
@..spend_action_slot_charge.l12:
    cmp word [party_buff_turns], byte 0 ; 0x3179
    jle short @..spend_action_slot_charge.l13 ; 0x317e
    mov bx, word [party_char]        ; 0x3180
    mov al, byte [bx + member_rec.charge + 0x4] ; 0x3184
    sub ah, ah                       ; 0x3188
    mov word [party_buff_charge], ax ; 0x318a
@..spend_action_slot_charge.l13:
    cmp word [party_buff_charge], byte 0 ; 0x318d
    jg short @..spend_action_slot_charge.l14 ; 0x3192
    mov word [party_buff_turns], 0   ; 0x3194
    mov word [party_buff_charge], 0  ; 0x319a
@..spend_action_slot_charge.l14:
    ret                              ; 0x31a0
