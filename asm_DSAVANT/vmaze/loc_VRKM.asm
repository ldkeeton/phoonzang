; auto-generated
loc_VRKM:
    mov ax, 0                        ; 0x0344
    call aztec_csav                  ; 0x0347
    mov ax, word [bss_5b6e]          ; 0x034a
    jmp near @..loc_VRKM.l1          ; 0x034d
jumptable_03ce_case_1:
    mov ax, 0x1a                     ; 0x0350
    push ax                          ; 0x0353
    mov ax, 0x19                     ; 0x0354
    push ax                          ; 0x0357
    call loc_RRRG                    ; 0x0358
    add sp, byte 4                   ; 0x035b
    jmp near @..loc_VRKM.l2          ; 0x035e
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
    call api_idx_0008_URRP           ; 0x0376
    add sp, byte 0x0c                ; 0x0379
    jmp short @..loc_VRKM.l2         ; 0x037c
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
    call api_idx_0008_URRP           ; 0x0396
    add sp, byte 0x0c                ; 0x0399
    jmp short @..loc_VRKM.l2         ; 0x039c
jumptable_03ce_case_5:
    mov ax, 0x18                     ; 0x039e
    push ax                          ; 0x03a1
    mov ax, 0x1d                     ; 0x03a2
    push ax                          ; 0x03a5
    call loc_RRRG                    ; 0x03a6
    add sp, byte 4                   ; 0x03a9
    jmp short @..loc_VRKM.l2         ; 0x03ac
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
    call api_idx_0008_URRP           ; 0x03c6
    add sp, byte 0x0c                ; 0x03c9
    jmp short @..loc_VRKM.l2         ; 0x03cc
jumptable_03ce:
    dw jumptable_03ce_case_0 - IMAGE_BASE + 0x5055 ; 0x03ce
    dw jumptable_03ce_case_1 - IMAGE_BASE + 0x5055 ; 0x03d0
    dw jumptable_03ce_case_2 - IMAGE_BASE + 0x5055 ; 0x03d2
    dw jumptable_03ce_case_3 - IMAGE_BASE + 0x5055 ; 0x03d4
    dw jumptable_03ce_case_2 - IMAGE_BASE + 0x5055 ; 0x03d6
    dw jumptable_03ce_case_5 - IMAGE_BASE + 0x5055 ; 0x03d8
    dw jumptable_03ce_case_6 - IMAGE_BASE + 0x5055 ; 0x03da
@..loc_VRKM.l1:
    cmp ax, strict word 7            ; 0x03dc
    jae short @..loc_VRKM.l2         ; 0x03df
    xchg bx, ax                      ; 0x03e1
    shl bx, 1                        ; 0x03e2
    jmp [cs:bx + 0x5415]             ; 0x03e4
jumptable_03ce_case_0:
@..loc_VRKM.l2:
    ret                              ; 0x03e9
