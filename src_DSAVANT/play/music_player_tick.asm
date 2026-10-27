; auto-generated
music_player_tick:
    push bx                          ; 0x0af6
    push ax                          ; 0x0af7
    push ds                          ; 0x0af8
    push di                          ; 0x0af9
    push cx                          ; 0x0afa
    push si                          ; 0x0afb
    push es                          ; 0x0afc
    push dx                          ; 0x0afd
    cld                              ; 0x0afe
    dec word [cs:chain_countdown - IMAGE_BASE] ; 0x0aff
    jne short .forward1              ; 0x0b04
    mov ax, word [cs:chain_period - IMAGE_BASE] ; 0x0b06
    mov word [cs:chain_countdown - IMAGE_BASE], ax ; 0x0b0a
    pushf                            ; 0x0b0e
__zinsn_0b0f:
    call far 0x0:0x0                 ; 0x0b0f
music_player_tick.forward1:
    mov ax, word [cs:music_tempo - IMAGE_BASE] ; 0x0b14
    mov word [cs:tick_divider - IMAGE_BASE], ax ; 0x0b18
    cmp byte [cs:music_enabled - IMAGE_BASE], 0 ; 0x0b1c
    je short music_stop              ; 0x0b22
    dec word [cs:restart_delay - IMAGE_BASE] ; 0x0b24
    jne short music_stop             ; 0x0b29
    cmp byte [cs:stream_running - IMAGE_BASE], 1 ; 0x0b2b
    je short loc_RTLK                ; 0x0b31
    mov byte [cs:stream_running - IMAGE_BASE], 1 ; 0x0b33
    mov si, word [cs:stream_offset - IMAGE_BASE] ; 0x0b39
    mov ax, word [cs:stream_segment - IMAGE_BASE] ; 0x0b3e
    mov ds, ax                       ; 0x0b42
loc_MRJU:
    lodsb                            ; 0x0b44
    cmp al, 0xfe                     ; 0x0b45
    jne short loc_GOTP               ; 0x0b47
    jmp near music_loop_event        ; 0x0b49
loc_GOTP:
    cmp al, 0xff                     ; 0x0b4c
    jne short loc_IGJL               ; 0x0b4e
    jmp near loc_STUU                ; 0x0b50
loc_IGJL:
    cmp byte [cs:music_device - IMAGE_BASE], 5 ; 0x0b53
    je short loc_IKVT                ; 0x0b59
    jmp near loc_TSRL                ; 0x0b5b
loc_IKVT:
    mov es, word [cs:music_patch_segment - IMAGE_BASE] ; 0x0b5e
    push ax                          ; 0x0b63
    mov al, byte [cs:playback_volume - IMAGE_BASE] ; 0x0b64
    cmp al, byte [cs:last_playback_volume - IMAGE_BASE] ; 0x0b68
    je short loc_NSTK                ; 0x0b6d
    mov byte [cs:last_playback_volume - IMAGE_BASE], al ; 0x0b6f
    call mpu_set_volume              ; 0x0b73
loc_NSTK:
    pop ax                           ; 0x0b76
    mov byte [cs:current_event - IMAGE_BASE], al ; 0x0b77
    mov bl, al                       ; 0x0b7b
    and bl, 0xf                      ; 0x0b7d
    mov byte [cs:event_channel - IMAGE_BASE], bl ; 0x0b80
    mov bl, al                       ; 0x0b85
    shr bl, 1                        ; 0x0b87
    shr bl, 1                        ; 0x0b89
    shr bl, 1                        ; 0x0b8b
    shr bl, 1                        ; 0x0b8d
    mov byte [cs:event_command - IMAGE_BASE], bl ; 0x0b8f
    cmp byte [cs:event_command - IMAGE_BASE], 4 ; 0x0b94
    je short loc_STSS                ; 0x0b9a
    jmp near loc_QUTJ                ; 0x0b9c
loc_STSS:
    mov al, byte [cs:event_channel - IMAGE_BASE] ; 0x0b9f
    xor ah, ah                       ; 0x0ba3
    mov bx, channel_last_byte - IMAGE_BASE ; 0x0ba5
    add bx, ax                       ; 0x0ba8
    lodsb                            ; 0x0baa
    mov byte [cs:bx], al             ; 0x0bab
    cmp al, 0x3e                     ; 0x0bae
    jne short loc_MQMP               ; 0x0bb0
    jmp short loc_MRJU               ; 0x0bb2
