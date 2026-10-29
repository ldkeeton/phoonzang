; auto-generated
music_tick_exit:
    mov byte [cs:stream_running - IMAGE_BASE], 0 ; 0x0ad9
    cmp byte [cs:play_device - IMAGE_BASE], 1 ; 0x0adf
    jne short loc_RTLK               ; 0x0ae5
    mov dx, 0x388                    ; 0x0ae7
    mov al, 0x40                     ; 0x0aea
    out dx, al                       ; 0x0aec
loc_RTLK:
    pop dx                           ; 0x0aed
    pop es                           ; 0x0aee
    pop si                           ; 0x0aef
    pop cx                           ; 0x0af0
    pop di                           ; 0x0af1
    pop ds                           ; 0x0af2
    pop ax                           ; 0x0af3
    pop bx                           ; 0x0af4
    ret                              ; 0x0af5
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
    je short music_tick_exit         ; 0x0b22
    dec word [cs:restart_delay - IMAGE_BASE] ; 0x0b24
    jne short music_tick_exit        ; 0x0b29
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
    jmp near loc_LSGQ                ; 0x0b9c
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
loc_LSGQ:
    mov bl, byte [cs:event_channel - IMAGE_BASE] ; 0x0bd2
    xor bh, bh                       ; 0x0bd7
    cmp byte [cs:bx + channel_last_byte - IMAGE_BASE], 0x3e ; 0x0bd9
    jne short loc_LMOR               ; 0x0bdf
    mov byte [cs:event_channel - IMAGE_BASE], 8 ; 0x0be1
    mov bx, byte_remap_table - IMAGE_BASE ; 0x0be7
    mov al, byte [si]                ; 0x0bea
loc_VHVP:
    cmp al, byte [cs:bx]             ; 0x0bec
    je short loc_GKVJ                ; 0x0bef
    add bx, byte 2                   ; 0x0bf1
    cmp word [cs:bx], strict word 0xff ; 0x0bf4
    jne short loc_VHVP               ; 0x0bf9
    lodsw                            ; 0x0bfb
    jmp near loc_MRJU                ; 0x0bfc
loc_GKVJ:
    mov al, byte [cs:bx + 1]         ; 0x0bff
    mov byte [si], al                ; 0x0c03
loc_LMOR:
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
    jmp near music_tick_exit         ; 0x0c8e
loc_VVQG:
    call restore_timer_handler       ; 0x0c91
    jmp near music_tick_exit         ; 0x0c94
restore_timer_handler:
    push ax                          ; 0x0c97
    push ds                          ; 0x0c98
    push dx                          ; 0x0c99
    mov al, 0x36                     ; 0x0c9a
    out 0x43, al                     ; 0x0c9c
    call io_delay                    ; 0x0c9e
    mov ax, 0                        ; 0x0ca1
    out 0x40, al                     ; 0x0ca4
    call io_delay                    ; 0x0ca6
    mov al, ah                       ; 0x0ca9
    out 0x40, al                     ; 0x0cab
    mov al, byte [cs:saved_pic_mask - IMAGE_BASE] ; 0x0cad
    out 0x21, al                     ; 0x0cb1
    mov ds, word [cs:saved_int08_segment - IMAGE_BASE] ; 0x0cb3
    mov dx, word [cs:saved_int08_offset - IMAGE_BASE] ; 0x0cb8
    call set_int08_vector            ; 0x0cbd
    mov byte [cs:int08_hooked - IMAGE_BASE], 0 ; 0x0cc0
    pop dx                           ; 0x0cc6
    pop ds                           ; 0x0cc7
    pop ax                           ; 0x0cc8
    ret                              ; 0x0cc9
music_loop_event:
    lodsw                            ; 0x0cca
    cmp ax, strict word 0            ; 0x0ccb
    jne short .forward1              ; 0x0cce
    jmp near loc_MRJU                ; 0x0cd0
.forward1:
    mov word [cs:restart_delay - IMAGE_BASE], ax ; 0x0cd3
    mov word [cs:stream_offset - IMAGE_BASE], si ; 0x0cd7
    jmp near music_tick_exit         ; 0x0cdc
