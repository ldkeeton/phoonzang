; auto-generated
loc_VQPO:
    mov ax, 0                        ; 0x42b8
    call aztec_csav                  ; 0x42bb
    mov ax, word [bp + 0x6]          ; 0x42be
    jmp near @..loc_VQPO.l1          ; 0x42c1
jumptable_436e_case_0:
    mov ax, dseg_935a                ; 0x42c4
    push ax                          ; 0x42c7
    push word [bp + 0x4]             ; 0x42c8
    call api_idx_0002_IRKS           ; 0x42cb
    add sp, byte 4                   ; 0x42ce
    jmp near @..loc_VQPO.l2          ; 0x42d1
jumptable_436e_case_1:
    mov ax, dseg_9363                ; 0x42d4
    push ax                          ; 0x42d7
    push word [bp + 0x4]             ; 0x42d8
    call api_idx_0002_IRKS           ; 0x42db
    add sp, byte 4                   ; 0x42de
    jmp near @..loc_VQPO.l2          ; 0x42e1
jumptable_436e_case_2:
    mov ax, dseg_936c                ; 0x42e4
    push ax                          ; 0x42e7
    push word [bp + 0x4]             ; 0x42e8
    call api_idx_0002_IRKS           ; 0x42eb
    add sp, byte 4                   ; 0x42ee
    jmp near @..loc_VQPO.l2          ; 0x42f1
jumptable_436e_case_3:
    mov ax, dseg_9375                ; 0x42f4
    push ax                          ; 0x42f7
    push word [bp + 0x4]             ; 0x42f8
    call api_idx_0002_IRKS           ; 0x42fb
    add sp, byte 4                   ; 0x42fe
    jmp near @..loc_VQPO.l2          ; 0x4301
jumptable_436e_case_4:
    mov ax, dseg_937e                ; 0x4304
    push ax                          ; 0x4307
    push word [bp + 0x4]             ; 0x4308
    call api_idx_0002_IRKS           ; 0x430b
    add sp, byte 4                   ; 0x430e
    jmp near @..loc_VQPO.l2          ; 0x4311
jumptable_436e_case_5:
    mov ax, dseg_9387                ; 0x4314
    push ax                          ; 0x4317
    push word [bp + 0x4]             ; 0x4318
    call api_idx_0002_IRKS           ; 0x431b
    add sp, byte 4                   ; 0x431e
    jmp short @..loc_VQPO.l2         ; 0x4321
jumptable_436e_case_6:
    mov ax, dseg_9390                ; 0x4323
    push ax                          ; 0x4326
    push word [bp + 0x4]             ; 0x4327
    call api_idx_0002_IRKS           ; 0x432a
    add sp, byte 4                   ; 0x432d
    jmp short @..loc_VQPO.l2         ; 0x4330
jumptable_436e_case_7:
    mov ax, dseg_9399                ; 0x4332
    push ax                          ; 0x4335
    push word [bp + 0x4]             ; 0x4336
    call api_idx_0002_IRKS           ; 0x4339
    add sp, byte 4                   ; 0x433c
    jmp short @..loc_VQPO.l2         ; 0x433f
jumptable_436e_case_8:
    mov ax, dseg_93a2                ; 0x4341
    push ax                          ; 0x4344
    push word [bp + 0x4]             ; 0x4345
    call api_idx_0002_IRKS           ; 0x4348
    add sp, byte 4                   ; 0x434b
    jmp short @..loc_VQPO.l2         ; 0x434e
jumptable_436e_case_9:
    mov ax, dseg_93ab                ; 0x4350
    push ax                          ; 0x4353
    push word [bp + 0x4]             ; 0x4354
    call api_idx_0002_IRKS           ; 0x4357
    add sp, byte 4                   ; 0x435a
    jmp short @..loc_VQPO.l2         ; 0x435d
jumptable_436e_case_10:
    mov ax, dseg_93b4                ; 0x435f
    push ax                          ; 0x4362
    push word [bp + 0x4]             ; 0x4363
    call api_idx_0002_IRKS           ; 0x4366
    add sp, byte 4                   ; 0x4369
    jmp short @..loc_VQPO.l2         ; 0x436c
jumptable_436e:
    dw jumptable_436e_case_0 - IMAGE_BASE + __zres_end ; 0x436e
    dw jumptable_436e_case_1 - IMAGE_BASE + __zres_end ; 0x4370
    dw jumptable_436e_case_2 - IMAGE_BASE + __zres_end ; 0x4372
    dw jumptable_436e_case_3 - IMAGE_BASE + __zres_end ; 0x4374
    dw jumptable_436e_case_4 - IMAGE_BASE + __zres_end ; 0x4376
    dw jumptable_436e_case_5 - IMAGE_BASE + __zres_end ; 0x4378
    dw jumptable_436e_case_6 - IMAGE_BASE + __zres_end ; 0x437a
    dw jumptable_436e_case_7 - IMAGE_BASE + __zres_end ; 0x437c
    dw jumptable_436e_case_8 - IMAGE_BASE + __zres_end ; 0x437e
    dw jumptable_436e_case_9 - IMAGE_BASE + __zres_end ; 0x4380
    dw jumptable_436e_case_10 - IMAGE_BASE + __zres_end ; 0x4382
@..loc_VQPO.l1:
    cmp ax, strict word 0xb          ; 0x4384
    jae short @..loc_VQPO.l2         ; 0x4387
    xchg bx, ax                      ; 0x4389
    shl bx, 1                        ; 0x438a
    jmp [cs:bx + jumptable_436e - IMAGE_BASE + __zres_end] ; 0x438c
@..loc_VQPO.l2:
    ret                              ; 0x4391
