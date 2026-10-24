; auto-generated
api_idx_0056_KPMS:
    mov ax, 0xffaa                   ; 0x468b
    call aztec_csav                  ; 0x468e
    lea ax, word [bp - 0x0056]       ; 0x4691
    push ax                          ; 0x4694
    mov ax, 0x164                    ; 0x4695
    push ax                          ; 0x4698
    call load_message_string         ; 0x4699
    add sp, byte 4                   ; 0x469c
    lea ax, word [bp - 0x0056]       ; 0x469f
    push ax                          ; 0x46a2
    call aztec_strlen                ; 0x46a3
    pop cx                           ; 0x46a6
    mov cx, 6                        ; 0x46a7
    imul cx                          ; 0x46aa
    mov cx, 2                        ; 0x46ac
    cwd                              ; 0x46af
    idiv cx                          ; 0x46b0
    mov cx, ax                       ; 0x46b2
    mov ax, 0x10f                    ; 0x46b4
    sub ax, cx                       ; 0x46b7
    mov word [bp - 0x0002], ax       ; 0x46b9
    mov ax, 0x3e                     ; 0x46bc
    push ax                          ; 0x46bf
    mov ax, 0x13f                    ; 0x46c0
    push ax                          ; 0x46c3
    mov ax, 0x39                     ; 0x46c4
    push ax                          ; 0x46c7
    push word [bp - 0x0002]          ; 0x46c8
    call gfx_save_area               ; 0x46cb
    add sp, byte 8                   ; 0x46ce
    mov word [bp - 0x0004], dx       ; 0x46d1
    mov word [bp - 0x0006], ax       ; 0x46d4
    mov ax, 0x39                     ; 0x46d7
    push ax                          ; 0x46da
    push word [bp - 0x0002]          ; 0x46db
    call gfx_set_text_pos            ; 0x46de
    add sp, byte 4                   ; 0x46e1
    mov ax, 0                        ; 0x46e4
    push ax                          ; 0x46e7
    mov ax, 0x55                     ; 0x46e8
    push ax                          ; 0x46eb
    call gfx_set_text_color          ; 0x46ec
    add sp, byte 4                   ; 0x46ef
    mov ax, 0                        ; 0x46f2
    push ax                          ; 0x46f5
    lea ax, word [bp - 0x0056]       ; 0x46f6
    push ax                          ; 0x46f9
    call draw_text_glyphs            ; 0x46fa
    add sp, byte 4                   ; 0x46fd
    mov ax, 0x3e                     ; 0x4700
    push ax                          ; 0x4703
    mov ax, 0x13f                    ; 0x4704
    push ax                          ; 0x4707
    mov ax, 0x39                     ; 0x4708
    push ax                          ; 0x470b
    push word [bp - 0x0002]          ; 0x470c
    call gfx_show_area               ; 0x470f
    add sp, byte 8                   ; 0x4712
    mov ax, 0                        ; 0x4715
    push ax                          ; 0x4718
    call play_sound_effect           ; 0x4719
    pop cx                           ; 0x471c
    push word [message_delay]        ; 0x471d
    call wait_for_hotspot_timeout    ; 0x4721
    pop cx                           ; 0x4724
    mov ax, 1                        ; 0x4725
    push ax                          ; 0x4728
    push word [bp - 0x0004]          ; 0x4729
    push word [bp - 0x0006]          ; 0x472c
    call gfx_restore_area            ; 0x472f
    add sp, byte 6                   ; 0x4732
    mov ax, 0x3e                     ; 0x4735
    push ax                          ; 0x4738
    mov ax, 0x13f                    ; 0x4739
    push ax                          ; 0x473c
    mov ax, 0x39                     ; 0x473d
    push ax                          ; 0x4740
    push word [bp - 0x0002]          ; 0x4741
    call gfx_show_area               ; 0x4744
    add sp, byte 8                   ; 0x4747
    ret                              ; 0x474a
