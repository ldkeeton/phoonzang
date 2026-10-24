; auto-generated
score_music_enabled: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x2bed
    call aztec_csav                  ; 0x2bf0
    cmp byte [video_mode], 1         ; 0x2bf3
    je short @..score_music_enabled.l1 ; 0x2bf8
    cmp byte [video_mode], 3         ; 0x2bfa
    jbe short @..score_music_enabled.l2 ; 0x2bff
@..score_music_enabled.l1:
    cmp byte [music_volume], 0       ; 0x2c01
    jbe short @..score_music_enabled.l2 ; 0x2c06
    mov ax, 1                        ; 0x2c08
    jmp short @..score_music_enabled.l3 ; 0x2c0b
@..score_music_enabled.l2:
    mov ax, 0                        ; 0x2c0d
@..score_music_enabled.l3:
    ret                              ; 0x2c10