channel_patch_index:

    db 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff

special_note_effect_map:
    db 0x56, 0x06, 0x59, 0x06, 0x24, 0x06, 0x2d, 0x07, 0x32, 0x08, 0x39, 0x0a, 0x3b, 0x09, 0xff
special_note_filter_values:
    db 0x07, 0xff, 0xff, 0x03, 0x0e
opl_voice_records:

    times 55 db 0

opl_voice_count:
    db 0x08
event_channel_index:
    db 0x00
opl_note_semitone:
    db 0x00
channel_patch_value:
    db 0x00
opl_note_index:
    db 0x00
opl_note_velocity:
    db 0x00
opl_channel_index:
    db 0x00
opl_pitch_value:
    db 0x00, 0x20
opl_pitch_range:
    db 0x00, 0x00
special_note_flag:
    db 0x00
special_note_effect:
    db 0x00
special_note_match:
    db 0x00
opl_operator_count:
    db 0x00
opl_operator_slot_0:
    db 0x00
opl_operator_slot_1:
    db 0x00
opl_operator_slot_2:
    db 0x00
opl_operator_slot_3:
    db 0x00
opl_voice_candidate:
    db 0x00
opl_voice_record_ptr:
    db 0x00, 0x00
string_loc_PUTK:
    push ax                          ; 0x0d50
    push bx                          ; 0x0d51
    push cx                          ; 0x0d52
    push es                          ; 0x0d53
    push si                          ; 0x0d54
    and al, 0xf                      ; 0x0d55
    mov byte [cs:event_channel_index - IMAGE_BASE], al ; 0x0d57
    mov bx, channel_patch_index - IMAGE_BASE ; 0x0d5b
    cs xlatb                         ; 0x0d5e
    mov byte [cs:channel_patch_value - IMAGE_BASE], al ; 0x0d60
    mov byte [cs:special_note_match - IMAGE_BASE], 0xff ; 0x0d64
    mov bx, special_note_filter_values - IMAGE_BASE ; 0x0d6a
.back1:
    inc bx                           ; 0x0d6d
    cmp word [cs:bx], strict word 0xff ; 0x0d6e
    je short .forward1               ; 0x0d73
    cmp al, byte [cs:bx]             ; 0x0d75
    jne short .back1                 ; 0x0d78
    mov byte [cs:special_note_match - IMAGE_BASE], 0 ; 0x0d7a
.forward1:
    mov byte [cs:opl_operator_count - IMAGE_BASE], 1 ; 0x0d80
    mov al, byte [cs:channel_patch_value - IMAGE_BASE] ; 0x0d86
    shl al, 1                        ; 0x0d8a
    shl al, 1                        ; 0x0d8c
    mov byte [cs:opl_operator_slot_0 - IMAGE_BASE], al ; 0x0d8e
    inc al                           ; 0x0d92
    mov byte [cs:opl_operator_slot_1 - IMAGE_BASE], al ; 0x0d94
    inc al                           ; 0x0d98
    mov byte [cs:opl_operator_slot_2 - IMAGE_BASE], al ; 0x0d9a
    inc al                           ; 0x0d9e
    mov byte [cs:opl_operator_slot_3 - IMAGE_BASE], al ; 0x0da0
    inc al                           ; 0x0da4
    pop si                           ; 0x0da6
    lodsw                            ; 0x0da7
    cmp byte [cs:play_device - IMAGE_BASE], 5 ; 0x0da8
    je short .forward2               ; 0x0dae
    sub al, 0xc                      ; 0x0db0
.forward2:
    mov byte [cs:opl_note_semitone - IMAGE_BASE], al ; 0x0db2
    mov al, ah                       ; 0x0db6
    cmp byte [cs:play_device - IMAGE_BASE], 5 ; 0x0db8
    je short .forward3               ; 0x0dbe
    shr al, 1                        ; 0x0dc0
    shr al, 1                        ; 0x0dc2
    add al, 0x60                     ; 0x0dc4