loc_MQMP:
    mov bx, word [cs:music_patch_offset - IMAGE_BASE] ; 0x0bb4
    xor ah, ah                       ; 0x0bb9
    add bx, ax                       ; 0x0bbb
    mov al, 0xc0                     ; 0x0bbd
    or al, byte [cs:event_channel - IMAGE_BASE] ; 0x0bbf
    inc al                           ; 0x0bc4
    call mpu_send_byte               ; 0x0bc6
    mov al, byte [es:bx]             ; 0x0bc9
    call mpu_send_byte               ; 0x0bcc
    jmp near loc_MRJU                ; 0x0bcf
loc_QUTJ:
    mov bl, byte [cs:event_channel - IMAGE_BASE] ; 0x0bd2
    xor bh, bh                       ; 0x0bd7
    cmp byte [cs:bx + channel_last_byte - IMAGE_BASE], 0x3e ; 0x0bd9
    jne short loc_TVJU               ; 0x0bdf
    mov byte [cs:event_channel - IMAGE_BASE], 8 ; 0x0be1
    mov bx, byte_remap_table - IMAGE_BASE ; 0x0be7
    mov al, byte [si]                ; 0x0bea
loc_VHVP:
    cmp al, byte [cs:bx]             ; 0x0bec
    je short loc_PLOS                ; 0x0bef
    add bx, byte 2                   ; 0x0bf1
    cmp word [cs:bx], strict word 0xff ; 0x0bf4
    jne short loc_VHVP               ; 0x0bf9
    lodsw                            ; 0x0bfb
    jmp near loc_MRJU                ; 0x0bfc
loc_PLOS:
    mov al, byte [cs:bx + 1]         ; 0x0bff
    mov byte [si], al                ; 0x0c03
loc_TVJU:
    mov bl, byte [cs:event_command - IMAGE_BASE] ; 0x0c05
    xor bh, bh                       ; 0x0c0a
    mov cl, byte [cs:bx + event_byte_counts - IMAGE_BASE] ; 0x0c0c
    xor ch, ch                       ; 0x0c11
    mov al, byte [cs:event_command - IMAGE_BASE] ; 0x0c13
    shl al, 1                        ; 0x0c17
    shl al, 1                        ; 0x0c19
    shl al, 1                        ; 0x0c1b
    shl al, 1                        ; 0x0c1d
    or al, byte [cs:event_channel - IMAGE_BASE] ; 0x0c1f
    or al, 0x80                      ; 0x0c24
    inc al                           ; 0x0c26
    jmp near loc_VVQV                ; 0x0c28
loc_KHTQ:
    lodsb                            ; 0x0c2b
loc_VVQV:
    call mpu_send_byte               ; 0x0c2c
    loop loc_KHTQ                    ; 0x0c2f
    jmp near loc_MRJU                ; 0x0c31
loc_TSRL:
    mov byte [cs:event_class_flag - IMAGE_BASE], 0 ; 0x0c34
    cmp al, 0xf                      ; 0x0c3a
    ja short loc_SKKG                ; 0x0c3c
    jmp near note_event_low          ; 0x0c3e
loc_SKKG:
    cmp al, 0x1f                     ; 0x0c41
    ja short loc_PVKG                ; 0x0c43
    mov byte [cs:event_class_flag - IMAGE_BASE], 1 ; 0x0c45
    mov byte [cs:note_started - IMAGE_BASE], 0 ; 0x0c4b
    jmp near note_event_high         ; 0x0c51
loc_PVKG:
    cmp al, 0x2f                     ; 0x0c54
    ja short loc_RNHV                ; 0x0c56
    jmp near skip_word_event         ; 0x0c58
loc_RNHV:
    cmp al, 0x4f                     ; 0x0c5b
    ja short loc_HMNR                ; 0x0c5d
    jmp near store_nibble_event      ; 0x0c5f
loc_HMNR:
    cmp al, 0x5f                     ; 0x0c62
    ja short loc_VVGP                ; 0x0c64
    jmp near skip_byte_event         ; 0x0c66
loc_VVGP:
    cmp al, 0x6f                     ; 0x0c69
    ja short loc_STUU                ; 0x0c6b
    jmp near store_word_event        ; 0x0c6d
loc_STUU:
    cmp byte [cs:loop_at_end - IMAGE_BASE], 0 ; 0x0c70
    je short loc_URKP                ; 0x0c76
    mov si, word [cs:stream_start_offset - IMAGE_BASE] ; 0x0c78
    jmp near loc_MRJU                ; 0x0c7d
loc_URKP:
    mov byte [cs:music_enabled - IMAGE_BASE], 0 ; 0x0c80
    cmp byte [cs:timer_handler_installed - IMAGE_BASE], 0 ; 0x0c86
    jne short loc_VVQG               ; 0x0c8c
    jmp near music_stop              ; 0x0c8e
loc_VVQG:
    call restore_timer_handler       ; 0x0c91
    jmp near music_stop              ; 0x0c94
