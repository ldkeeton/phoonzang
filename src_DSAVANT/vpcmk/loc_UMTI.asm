; auto-generated
loc_UMTI:
    mov ax, 0                        ; 0x4107
    call aztec_csav                  ; 0x410a
    mov ax, word [bp + 0x6]          ; 0x410d
    jmp near @..loc_UMTI.l4          ; 0x4110
jumptable_4267_case_0:
    push word [bp + 0x8]             ; 0x4113
    mov ax, dseg_92dc                ; 0x4116
    push ax                          ; 0x4119
    push word [bp + 0x6]             ; 0x411a
    push word [bp + 0x4]             ; 0x411d
    call api_idx_0006_SKNL           ; 0x4120
    add sp, byte 8                   ; 0x4123
    jmp near @..loc_UMTI.l5          ; 0x4126
jumptable_4267_case_1:
    push word [bp + 0x8]             ; 0x4129
    mov ax, dseg_92e5                ; 0x412c
    push ax                          ; 0x412f
    push word [bp + 0x6]             ; 0x4130
    push word [bp + 0x4]             ; 0x4133
    call api_idx_0006_SKNL           ; 0x4136
    add sp, byte 8                   ; 0x4139
    jmp near @..loc_UMTI.l5          ; 0x413c
jumptable_4267_case_2:
    push word [bp + 0x8]             ; 0x413f
    mov ax, dseg_92ee                ; 0x4142
    push ax                          ; 0x4145
    push word [bp + 0x6]             ; 0x4146
    push word [bp + 0x4]             ; 0x4149
    call api_idx_0006_SKNL           ; 0x414c
    add sp, byte 8                   ; 0x414f
    jmp near @..loc_UMTI.l5          ; 0x4152
jumptable_4267_case_3:
    push word [bp + 0x8]             ; 0x4155
    mov ax, dseg_92f7                ; 0x4158
    push ax                          ; 0x415b
    push word [bp + 0x6]             ; 0x415c
    push word [bp + 0x4]             ; 0x415f
    call api_idx_0006_SKNL           ; 0x4162
    add sp, byte 8                   ; 0x4165
    jmp near @..loc_UMTI.l5          ; 0x4168
jumptable_4267_case_4:
    push word [bp + 0x8]             ; 0x416b
    mov ax, dseg_9300                ; 0x416e
    push ax                          ; 0x4171
    push word [bp + 0x6]             ; 0x4172
    push word [bp + 0x4]             ; 0x4175
    call api_idx_0006_SKNL           ; 0x4178
    add sp, byte 8                   ; 0x417b
    jmp near @..loc_UMTI.l5          ; 0x417e
jumptable_4267_case_5:
    push word [bp + 0x8]             ; 0x4181
    mov ax, dseg_9309                ; 0x4184
    push ax                          ; 0x4187
    push word [bp + 0x6]             ; 0x4188
    push word [bp + 0x4]             ; 0x418b
    call api_idx_0006_SKNL           ; 0x418e
    add sp, byte 8                   ; 0x4191
    jmp near @..loc_UMTI.l5          ; 0x4194
jumptable_4267_case_6:
    push word [bp + 0x8]             ; 0x4197
    mov ax, dseg_9312                ; 0x419a
    push ax                          ; 0x419d
    push word [bp + 0x6]             ; 0x419e
    push word [bp + 0x4]             ; 0x41a1
    call api_idx_0006_SKNL           ; 0x41a4
    add sp, byte 8                   ; 0x41a7
    jmp near @..loc_UMTI.l5          ; 0x41aa
jumptable_4267_case_7:
    push word [bp + 0x8]             ; 0x41ad
    mov ax, dseg_931b                ; 0x41b0
    push ax                          ; 0x41b3
    push word [bp + 0x6]             ; 0x41b4
    push word [bp + 0x4]             ; 0x41b7
    call api_idx_0006_SKNL           ; 0x41ba
    add sp, byte 8                   ; 0x41bd
    jmp near @..loc_UMTI.l5          ; 0x41c0
jumptable_4267_case_8:
    cmp word [bp + 0x8], byte 0      ; 0x41c3
    jne short @..loc_UMTI.l1         ; 0x41c7
    mov ax, 0x248                    ; 0x41c9
    imul word [bp + 0x4]             ; 0x41cc
    mov bx, ax                       ; 0x41cf
    cmp byte [bx + member_state + 0x2], 1 ; 0x41d1
    jne short @..loc_UMTI.l2         ; 0x41d6
