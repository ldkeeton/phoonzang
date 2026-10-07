api_idx_0024:
    mov ax, 0xffdc                   ; 0x50f4
    call ds_dispatch_f40b            ; 0x50f7
    mov ax, word [data_8f1c]         ; 0x50fa
    mov dx, word [data_8f1e]         ; 0x50fd
    mov cx, 0x5a0                    ; 0x5101
    mov bx, 0                        ; 0x5104
    call ds_dispatch_f99f            ; 0x5107
    add ax, strict word 1            ; 0x510a
    adc dx, byte 0                   ; 0x510d
    mov word [bp - 0x0004], ax       ; 0x5110
    add ax, strict word 0x12         ; 0x5113
    mov cx, 0x18                     ; 0x5116
    cwd                              ; 0x5119
    idiv cx                          ; 0x511a
    mov word [bp - 0x0006], dx       ; 0x511c
    mov ax, word [data_8f1c]         ; 0x511f
    mov dx, word [data_8f1e]         ; 0x5122
    mov cx, 0x5a0                    ; 0x5126
    mov bx, 0                        ; 0x5129
    call ds_dispatch_f9cd            ; 0x512c
    mov cx, 0x3c                     ; 0x512f
    mov bx, 0                        ; 0x5132
    call ds_dispatch_f99f            ; 0x5135
    cmp dx, byte 0                   ; 0x5138
    jg short @..api_idx_0024.l1      ; 0x513b
    jne short @..api_idx_0024.l2     ; 0x513d
    cmp ax, strict word 0xc          ; 0x513f
    jb short @..api_idx_0024.l2      ; 0x5142
@..api_idx_0024.l1:
    jmp short @..api_idx_0024.l3     ; 0x5144
@..api_idx_0024.l2:
    cmp word [bp - 0x0006], byte 0x0c ; 0x5146
    jle short @..api_idx_0024.l3     ; 0x514a
    dec word [bp - 0x0004]           ; 0x514c
    mov ax, word [bp - 0x0004]       ; 0x514f
    add ax, strict word 0x12         ; 0x5152
    mov cx, 0x18                     ; 0x5155
    cwd                              ; 0x5158
    idiv cx                          ; 0x5159
    mov word [bp - 0x0006], dx       ; 0x515b
@..api_idx_0024.l3:
    mov ax, 0x3c                     ; 0x515e
    imul word [bp - 0x0006]          ; 0x5161
    cwd                              ; 0x5164
    mov cx, ax                       ; 0x5165
    mov bx, dx                       ; 0x5167
    mov ax, word [data_8f1c]         ; 0x5169
    mov dx, word [data_8f1e]         ; 0x516c
    sub ax, cx                       ; 0x5170
    sbb dx, bx                       ; 0x5172
    mov cx, 0x5a0                    ; 0x5174
    mov bx, 0                        ; 0x5177
    call ds_dispatch_f9cd            ; 0x517a
    mov word [bp - 0x0008], ax       ; 0x517d
    cmp ax, strict word 0            ; 0x5180
    jl short @..api_idx_0024.l4      ; 0x5183
    cmp ax, 0x1e0                    ; 0x5185
    jl short @..api_idx_0024.l5      ; 0x5188
@..api_idx_0024.l4:
    ret                              ; 0x518a
