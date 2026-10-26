; auto-generated
leaf_loc_IUKK:
    push bp                          ; 0x0183
    mov bp, sp                       ; 0x0184
    cmp word [bp + 8], byte 0        ; 0x0186
    je short .forward1               ; 0x018a
.back1:
    cmp byte [cs:timer_handler_installed - IMAGE_BASE], 0 ; 0x018c
    je short .back1                  ; 0x0192
.back2:
    cmp byte [cs:music_enabled - IMAGE_BASE], 0 ; 0x0194
    jne short .back2                 ; 0x019a
    pop bp                           ; 0x019c
    ret                              ; 0x019d
.forward1:
    cmp byte [cs:play_device - IMAGE_BASE], 0 ; 0x019e
    jne short .forward2              ; 0x01a4
.back3:
    cmp byte [cs:timer_handler_installed - IMAGE_BASE], 0 ; 0x01a6
    je short .back3                  ; 0x01ac
.forward2:
    pop bp                           ; 0x01ae
    ret                              ; 0x01af