.forward3:
    mov byte [cs:opl_note_velocity - IMAGE_BASE], al ; 0x0dc6
    mov byte [cs:special_note_flag - IMAGE_BASE], 0 ; 0x0dca
    mov ah, byte [cs:channel_patch_value - IMAGE_BASE] ; 0x0dd0
    cmp ah, 0x3e                     ; 0x0dd5
    jne short .forward5              ; 0x0dd8
    mov bx, special_note_effect_map - IMAGE_BASE ; 0x0dda
.back2:
    cmp word [cs:bx], strict word 0xff ; 0x0ddd
    je short .forward4               ; 0x0de2
    cmp byte [cs:bx], al             ; 0x0de4
    je short .forward4               ; 0x0de7
    add bx, byte 2                   ; 0x0de9
    jmp short .back2                 ; 0x0dec
.forward4:
    mov byte [cs:special_note_flag - IMAGE_BASE], 1 ; 0x0dee
    mov al, byte [cs:bx + 1]         ; 0x0df4
    mov byte [cs:special_note_effect - IMAGE_BASE], al ; 0x0df8
.forward5:
    pop es                           ; 0x0dfc
    pop cx                           ; 0x0dfd
    pop bx                           ; 0x0dfe
    pop ax                           ; 0x0dff
    ret                              ; 0x0e00
store_nibble_event:
    mov bx, channel_patch_index - IMAGE_BASE ; 0x0e01
    and al, 0xf                      ; 0x0e04
    xor ah, ah                       ; 0x0e06
    add bx, ax                       ; 0x0e08
    lodsb                            ; 0x0e0a
    mov byte [cs:bx], al             ; 0x0e0b
    jmp near loc_MRJU                ; 0x0e0e
skip_byte_event:
    lodsb                            ; 0x0e11
    jmp near loc_MRJU                ; 0x0e12
store_word_event:
    lodsw                            ; 0x0e15
    mov word [cs:opl_pitch_value - IMAGE_BASE], ax ; 0x0e16
    jmp near loc_MRJU                ; 0x0e1a
skip_word_event:
    lodsw                            ; 0x0e1d
    jmp near loc_MRJU                ; 0x0e1e
event_dispatch_padding:
    db 0x00, 0x00, 0x00
note_event_high:
    call string_loc_PUTK             ; 0x0e24
    cmp byte [cs:channel_patch_value - IMAGE_BASE], 0xff ; 0x0e27
    jne short .forward1              ; 0x0e2d
    jmp near loc_MRJU                ; 0x0e2f
.forward1:
    cmp byte [cs:opl_note_velocity - IMAGE_BASE], 0 ; 0x0e32
    jne short .forward2              ; 0x0e38
    jmp near loc_JSJL                ; 0x0e3a
.forward2:
    cmp byte [cs:special_note_flag - IMAGE_BASE], 0 ; 0x0e3d
    jne short .forward3              ; 0x0e43
    jmp near loc_LPMH                ; 0x0e45
.forward3:
    cmp byte [cs:music_device - IMAGE_BASE], 1 ; 0x0e48
    jmp near loc_LPMH                ; 0x0e4e
string_loc_MNKP:
    mov al, byte [cs:opl_note_velocity - IMAGE_BASE] ; 0x0e51
    xor ah, ah                       ; 0x0e55
    mov bx, opl_velocity_scale_table - IMAGE_BASE ; 0x0e57
    mov cl, byte [cs:playback_volume - IMAGE_BASE] ; 0x0e5a
    mul cl                           ; 0x0e5f
    mov al, ah                       ; 0x0e61
    mov cl, 0x3f                     ; 0x0e63
    sub cl, al                       ; 0x0e65
    mov ah, byte [cs:special_note_effect - IMAGE_BASE] ; 0x0e67
    mov al, byte [cs:opl_rhythm_register_shadow - IMAGE_BASE] ; 0x0e6c
    cmp ah, 6                        ; 0x0e70
    je short .forward4               ; 0x0e73
    cmp ah, 7                        ; 0x0e75
    je short .forward5               ; 0x0e78
    cmp ah, 8                        ; 0x0e7a
    jne short .forward1              ; 0x0e7d
    jmp near .forward6               ; 0x0e7f
