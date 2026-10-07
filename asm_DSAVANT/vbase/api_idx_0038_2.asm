api_idx_0038_2:
    mov ax, 0xffc8                   ; 0x2fef
    call ds_dispatch_f40b            ; 0x2ff2
    mov word [bp - 0x000c], 0        ; 0x2ff5
    mov ax, word [data_5218]         ; 0x2ffa
    mov word [bp - 0x000e], ax       ; 0x2ffd
    cmp byte [data_5987], 5          ; 0x3000
    jne short @..api_idx_0038_2.l1   ; 0x3005
    cmp ax, strict word 0            ; 0x3007
    jle short @..api_idx_0038_2.l1   ; 0x300a
    inc ax                           ; 0x300c
    inc ax                           ; 0x300d
    jmp short @..api_idx_0038_2.l2   ; 0x300e
@..api_idx_0038_2.l1:
    mov ax, word [bp - 0x000e]       ; 0x3010
@..api_idx_0038_2.l2:
    mov word [bp - 0x000e], ax       ; 0x3013
    mov ax, 0                        ; 0x3016
    push ax                          ; 0x3019
    call ds_dispatch_ef14            ; 0x301a
    pop cx                           ; 0x301d
    lea ax, word [bp - 0x0024]       ; 0x301e
    push ax                          ; 0x3021
    mov ax, 0x58c                    ; 0x3022
    push ax                          ; 0x3025
    call ds_dispatch_b53b            ; 0x3026
    add sp, byte 4                   ; 0x3029
    lea ax, word [bp - 0x0038]       ; 0x302c
    push ax                          ; 0x302f
    mov ax, 0x58d                    ; 0x3030
    push ax                          ; 0x3033
    call ds_dispatch_b53b            ; 0x3034
    add sp, byte 4                   ; 0x3037
    mov word [bp - 0x0010], 1        ; 0x303a
    cmp word [bp + 0x4], byte 0      ; 0x303f
    je short @..api_idx_0038_2.l3    ; 0x3043
    mov ax, word [bp + 0x4]          ; 0x3045
    cmp ax, strict word 2            ; 0x3048
    jne short @..api_idx_0038_2.l4   ; 0x304b
@..api_idx_0038_2.l3:
    mov word [data_95b2], 4          ; 0x304d
    mov ax, 1                        ; 0x3053
    push ax                          ; 0x3056
    mov ax, 0x90cf                   ; 0x3057
    push ax                          ; 0x305a
    call ds_dispatch_d161            ; 0x305b
    add sp, byte 4                   ; 0x305e
    push ax                          ; 0x3061
    mov ax, 0x91ee                   ; 0x3062
    push ax                          ; 0x3065
    call ds_dispatch_f364            ; 0x3066
    add sp, byte 4                   ; 0x3069
    jmp near @..api_idx_0038_2.l13   ; 0x306c
@..api_idx_0038_2.l4:
    mov word [data_95b2], 0          ; 0x306f
    mov ax, 0x594e                   ; 0x3075
    push ax                          ; 0x3078
    mov ax, 0x593a                   ; 0x3079
    push ax                          ; 0x307c
    mov ax, 1                        ; 0x307d
    push ax                          ; 0x3080
    push ax                          ; 0x3081
    mov ax, 0                        ; 0x3082
    push ax                          ; 0x3085
    mov ax, 0x578                    ; 0x3086
    push ax                          ; 0x3089
    call api_idx_0028                ; 0x308a
    add sp, byte 0x0c                ; 0x308d
    cmp ax, strict word 2            ; 0x3090
    jne short @..api_idx_0038_2.l5   ; 0x3093
    mov ax, 0xffff                   ; 0x3095
    ret                              ; 0x3098
