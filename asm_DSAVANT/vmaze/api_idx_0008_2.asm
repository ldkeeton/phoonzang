api_idx_0008_2:
    mov ax, 0xfff8                   ; 0x0fde
    call aztec_csav                  ; 0x0fe1
    mov ax, 0x98                     ; 0x0fe4
    push ax                          ; 0x0fe7
    mov ax, 0x13f                    ; 0x0fe8
    push ax                          ; 0x0feb
    mov ax, 0x92                     ; 0x0fec
    push ax                          ; 0x0fef
    mov ax, 0                        ; 0x0ff0
    push ax                          ; 0x0ff3
    call ds_loc_3b21                 ; 0x0ff4
    add sp, byte 8                   ; 0x0ff7
    push word [bp + 0x4]             ; 0x0ffa
    call aztec_strlen                ; 0x0ffd
    pop cx                           ; 0x1000
    mov cx, 6                        ; 0x1001
    imul cx                          ; 0x1004
    mov cx, 2                        ; 0x1006
    cwd                              ; 0x1009
    idiv cx                          ; 0x100a
    mov cx, ax                       ; 0x100c
    mov ax, 0xa1                     ; 0x100e
    sub ax, cx                       ; 0x1011
    mov word [bp - 0x0002], ax       ; 0x1013
    push word [bp + 0x4]             ; 0x1016
    call aztec_strlen                ; 0x1019
    pop cx                           ; 0x101c
    mov cx, 6                        ; 0x101d
    imul cx                          ; 0x1020
    mov cx, ax                       ; 0x1022
    mov ax, word [bp - 0x0002]       ; 0x1024
    add cx, ax                       ; 0x1027
    mov word [bp - 0x0004], cx       ; 0x1029
    mov ax, 0x98                     ; 0x102c
    push ax                          ; 0x102f
    push cx                          ; 0x1030
    mov ax, 0x92                     ; 0x1031
    push ax                          ; 0x1034
    push word [bp - 0x0002]          ; 0x1035
    call ds_loc_3b6f                 ; 0x1038
    add sp, byte 8                   ; 0x103b
    mov word [bp - 0x0006], dx       ; 0x103e
    mov word [bp - 0x0008], ax       ; 0x1041
    mov ax, 0                        ; 0x1044
    push ax                          ; 0x1047
    mov ax, 0x16                     ; 0x1048
    push ax                          ; 0x104b
    call ds_loc_3a6a                 ; 0x104c
    add sp, byte 4                   ; 0x104f
    mov ax, 0x92                     ; 0x1052
    push ax                          ; 0x1055
    push word [bp - 0x0002]          ; 0x1056
    call ds_loc_3a50                 ; 0x1059
    add sp, byte 4                   ; 0x105c
    mov ax, 0                        ; 0x105f
    push ax                          ; 0x1062
    push word [bp + 0x4]             ; 0x1063
    call ds_string_loc_3a95          ; 0x1066
    add sp, byte 4                   ; 0x1069
    mov ax, 0x98                     ; 0x106c
    push ax                          ; 0x106f
    push word [bp - 0x0004]          ; 0x1070
    mov ax, 0x92                     ; 0x1073
    push ax                          ; 0x1076
    push word [bp - 0x0002]          ; 0x1077
    call ds_loc_3b21                 ; 0x107a
    add sp, byte 8                   ; 0x107d
    mov ax, 1                        ; 0x1080
    push ax                          ; 0x1083
    push word [bp - 0x0006]          ; 0x1084
    push word [bp - 0x0008]          ; 0x1087
    call ds_loc_3b96                 ; 0x108a
    add sp, byte 6                   ; 0x108d
    call bios_kbd_check              ; 0x1090
    ret                              ; 0x1093
