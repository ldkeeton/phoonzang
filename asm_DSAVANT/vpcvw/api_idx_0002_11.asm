api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x91b2
    call aztec_csav                  ; 0x91b5
    mov word [bp - 0x0002], 0        ; 0x91b8
@..api_idx_0002_11.l1:
    mov ax, 0                        ; 0x91bd
    push ax                          ; 0x91c0
    push word [bp - 0x0002]          ; 0x91c1
    push word [bp + 0x4]             ; 0x91c4
    call loc_902e                    ; 0x91c7
    add sp, byte 6                   ; 0x91ca
    inc word [bp - 0x0002]           ; 0x91cd
    mov ax, word [bp - 0x0002]       ; 0x91d0
    cmp ax, strict word 0xd          ; 0x91d3
    jle short @..api_idx_0002_11.l1  ; 0x91d6
    ret                              ; 0x91d8
loc_91d9:
    mov ax, 0                        ; 0x91d9
    call aztec_csav                  ; 0x91dc
    mov ax, word [bp + 0x6]          ; 0x91df
    jmp near @..loc_91d9.l1          ; 0x91e2
jumptable_928f_case_0:
    mov ax, 0x9366                   ; 0x91e5
    push ax                          ; 0x91e8
    push word [bp + 0x4]             ; 0x91e9
    call api_idx_0002_9              ; 0x91ec
    add sp, byte 4                   ; 0x91ef
    jmp near @..loc_91d9.l2          ; 0x91f2
jumptable_928f_case_1:
    mov ax, 0x936f                   ; 0x91f5
    push ax                          ; 0x91f8
    push word [bp + 0x4]             ; 0x91f9
    call api_idx_0002_9              ; 0x91fc
    add sp, byte 4                   ; 0x91ff
    jmp near @..loc_91d9.l2          ; 0x9202
jumptable_928f_case_2:
    mov ax, 0x9378                   ; 0x9205
    push ax                          ; 0x9208
    push word [bp + 0x4]             ; 0x9209
    call api_idx_0002_9              ; 0x920c
    add sp, byte 4                   ; 0x920f
    jmp near @..loc_91d9.l2          ; 0x9212
jumptable_928f_case_3:
    mov ax, 0x9381                   ; 0x9215
    push ax                          ; 0x9218
    push word [bp + 0x4]             ; 0x9219
    call api_idx_0002_9              ; 0x921c
    add sp, byte 4                   ; 0x921f
    jmp near @..loc_91d9.l2          ; 0x9222
jumptable_928f_case_4:
    mov ax, 0x938a                   ; 0x9225
    push ax                          ; 0x9228
    push word [bp + 0x4]             ; 0x9229
    call api_idx_0002_9              ; 0x922c
    add sp, byte 4                   ; 0x922f
    jmp near @..loc_91d9.l2          ; 0x9232
jumptable_928f_case_5:
    mov ax, 0x9393                   ; 0x9235
    push ax                          ; 0x9238
    push word [bp + 0x4]             ; 0x9239
    call api_idx_0002_9              ; 0x923c
    add sp, byte 4                   ; 0x923f
    jmp short @..loc_91d9.l2         ; 0x9242
jumptable_928f_case_6:
    mov ax, 0x939c                   ; 0x9244
    push ax                          ; 0x9247
    push word [bp + 0x4]             ; 0x9248
    call api_idx_0002_9              ; 0x924b
    add sp, byte 4                   ; 0x924e
    jmp short @..loc_91d9.l2         ; 0x9251
jumptable_928f_case_7:
    mov ax, 0x93a5                   ; 0x9253
    push ax                          ; 0x9256
    push word [bp + 0x4]             ; 0x9257
    call api_idx_0002_9              ; 0x925a
    add sp, byte 4                   ; 0x925d
    jmp short @..loc_91d9.l2         ; 0x9260
jumptable_928f_case_8:
    mov ax, 0x93ae                   ; 0x9262
    push ax                          ; 0x9265
    push word [bp + 0x4]             ; 0x9266
    call api_idx_0002_9              ; 0x9269
    add sp, byte 4                   ; 0x926c
    jmp short @..loc_91d9.l2         ; 0x926f
jumptable_928f_case_9:
    mov ax, 0x93b7                   ; 0x9271
    push ax                          ; 0x9274
    push word [bp + 0x4]             ; 0x9275
    call api_idx_0002_9              ; 0x9278
    add sp, byte 4                   ; 0x927b
    jmp short @..loc_91d9.l2         ; 0x927e
jumptable_928f_case_10:
    mov ax, 0x93c0                   ; 0x9280
    push ax                          ; 0x9283
    push word [bp + 0x4]             ; 0x9284
    call api_idx_0002_9              ; 0x9287
    add sp, byte 4                   ; 0x928a
    jmp short @..loc_91d9.l2         ; 0x928d
jumptable_928f:
    dw jumptable_928f_case_0 - IMAGE_BASE + 0x5055 ; 0x928f
    dw jumptable_928f_case_1 - IMAGE_BASE + 0x5055 ; 0x9291
    dw jumptable_928f_case_2 - IMAGE_BASE + 0x5055 ; 0x9293
    dw jumptable_928f_case_3 - IMAGE_BASE + 0x5055 ; 0x9295
    dw jumptable_928f_case_4 - IMAGE_BASE + 0x5055 ; 0x9297
    dw jumptable_928f_case_5 - IMAGE_BASE + 0x5055 ; 0x9299
    dw jumptable_928f_case_6 - IMAGE_BASE + 0x5055 ; 0x929b
    dw jumptable_928f_case_7 - IMAGE_BASE + 0x5055 ; 0x929d
    dw jumptable_928f_case_8 - IMAGE_BASE + 0x5055 ; 0x929f
    dw jumptable_928f_case_9 - IMAGE_BASE + 0x5055 ; 0x92a1
    dw jumptable_928f_case_10 - IMAGE_BASE + 0x5055 ; 0x92a3
@..loc_91d9.l1:
    cmp ax, strict word 0xb          ; 0x92a5
    jae short @..loc_91d9.l2         ; 0x92a8
    xchg bx, ax                      ; 0x92aa
    shl bx, 1                        ; 0x92ab
    jmp [cs:bx - 0x1d2a]             ; 0x92ad
@..loc_91d9.l2:
    ret                              ; 0x92b2