.forward1:
    cmp ah, 9                        ; 0x0e82
    jne short .forward2              ; 0x0e85
    jmp near .forward7               ; 0x0e87
.forward2:
    cmp ah, 0xa                      ; 0x0e8a
    je short .forward3               ; 0x0e8d
    jmp near loc_LPMH                ; 0x0e8f
.forward3:
    mov ah, 0x11                     ; 0x0e92
    call loc_MVUI                    ; 0x0e94
    or al, 1                         ; 0x0e97
    mov ah, 0xbd                     ; 0x0e99
    call opl_write                   ; 0x0e9b
    jmp near loc_MRJU                ; 0x0e9e
.forward4:
    mov byte [cs:opl_key_on_bit - IMAGE_BASE], 0 ; 0x0ea1
    mov byte [cs:opl_note_semitone - IMAGE_BASE], 0x28 ; 0x0ea7
    mov byte [cs:opl_channel_index - IMAGE_BASE], 5 ; 0x0ead
    mov byte [cs:opl_key_on_bit - IMAGE_BASE], 0 ; 0x0eb3
    call opl_pitch_update            ; 0x0eb9
    mov ah, 0x10                     ; 0x0ebc
    call loc_MVUI                    ; 0x0ebe
    mov ah, 0x13                     ; 0x0ec1
    call loc_MVUI                    ; 0x0ec3
    or al, 0x10                      ; 0x0ec6
    mov ah, 0xbd                     ; 0x0ec8
    call opl_write                   ; 0x0eca
    jmp near loc_MRJU                ; 0x0ecd
.forward5:
    mov ah, 0x14                     ; 0x0ed0
    call loc_MVUI                    ; 0x0ed2
    or al, 8                         ; 0x0ed5
    mov ah, 0xbd                     ; 0x0ed7
    call opl_write                   ; 0x0ed9
    jmp near loc_MRJU                ; 0x0edc
.forward6:
    mov ah, 0x12                     ; 0x0edf
    mov byte [cs:opl_note_semitone - IMAGE_BASE], 1 ; 0x0ee1
    mov byte [cs:opl_key_on_bit - IMAGE_BASE], 0 ; 0x0ee7
    mov byte [cs:opl_channel_index - IMAGE_BASE], 7 ; 0x0eed
    call opl_pitch_update            ; 0x0ef3
    call loc_MVUI                    ; 0x0ef6
    or al, 4                         ; 0x0ef9
    mov ah, 0xbd                     ; 0x0efb
    call opl_write                   ; 0x0efd
    jmp near loc_MRJU                ; 0x0f00
.forward7:
    mov ah, 0x15                     ; 0x0f03
    call loc_MVUI                    ; 0x0f05
    or al, 2                         ; 0x0f08
    mov ah, 0xbd                     ; 0x0f0a
    call opl_write                   ; 0x0f0c
    jmp near loc_MRJU                ; 0x0f0f
loc_MVUI:
    push ax                          ; 0x0f12
    push bx                          ; 0x0f13
    add ah, 0x40                     ; 0x0f14
    mov al, ch                       ; 0x0f17
    mov bx, opl_register_shadow - IMAGE_BASE ; 0x0f19
    cs xlatb                         ; 0x0f1c
    and al, 0xc0                     ; 0x0f1e
    or al, cl                        ; 0x0f20
    call opl_write                   ; 0x0f22
    pop bx                           ; 0x0f25
    pop ax                           ; 0x0f26
    ret                              ; 0x0f27
loc_LPMH:
    push si                          ; 0x0f28
    push dx                          ; 0x0f29
    mov bx, opl_voice_records - IMAGE_BASE ; 0x0f2a
