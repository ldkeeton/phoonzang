; auto-generated
api_idx_0050_QVOG:
    mov ax, 0xffb0                   ; 0x74e2
    call aztec_csav                  ; 0x74e5
    lea ax, word [bp - 0x50]         ; 0x74e8
    push ax                          ; 0x74eb
    push word [bp + 6]               ; 0x74ec
    call load_message_string         ; 0x74ef
    add sp, byte 4                   ; 0x74f2
    mov ax, 0x5e                     ; 0x74f5
    push ax                          ; 0x74f8
    mov ax, 0x248                    ; 0x74f9
    imul word [bp + 4]               ; 0x74fc
    add ax, party_records            ; 0x74ff
    push ax                          ; 0x7502
    lea ax, word [bp - 0x50]         ; 0x7503
    push ax                          ; 0x7506
    call str_subst_char              ; 0x7507
    add sp, byte 6                   ; 0x750a
    lea ax, word [bp - 0x50]         ; 0x750d
    push ax                          ; 0x7510
    call api_idx_0008_OMTP           ; 0x7511
    pop cx                           ; 0x7514
    cmp word [bp + 8], byte 0        ; 0x7515
    je short .forward1               ; 0x7519
    mov ax, 0                        ; 0x751b
    push ax                          ; 0x751e
    call play_sound_effect           ; 0x751f
    pop cx                           ; 0x7522
.forward1:
    push word [message_delay]        ; 0x7523
    call wait_ticks_or_key           ; 0x7527
    pop cx                           ; 0x752a
    mov ax, 0x98                     ; 0x752b
    push ax                          ; 0x752e
    mov ax, 0x13f                    ; 0x752f
    push ax                          ; 0x7532
    mov ax, 0x92                     ; 0x7533
    push ax                          ; 0x7536
    mov ax, 0                        ; 0x7537
    push ax                          ; 0x753a
    call call_show_area              ; 0x753b
    add sp, byte 8                   ; 0x753e
    ret                              ; 0x7541
