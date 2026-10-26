; auto-generated
api_idx_0084_LRRN:
    mov ax, 0xff7c                   ; 0x40ef
    call aztec_csav                  ; 0x40f2
    mov word [bp - 0x0004], 0        ; 0x40f5
    mov word [bp - 0x0008], 0        ; 0x40fa
    mov ax, word [index_range2_first] ; 0x40ff
    mov word [bp - 0x0002], ax       ; 0x4102
    jmp short @..api_idx_0084_LRRN.l3 ; 0x4105
@..api_idx_0084_LRRN.l1:
    mov ax, 0x248                    ; 0x4107
    imul word [bp + 0x4]             ; 0x410a
    add ax, word [bp - 0x0002]       ; 0x410d
    mov bx, ax                       ; 0x4110
    cmp byte [bx + party_records + pc_rec.flag], 0 ; 0x4112
    jbe short @..api_idx_0084_LRRN.l2 ; 0x4117
    mov word [bp - 0x0008], 1        ; 0x4119
@..api_idx_0084_LRRN.l2:
    inc word [bp - 0x0002]           ; 0x411e
@..api_idx_0084_LRRN.l3:
    mov ax, word [bp - 0x0002]       ; 0x4121
    cmp ax, word [index_range2_last] ; 0x4124
    jle short @..api_idx_0084_LRRN.l1 ; 0x4128
    mov word [bp - 0x000a], 0        ; 0x412a
    mov word [bp - 0x000c], 0        ; 0x412f
@..api_idx_0084_LRRN.l4:
    lea ax, word [bp - 0x0034]       ; 0x4134
    push ax                          ; 0x4137
    push word [bp - 0x0004]          ; 0x4138
    push word [bp + 0x4]             ; 0x413b
    call api_idx_0004_PONI           ; 0x413e
    add sp, byte 6                   ; 0x4141
    mov word [bp - 0x0006], ax       ; 0x4144
    lea ax, word [bp - 0x0034]       ; 0x4147
    push ax                          ; 0x414a
    push word [bp - 0x0006]          ; 0x414b
    push word [bp - 0x0004]          ; 0x414e
    push word [bp + 0x4]             ; 0x4151
    call draw_known_spell_values     ; 0x4154
    add sp, byte 8                   ; 0x4157
    mov word [bp - 0x0002], 0        ; 0x415a
@..api_idx_0084_LRRN.l5:
    mov ax, word [bp - 0x0002]       ; 0x415f
    shl ax, 1                        ; 0x4162
    mov bx, ax                       ; 0x4164
    add bx, bp                       ; 0x4166
    mov word [bx - 0x0020], 1        ; 0x4168
    inc word [bp - 0x0002]           ; 0x416d
    mov ax, word [bp - 0x0002]       ; 0x4170
    cmp ax, strict word 4            ; 0x4173
    jle short @..api_idx_0084_LRRN.l5 ; 0x4176
    mov ax, word [bp - 0x0008]       ; 0x4178
    mov word [bp - 0x001c], ax       ; 0x417b
    mov word [bp - 0x0016], 0xffff   ; 0x417e
    lea ax, word [bp - 0x0020]       ; 0x4183
    push ax                          ; 0x4186
    mov ax, 0                        ; 0x4187
    push ax                          ; 0x418a
    push word [bp - 0x0004]          ; 0x418b
    mov ax, 1                        ; 0x418e
    push ax                          ; 0x4191
    mov ax, 5                        ; 0x4192
    push ax                          ; 0x4195
    mov ax, 1                        ; 0x4196
    push ax                          ; 0x4199
    mov ax, 9                        ; 0x419a
    push ax                          ; 0x419d
    mov ax, 0x3a                     ; 0x419e
    push ax                          ; 0x41a1
    mov ax, 9                        ; 0x41a2
    push ax                          ; 0x41a5
    mov ax, 0xbc                     ; 0x41a6
    push ax                          ; 0x41a9
    mov ax, 4                        ; 0x41aa
    push ax                          ; 0x41ad
    mov ax, 0                        ; 0x41ae
    push ax                          ; 0x41b1
    mov ax, 0x258                    ; 0x41b2
    push ax                          ; 0x41b5
    call loc_UGOG                    ; 0x41b6
    add sp, byte 0x1a                ; 0x41b9
    mov word [bp - 0x0004], ax       ; 0x41bc
    lea ax, word [bp - 0x0084]       ; 0x41bf
    push ax                          ; 0x41c3
    mov ax, word [bp - 0x0004]       ; 0x41c4
    add ax, MSG_WEAPONRY             ; 0x41c7
    push ax                          ; 0x41ca
    call load_message_string         ; 0x41cb
    add sp, byte 4                   ; 0x41ce
    mov ax, 0x1a                     ; 0x41d1
    push ax                          ; 0x41d4
    mov ax, 1                        ; 0x41d5
    push ax                          ; 0x41d8
    mov ax, 9                        ; 0x41d9
    push ax                          ; 0x41dc
    mov ax, 0x3a                     ; 0x41dd
    push ax                          ; 0x41e0
    mov ax, 9                        ; 0x41e1
    push ax                          ; 0x41e4
    mov ax, 0xbc                     ; 0x41e5
    push ax                          ; 0x41e8
    mov ax, 4                        ; 0x41e9
    push ax                          ; 0x41ec
    push word [bss_9052]             ; 0x41ed
    lea ax, word [bp - 0x0084]       ; 0x41f1
    push ax                          ; 0x41f5
    call api_idx_0008_SKNL           ; 0x41f6
    add sp, byte 0x12                ; 0x41f9
    mov ax, word [bp - 0x000a]       ; 0x41fc
    cmp ax, word [bp - 0x0004]       ; 0x41ff
    je short @..api_idx_0084_LRRN.l6 ; 0x4202
    lea ax, word [bp - 0x0084]       ; 0x4204
    push ax                          ; 0x4208
    mov ax, word [bp - 0x000a]       ; 0x4209
    add ax, MSG_WEAPONRY             ; 0x420c
    push ax                          ; 0x420f
    call load_message_string         ; 0x4210
    add sp, byte 4                   ; 0x4213
    mov ax, 1                        ; 0x4216
    push ax                          ; 0x4219
    push ax                          ; 0x421a
    mov ax, 9                        ; 0x421b
    push ax                          ; 0x421e
    mov ax, 0x3a                     ; 0x421f
    push ax                          ; 0x4222
    mov ax, 9                        ; 0x4223
    push ax                          ; 0x4226
    mov ax, 0xbc                     ; 0x4227
    push ax                          ; 0x422a
    mov ax, 4                        ; 0x422b
    push ax                          ; 0x422e
    push word [bp - 0x000c]          ; 0x422f
    lea ax, word [bp - 0x0084]       ; 0x4232
    push ax                          ; 0x4236
    call api_idx_0008_SKNL           ; 0x4237
    add sp, byte 0x12                ; 0x423a
@..api_idx_0084_LRRN.l6:
    mov ax, word [bp - 0x0004]       ; 0x423d
    mov word [bp - 0x000a], ax       ; 0x4240
    mov ax, word [bss_9052]          ; 0x4243
    mov word [bp - 0x000c], ax       ; 0x4246
    cmp word [bp - 0x0004], byte 4   ; 0x4249
    je short @..api_idx_0084_LRRN.l7 ; 0x424d
    jmp near @..api_idx_0084_LRRN.l4 ; 0x424f
@..api_idx_0084_LRRN.l7:
    ret                              ; 0x4252
