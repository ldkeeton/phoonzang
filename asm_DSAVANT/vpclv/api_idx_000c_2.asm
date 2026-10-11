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
    mov cx, 2                        ; 0x1072
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
loc_10b0:
    mov ax, 0                        ; 0x10b0
    call ds_dispatch_f40b            ; 0x10b3
    les bx, word [dseg_0002]         ; 0x10b6
    mov ax, word [es:bx]             ; 0x10ba
    mov dx, word [es:bx + 0x2]       ; 0x10bd
    mov word [bss_9090], dx          ; 0x10c1
    mov word [bss_908e], ax          ; 0x10c5
    mov ax, word [bss_908e]          ; 0x10c8
    mov dx, word [bss_9090]          ; 0x10cb
    sub ax, word [bss_908a]          ; 0x10cf
    sbb dx, word [bss_908c]          ; 0x10d3
    mov word [bss_9094], dx          ; 0x10d7
    mov word [bss_9092], ax          ; 0x10db
    mov ax, word [bss_948c]          ; 0x10de
    cwd                              ; 0x10e1
    mov cx, ax                       ; 0x10e2
    mov bx, dx                       ; 0x10e4
    mov ax, word [bss_9092]          ; 0x10e6
    mov dx, word [bss_9094]          ; 0x10e9
    cmp bx, dx                       ; 0x10ed
    jg short @..local.l6             ; 0x10ef
    jne short @..local.l7            ; 0x10f1
    cmp cx, ax                       ; 0x10f3
    jbe short @..local.l7            ; 0x10f5
@..local.l6:
    jmp short @..local.l8            ; 0x10f7
@..local.l7:
    mov ax, word [bss_908e]          ; 0x10f9
    mov dx, word [bss_9090]          ; 0x10fc
    mov word [bss_908c], dx          ; 0x1100
    mov word [bss_908a], ax          ; 0x1104
    call api_idx_000a_2              ; 0x1107
    push word [bp + 0x4]             ; 0x110a
    call api_idx_000c_2              ; 0x110d
    pop cx                           ; 0x1110
    push word [bp + 0x6]             ; 0x1111
    call api_idx_0002_2              ; 0x1114
    pop cx                           ; 0x1117
    mov ax, 1                        ; 0x1118
    push ax                          ; 0x111b
    mov ax, 0x73                     ; 0x111c
    push ax                          ; 0x111f
    mov ax, 0x32                     ; 0x1120
    push ax                          ; 0x1123
    call api_idx_000c                ; 0x1124
    add sp, byte 6                   ; 0x1127
    mov ax, 0xc5                     ; 0x112a
    push ax                          ; 0x112d
    mov ax, 0x93                     ; 0x112e
    push ax                          ; 0x1131
    mov ax, 0x73                     ; 0x1132
    push ax                          ; 0x1135
    mov ax, 0x32                     ; 0x1136
    push ax                          ; 0x1139
    call ds_dispatch_e8da            ; 0x113a
    add sp, byte 8                   ; 0x113d
@..local.l8:
    ret                              ; 0x1140
