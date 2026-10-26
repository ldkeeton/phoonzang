; auto-generated
api_idx_0004_VQUG:
    mov ax, 0xfffc                   ; 0x0e03
    call aztec_csav                  ; 0x0e06
    mov word [bp - 2], 0             ; 0x0e09
    mov word [bp - 4], 0             ; 0x0e0e
    cmp word [bp + 4], byte 0        ; 0x0e13
    jle short .forward1              ; 0x0e17
    mov ax, dseg_90a2                ; 0x0e19
    push ax                          ; 0x0e1c
    mov ax, 7                        ; 0x0e1d
    imul word [bp + 4]               ; 0x0e20
    add ax, 0x9b                     ; 0x0e23
    push ax                          ; 0x0e26
    mov ax, 0x127                    ; 0x0e27
    push ax                          ; 0x0e2a
    mov ax, 0x9c                     ; 0x0e2b
    push ax                          ; 0x0e2e
    mov ax, 0x19                     ; 0x0e2f
    push ax                          ; 0x0e32
    call save_screen_area            ; 0x0e33
    add sp, byte 0xa                 ; 0x0e36
    mov word [bp - 2], ax            ; 0x0e39
.forward1:
    cmp word [bp + 6], byte 4        ; 0x0e3c
    jge short .forward2              ; 0x0e40
    mov ax, dseg_90a9                ; 0x0e42
    push ax                          ; 0x0e45
    mov ax, 0xc4                     ; 0x0e46
    push ax                          ; 0x0e49
    mov ax, 0x127                    ; 0x0e4a
    push ax                          ; 0x0e4d
    mov ax, 7                        ; 0x0e4e
    imul word [bp + 6]               ; 0x0e51
    add ax, 0xa2                     ; 0x0e54
    push ax                          ; 0x0e57
    mov ax, 0x19                     ; 0x0e58
    push ax                          ; 0x0e5b
    call save_screen_area            ; 0x0e5c
    add sp, byte 0xa                 ; 0x0e5f
    mov word [bp - 4], ax            ; 0x0e62
.forward2:
    mov ax, 0                        ; 0x0e65
    push ax                          ; 0x0e68
    call redraw_treasure_caption     ; 0x0e69
    pop cx                           ; 0x0e6c
    cmp word [bp - 4], byte 0        ; 0x0e6d
    je short .forward3               ; 0x0e71
    mov ax, 1                        ; 0x0e73
    push ax                          ; 0x0e76
    push word [bp - 4]               ; 0x0e77
    call restore_saved_screen        ; 0x0e7a
    add sp, byte 4                   ; 0x0e7d
.forward3:
    cmp word [bp - 2], byte 0        ; 0x0e80
    je short .forward4               ; 0x0e84
    mov ax, 1                        ; 0x0e86
    push ax                          ; 0x0e89
    push word [bp - 2]               ; 0x0e8a
    call restore_saved_screen        ; 0x0e8d
    add sp, byte 4                   ; 0x0e90
.forward4:
    mov ax, 0xc2                     ; 0x0e93
    push ax                          ; 0x0e96
    mov ax, 0x127                    ; 0x0e97
    push ax                          ; 0x0e9a
    mov ax, 0x92                     ; 0x0e9b
    push ax                          ; 0x0e9e
    mov ax, 0x19                     ; 0x0e9f
    push ax                          ; 0x0ea2
    call gfx_show_area               ; 0x0ea3
    add sp, byte 8                   ; 0x0ea6
    mov ax, 1                        ; 0x0ea9
    push ax                          ; 0x0eac
    call api_idx_0004_UQUT           ; 0x0ead
    pop cx                           ; 0x0eb0
    ret                              ; 0x0eb1
