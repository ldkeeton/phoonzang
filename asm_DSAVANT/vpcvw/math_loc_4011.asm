math_loc_4011:
    mov ax, 0                        ; 0x4011
    call ds_dispatch_f40b            ; 0x4014
    les bx, word [data_0002]         ; 0x4017
    mov ax, word [es:bx]             ; 0x401b
    mov dx, word [es:bx + 0x2]       ; 0x401e
    mov word [data_9090], dx         ; 0x4022
    mov word [data_908e], ax         ; 0x4026
    mov ax, word [data_908e]         ; 0x4029
    mov dx, word [data_9090]         ; 0x402c
    sub ax, word [data_908a]         ; 0x4030
    sbb dx, word [data_908c]         ; 0x4034
    mov word [data_9094], dx         ; 0x4038
    mov word [data_9092], ax         ; 0x403c
    mov ax, word [data_9562]         ; 0x403f
    cwd                              ; 0x4042
    mov cx, ax                       ; 0x4043
    mov bx, dx                       ; 0x4045
    mov ax, word [data_9092]         ; 0x4047
    mov dx, word [data_9094]         ; 0x404a
    cmp bx, dx                       ; 0x404e
    jg short @..math_loc_4011.l1     ; 0x4050
    jne short @..math_loc_4011.l2    ; 0x4052
    cmp cx, ax                       ; 0x4054
    jbe short @..math_loc_4011.l2    ; 0x4056
@..math_loc_4011.l1:
    jmp short @..math_loc_4011.l3    ; 0x4058
@..math_loc_4011.l2:
    mov ax, word [data_908e]         ; 0x405a
    mov dx, word [data_9090]         ; 0x405d
    mov word [data_908c], dx         ; 0x4061
    mov word [data_908a], ax         ; 0x4065
    mov ax, word [data_9432]         ; 0x4068
    inc ax                           ; 0x406b
    mov cx, 3                        ; 0x406c
    cwd                              ; 0x406f
    idiv cx                          ; 0x4070
    mov word [data_9432], dx         ; 0x4072
    push dx                          ; 0x4076
    call api_idx_000a                ; 0x4077
    pop cx                           ; 0x407a
    mov ax, 0x41                     ; 0x407b
    push ax                          ; 0x407e
    mov ax, 0x65                     ; 0x407f
    push ax                          ; 0x4082
    mov ax, 0x19                     ; 0x4083
    push ax                          ; 0x4086
    mov ax, 0x5a                     ; 0x4087
    push ax                          ; 0x408a
    call ds_dispatch_e8da            ; 0x408b
    add sp, byte 8                   ; 0x408e
    mov ax, 0xffff                   ; 0x4091
    push ax                          ; 0x4094
    call api_idx_0002_2              ; 0x4095
    pop cx                           ; 0x4098
    push word [bp + 0x4]             ; 0x4099
    call api_idx_0004_3              ; 0x409c
    pop cx                           ; 0x409f
    mov ax, 0xbf                     ; 0x40a0
    push ax                          ; 0x40a3
    mov ax, 0x13f                    ; 0x40a4
    push ax                          ; 0x40a7
    mov ax, 0x7e                     ; 0x40a8
    push ax                          ; 0x40ab
    mov ax, 0xb8                     ; 0x40ac
    push ax                          ; 0x40af
    call ds_dispatch_e8da            ; 0x40b0
    add sp, byte 8                   ; 0x40b3
@..math_loc_4011.l3:
    ret                              ; 0x40b6