loc_GNSL:
    inc word [cs:bx + 3]             ; 0x0f2d
    add bx, byte 5                   ; 0x0f31
    cmp bx, opl_voice_count - IMAGE_BASE ; 0x0f34
    jb short loc_GNSL                ; 0x0f38
    mov cl, byte [cs:opl_operator_count - IMAGE_BASE] ; 0x0f3a
    xor ch, ch                       ; 0x0f3f
    mov si, opl_operator_slot_0 - IMAGE_BASE ; 0x0f41
loc_NPTG:
    mov ah, byte [cs:si]             ; 0x0f44
    mov byte [cs:opl_note_index - IMAGE_BASE], ah ; 0x0f47
    cmp byte [cs:special_note_match - IMAGE_BASE], 0 ; 0x0f4c
    jmp near loc_GLKJ                ; 0x0f52
loc_IOMM:
    mov bx, opl_voice_records - IMAGE_BASE ; 0x0f55
    mov al, byte [cs:opl_note_index - IMAGE_BASE] ; 0x0f58
.back1:
    cmp al, byte [cs:bx + 2]         ; 0x0f5c
    jne short .forward1              ; 0x0f60
    jmp near loc_LPPM                ; 0x0f62
.forward1:
    inc al                           ; 0x0f65
    add bx, byte 5                   ; 0x0f67
    cmp bx, opl_voice_count - IMAGE_BASE ; 0x0f6a
    jb short .back1                  ; 0x0f6e
    jmp near loc_NGKV                ; 0x0f70
loc_GLKJ:
    mov bx, opl_voice_records - IMAGE_BASE ; 0x0f73
    mov dx, 0                        ; 0x0f76
    mov byte [cs:opl_voice_candidate - IMAGE_BASE], 0xff ; 0x0f79
    xor al, al                       ; 0x0f7f
loc_QRJR:
    cmp byte [cs:bx], 0              ; 0x0f81
    jne short loc_KRQV               ; 0x0f85
    cmp dx, word [cs:bx + 3]         ; 0x0f87
    ja short loc_KRQV                ; 0x0f8b
    mov dx, word [cs:bx + 3]         ; 0x0f8d
    mov byte [cs:opl_voice_candidate - IMAGE_BASE], al ; 0x0f91
    mov word [cs:opl_voice_record_ptr - IMAGE_BASE], bx ; 0x0f95
loc_KRQV:
    add bx, byte 5                   ; 0x0f9a
    inc al                           ; 0x0f9d
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x0f9f
    jb short loc_QRJR                ; 0x0fa4
    mov al, byte [cs:opl_voice_candidate - IMAGE_BASE] ; 0x0fa6
    cmp al, 0xff                     ; 0x0faa
    je short loc_VJMI                ; 0x0fac
    mov bx, word [cs:opl_voice_record_ptr - IMAGE_BASE] ; 0x0fae
    jmp near loc_PUST                ; 0x0fb3
loc_VJMI:
    mov bx, opl_voice_records - IMAGE_BASE ; 0x0fb6
    xor al, al                       ; 0x0fb9
    mov dx, 0                        ; 0x0fbb
    mov word [cs:opl_voice_record_ptr - IMAGE_BASE], bx ; 0x0fbe
    mov ah, byte [cs:opl_note_index - IMAGE_BASE] ; 0x0fc3
    mov byte [cs:opl_voice_candidate - IMAGE_BASE], 0xff ; 0x0fc8
loc_OGRU:
    cmp ah, byte [cs:bx + 2]         ; 0x0fce
    jne short loc_LGMV               ; 0x0fd2
    cmp dx, word [cs:bx + 3]         ; 0x0fd4
    ja short loc_LGMV                ; 0x0fd8
    mov dx, word [cs:bx + 3]         ; 0x0fda
    mov byte [cs:opl_voice_candidate - IMAGE_BASE], al ; 0x0fde
    mov word [cs:opl_voice_record_ptr - IMAGE_BASE], bx ; 0x0fe2
