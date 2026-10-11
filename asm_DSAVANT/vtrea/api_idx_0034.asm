api_idx_0034:
    mov ax, 0xffcc                   ; 0x6ff5
    call ds_dispatch_f40b            ; 0x6ff8
    call ds_dispatch_ec17            ; 0x6ffb
    mov ax, word [bp + 0x6]          ; 0x6ffe
    shl ax, 1                        ; 0x7001
    mov si, ax                       ; 0x7003
    mov bx, word [dseg_0e12]         ; 0x7005
    mov ax, word [bx + si + 0x1e0]   ; 0x7009
    mov word [bp - 0x0006], ax       ; 0x700d
    mov si, word [bp + 0x6]          ; 0x7010
    mov al, byte [bx + si + 0xa50]   ; 0x7013
    sub ah, ah                       ; 0x7017
    mov word [bp - 0x0002], ax       ; 0x7019
    mov ax, 5                        ; 0x701c
    push ax                          ; 0x701f
    mov ax, 0                        ; 0x7020
    push ax                          ; 0x7023
    push word [bp - 0x0002]          ; 0x7024
    call ds_dispatch_ed3a            ; 0x7027
    add sp, byte 6                   ; 0x702a
    mov word [bp - 0x0004], ax       ; 0x702d
    mov cx, 3                        ; 0x7030
    cwd                              ; 0x7033
    idiv cx                          ; 0x7034
    inc ax                           ; 0x7036
    mov word [bp - 0x000a], ax       ; 0x7037
    cmp ax, strict word 6            ; 0x703a
    jle short @..api_idx_0034.l1     ; 0x703d
    mov word [bp - 0x000a], 6        ; 0x703f
@..api_idx_0034.l1:
    mov word [bp - 0x000c], 0        ; 0x7044
    mov ax, word [bp + 0x6]          ; 0x7049
    shl ax, 1                        ; 0x704c
    mov si, ax                       ; 0x704e
    mov bx, word [dseg_0e12]         ; 0x7050
    mov ax, word [bx + si + 0x3c0]   ; 0x7054
    mov word [bp - 0x0002], ax       ; 0x7058
    mov ax, 2                        ; 0x705b
    push ax                          ; 0x705e
    mov ax, word [dseg_82ee]         ; 0x705f
    shl ax, 1                        ; 0x7062
    push ax                          ; 0x7064
    push word [bp - 0x0002]          ; 0x7065
    call ds_dispatch_ed3a            ; 0x7068
    add sp, byte 6                   ; 0x706b
    cmp ax, strict word 2            ; 0x706e
    jne short @..api_idx_0034.l2     ; 0x7071
    mov ax, word [dseg_8f46]         ; 0x7073
    add ax, word [dseg_8f44]         ; 0x7076
    cwd                              ; 0x707a
    idiv word [bp - 0x000a]          ; 0x707b
    mov ax, dx                       ; 0x707e
    shl ax, 1                        ; 0x7080
    mov bx, ax                       ; 0x7082
    mov word [bx - 0x69a2], 0x64     ; 0x7084
    mov word [bp - 0x000c], 1        ; 0x708a
@..api_idx_0034.l2:
    cmp word [bp + 0x8], byte 0      ; 0x708f
    jne short @..api_idx_0034.l3     ; 0x7093
    push word [bp - 0x0004]          ; 0x7095
    push word [bp - 0x000c]          ; 0x7098
    push word [bp - 0x000a]          ; 0x709b
    mov ax, 1                        ; 0x709e
    push ax                          ; 0x70a1
    mov ax, 0x83c                    ; 0x70a2
    push ax                          ; 0x70a5
    push word [bp + 0x4]             ; 0x70a6
    call api_idx_006a                ; 0x70a9
    add sp, byte 0x0c                ; 0x70ac
    mov word [bp - 0x0008], ax       ; 0x70af
    jmp short @..api_idx_0034.l6     ; 0x70b2
@..api_idx_0034.l3:
    mov ax, word [bp - 0x0004]       ; 0x70b4
    cmp word [bp - 0x000c], byte 0   ; 0x70b7
    je short @..api_idx_0034.l4      ; 0x70bb
    mov ax, 0x14                     ; 0x70bd
@..api_idx_0034.l4:
    push ax                          ; 0x70c0
    push word [bp - 0x000c]          ; 0x70c1
    mov ax, 1                        ; 0x70c4
    push ax                          ; 0x70c7
    push ax                          ; 0x70c8
    mov ax, 0x837                    ; 0x70c9
    cmp word [dseg_5b6e], byte 1     ; 0x70cc
    jne short @..api_idx_0034.l5     ; 0x70d1
    mov ax, 0x844                    ; 0x70d3
@..api_idx_0034.l5:
    push ax                          ; 0x70d6
    push word [bp + 0x4]             ; 0x70d7
    call api_idx_0074                ; 0x70da
    add sp, byte 0x0c                ; 0x70dd
    mov word [bp - 0x0008], ax       ; 0x70e0
@..api_idx_0034.l6:
    cmp word [bp - 0x0008], byte 0xff ; 0x70e3
    je short @..api_idx_0034.l10     ; 0x70e7
    cmp word [bp - 0x0008], byte 0   ; 0x70e9
    jne short @..api_idx_0034.l7     ; 0x70ed
    mov ax, 1                        ; 0x70ef
    push ax                          ; 0x70f2
    push word [bp + 0x6]             ; 0x70f3
    call loc_6f41                    ; 0x70f6
    add sp, byte 4                   ; 0x70f9
    jmp short @..api_idx_0034.l8     ; 0x70fc
@..api_idx_0034.l7:
    cmp word [bp - 0x0008], byte 2   ; 0x70fe
    jne short @..api_idx_0034.l8     ; 0x7102
    push word [bp + 0x6]             ; 0x7104
    call api_idx_0004_11             ; 0x7107
    pop cx                           ; 0x710a
@..api_idx_0034.l8:
    lea ax, word [bp - 0x0034]       ; 0x710b
    push ax                          ; 0x710e
    mov ax, word [bp - 0x0008]       ; 0x710f
    add ax, 0x841                    ; 0x7112
    push ax                          ; 0x7115
    call ds_dispatch_b53b            ; 0x7116
    add sp, byte 4                   ; 0x7119
    cmp word [bp - 0x0008], byte 0   ; 0x711c
    jne short @..api_idx_0034.l9     ; 0x7120
    mov ax, 0x55                     ; 0x7122
    push ax                          ; 0x7125
    mov ax, 0                        ; 0x7126
    push ax                          ; 0x7129
    mov ax, 1                        ; 0x712a
    push ax                          ; 0x712d
    lea ax, word [bp - 0x0034]       ; 0x712e
    push ax                          ; 0x7131
    call loc_0eb2                    ; 0x7132
    add sp, byte 8                   ; 0x7135
    jmp short @..api_idx_0034.l10    ; 0x7138
@..api_idx_0034.l9:
    mov ax, 0x16                     ; 0x713a
    push ax                          ; 0x713d
    mov ax, 1                        ; 0x713e
    push ax                          ; 0x7141
    push ax                          ; 0x7142
    lea ax, word [bp - 0x0034]       ; 0x7143
    push ax                          ; 0x7146
    call loc_0eb2                    ; 0x7147
    add sp, byte 8                   ; 0x714a
@..api_idx_0034.l10:
    mov ax, word [bp - 0x0008]       ; 0x714d
    ret                              ; 0x7150
