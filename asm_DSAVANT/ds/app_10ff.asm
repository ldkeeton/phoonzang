app_10ff: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x10ff
    call aztec_csav                  ; 0x1102
    push word [bp + 0xa]             ; 0x1105
    push word [bp + 0x8]             ; 0x1108
    push word [bp + 0x6]             ; 0x110b
    push word [bp + 0x4]             ; 0x110e
    call loc_3b55                    ; 0x1111
    add sp, byte 8                   ; 0x1114
    push word [bp + 0xa]             ; 0x1117
    push word [bp + 0x8]             ; 0x111a
    push word [bp + 0x6]             ; 0x111d
    push word [bp + 0x4]             ; 0x1120
    call loc_3b21                    ; 0x1123
    add sp, byte 8                   ; 0x1126
    cmp word [bp + 0xc], byte 0      ; 0x1129
    je short @..app_10ff.l1          ; 0x112d
    mov ax, 0x23                     ; 0x112f
    push ax                          ; 0x1132
    call leaf_loc_36d0               ; 0x1133
    pop cx                           ; 0x1136
@..app_10ff.l1:
    ret                              ; 0x1137