loc_LGMV:
    add bx, byte 5                   ; 0x0fe7
    inc al                           ; 0x0fea
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x0fec
    jb short loc_OGRU                ; 0x0ff1
    mov bx, word [cs:opl_voice_record_ptr - IMAGE_BASE] ; 0x0ff3
    mov al, byte [cs:opl_voice_candidate - IMAGE_BASE] ; 0x0ff8
    cmp al, 0xff                     ; 0x0ffc
    jne short loc_LPPM               ; 0x0ffe
loc_NGKV:
    mov bx, opl_voice_records - IMAGE_BASE ; 0x1000
    xor al, al                       ; 0x1003
    mov dx, 0                        ; 0x1005
    mov byte [cs:opl_voice_candidate - IMAGE_BASE], al ; 0x1008
    mov word [cs:opl_voice_record_ptr - IMAGE_BASE], bx ; 0x100c
    mov ah, byte [cs:opl_note_index - IMAGE_BASE] ; 0x1011
loc_TRTS:
    cmp dx, word [cs:bx + 3]         ; 0x1016
    ja short loc_JHLQ                ; 0x101a
    mov dx, word [cs:bx + 3]         ; 0x101c
    mov byte [cs:opl_voice_candidate - IMAGE_BASE], al ; 0x1020
    mov word [cs:opl_voice_record_ptr - IMAGE_BASE], bx ; 0x1024
loc_JHLQ:
    add bx, byte 5                   ; 0x1029
    inc al                           ; 0x102c
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x102e
    jb short loc_TRTS                ; 0x1033
    mov bx, word [cs:opl_voice_record_ptr - IMAGE_BASE] ; 0x1035
    mov al, byte [cs:opl_voice_candidate - IMAGE_BASE] ; 0x103a
loc_PUST:
    mov byte [cs:opl_channel_index - IMAGE_BASE], al ; 0x103e
    mov al, byte [cs:bx + 2]         ; 0x1042
    cmp al, byte [cs:opl_note_index - IMAGE_BASE] ; 0x1046
    je short loc_LPPM                ; 0x104b
    call device_load_patch           ; 0x104d
loc_LPPM:
    mov al, byte [cs:opl_note_velocity - IMAGE_BASE] ; 0x1050
    mov byte [cs:bx], al             ; 0x1054
    mov word [cs:bx + 3], 0          ; 0x1057
    mov al, byte [cs:opl_note_semitone - IMAGE_BASE] ; 0x105d
    mov byte [cs:bx + 1], al         ; 0x1061
    mov al, byte [cs:si]             ; 0x1065
    mov byte [cs:bx + 2], al         ; 0x1068
    call device_note_on              ; 0x106c
    mov byte [cs:note_started - IMAGE_BASE], 1 ; 0x106f
    inc si                           ; 0x1075
    dec cx                           ; 0x1076
    je short loc_RUON                ; 0x1077
    jmp near loc_NPTG                ; 0x1079
loc_RUON:
    pop dx                           ; 0x107c
    pop si                           ; 0x107d
    jmp near loc_MRJU                ; 0x107e
note_event_low:
    call string_loc_PUTK             ; 0x1081
    cmp byte [cs:channel_patch_value - IMAGE_BASE], 0xff ; 0x1084
    jne short loc_JSJL               ; 0x108a
    jmp near loc_MRJU                ; 0x108c
loc_JSJL:
    cmp byte [cs:special_note_flag - IMAGE_BASE], 0 ; 0x108f
    jne short loc_POIP               ; 0x1095
    jmp near loc_RMHU                ; 0x1097
