api_idx_0024:
    mov ax, 0xffdc                   ; 0x50f4
    call aztec_csav                  ; 0x50f7
    mov ax, word [bss_8f1c]          ; 0x50fa
    mov dx, word [bss_8f1e]          ; 0x50fd
    mov cx, 0x5a0                    ; 0x5101
    mov bx, 0                        ; 0x5104
    call aztec_ldv                   ; 0x5107
    add ax, strict word 1            ; 0x510a
    adc dx, byte 0                   ; 0x510d
    mov word [bp - 0x0004], ax       ; 0x5110
    add ax, strict word 0x12         ; 0x5113
    mov cx, 0x18                     ; 0x5116
    cwd                              ; 0x5119
    idiv cx                          ; 0x511a
    mov word [bp - 0x0006], dx       ; 0x511c
    mov ax, word [bss_8f1c]          ; 0x511f
    mov dx, word [bss_8f1e]          ; 0x5122
    mov cx, 0x5a0                    ; 0x5126
    mov bx, 0                        ; 0x5129
    call aztec_lrm                   ; 0x512c
    mov cx, 0x3c                     ; 0x512f
    mov bx, 0                        ; 0x5132
    call aztec_ldv                   ; 0x5135
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
    mov ax, word [bss_8f1c]          ; 0x5169
    mov dx, word [bss_8f1e]          ; 0x516c
    sub ax, cx                       ; 0x5170
    sbb dx, bx                       ; 0x5172
    mov cx, 0x5a0                    ; 0x5174
    mov bx, 0                        ; 0x5177
    call aztec_lrm                   ; 0x517a
    mov word [bp - 0x0008], ax       ; 0x517d
    cmp ax, strict word 0            ; 0x5180
    jl short @..api_idx_0024.l4      ; 0x5183
    cmp ax, 0x1e0                    ; 0x5185
    jl short @..api_idx_0024.l5      ; 0x5188
@..api_idx_0024.l4:
    ret                              ; 0x518a
@..api_idx_0024.l5:
    mov cx, 2                        ; 0x518b
    cwd                              ; 0x518e
    idiv cx                          ; 0x518f
    mov word [bp - 0x000a], ax       ; 0x5191
    mov word [bp - 0x0002], 0        ; 0x5194
@..api_idx_0024.l6:
    mov ax, word [bp - 0x0002]       ; 0x5199
    shl ax, 1                        ; 0x519c
    mov bx, ax                       ; 0x519e
    add bx, bp                       ; 0x51a0
    mov word [bx - 0x0016], 0xff01   ; 0x51a2
    inc word [bp - 0x0002]           ; 0x51a7
    mov ax, word [bp - 0x0002]       ; 0x51aa
    cmp ax, strict word 4            ; 0x51ad
    jl short @..api_idx_0024.l6      ; 0x51b0
    cmp word [bp - 0x000a], byte 0x3e ; 0x51b2
    jge short @..api_idx_0024.l7     ; 0x51b6
    mov ax, word [bp - 0x000a]       ; 0x51b8
    add ax, strict word 0x72         ; 0x51bb
    mov word [bp - 0x0014], ax       ; 0x51be
@..api_idx_0024.l7:
    cmp word [bp - 0x000a], byte 0x10 ; 0x51c1
    jl short @..api_idx_0024.l8      ; 0x51c5
    cmp word [bp - 0x000a], strict word 0xd0 ; 0x51c7
    jg short @..api_idx_0024.l8      ; 0x51cc
    mov ax, word [bp - 0x000a]       ; 0x51ce
    add ax, strict word 0xffe0       ; 0x51d1
    mov word [bp - 0x0012], ax       ; 0x51d4
@..api_idx_0024.l8:
    cmp word [bp - 0x000a], strict word 0xa2 ; 0x51d7
    jl short @..api_idx_0024.l9      ; 0x51dc
    cmp word [bp - 0x000a], strict word 0xf0 ; 0x51de
    jg short @..api_idx_0024.l9      ; 0x51e3
    mov ax, word [bp - 0x000a]       ; 0x51e5
    add ax, 0xff4e                   ; 0x51e8
    mov word [bp - 0x0010], ax       ; 0x51eb
