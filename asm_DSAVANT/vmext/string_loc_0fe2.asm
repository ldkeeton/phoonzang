string_loc_0fe2:
    mov word [bp - 0x0004], 0        ; 0x0fe2
@..string_loc_0fe2.l1:
    mov ax, 0x248                    ; 0x0fe7
    imul word [bp - 0x0006]          ; 0x0fea
    mov cx, word [bp - 0x0004]       ; 0x0fed
    shl cx, 1                        ; 0x0ff0
    shl cx, 1                        ; 0x0ff2
    add ax, cx                       ; 0x0ff4
    mov bx, ax                       ; 0x0ff6
    push word [bx + 0x5c1e]          ; 0x0ff8
    mov ax, 0                        ; 0x0ffc
    push ax                          ; 0x0fff
    push word [bp - 0x000a]          ; 0x1000
    push word [bp - 0x000c]          ; 0x1003
    push word [bp - 0x000a]          ; 0x1006
    call ds_app_2331                 ; 0x1009
    add sp, byte 6                   ; 0x100c
    mov cx, ax                       ; 0x100f
    sub sp, byte 4                   ; 0x1011
    mov ax, sp                       ; 0x1014
    mov dx, ss                       ; 0x1016
    mov es, dx                       ; 0x1018
    mov si, cx                       ; 0x101a
    mov di, ax                       ; 0x101c
    movsw                            ; 0x101e
    movsw                            ; 0x101f
    call ds_app_2305                 ; 0x1020
    add sp, byte 4                   ; 0x1023
    push ax                          ; 0x1026
    mov ax, 0x248                    ; 0x1027
    imul word [bp - 0x0006]          ; 0x102a
    mov cx, ax                       ; 0x102d
    mov dx, word [bp - 0x0004]       ; 0x102f
    shl dx, 1                        ; 0x1032
    shl dx, 1                        ; 0x1034
    add ax, dx                       ; 0x1036
    mov bx, ax                       ; 0x1038
    pop ax                           ; 0x103a
    add ax, word [bx + 0x5c1c]       ; 0x103b
    push ax                          ; 0x103f
    call ds_app_0a09                 ; 0x1040
    add sp, byte 6                   ; 0x1043
    push ax                          ; 0x1046
    mov ax, 0x248                    ; 0x1047
    imul word [bp - 0x0006]          ; 0x104a
    mov cx, ax                       ; 0x104d
    mov dx, word [bp - 0x0004]       ; 0x104f
    shl dx, 1                        ; 0x1052
    shl dx, 1                        ; 0x1054
    add ax, dx                       ; 0x1056
    mov bx, ax                       ; 0x1058
    pop ax                           ; 0x105a
    mov word [bx + 0x5c1c], ax       ; 0x105b
    inc word [bp - 0x0004]           ; 0x105f
    mov ax, word [bp - 0x0004]       ; 0x1062
    cmp ax, strict word 6            ; 0x1065
    jge short @..string_loc_0fe2.l2  ; 0x1068
    jmp near @..string_loc_0fe2.l1   ; 0x106a
@..string_loc_0fe2.l2:
    jmp near loc_1325                ; 0x106d
loc_1070:
    mov ax, 0x248                    ; 0x1070
    imul word [bp - 0x0006]          ; 0x1073
    mov bx, ax                       ; 0x1076
    push word [bx + 0x5c0e]          ; 0x1078
    mov ax, 0                        ; 0x107c
    push ax                          ; 0x107f
    mov ax, word [bx + 0x5c0c]       ; 0x1080
    add ax, word [bp - 0x000e]       ; 0x1084
    push ax                          ; 0x1087
    call ds_app_0a09                 ; 0x1088
    add sp, byte 6                   ; 0x108b
    push ax                          ; 0x108e
    mov ax, 0x248                    ; 0x108f
    imul word [bp - 0x0006]          ; 0x1092
    mov bx, ax                       ; 0x1095
    pop ax                           ; 0x1097
    mov word [bx + 0x5c0c], ax       ; 0x1098
    jmp near loc_1325                ; 0x109c
