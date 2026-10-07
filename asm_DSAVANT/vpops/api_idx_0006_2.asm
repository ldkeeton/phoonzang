api_idx_0006_2:
    mov ax, 0xfffa                   ; 0x0f27
    call ds_dispatch_f40b            ; 0x0f2a
    mov ax, word [data_845e]         ; 0x0f2d
    jmp near @..api_idx_0006_2.l12   ; 0x0f30
@..api_idx_0006_2.l1:
    mov ax, 0x8f                     ; 0x0f33
    push ax                          ; 0x0f36
    mov ax, 0xf7                     ; 0x0f37
    push ax                          ; 0x0f3a
    mov ax, 0x20                     ; 0x0f3b
    push ax                          ; 0x0f3e
    mov ax, 0x48                     ; 0x0f3f
    push ax                          ; 0x0f42
    call ds_dispatch_e8da            ; 0x0f43
    add sp, byte 8                   ; 0x0f46
    jmp near @..api_idx_0006_2.l16   ; 0x0f49
@..api_idx_0006_2.l2:
    les bx, word [data_0002]         ; 0x0f4c
    mov ax, word [es:bx]             ; 0x0f50
    mov dx, word [es:bx + 0x2]       ; 0x0f53
    sub ax, word [data_908a]         ; 0x0f57
    sbb dx, word [data_908c]         ; 0x0f5b
    push ax                          ; 0x0f5f
    push dx                          ; 0x0f60
    mov ax, word [data_90d6]         ; 0x0f61
    cwd                              ; 0x0f64
    mov cx, ax                       ; 0x0f65
    mov bx, dx                       ; 0x0f67
    pop dx                           ; 0x0f69
    pop ax                           ; 0x0f6a
    cmp dx, bx                       ; 0x0f6b
    jl short @..api_idx_0006_2.l3    ; 0x0f6d
    jne short @..api_idx_0006_2.l4   ; 0x0f6f
    cmp ax, cx                       ; 0x0f71
    jae short @..api_idx_0006_2.l4   ; 0x0f73
@..api_idx_0006_2.l3:
    jmp short @..api_idx_0006_2.l5   ; 0x0f75
@..api_idx_0006_2.l4:
    mov ax, word [data_906c]         ; 0x0f77
    inc ax                           ; 0x0f7a
    mov cx, data_0002                ; 0x0f7b
    cwd                              ; 0x0f7e
    idiv cx                          ; 0x0f7f
    mov word [data_906c], dx         ; 0x0f81
@..api_idx_0006_2.l5:
    mov ax, 0                        ; 0x0f85
    push ax                          ; 0x0f88
    push ax                          ; 0x0f89
    mov ax, word [data_906c]         ; 0x0f8a
    shl ax, 1                        ; 0x0f8d
    shl ax, 1                        ; 0x0f8f
    mov bx, ax                       ; 0x0f91
    push word [bx - 0x6f9e]          ; 0x0f93
    push word [bx - 0x6fa0]          ; 0x0f97
    call ds_dispatch_e942            ; 0x0f9b
    add sp, byte 8                   ; 0x0f9e
    mov word [bp - 0x0002], 0        ; 0x0fa1
@..api_idx_0006_2.l6:
    mov ax, word [bp - 0x0002]       ; 0x0fa6
    shl ax, 1                        ; 0x0fa9
    mov bx, ax                       ; 0x0fab
    mov bx, word [bx - 0x7b96]       ; 0x0fad
    mov byte [bx + 0x14], 0xff       ; 0x0fb1
    inc word [bp - 0x0002]           ; 0x0fb5
    mov ax, word [bp - 0x0002]       ; 0x0fb8
    cmp ax, strict word 0xc          ; 0x0fbb
    jl short @..api_idx_0006_2.l6    ; 0x0fbe
    mov word [data_8468], 0          ; 0x0fc0
    jmp near @..api_idx_0006_2.l16   ; 0x0fc6
