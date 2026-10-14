; auto-generated
ds_app_file_JHOT: ; Aztec csav frame=0x0002
    mov ax, 0xfffe                   ; 0x0242
    call aztec_csav                  ; 0x0245
    mov word [bp - 0x0002], 0        ; 0x0248
    mov ax, word [bp + 0x4]          ; 0x024d
    jmp near @..ds_app_file_JHOT.l18 ; 0x0250
jumptable_0363_case_0:
    cmp word [bss_0e0e], byte 0      ; 0x0253
    je short @..ds_app_file_JHOT.l1  ; 0x0258
    push word [bss_0e0e]             ; 0x025a
    call aztec_free                  ; 0x025e
    pop cx                           ; 0x0261
@..ds_app_file_JHOT.l1:
    cmp word [bss_0e10], byte 0      ; 0x0262
    je short @..ds_app_file_JHOT.l2  ; 0x0267
    push word [bss_0e10]             ; 0x0269
    call aztec_free                  ; 0x026d
    pop cx                           ; 0x0270
@..ds_app_file_JHOT.l2:
    cmp word [bss_0e12], byte 0      ; 0x0271
    je short @..ds_app_file_JHOT.l3  ; 0x0276
    push word [bss_0e12]             ; 0x0278
    call aztec_free                  ; 0x027c
    pop cx                           ; 0x027f
@..ds_app_file_JHOT.l3:
    cmp word [bss_0e14], byte 0      ; 0x0280
    je short @..ds_app_file_JHOT.l4  ; 0x0285
    push word [bss_0e14]             ; 0x0287
    call aztec_free                  ; 0x028b
    pop cx                           ; 0x028e
@..ds_app_file_JHOT.l4:
    cmp word [bss_0e18], byte 0      ; 0x028f
    jne short @..ds_app_file_JHOT.l5 ; 0x0294
    cmp word [bss_0e16], byte 0      ; 0x0296
@..ds_app_file_JHOT.l5:
    je short @..ds_app_file_JHOT.l6  ; 0x029b
    push word [bss_0e18]             ; 0x029d
    push word [bss_0e16]             ; 0x02a1
    call app_free                    ; 0x02a5
    add sp, byte 4                   ; 0x02a8
@..ds_app_file_JHOT.l6:
    cmp word [bss_0e1c], byte 0      ; 0x02ab
    jne short @..ds_app_file_JHOT.l7 ; 0x02b0
    cmp word [bss_0e1a], byte 0      ; 0x02b2
@..ds_app_file_JHOT.l7:
    je short @..ds_app_file_JHOT.l8  ; 0x02b7
    push word [bss_0e1c]             ; 0x02b9
    push word [bss_0e1a]             ; 0x02bd
    call app_free                    ; 0x02c1
    add sp, byte 4                   ; 0x02c4
@..ds_app_file_JHOT.l8:
    cmp word [bss_0e20], byte 0      ; 0x02c7
    jne short @..ds_app_file_JHOT.l9 ; 0x02cc
    cmp word [bss_0e1e], byte 0      ; 0x02ce
@..ds_app_file_JHOT.l9:
    je short @..ds_app_file_JHOT.l10 ; 0x02d3
    push word [bss_0e20]             ; 0x02d5
    push word [bss_0e1e]             ; 0x02d9
    call app_free                    ; 0x02dd
    add sp, byte 4                   ; 0x02e0
jumptable_0363_case_11:
@..ds_app_file_JHOT.l10:
    push word [bss_0e22]             ; 0x02e3
    call aztec_close                 ; 0x02e7
    pop cx                           ; 0x02ea
jumptable_0363_case_10:
    push word [bss_0e24]             ; 0x02eb
    call aztec_close                 ; 0x02ef
    pop cx                           ; 0x02f2
jumptable_0363_case_7:
    cmp word [bss_0e28], byte 0      ; 0x02f3
    jne short @..ds_app_file_JHOT.l11 ; 0x02f8
    cmp word [bss_0e26], byte 0      ; 0x02fa
