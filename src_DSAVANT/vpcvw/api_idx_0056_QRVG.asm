; auto-generated
api_idx_0056_QRVG:
    mov ax, 0xffaa                   ; 0x3c7b
    call aztec_csav                  ; 0x3c7e
    mov ax, 0                        ; 0x3c81
    push ax                          ; 0x3c84
    push ax                          ; 0x3c85
    push word [roster_screen_a]      ; 0x3c86
    push word [roster_screen_b]      ; 0x3c8a
    call call_restore_screen         ; 0x3c8e
    add sp, byte 8                   ; 0x3c91
    mov word [bss_9568], 4           ; 0x3c94
    mov word [bss_9566], 0           ; 0x3c9a
    mov byte [bss_956a], 0           ; 0x3ca0
.back1:
    lea ax, word [bp - 0x56]         ; 0x3ca5
    push ax                          ; 0x3ca8
    push word [bp + 4]               ; 0x3ca9
    call load_message_string         ; 0x3cac
    add sp, byte 4                   ; 0x3caf
    cmp word [message_not_found], byte 0 ; 0x3cb2
    jne short .forward1              ; 0x3cb7
    lea ax, word [bp - 0x56]         ; 0x3cb9
    push ax                          ; 0x3cbc
    call process_scene_message_words ; 0x3cbd
    pop cx                           ; 0x3cc0
    inc word [bp + 4]                ; 0x3cc1
.forward1:
    cmp word [message_not_found], byte 0 ; 0x3cc4
    je short .back1                  ; 0x3cc9
    cmp byte [bss_956a], 0           ; 0x3ccb
    je short .forward2               ; 0x3cd0
    mov ax, bss_956a                 ; 0x3cd2
    push ax                          ; 0x3cd5
    call api_idx_0004_UQRV           ; 0x3cd6
    pop cx                           ; 0x3cd9
.forward2:
    call loc_NRTK                    ; 0x3cda
    ret                              ; 0x3cdd
