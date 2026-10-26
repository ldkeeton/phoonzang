; auto-generated
sound_stop_and_restore_timer:
    push dx                          ; 0x09d4
    in al, 0x61                      ; 0x09d5
    and al, 0xfe                     ; 0x09d7
    out 0x61, al                     ; 0x09d9
    mov byte [cs:timer_handler_installed - IMAGE_BASE], 0xff ; 0x09db
    mov ax, word [cs:music_tempo - IMAGE_BASE] ; 0x09e1
    mov bl, 0x48                     ; 0x09e5
    mul bl                           ; 0x09e7
    mov bx, ax                       ; 0x09e9
    mov ax, cs                       ; 0x09eb
    mov ds, ax                       ; 0x09ed
    mov dx, 0xbb4                    ; 0x09ef
    cmp byte [cs:music_enabled - IMAGE_BASE], 0 ; 0x09f2
    jne short .forward1              ; 0x09f8
    mov al, byte [cs:saved_pic_mask - IMAGE_BASE] ; 0x09fa
    out 0x21, al                     ; 0x09fe
    mov bx, 0                        ; 0x0a00
    mov ds, word [cs:cseg_0b12 - IMAGE_BASE] ; 0x0a03
    mov dx, word [cs:cseg_0b10 - IMAGE_BASE] ; 0x0a08
    mov byte [cs:cseg_0321 - IMAGE_BASE], 0 ; 0x0a0d
.forward1:
    call string_loc_OJPI             ; 0x0a13
    mov al, 0x36                     ; 0x0a16
    out 0x43, al                     ; 0x0a18
    call leaf_loc_STGJ               ; 0x0a1a
    mov ax, bx                       ; 0x0a1d
    out 0x40, al                     ; 0x0a1f
    call leaf_loc_STGJ               ; 0x0a21
    mov al, ah                       ; 0x0a24
    out 0x40, al                     ; 0x0a26
    pop dx                           ; 0x0a28
    ret                              ; 0x0a29
