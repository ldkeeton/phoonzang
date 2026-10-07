api_idx_000c_2:
    mov ax, 0xfff4                   ; 0x1017
    call ds_dispatch_f40b            ; 0x101a
    mov word [bp - 0x0002], 0        ; 0x101d
@..api_idx_000c_2.l1:
    lea ax, word [bp - 0x000c]       ; 0x1022
    push ax                          ; 0x1025
    mov ax, 0x248                    ; 0x1026
    imul word [bp + 0x4]             ; 0x1029
    mov cx, word [bp - 0x0002]       ; 0x102c
    shl cx, 1                        ; 0x102f
    shl cx, 1                        ; 0x1031
    add ax, cx                       ; 0x1033
    mov bx, ax                       ; 0x1035
    push word [bx + 0x5c1c]          ; 0x1037
    call ds_dispatch_b27d            ; 0x103b
    add sp, byte 4                   ; 0x103e
    mov ax, 0                        ; 0x1041
    push ax                          ; 0x1044
    mov ax, word [bp - 0x0002]       ; 0x1045
    shl ax, 1                        ; 0x1048
    shl ax, 1                        ; 0x104a
    mov bx, ax                       ; 0x104c
    db 0xff, 0xb7, 0x06, 0x00 ; push word [bx + 0x6]
    call ds_dispatch_e823            ; 0x1052
    add sp, byte 4                   ; 0x1055
    mov ax, word [bp - 0x0002]       ; 0x1058
    shl ax, 1                        ; 0x105b
    shl ax, 1                        ; 0x105d
    mov bx, ax                       ; 0x105f
    push word [bx + 0x18e]           ; 0x1061
    lea ax, word [bp - 0x000c]       ; 0x1065
    push ax                          ; 0x1068
    call ds_dispatch_fa90            ; 0x1069
    pop cx                           ; 0x106c
    mov cx, 6                        ; 0x106d
    imul cx                          ; 0x1070
    mov cx, data_0002                ; 0x1072
    cwd                              ; 0x1075
    idiv cx                          ; 0x1076
    mov cx, ax                       ; 0x1078
    mov ax, word [bp - 0x0002]       ; 0x107a
    shl ax, 1                        ; 0x107d
    shl ax, 1                        ; 0x107f
    mov bx, ax                       ; 0x1081
    mov ax, word [bx + 0x18c]        ; 0x1083
    add ax, strict word 9            ; 0x1087
    sub ax, cx                       ; 0x108a
    push ax                          ; 0x108c
    call ds_dispatch_e809            ; 0x108d
    add sp, byte 4                   ; 0x1090
    mov ax, 0                        ; 0x1093
    push ax                          ; 0x1096
    lea ax, word [bp - 0x000c]       ; 0x1097
    push ax                          ; 0x109a
    call ds_dispatch_e84e            ; 0x109b
    add sp, byte 4                   ; 0x109e
    inc word [bp - 0x0002]           ; 0x10a1
    mov ax, word [bp - 0x0002]       ; 0x10a4
    cmp ax, strict word 6            ; 0x10a7
    jge short @..api_idx_000c_2.l2   ; 0x10aa
    jmp near @..api_idx_000c_2.l1    ; 0x10ac
@..api_idx_000c_2.l2:
    ret                              ; 0x10af
