; auto-generated
score_music_enabled:
    mov ax, 0                        ; 0x2bed
    call aztec_csav                  ; 0x2bf0
    cmp byte [video_mode], 1         ; 0x2bf3
    je short .forward1               ; 0x2bf8
    cmp byte [video_mode], 3         ; 0x2bfa
    jbe short .forward2              ; 0x2bff
.forward1:
    cmp byte [music_volume], 0       ; 0x2c01
    jbe short .forward2              ; 0x2c06
    mov ax, 1                        ; 0x2c08
    jmp short .return1               ; 0x2c0b
.forward2:
    mov ax, 0                        ; 0x2c0d
.return1:
    ret                              ; 0x2c10
