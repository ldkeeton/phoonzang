; auto-generated
api_idx_0002_TTLK:
    mov ax, 0xfffe                   ; 0x4291
    call aztec_csav                  ; 0x4294
    mov word [bp - 0x0002], 0        ; 0x4297
@..api_idx_0002_TTLK.l1:
    mov ax, 0                        ; 0x429c
    push ax                          ; 0x429f
    push word [bp - 0x0002]          ; 0x42a0
    push word [bp + 0x4]             ; 0x42a3
    call loc_4107                    ; 0x42a6
    add sp, byte 6                   ; 0x42a9
    inc word [bp - 0x0002]           ; 0x42ac
    mov ax, word [bp - 0x0002]       ; 0x42af
    cmp ax, strict word 0xd          ; 0x42b2
    jle short @..api_idx_0002_TTLK.l1 ; 0x42b5
    ret                              ; 0x42b7
loc_42b8:
    mov ax, 0                        ; 0x42b8
    call aztec_csav                  ; 0x42bb
    mov ax, word [bp + 0x6]          ; 0x42be
    jmp near @..loc_42b8.l1          ; 0x42c1
jumptable_436e_case_0:
    mov ax, 0x935a                   ; 0x42c4
    push ax                          ; 0x42c7
    push word [bp + 0x4]             ; 0x42c8
    call api_idx_0002_NIVJ           ; 0x42cb
    add sp, byte 4                   ; 0x42ce
    jmp near @..loc_42b8.l2          ; 0x42d1
jumptable_436e_case_1:
    mov ax, 0x9363                   ; 0x42d4
    push ax                          ; 0x42d7
    push word [bp + 0x4]             ; 0x42d8
    call api_idx_0002_NIVJ           ; 0x42db
    add sp, byte 4                   ; 0x42de
    jmp near @..loc_42b8.l2          ; 0x42e1
jumptable_436e_case_2:
    mov ax, 0x936c                   ; 0x42e4
    push ax                          ; 0x42e7
    push word [bp + 0x4]             ; 0x42e8
    call api_idx_0002_NIVJ           ; 0x42eb
    add sp, byte 4                   ; 0x42ee
    jmp near @..loc_42b8.l2          ; 0x42f1
jumptable_436e_case_3:
    mov ax, 0x9375                   ; 0x42f4
    push ax                          ; 0x42f7
    push word [bp + 0x4]             ; 0x42f8
    call api_idx_0002_NIVJ           ; 0x42fb
    add sp, byte 4                   ; 0x42fe
    jmp near @..loc_42b8.l2          ; 0x4301
jumptable_436e_case_4:
    mov ax, 0x937e                   ; 0x4304
    push ax                          ; 0x4307
    push word [bp + 0x4]             ; 0x4308
    call api_idx_0002_NIVJ           ; 0x430b
    add sp, byte 4                   ; 0x430e
loc_4311:
    jmp near @..loc_42b8.l2          ; 0x4311
jumptable_436e_case_5:
    mov ax, 0x9387                   ; 0x4314
    push ax                          ; 0x4317
    push word [bp + 0x4]             ; 0x4318
    call api_idx_0002_NIVJ           ; 0x431b
    add sp, byte 4                   ; 0x431e
    jmp short @..loc_42b8.l2         ; 0x4321
jumptable_436e_case_6:
    mov ax, 0x9390                   ; 0x4323
    push ax                          ; 0x4326
    push word [bp + 0x4]             ; 0x4327
    call api_idx_0002_NIVJ           ; 0x432a
    add sp, byte 4                   ; 0x432d
    jmp short @..loc_42b8.l2         ; 0x4330
jumptable_436e_case_7:
    mov ax, 0x9399                   ; 0x4332
    push ax                          ; 0x4335
    push word [bp + 0x4]             ; 0x4336
    call api_idx_0002_NIVJ           ; 0x4339
    add sp, byte 4                   ; 0x433c
    jmp short @..loc_42b8.l2         ; 0x433f
jumptable_436e_case_8:
    mov ax, 0x93a2                   ; 0x4341
    push ax                          ; 0x4344
    push word [bp + 0x4]             ; 0x4345
    call api_idx_0002_NIVJ           ; 0x4348
    add sp, byte 4                   ; 0x434b
    jmp short @..loc_42b8.l2         ; 0x434e
jumptable_436e_case_9:
    mov ax, 0x93ab                   ; 0x4350
    push ax                          ; 0x4353
    push word [bp + 0x4]             ; 0x4354
    call api_idx_0002_NIVJ           ; 0x4357
    add sp, byte 4                   ; 0x435a
    jmp short @..loc_42b8.l2         ; 0x435d
jumptable_436e_case_10:
    mov ax, 0x93b4                   ; 0x435f
    push ax                          ; 0x4362
    push word [bp + 0x4]             ; 0x4363
    call api_idx_0002_NIVJ           ; 0x4366
    add sp, byte 4                   ; 0x4369
    jmp short @..loc_42b8.l2         ; 0x436c
jumptable_436e:
    dw jumptable_436e_case_0 - IMAGE_BASE + 0x5055 ; 0x436e
    dw jumptable_436e_case_1 - IMAGE_BASE + 0x5055 ; 0x4370
    dw jumptable_436e_case_2 - IMAGE_BASE + 0x5055 ; 0x4372
    dw jumptable_436e_case_3 - IMAGE_BASE + 0x5055 ; 0x4374
    dw jumptable_436e_case_4 - IMAGE_BASE + 0x5055 ; 0x4376
    dw jumptable_436e_case_5 - IMAGE_BASE + 0x5055 ; 0x4378
    dw jumptable_436e_case_6 - IMAGE_BASE + 0x5055 ; 0x437a
    dw jumptable_436e_case_7 - IMAGE_BASE + 0x5055 ; 0x437c
    dw jumptable_436e_case_8 - IMAGE_BASE + 0x5055 ; 0x437e
    dw jumptable_436e_case_9 - IMAGE_BASE + 0x5055 ; 0x4380
    dw jumptable_436e_case_10 - IMAGE_BASE + 0x5055 ; 0x4382
@..loc_42b8.l1:
    cmp ax, strict word 0xb          ; 0x4384
    jae short @..loc_42b8.l2         ; 0x4387
    xchg bx, ax                      ; 0x4389
    shl bx, 1                        ; 0x438a
    jmp [cs:bx - 0x6c4b]             ; 0x438c
@..loc_42b8.l2:
    ret                              ; 0x4391
loc_4392:
    mov ax, 0                        ; 0x4392
    call aztec_csav                  ; 0x4395
    cmp word [bp + 0x6], byte 1      ; 0x4398
    jne short @..loc_4392.l1         ; 0x439c
    mov ax, 0x248                    ; 0x439e
    imul word [bp + 0x4]             ; 0x43a1
    mov bx, ax                       ; 0x43a4
    mov al, byte [bx + 0x5d64]       ; 0x43a6
    sub ah, ah                       ; 0x43aa
    dec ax                           ; 0x43ac
    dec ax                           ; 0x43ad
    mov byte [bx + 0x5d64], al       ; 0x43ae
    inc byte [bx + 0x5d6a]           ; 0x43b2
    inc byte [bx + 0x5d6b]           ; 0x43b6
@..loc_4392.l1:
    ret                              ; 0x43ba