@..api_idx_0024.l9:
    mov ax, word [bss_82ee]          ; 0x51ee
    shl ax, 1                        ; 0x51f1
    mov bx, ax                       ; 0x51f3
    add bx, bp                       ; 0x51f5
    cmp word [bx - 0x0016], strict word 0xff01 ; 0x51f7
    jne short @..api_idx_0024.l10    ; 0x51fc
    ret                              ; 0x51fe
@..api_idx_0024.l10:
    mov ax, word [bp - 0x0008]       ; 0x51ff
    mov cx, 0xf0                     ; 0x5202
    cwd                              ; 0x5205
    idiv cx                          ; 0x5206
    mov ax, dx                       ; 0x5208
    mov cx, 7                        ; 0x520a
    cwd                              ; 0x520d
    idiv cx                          ; 0x520e
    mov word [bp - 0x000c], ax       ; 0x5210
    mov ax, word [bp - 0x0008]       ; 0x5213
    mov cx, 0xf0                     ; 0x5216
    cwd                              ; 0x5219
    idiv cx                          ; 0x521a
    test ax, ax                      ; 0x521c
    je short @..api_idx_0024.l11     ; 0x521e
    mov ax, 0x22                     ; 0x5220
    sub ax, word [bp - 0x000c]       ; 0x5223
    jmp short @..api_idx_0024.l12    ; 0x5226
@..api_idx_0024.l11:
    mov ax, word [bp - 0x000c]       ; 0x5228
@..api_idx_0024.l12:
    mov word [bp - 0x000e], ax       ; 0x522b
    mov ax, word [bp - 0x0004]       ; 0x522e
    mov cx, 3                        ; 0x5231
    cwd                              ; 0x5234
    idiv cx                          ; 0x5235
    mov cx, 8                        ; 0x5237
    cwd                              ; 0x523a
    idiv cx                          ; 0x523b
    mov word [bp - 0x0018], dx       ; 0x523d
    mov ax, 1                        ; 0x5240
    cmp dx, byte 5                   ; 0x5243
    jge short @..api_idx_0024.l13    ; 0x5246
    mov ax, 0                        ; 0x5248
@..api_idx_0024.l13:
    mov word [bp - 0x001a], ax       ; 0x524b
    cmp dx, byte 5                   ; 0x524e
    jge short @..api_idx_0024.l14    ; 0x5251
    inc dx                           ; 0x5253
    mov ax, dx                       ; 0x5254
    jmp short @..api_idx_0024.l15    ; 0x5256
@..api_idx_0024.l14:
    sub cx, word [bp - 0x0018]       ; 0x5258
    mov ax, cx                       ; 0x525b
    inc ax                           ; 0x525d
@..api_idx_0024.l15:
    mov byte [bp - 0x0024], al       ; 0x525e
    mov byte [bp - 0x0023], 0        ; 0x5261
    mov ax, 0                        ; 0x5265
    push ax                          ; 0x5268
    push ax                          ; 0x5269
    lea ax, word [bp - 0x0024]       ; 0x526a
    push ax                          ; 0x526d
    push word [bp - 0x001a]          ; 0x526e
    mov ax, 0x90                     ; 0x5271
    push ax                          ; 0x5274
    mov ax, 0x20                     ; 0x5275
    push ax                          ; 0x5278
    mov ax, 0xf8                     ; 0x5279
    push ax                          ; 0x527c
    mov ax, 0x48                     ; 0x527d
    push ax                          ; 0x5280
    mov ax, 0x44                     ; 0x5281
    sub ax, word [bp - 0x000e]       ; 0x5284
    push ax                          ; 0x5287
    mov ax, word [bx - 0x0016]       ; 0x5288
    add ax, strict word 0x48         ; 0x528b
    push ax                          ; 0x528e
    mov ax, 6                        ; 0x528f
    push ax                          ; 0x5292
    call ds_loc_4218                 ; 0x5293
    add sp, byte 0x16                ; 0x5296
    ret                              ; 0x5299