@..loc_UMTI.l1:
    push word [bp + 0x8]             ; 0x41d8
    mov ax, dseg_9324                ; 0x41db
    push ax                          ; 0x41de
    push word [bp + 0x6]             ; 0x41df
    push word [bp + 0x4]             ; 0x41e2
    call api_idx_0006_SKNL           ; 0x41e5
    add sp, byte 8                   ; 0x41e8
    jmp short @..loc_UMTI.l3         ; 0x41eb
@..loc_UMTI.l2:
    mov ax, word [bp + 0x6]          ; 0x41ed
    shl ax, 1                        ; 0x41f0
    mov bx, ax                       ; 0x41f2
    mov word [bx + bss_976e], 0      ; 0x41f4
@..loc_UMTI.l3:
    jmp near @..loc_UMTI.l5          ; 0x41fa
jumptable_4267_case_9:
    push word [bp + 0x8]             ; 0x41fd
    mov ax, dseg_932d                ; 0x4200
    push ax                          ; 0x4203
    push word [bp + 0x6]             ; 0x4204
    push word [bp + 0x4]             ; 0x4207
    call api_idx_0006_SKNL           ; 0x420a
    add sp, byte 8                   ; 0x420d
    jmp near @..loc_UMTI.l5          ; 0x4210
jumptable_4267_case_10:
    push word [bp + 0x8]             ; 0x4213
    mov ax, dseg_9336                ; 0x4216
    push ax                          ; 0x4219
    push word [bp + 0x6]             ; 0x421a
    push word [bp + 0x4]             ; 0x421d
    call api_idx_0006_SKNL           ; 0x4220
    add sp, byte 8                   ; 0x4223
    jmp short @..loc_UMTI.l5         ; 0x4226
jumptable_4267_case_11:
    push word [bp + 0x8]             ; 0x4228
    mov ax, dseg_933f                ; 0x422b
    push ax                          ; 0x422e
    push word [bp + 0x6]             ; 0x422f
    push word [bp + 0x4]             ; 0x4232
    call api_idx_0006_SKNL           ; 0x4235
    add sp, byte 8                   ; 0x4238
    jmp short @..loc_UMTI.l5         ; 0x423b
jumptable_4267_case_12:
    push word [bp + 0x8]             ; 0x423d
    mov ax, dseg_9348                ; 0x4240
    push ax                          ; 0x4243
    push word [bp + 0x6]             ; 0x4244
    push word [bp + 0x4]             ; 0x4247
    call api_idx_0006_SKNL           ; 0x424a
    add sp, byte 8                   ; 0x424d
    jmp short @..loc_UMTI.l5         ; 0x4250
jumptable_4267_case_13:
    push word [bp + 0x8]             ; 0x4252
    mov ax, dseg_9351                ; 0x4255
    push ax                          ; 0x4258
    push word [bp + 0x6]             ; 0x4259
    push word [bp + 0x4]             ; 0x425c
    call api_idx_0006_SKNL           ; 0x425f
    add sp, byte 8                   ; 0x4262
    jmp short @..loc_UMTI.l5         ; 0x4265
jumptable_4267:
    dw jumptable_4267_case_0 - IMAGE_BASE + __zres_end ; 0x4267
    dw jumptable_4267_case_1 - IMAGE_BASE + __zres_end ; 0x4269
    dw jumptable_4267_case_2 - IMAGE_BASE + __zres_end ; 0x426b
    dw jumptable_4267_case_3 - IMAGE_BASE + __zres_end ; 0x426d
    dw jumptable_4267_case_4 - IMAGE_BASE + __zres_end ; 0x426f
    dw jumptable_4267_case_5 - IMAGE_BASE + __zres_end ; 0x4271
    dw jumptable_4267_case_6 - IMAGE_BASE + __zres_end ; 0x4273
    dw jumptable_4267_case_7 - IMAGE_BASE + __zres_end ; 0x4275
    dw jumptable_4267_case_8 - IMAGE_BASE + __zres_end ; 0x4277
    dw jumptable_4267_case_9 - IMAGE_BASE + __zres_end ; 0x4279
    dw jumptable_4267_case_10 - IMAGE_BASE + __zres_end ; 0x427b
    dw jumptable_4267_case_11 - IMAGE_BASE + __zres_end ; 0x427d
    dw jumptable_4267_case_12 - IMAGE_BASE + __zres_end ; 0x427f
    dw jumptable_4267_case_13 - IMAGE_BASE + __zres_end ; 0x4281
@..loc_UMTI.l4:
    cmp ax, strict word 0xe          ; 0x4283
    jae short @..loc_UMTI.l5         ; 0x4286
    xchg bx, ax                      ; 0x4288
    shl bx, 1                        ; 0x4289
    jmp [cs:bx + jumptable_4267 - IMAGE_BASE + __zres_end] ; 0x428b
@..loc_UMTI.l5:
    ret                              ; 0x4290
