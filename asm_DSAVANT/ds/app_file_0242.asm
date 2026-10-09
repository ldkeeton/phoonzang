app_file_0242: ; Aztec csav frame=0x0002
    mov ax, 0xfffe                   ; 0x0242
    call aztec_csav                  ; 0x0245
    mov word [bp - 0x0002], 0        ; 0x0248
    mov ax, word [bp + 0x4]          ; 0x024d
    jmp near @..app_file_0242.l18    ; 0x0250
    cmp word [data_0e0e], byte 0     ; 0x0253
    je short @..app_file_0242.l1     ; 0x0258
    push word [data_0e0e]            ; 0x025a
    call aztec_free                  ; 0x025e
    pop cx                           ; 0x0261
@..app_file_0242.l1:
    cmp word [data_0e10], byte 0     ; 0x0262
    je short @..app_file_0242.l2     ; 0x0267
    push word [data_0e10]            ; 0x0269
    call aztec_free                  ; 0x026d
    pop cx                           ; 0x0270
@..app_file_0242.l2:
    cmp word [data_0e12], byte 0     ; 0x0271
    je short @..app_file_0242.l3     ; 0x0276
    push word [data_0e12]            ; 0x0278
    call aztec_free                  ; 0x027c
    pop cx                           ; 0x027f
@..app_file_0242.l3:
    cmp word [data_0e14], byte 0     ; 0x0280
    je short @..app_file_0242.l4     ; 0x0285
    push word [data_0e14]            ; 0x0287
    call aztec_free                  ; 0x028b
    pop cx                           ; 0x028e
@..app_file_0242.l4:
    cmp word [data_0e18], byte 0     ; 0x028f
    jne short @..app_file_0242.l5    ; 0x0294
    cmp word [data_0e16], byte 0     ; 0x0296
@..app_file_0242.l5:
    je short @..app_file_0242.l6     ; 0x029b
    push word [data_0e18]            ; 0x029d
    push word [data_0e16]            ; 0x02a1
    call app_free                    ; 0x02a5
    add sp, byte 4                   ; 0x02a8
@..app_file_0242.l6:
    cmp word [data_0e1c], byte 0     ; 0x02ab
    jne short @..app_file_0242.l7    ; 0x02b0
    cmp word [data_0e1a], byte 0     ; 0x02b2
@..app_file_0242.l7:
    je short @..app_file_0242.l8     ; 0x02b7
    push word [data_0e1c]            ; 0x02b9
    push word [data_0e1a]            ; 0x02bd
    call app_free                    ; 0x02c1
    add sp, byte 4                   ; 0x02c4
@..app_file_0242.l8:
    cmp word [data_0e20], byte 0     ; 0x02c7
    jne short @..app_file_0242.l9    ; 0x02cc
    cmp word [data_0e1e], byte 0     ; 0x02ce
@..app_file_0242.l9:
    je short @..app_file_0242.l10    ; 0x02d3
    push word [data_0e20]            ; 0x02d5
    push word [data_0e1e]            ; 0x02d9
    call app_free                    ; 0x02dd
    add sp, byte 4                   ; 0x02e0
@..app_file_0242.l10:
    push word [data_0e22]            ; 0x02e3
    call aztec_close                 ; 0x02e7
    pop cx                           ; 0x02ea
    push word [data_0e24]            ; 0x02eb
    call aztec_close                 ; 0x02ef
    pop cx                           ; 0x02f2
    cmp word [data_0e28], byte 0     ; 0x02f3
    jne short @..app_file_0242.l11   ; 0x02f8
    cmp word [data_0e26], byte 0     ; 0x02fa
@..app_file_0242.l11:
    je short @..app_file_0242.l12    ; 0x02ff
    push word [data_0e28]            ; 0x0301
    push word [data_0e26]            ; 0x0305
    call app_free                    ; 0x0309
    add sp, byte 4                   ; 0x030c
@..app_file_0242.l12:
    cmp word [data_0e2c], byte 0     ; 0x030f
    jne short @..app_file_0242.l13   ; 0x0314
    cmp word [data_0e2a], byte 0     ; 0x0316
@..app_file_0242.l13:
    je short @..app_file_0242.l14    ; 0x031b
    push word [data_0e2c]            ; 0x031d
    push word [data_0e2a]            ; 0x0321
    call app_free                    ; 0x0325
    add sp, byte 4                   ; 0x0328
@..app_file_0242.l14:
    cmp word [data_0e30], byte 0     ; 0x032b
    jne short @..app_file_0242.l15   ; 0x0330
    cmp word [data_0e2e], byte 0     ; 0x0332
@..app_file_0242.l15:
    je short @..app_file_0242.l16    ; 0x0337
    push word [data_0e30]            ; 0x0339
    push word [data_0e2e]            ; 0x033d
    call app_free                    ; 0x0341
    add sp, byte 4                   ; 0x0344
@..app_file_0242.l16:
    mov word [bp - 0x0002], 1        ; 0x0347
    mov ax, 1                        ; 0x034c
    push ax                          ; 0x034f
    call loc_415b                    ; 0x0350
    pop cx                           ; 0x0353
    call loc_4168                    ; 0x0354
    cmp word [data_0e32], byte 0     ; 0x0357
    je short @..app_file_0242.l17    ; 0x035c
    call loc_4280                    ; 0x035e
@..app_file_0242.l17:
    jmp short @..app_file_0242.l19   ; 0x0361

    db 0x53, 0x00, 0x61, 0x01, 0x61, 0x01, 0x61, 0x01, 0x47, 0x01, 0x47, 0x01, 0x47, 0x01, 0xf3, 0x00
    db 0xf3, 0x00, 0xf3, 0x00, 0xeb, 0x00, 0xe3, 0x00, 0xe3, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00
    db 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00
    db 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00, 0x53, 0x00

@..app_file_0242.l18:
    cmp ax, strict word 0x1f         ; 0x03a1
    jae short @..app_file_0242.l19   ; 0x03a4
    xchg bx, ax                      ; 0x03a6
    shl bx, 1                        ; 0x03a7
    jmp [cs:bx + 0x163]              ; 0x03a9
@..app_file_0242.l19:
    cmp word [bp - 0x0002], byte 1   ; 0x03ae
    jne short @..app_file_0242.l20   ; 0x03b2
    call loc_30a3                    ; 0x03b4
@..app_file_0242.l20:
    ret                              ; 0x03b7
