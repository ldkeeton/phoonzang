api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x10c9
    call ds_aztec_csav               ; 0x10cc
    push word [bp + 0xa]             ; 0x10cf
    push word [bp + 0x8]             ; 0x10d2
    push word [bp + 0x6]             ; 0x10d5
    push word [bp + 0x4]             ; 0x10d8
    call ds_loc_3b6f                 ; 0x10db
    add sp, byte 8                   ; 0x10de
    mov word [bp - 0x0002], dx       ; 0x10e1
    mov word [bp - 0x0004], ax       ; 0x10e4
    cmp word [bp + 0x14], byte 0xff  ; 0x10e7
    je short @..api_idx_0004_3.l1    ; 0x10eb
    push word [bp + 0x14]            ; 0x10ed
    push word [bp + 0xa]             ; 0x10f0
    push word [bp + 0x8]             ; 0x10f3
    push word [bp + 0x6]             ; 0x10f6
    push word [bp + 0x4]             ; 0x10f9
    call ds_loc_3b48                 ; 0x10fc
    add sp, byte 0x0a                ; 0x10ff
@..api_idx_0004_3.l1:
    push word [bp + 0x12]            ; 0x1102
    push word [bp + 0x10]            ; 0x1105
    call ds_loc_3a6a                 ; 0x1108
    add sp, byte 4                   ; 0x110b
    push word [bp + 0xe]             ; 0x110e
    push word [bp + 0xc]             ; 0x1111
    call ds_loc_3a50                 ; 0x1114
    add sp, byte 4                   ; 0x1117
    mov ax, 0                        ; 0x111a
    push ax                          ; 0x111d
    push word [bp + 0x16]            ; 0x111e
    call ds_string_loc_3a95          ; 0x1121
    add sp, byte 4                   ; 0x1124
    push word [bp + 0xa]             ; 0x1127
    push word [bp + 0x8]             ; 0x112a
    push word [bp + 0x6]             ; 0x112d
    push word [bp + 0x4]             ; 0x1130
    call ds_loc_3b21                 ; 0x1133
    add sp, byte 8                   ; 0x1136
    mov ax, 1                        ; 0x1139
    push ax                          ; 0x113c
    push word [bp - 0x0002]          ; 0x113d
    push word [bp - 0x0004]          ; 0x1140
    call ds_loc_3b96                 ; 0x1143
    add sp, byte 6                   ; 0x1146
    call ds_bios_kbd_check           ; 0x1149
    ret                              ; 0x114c
