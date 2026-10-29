; auto-generated
loc_NRTK:
    mov ax, 0                        ; 0x3a6a
    call aztec_csav                  ; 0x3a6d
    mov ax, 0xbb                     ; 0x3a70
    push ax                          ; 0x3a73
    mov ax, 0xab                     ; 0x3a74
    push ax                          ; 0x3a77
    mov ax, 0x70                     ; 0x3a78
    push ax                          ; 0x3a7b
    mov ax, 1                        ; 0x3a7c
    push ax                          ; 0x3a7f
    call call_show_area              ; 0x3a80
    add sp, byte 8                   ; 0x3a83
    call flush_keyboard              ; 0x3a86
.back1:
    call poll_fullscreen_hotspot     ; 0x3a89
    test ax, ax                      ; 0x3a8c
    jne short .forward1              ; 0x3a8e
    jmp short .back1                 ; 0x3a90
.forward1:
    mov ax, 0                        ; 0x3a92
    push ax                          ; 0x3a95
    push ax                          ; 0x3a96
    push word [roster_screen_a]      ; 0x3a97
    push word [roster_screen_b]      ; 0x3a9b
    call call_restore_screen         ; 0x3a9f
    add sp, byte 8                   ; 0x3aa2
    mov word [bss_9566], 0           ; 0x3aa5
    ret                              ; 0x3aab
