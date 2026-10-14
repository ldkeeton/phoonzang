; auto-generated
api_idx_0002_QUTS:
    mov ax, 0xfffe                   ; 0x02fe
    call aztec_csav                  ; 0x0301
    mov ax, 0                        ; 0x0304
    push ax                          ; 0x0307
    mov ax, 1                        ; 0x0308
    push ax                          ; 0x030b
    push word [bp + 0x4]             ; 0x030c
    call ds_app_TKHP                 ; 0x030f
    add sp, byte 4                   ; 0x0312
    push ax                          ; 0x0315
    call aztec_open                  ; 0x0316
    add sp, byte 4                   ; 0x0319
    mov word [bp - 0x0002], ax       ; 0x031c
    cmp ax, strict word 0xffff       ; 0x031f
    jne short @..api_idx_0002_QUTS.l1 ; 0x0322
    mov ax, 0x1b                     ; 0x0324
    push ax                          ; 0x0327
    call ds_app_VKGH                 ; 0x0328
    pop cx                           ; 0x032b
@..api_idx_0002_QUTS.l1:
    mov ax, 0                        ; 0x032c
    push ax                          ; 0x032f
    push word [bp + 0x6]             ; 0x0330
    push word [bp - 0x0002]          ; 0x0333
    call thunk_33                    ; 0x0336
    add sp, byte 6                   ; 0x0339
    push word [bp - 0x0002]          ; 0x033c
    call aztec_close                 ; 0x033f
    pop cx                           ; 0x0342
    ret                              ; 0x0343
loc_0344:
    mov ax, 0                        ; 0x0344
    call aztec_csav                  ; 0x0347
    mov ax, word [bss_5b6e]          ; 0x034a
    jmp near @..loc_0344.l1          ; 0x034d
jumptable_03ce_case_1:
    mov ax, 0x1a                     ; 0x0350
    push ax                          ; 0x0353
    mov ax, 0x19                     ; 0x0354
    push ax                          ; 0x0357
    call loc_017f                    ; 0x0358
    add sp, byte 4                   ; 0x035b
    jmp near @..loc_0344.l2          ; 0x035e
jumptable_03ce_case_2:
    mov ax, 1                        ; 0x0361
    push ax                          ; 0x0364
    push ax                          ; 0x0365
    mov ax, 0x17                     ; 0x0366
    push ax                          ; 0x0369
    mov ax, 0x16                     ; 0x036a
    push ax                          ; 0x036d
    mov ax, 0x14                     ; 0x036e
    push ax                          ; 0x0371
    mov ax, 0x15                     ; 0x0372
    push ax                          ; 0x0375
    call api_idx_0008_LRNK           ; 0x0376
    add sp, byte 0x0c                ; 0x0379
    jmp short @..loc_0344.l2         ; 0x037c
jumptable_03ce_case_3:
    mov ax, 2                        ; 0x037e
    push ax                          ; 0x0381
    mov ax, 1                        ; 0x0382
    push ax                          ; 0x0385
    mov ax, 0                        ; 0x0386
    push ax                          ; 0x0389
    mov ax, 0x1c                     ; 0x038a
    push ax                          ; 0x038d
    mov ax, 0                        ; 0x038e
    push ax                          ; 0x0391
    mov ax, 0xe                      ; 0x0392
    push ax                          ; 0x0395
    call api_idx_0008_LRNK           ; 0x0396
    add sp, byte 0x0c                ; 0x0399
    jmp short @..loc_0344.l2         ; 0x039c
jumptable_03ce_case_5:
    mov ax, 0x18                     ; 0x039e
    push ax                          ; 0x03a1
    mov ax, 0x1d                     ; 0x03a2
    push ax                          ; 0x03a5
    call loc_017f                    ; 0x03a6
    add sp, byte 4                   ; 0x03a9
    jmp short @..loc_0344.l2         ; 0x03ac
jumptable_03ce_case_6:
    mov ax, 3                        ; 0x03ae
    push ax                          ; 0x03b1
    mov ax, 1                        ; 0x03b2
    push ax                          ; 0x03b5
    mov ax, 0x17                     ; 0x03b6
    push ax                          ; 0x03b9
    mov ax, 0x16                     ; 0x03ba
    push ax                          ; 0x03bd
    mov ax, 0                        ; 0x03be
    push ax                          ; 0x03c1
    mov ax, 0x1b                     ; 0x03c2
    push ax                          ; 0x03c5
    call api_idx_0008_LRNK           ; 0x03c6
    add sp, byte 0x0c                ; 0x03c9
    jmp short @..loc_0344.l2         ; 0x03cc
jumptable_03ce:
    dw jumptable_03ce_case_0 - IMAGE_BASE + 0x5055 ; 0x03ce
    dw jumptable_03ce_case_1 - IMAGE_BASE + 0x5055 ; 0x03d0
    dw jumptable_03ce_case_2 - IMAGE_BASE + 0x5055 ; 0x03d2
    dw jumptable_03ce_case_3 - IMAGE_BASE + 0x5055 ; 0x03d4
    dw jumptable_03ce_case_2 - IMAGE_BASE + 0x5055 ; 0x03d6
    dw jumptable_03ce_case_5 - IMAGE_BASE + 0x5055 ; 0x03d8
    dw jumptable_03ce_case_6 - IMAGE_BASE + 0x5055 ; 0x03da
@..loc_0344.l1:
    cmp ax, strict word 7            ; 0x03dc
    jae short @..loc_0344.l2         ; 0x03df
    xchg bx, ax                      ; 0x03e1
    shl bx, 1                        ; 0x03e2
    jmp [cs:bx + 0x5415]             ; 0x03e4
jumptable_03ce_case_0:
@..loc_0344.l2:
    ret                              ; 0x03e9
