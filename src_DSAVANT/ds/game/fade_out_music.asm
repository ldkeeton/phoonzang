; auto-generated
fade_out_music:
    mov ax, 0                        ; 0x2b62
    call aztec_csav                  ; 0x2b65
    call gfx_is_music_playing        ; 0x2b68
    test ax, ax                      ; 0x2b6b
    je short .return1                ; 0x2b6d
.back1:
    cmp word [bp + 6], byte 0        ; 0x2b6f
    jle short .forward1              ; 0x2b73
    call gfx_is_music_playing        ; 0x2b75
    test ax, ax                      ; 0x2b78
    je short .forward1               ; 0x2b7a
    push word [bp + 6]               ; 0x2b7c
    mov ax, 0                        ; 0x2b7f
    push ax                          ; 0x2b82
    mov ax, word [bp + 6]            ; 0x2b83
    add ax, strict word 0xfff6       ; 0x2b86
    push ax                          ; 0x2b89
    call clamp_between               ; 0x2b8a
    add sp, byte 6                   ; 0x2b8d
    mov word [bp + 6], ax            ; 0x2b90
    push ax                          ; 0x2b93
    push word [bp + 4]               ; 0x2b94
    call gfx_set_music_tempo_volume  ; 0x2b97
    add sp, byte 4                   ; 0x2b9a
    mov ax, 0x19                     ; 0x2b9d
    push ax                          ; 0x2ba0
    call delay_ms                    ; 0x2ba1
    pop cx                           ; 0x2ba4
    jmp short .back1                 ; 0x2ba5
.forward1:
    call gfx_stop_music              ; 0x2ba7
.return1:
    ret                              ; 0x2baa