loc_POIP:
    mov al, byte [cs:music_device - IMAGE_BASE] ; 0x109a
    cmp al, 1                        ; 0x109e
    jmp near loc_RMHU                ; 0x10a0
    mov ah, byte [cs:special_note_effect - IMAGE_BASE] ; 0x10a3
    mov al, byte [cs:opl_rhythm_register_shadow - IMAGE_BASE] ; 0x10a8
    cmp ah, 6                        ; 0x10ac
    je short loc_10a3.forward1       ; 0x10af
    cmp ah, 7                        ; 0x10b1
    je short loc_10a3.forward2       ; 0x10b4
    cmp ah, 8                        ; 0x10b6
    je short loc_10a3.forward3       ; 0x10b9
    cmp ah, 9                        ; 0x10bb
    je short loc_10a3.forward4       ; 0x10be
    cmp ah, 0xa                      ; 0x10c0
    jne short loc_RMHU               ; 0x10c3
    and al, 0xfe                     ; 0x10c5
    mov ah, 0xbd                     ; 0x10c7
    call opl_write                   ; 0x10c9
    jmp near loc_MRJU                ; 0x10cc
loc_10a3.forward1:
    and al, 0xef                     ; 0x10cf
    mov ah, 0xbd                     ; 0x10d1
    call opl_write                   ; 0x10d3
    jmp near loc_MRJU                ; 0x10d6
loc_10a3.forward2:
    and al, 0xf7                     ; 0x10d9
    mov ah, 0xbd                     ; 0x10db
    call opl_write                   ; 0x10dd
    jmp near loc_MRJU                ; 0x10e0
loc_10a3.forward3:
    and al, 0xfb                     ; 0x10e3
    mov ah, 0xbd                     ; 0x10e5
    call opl_write                   ; 0x10e7
    jmp near loc_MRJU                ; 0x10ea
loc_10a3.forward4:
    and al, 0xfd                     ; 0x10ed
    mov ah, 0xbd                     ; 0x10ef
    call opl_write                   ; 0x10f1
    jmp near loc_MRJU                ; 0x10f4
loc_RMHU:
    push si                          ; 0x10f7
    mov si, opl_operator_slot_0 - IMAGE_BASE ; 0x10f8
    mov cl, byte [cs:opl_operator_count - IMAGE_BASE] ; 0x10fb
    xor ch, ch                       ; 0x1100
loc_GJLP:
    mov bx, opl_voice_records - IMAGE_BASE ; 0x1102
    mov ah, byte [cs:opl_note_semitone - IMAGE_BASE] ; 0x1105
    mov dh, byte [cs:si]             ; 0x110a
    mov dl, byte [cs:opl_note_velocity - IMAGE_BASE] ; 0x110d
    xor al, al                       ; 0x1112
loc_VJUR:
    cmp byte [cs:bx], 0              ; 0x1114
    je short loc_PLOU                ; 0x1118
    cmp byte [cs:bx + 1], ah         ; 0x111a
    jne short loc_PLOU               ; 0x111e
    cmp byte [cs:bx + 2], dh         ; 0x1120
    jne short loc_PLOU               ; 0x1124
    mov byte [cs:bx], 0              ; 0x1126
    mov word [cs:bx + 3], 0          ; 0x112a
    mov byte [cs:opl_channel_index - IMAGE_BASE], al ; 0x1130
    call device_note_off             ; 0x1134
loc_PLOU:
    inc al                           ; 0x1137
    add bx, byte 5                   ; 0x1139
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x113c
    jb short loc_VJUR                ; 0x1141
    inc si                           ; 0x1143
    loop loc_GJLP                    ; 0x1144
    pop si                           ; 0x1146
    jmp near loc_MRJU                ; 0x1147
    push bx                          ; 0x114a
    mov bl, byte [cs:music_device - IMAGE_BASE] ; 0x114b
    xor bh, bh                       ; 0x1150
    shl bx, 1                        ; 0x1152
    call [cs:bx + jumptable_115b - IMAGE_BASE] ; 0x1154
    pop bx                           ; 0x1159
    ret                              ; 0x115a
jumptable_115b:
    dw device_nop - IMAGE_BASE                 ; 0x115b
    dw opl_apply_volume - IMAGE_BASE           ; 0x115d
    dw device_nop - IMAGE_BASE                 ; 0x115f
    dw device_nop - IMAGE_BASE                 ; 0x1161
    dw opl_apply_volume - IMAGE_BASE           ; 0x1163
    dw device_nop - IMAGE_BASE                 ; 0x1165
