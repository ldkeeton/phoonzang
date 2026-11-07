; auto-generated
show_npc_message:
    mov ax, 0xffb0                   ; 0x13b4
    call $csav                  ; 0x13b7
    lea ax, word [bp - 0x50]         ; 0x13ba
    push ax                          ; 0x13bd
    push word [bp + 4]               ; 0x13be
    call load_message_string         ; 0x13c1
    add sp, byte 4                   ; 0x13c4
    mov ax, 0x5e                     ; 0x13c7
    push ax                          ; 0x13ca
    mov ax, 0x9138                   ; 0x13cb
    push ax                          ; 0x13ce
    lea ax, word [bp - 0x50]         ; 0x13cf
    push ax                          ; 0x13d2
    call str_subst_char              ; 0x13d3
    add sp, byte 6                   ; 0x13d6
    push word [bp + 0xa]             ; 0x13d9
    push word [bp + 8]               ; 0x13dc
    push word [bp + 6]               ; 0x13df
    lea ax, word [bp - 0x50]         ; 0x13e2
    push ax                          ; 0x13e5
    call display_npc_text_message    ; 0x13e6
    add sp, byte 8                   ; 0x13e9
    ret                              ; 0x13ec