@..ds_app_file_JHOT.l11:
    je short @..ds_app_file_JHOT.l12 ; 0x02ff
    push word [bss_0e28]             ; 0x0301
    push word [bss_0e26]             ; 0x0305
    call app_free                    ; 0x0309
    add sp, byte 4                   ; 0x030c
@..ds_app_file_JHOT.l12:
    cmp word [bss_0e2c], byte 0      ; 0x030f
    jne short @..ds_app_file_JHOT.l13 ; 0x0314
    cmp word [bss_0e2a], byte 0      ; 0x0316
@..ds_app_file_JHOT.l13:
    je short @..ds_app_file_JHOT.l14 ; 0x031b
    push word [bss_0e2c]             ; 0x031d
    push word [bss_0e2a]             ; 0x0321
    call app_free                    ; 0x0325
    add sp, byte 4                   ; 0x0328
@..ds_app_file_JHOT.l14:
    cmp word [bss_0e30], byte 0      ; 0x032b
    jne short @..ds_app_file_JHOT.l15 ; 0x0330
    cmp word [bss_0e2e], byte 0      ; 0x0332
@..ds_app_file_JHOT.l15:
    je short @..ds_app_file_JHOT.l16 ; 0x0337
    push word [bss_0e30]             ; 0x0339
    push word [bss_0e2e]             ; 0x033d
    call app_free                    ; 0x0341
    add sp, byte 4                   ; 0x0344
jumptable_0363_case_4:
@..ds_app_file_JHOT.l16:
    mov word [bp - 0x0002], 1        ; 0x0347
    mov ax, 1                        ; 0x034c
    push ax                          ; 0x034f
    call thunk_17                    ; 0x0350
    pop cx                           ; 0x0353
    call thunk_18                    ; 0x0354
    cmp word [bss_0e32], byte 0      ; 0x0357
    je short @..ds_app_file_JHOT.l17 ; 0x035c
    call thunk_36                    ; 0x035e
jumptable_0363_case_1:
@..ds_app_file_JHOT.l17:
    jmp short @..ds_app_file_JHOT.l19 ; 0x0361
jumptable_0363:
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0363
    dw jumptable_0363_case_1 - IMAGE_BASE      ; 0x0365
    dw jumptable_0363_case_1 - IMAGE_BASE      ; 0x0367
    dw jumptable_0363_case_1 - IMAGE_BASE      ; 0x0369
    dw jumptable_0363_case_4 - IMAGE_BASE      ; 0x036b
    dw jumptable_0363_case_4 - IMAGE_BASE      ; 0x036d
    dw jumptable_0363_case_4 - IMAGE_BASE      ; 0x036f
    dw jumptable_0363_case_7 - IMAGE_BASE      ; 0x0371
    dw jumptable_0363_case_7 - IMAGE_BASE      ; 0x0373
    dw jumptable_0363_case_7 - IMAGE_BASE      ; 0x0375
    dw jumptable_0363_case_10 - IMAGE_BASE     ; 0x0377
    dw jumptable_0363_case_11 - IMAGE_BASE     ; 0x0379
    dw jumptable_0363_case_11 - IMAGE_BASE     ; 0x037b
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x037d
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x037f
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0381
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0383
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0385
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0387
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0389
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x038b
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x038d
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x038f
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0391
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0393
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0395
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0397
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x0399
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x039b
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x039d
    dw jumptable_0363_case_0 - IMAGE_BASE      ; 0x039f
@..ds_app_file_JHOT.l18:
    cmp ax, strict word 0x1f         ; 0x03a1
    jae short @..ds_app_file_JHOT.l19 ; 0x03a4
    xchg bx, ax                      ; 0x03a6
    shl bx, 1                        ; 0x03a7
    jmp [cs:bx + jumptable_0363 - IMAGE_BASE] ; 0x03a9
@..ds_app_file_JHOT.l19:
    cmp word [bp - 0x0002], byte 1   ; 0x03ae
    jne short @..ds_app_file_JHOT.l20 ; 0x03b2
    call ds_loc_30a3                 ; 0x03b4
@..ds_app_file_JHOT.l20:
    ret                              ; 0x03b7