@..api_idx_0006_2.l7:
    call loc_0ec8                    ; 0x0fc9
    mov word [bp - 0x0006], ax       ; 0x0fcc
    mov word [bp - 0x0002], 0        ; 0x0fcf
@..api_idx_0006_2.l8:
    mov word [bp - 0x0004], 0        ; 0x0fd4
@..api_idx_0006_2.l9:
    push word [bp - 0x0006]          ; 0x0fd9
    mov ax, 0xf8                     ; 0x0fdc
    push ax                          ; 0x0fdf
    mov ax, 0x48                     ; 0x0fe0
    push ax                          ; 0x0fe3
    mov ax, 6                        ; 0x0fe4
    imul word [bp - 0x0002]          ; 0x0fe7
    mov cx, word [bp - 0x0004]       ; 0x0fea
    shl cx, 1                        ; 0x0fed
    add ax, cx                       ; 0x0fef
    mov bx, ax                       ; 0x0ff1
    mov cx, word [bx + 0x580]        ; 0x0ff3
    mov ax, 0x64                     ; 0x0ff7
    sub ax, cx                       ; 0x0ffa
    push ax                          ; 0x0ffc
    mov ax, 0                        ; 0x0ffd
    push ax                          ; 0x1000
    push word [bp - 0x0004]          ; 0x1001
    push word [bp - 0x0002]          ; 0x1004
    call api_idx_001c                ; 0x1007
    add sp, byte 0x0e                ; 0x100a
    inc word [bp - 0x0004]           ; 0x100d
    mov ax, word [bp - 0x0004]       ; 0x1010
    cmp ax, strict word 3            ; 0x1013
    jl short @..api_idx_0006_2.l9    ; 0x1016
    inc word [bp - 0x0002]           ; 0x1018
    mov ax, word [bp - 0x0002]       ; 0x101b
    cmp ax, strict word 3            ; 0x101e
    jl short @..api_idx_0006_2.l8    ; 0x1021
    call api_idx_000e_2              ; 0x1023
    cmp word [bp - 0x0006], byte 0   ; 0x1026
    je short @..api_idx_0006_2.l10   ; 0x102a
    mov ax, word [data_82e8]         ; 0x102c
    inc ax                           ; 0x102f
    mov cx, data_0002                ; 0x1030
    cwd                              ; 0x1033
    idiv cx                          ; 0x1034
    mov word [data_82e8], dx         ; 0x1036
@..api_idx_0006_2.l10:
    call ds_dispatch_da22            ; 0x103a
    jmp short @..api_idx_0006_2.l16  ; 0x103d
@..api_idx_0006_2.l11:
    push word [data_845e]            ; 0x103f
    call loc_0e6c                    ; 0x1043
    pop cx                           ; 0x1046
    jmp short @..api_idx_0006_2.l16  ; 0x1047
@..api_idx_0006_2.l12:
    cmp ax, strict word 0xfffd       ; 0x1049
    jne short @..api_idx_0006_2.l13  ; 0x104c
    jmp near @..api_idx_0006_2.l1    ; 0x104e
@..api_idx_0006_2.l13:
    cmp ax, strict word 0xfffe       ; 0x1051
    jne short @..api_idx_0006_2.l14  ; 0x1054
    jmp near @..api_idx_0006_2.l2    ; 0x1056
@..api_idx_0006_2.l14:
    cmp ax, strict word 0xffff       ; 0x1059
    jne short @..api_idx_0006_2.l15  ; 0x105c
    jmp near @..api_idx_0006_2.l7    ; 0x105e
@..api_idx_0006_2.l15:
    jmp short @..api_idx_0006_2.l11  ; 0x1061
@..api_idx_0006_2.l16:
    inc word [data_845e]             ; 0x1063
    mov ax, word [data_845e]         ; 0x1067
    cmp ax, strict word 0xc          ; 0x106a
    jne short @..api_idx_0006_2.l17  ; 0x106d
    mov word [data_845e], 0xfffd     ; 0x106f
@..api_idx_0006_2.l17:
    ret                              ; 0x1075
