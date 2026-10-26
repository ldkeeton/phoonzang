; auto-generated
loc_RRRG:
    mov ax, 0                        ; 0x017f
    call aztec_csav                  ; 0x0182
    call loc_OGHL                    ; 0x0185
    cmp word [bp + 4], byte 0        ; 0x0188
    je short @..loc_RRRG.l1          ; 0x018c
    mov ax, 1                        ; 0x018e
    push ax                          ; 0x0191
    mov ax, 0xe                      ; 0x0192
    push ax                          ; 0x0195
    push word [bp + 4]               ; 0x0196
    call load_sound_file             ; 0x0199
    add sp, byte 6                   ; 0x019c
    mov ax, word [bp + 4]            ; 0x019f
    mov word [bss_9194], ax          ; 0x01a2
@..loc_RRRG.l1:
    cmp word [bp + 6], byte 0        ; 0x01a5
    je short @..loc_RRRG.l2          ; 0x01a9
    mov ax, 1                        ; 0x01ab
    push ax                          ; 0x01ae
    mov ax, 0xf                      ; 0x01af
    push ax                          ; 0x01b2
    push word [bp + 6]               ; 0x01b3
    call load_sound_file             ; 0x01b6
    add sp, byte 6                   ; 0x01b9
    mov ax, word [bp + 6]            ; 0x01bc
    mov word [bss_9196], ax          ; 0x01bf
@..loc_RRRG.l2:
    mov word [bss_9198], 0           ; 0x01c2
    ret                              ; 0x01c8
