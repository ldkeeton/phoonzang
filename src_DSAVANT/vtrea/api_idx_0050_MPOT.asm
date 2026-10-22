; auto-generated
api_idx_0050_MPOT:
    mov ax, 0xffb0                   ; 0x13e0
    call aztec_csav                  ; 0x13e3
    cmp word [bp + 0x6], byte 0      ; 0x13e6
    jl short @..api_idx_0050_MPOT.l1 ; 0x13ea
    mov word [pending_panel_call], 1 ; 0x13ec
    mov ax, word [bp + 0x4]          ; 0x13f2
    mov word [pending_panel_arg0], ax ; 0x13f5
    mov ax, word [bp + 0x6]          ; 0x13f8
    mov word [pending_panel_arg1], ax ; 0x13fb
    jmp short @..api_idx_0050_MPOT.l2 ; 0x13fe
@..api_idx_0050_MPOT.l1:
    mov word [animation_index], 0    ; 0x1400
    mov word [sound_request], 1      ; 0x1406
@..api_idx_0050_MPOT.l2:
    lea ax, word [bp - 0x0050]       ; 0x140c
    push ax                          ; 0x140f
    mov ax, 0x146b                   ; 0x1410
    push ax                          ; 0x1413
    call load_message_string         ; 0x1414
    add sp, byte 4                   ; 0x1417
    mov ax, 1                        ; 0x141a
    push ax                          ; 0x141d
    mov ax, 0                        ; 0x141e
    push ax                          ; 0x1421
    push word [bss_91d4]             ; 0x1422
    lea ax, word [bp - 0x0050]       ; 0x1426
    push ax                          ; 0x1429
    call loc_OOHI                    ; 0x142a
    add sp, byte 8                   ; 0x142d
    mov ax, 0xb8                     ; 0x1430
    push ax                          ; 0x1433
    mov ax, 0                        ; 0x1434
    push ax                          ; 0x1437
    push word [bss_91d4]             ; 0x1438
    mov ax, bss_91d6                 ; 0x143c
    push ax                          ; 0x143f
    call loc_OOHI                    ; 0x1440
    add sp, byte 8                   ; 0x1443
    ret                              ; 0x1446
