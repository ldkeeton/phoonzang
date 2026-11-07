; auto-generated
apply_race_stat_limits:
    mov ax, 0                        ; 0x91d9
    call $csav                  ; 0x91dc
    mov ax, word [bp + 6]            ; 0x91df
    jmp near .forward1               ; 0x91e2
jumptable_928f_case_0:
    mov ax, race_0_stat_caps         ; 0x91e5
    push ax                          ; 0x91e8
    push word [bp + 4]               ; 0x91e9
    call cap_member_stats            ; 0x91ec
    add sp, byte 4                   ; 0x91ef
    jmp near apply_race_stat_limits.return1 ; 0x91f2
jumptable_928f_case_1:
    mov ax, race_1_stat_caps         ; 0x91f5
    push ax                          ; 0x91f8
    push word [bp + 4]               ; 0x91f9
    call cap_member_stats            ; 0x91fc
    add sp, byte 4                   ; 0x91ff
    jmp near apply_race_stat_limits.return1 ; 0x9202
jumptable_928f_case_2:
    mov ax, race_2_stat_caps         ; 0x9205
    push ax                          ; 0x9208
    push word [bp + 4]               ; 0x9209
    call cap_member_stats            ; 0x920c
    add sp, byte 4                   ; 0x920f
    jmp near apply_race_stat_limits.return1 ; 0x9212
jumptable_928f_case_3:
    mov ax, race_3_stat_caps         ; 0x9215
    push ax                          ; 0x9218
    push word [bp + 4]               ; 0x9219
    call cap_member_stats            ; 0x921c
    add sp, byte 4                   ; 0x921f
    jmp near apply_race_stat_limits.return1 ; 0x9222
jumptable_928f_case_4:
    mov ax, race_4_stat_caps         ; 0x9225
    push ax                          ; 0x9228
    push word [bp + 4]               ; 0x9229
    call cap_member_stats            ; 0x922c
    add sp, byte 4                   ; 0x922f
    jmp near apply_race_stat_limits.return1 ; 0x9232
jumptable_928f_case_5:
    mov ax, race_5_stat_caps         ; 0x9235
    push ax                          ; 0x9238
    push word [bp + 4]               ; 0x9239
    call cap_member_stats            ; 0x923c
    add sp, byte 4                   ; 0x923f
    jmp short apply_race_stat_limits.return1 ; 0x9242
jumptable_928f_case_6:
    mov ax, race_6_stat_caps         ; 0x9244
    push ax                          ; 0x9247
    push word [bp + 4]               ; 0x9248
    call cap_member_stats            ; 0x924b
    add sp, byte 4                   ; 0x924e
    jmp short apply_race_stat_limits.return1 ; 0x9251
jumptable_928f_case_7:
    mov ax, race_7_stat_caps         ; 0x9253
    push ax                          ; 0x9256
    push word [bp + 4]               ; 0x9257
    call cap_member_stats            ; 0x925a
    add sp, byte 4                   ; 0x925d
    jmp short apply_race_stat_limits.return1 ; 0x9260
jumptable_928f_case_8:
    mov ax, race_8_stat_caps         ; 0x9262
    push ax                          ; 0x9265
    push word [bp + 4]               ; 0x9266
    call cap_member_stats            ; 0x9269
    add sp, byte 4                   ; 0x926c
    jmp short apply_race_stat_limits.return1 ; 0x926f
jumptable_928f_case_9:
    mov ax, race_9_stat_caps         ; 0x9271
    push ax                          ; 0x9274
    push word [bp + 4]               ; 0x9275
    call cap_member_stats            ; 0x9278
    add sp, byte 4                   ; 0x927b
    jmp short apply_race_stat_limits.return1 ; 0x927e
jumptable_928f_case_10:
    mov ax, race_10_stat_caps        ; 0x9280
    push ax                          ; 0x9283
    push word [bp + 4]               ; 0x9284
    call cap_member_stats            ; 0x9287
    add sp, byte 4                   ; 0x928a
    jmp short apply_race_stat_limits.return1 ; 0x928d
jumptable_928f:
    dw jumptable_928f_case_0 - IMAGE_BASE + __zres_end ; 0x928f
    dw jumptable_928f_case_1 - IMAGE_BASE + __zres_end ; 0x9291
    dw jumptable_928f_case_2 - IMAGE_BASE + __zres_end ; 0x9293
    dw jumptable_928f_case_3 - IMAGE_BASE + __zres_end ; 0x9295
    dw jumptable_928f_case_4 - IMAGE_BASE + __zres_end ; 0x9297
    dw jumptable_928f_case_5 - IMAGE_BASE + __zres_end ; 0x9299
    dw jumptable_928f_case_6 - IMAGE_BASE + __zres_end ; 0x929b
    dw jumptable_928f_case_7 - IMAGE_BASE + __zres_end ; 0x929d
    dw jumptable_928f_case_8 - IMAGE_BASE + __zres_end ; 0x929f
    dw jumptable_928f_case_9 - IMAGE_BASE + __zres_end ; 0x92a1
    dw jumptable_928f_case_10 - IMAGE_BASE + __zres_end ; 0x92a3
apply_race_stat_limits.forward1:
    cmp ax, strict word 0xb          ; 0x92a5
    jae short apply_race_stat_limits.return1 ; 0x92a8
    xchg bx, ax                      ; 0x92aa
    shl bx, 1                        ; 0x92ab
    jmp [cs:bx + jumptable_928f - IMAGE_BASE + __zres_end] ; 0x92ad
apply_race_stat_limits.return1:
    ret                              ; 0x92b2
