api_idx_0004_6:
    mov ax, 0xfffc                   ; 0x5087
    call ds_dispatch_f40b            ; 0x508a
    mov ax, 0x248                    ; 0x508d
    imul word [bp + 0x4]             ; 0x5090
    mov bx, ax                       ; 0x5093
    mov al, byte [bx + 0x5e2d]       ; 0x5095
    sub ah, ah                       ; 0x5099
    jmp near @..api_idx_0004_6.l1    ; 0x509b
    mov ax, 0x93cc                   ; 0x509e
    push ax                          ; 0x50a1
    mov ax, 0x93bd                   ; 0x50a2
    push ax                          ; 0x50a5
    push word [bp + 0x4]             ; 0x50a6
    call api_idx_0006_2              ; 0x50a9
    add sp, byte 6                   ; 0x50ac
    jmp near @..api_idx_0004_6.l2    ; 0x50af
    mov ax, 0x93ea                   ; 0x50b2
    push ax                          ; 0x50b5
    mov ax, 0x93db                   ; 0x50b6
    push ax                          ; 0x50b9
    push word [bp + 0x4]             ; 0x50ba
    call api_idx_0006_2              ; 0x50bd
    add sp, byte 6                   ; 0x50c0
    jmp near @..api_idx_0004_6.l2    ; 0x50c3
    mov ax, 0x9408                   ; 0x50c6
    push ax                          ; 0x50c9
    mov ax, 0x93f9                   ; 0x50ca
    push ax                          ; 0x50cd
    push word [bp + 0x4]             ; 0x50ce
    call api_idx_0006_2              ; 0x50d1
    add sp, byte 6                   ; 0x50d4
    jmp near @..api_idx_0004_6.l2    ; 0x50d7
    mov ax, 0x9426                   ; 0x50da
    push ax                          ; 0x50dd
    mov ax, 0x9417                   ; 0x50de
    push ax                          ; 0x50e1
    push word [bp + 0x4]             ; 0x50e2
    call api_idx_0006_2              ; 0x50e5
    add sp, byte 6                   ; 0x50e8
    jmp near @..api_idx_0004_6.l2    ; 0x50eb
    mov ax, 0x9444                   ; 0x50ee
    push ax                          ; 0x50f1
    mov ax, 0x9435                   ; 0x50f2
    push ax                          ; 0x50f5
    push word [bp + 0x4]             ; 0x50f6
    call api_idx_0006_2              ; 0x50f9
    add sp, byte 6                   ; 0x50fc
    jmp near @..api_idx_0004_6.l2    ; 0x50ff
    mov ax, 0x9462                   ; 0x5102
    push ax                          ; 0x5105
    mov ax, 0x9453                   ; 0x5106
    push ax                          ; 0x5109
    push word [bp + 0x4]             ; 0x510a
    call api_idx_0006_2              ; 0x510d
    add sp, byte 6                   ; 0x5110
    jmp short @..api_idx_0004_6.l2   ; 0x5113
    mov ax, 0x9480                   ; 0x5115
    push ax                          ; 0x5118
    mov ax, 0x9471                   ; 0x5119
    push ax                          ; 0x511c
    push word [bp + 0x4]             ; 0x511d
    call api_idx_0006_2              ; 0x5120
    add sp, byte 6                   ; 0x5123
    jmp short @..api_idx_0004_6.l2   ; 0x5126
    mov ax, 0x949e                   ; 0x5128
    push ax                          ; 0x512b
    mov ax, 0x948f                   ; 0x512c
    push ax                          ; 0x512f
    push word [bp + 0x4]             ; 0x5130
    call api_idx_0006_2              ; 0x5133
    add sp, byte 6                   ; 0x5136
    jmp short @..api_idx_0004_6.l2   ; 0x5139
    mov ax, 0x94bc                   ; 0x513b
    push ax                          ; 0x513e
    mov ax, 0x94ad                   ; 0x513f
    push ax                          ; 0x5142
    push word [bp + 0x4]             ; 0x5143
    call api_idx_0006_2              ; 0x5146
    add sp, byte 6                   ; 0x5149
    jmp short @..api_idx_0004_6.l2   ; 0x514c
    mov ax, 0x94da                   ; 0x514e
    push ax                          ; 0x5151
    mov ax, 0x94cb                   ; 0x5152
    push ax                          ; 0x5155
    push word [bp + 0x4]             ; 0x5156
    call api_idx_0006_2              ; 0x5159
    add sp, byte 6                   ; 0x515c
    jmp short @..api_idx_0004_6.l2   ; 0x515f
    in ax, 0xa0                      ; 0x5161
    dec cx                           ; 0x5163
    mov ax, word [data_a16f]         ; 0x5164
    xchg bp, ax                      ; 0x5167
    mov ax, word [data_a0f9]         ; 0x5168
    dec cx                           ; 0x516b
    mov ax, word [data_a195]         ; 0x516c
    pop sp                           ; 0x516f
    mov ax, word [data_a0f9]         ; 0x5170
    outsw                            ; 0x5173
    mov ax, word [data_a10d]         ; 0x5174
    and word [bx + di - 0x5e7e], sp  ; 0x5177
    db 0x35, 0xa1
@..api_idx_0004_6.l1:
    cmp ax, strict word 0xe          ; 0x517d
    jae short @..api_idx_0004_6.l2   ; 0x5180
    xchg bx, ax                      ; 0x5182
    shl bx, 1                        ; 0x5183
    jmp [cs:bx - 0x5e58]             ; 0x5185
@..api_idx_0004_6.l2:
    mov ax, 0x248                    ; 0x518a
    imul word [bp + 0x4]             ; 0x518d
    mov bx, ax                       ; 0x5190
    mov al, byte [bx + 0x5e2b]       ; 0x5192
    sub ah, ah                       ; 0x5196
    jmp near @..api_idx_0004_6.l3    ; 0x5198
    mov ax, 0x14                     ; 0x519b
    push ax                          ; 0x519e
    mov ax, 0xb                      ; 0x519f
    push ax                          ; 0x51a2
    mov ax, 0                        ; 0x51a3
    push ax                          ; 0x51a6
    push word [bp + 0x4]             ; 0x51a7
    call math_loc_4ead               ; 0x51aa
    add sp, byte 8                   ; 0x51ad
    jmp near @..api_idx_0004_6.l4    ; 0x51b0
    mov ax, 0x248                    ; 0x51b3
    imul word [bp + 0x4]             ; 0x51b6
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x51bb
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 5                        ; 0x51c1
    cwd                              ; 0x51c4
    idiv cx                          ; 0x51c5
    imul cx                          ; 0x51c7
    push ax                          ; 0x51c9
    mov ax, 6                        ; 0x51ca
    push ax                          ; 0x51cd
    mov ax, 0                        ; 0x51ce
    push ax                          ; 0x51d1
    push word [bp + 0x4]             ; 0x51d2
    call math_loc_4ead               ; 0x51d5
    add sp, byte 8                   ; 0x51d8
    mov ax, 0x248                    ; 0x51db
    imul word [bp + 0x4]             ; 0x51de
    db 0x8b, 0xd8 ; mov bx, ax
    mov al, byte [bx + 0x5d67]       ; 0x51e3
    db 0x2a, 0xe4 ; sub ah, ah
    mov cx, 5                        ; 0x51e9
    cwd                              ; 0x51ec
    idiv cx                          ; 0x51ed
    imul cx                          ; 0x51ef
    push ax                          ; 0x51f1
    mov ax, 0xc                      ; 0x51f2
    push ax                          ; 0x51f5
    mov ax, 0                        ; 0x51f6
    push ax                          ; 0x51f9
    push word [bp + 0x4]             ; 0x51fa
    call math_loc_4ead               ; 0x51fd
    add sp, byte 8                   ; 0x5200
    jmp near @..api_idx_0004_6.l4    ; 0x5203
    mov ax, 0x14                     ; 0x5206
    push ax                          ; 0x5209
    mov ax, 9                        ; 0x520a
    push ax                          ; 0x520d
    mov ax, 0                        ; 0x520e
    push ax                          ; 0x5211
    push word [bp + 0x4]             ; 0x5212
    call math_loc_4ead               ; 0x5215
    add sp, byte 8                   ; 0x5218
    jmp near @..api_idx_0004_6.l4    ; 0x521b
    mov ax, 0x19                     ; 0x521e
    push ax                          ; 0x5221
    mov ax, 0xc                      ; 0x5222
    push ax                          ; 0x5225
    mov ax, 0                        ; 0x5226
    push ax                          ; 0x5229
    push word [bp + 0x4]             ; 0x522a
    call math_loc_4ead               ; 0x522d
    add sp, byte 8                   ; 0x5230
    mov ax, 0x19                     ; 0x5233
    push ax                          ; 0x5236
    mov ax, 4                        ; 0x5237
    push ax                          ; 0x523a
    mov ax, 0                        ; 0x523b
    push ax                          ; 0x523e
    push word [bp + 0x4]             ; 0x523f
    call math_loc_4ead               ; 0x5242
    add sp, byte 8                   ; 0x5245
    mov ax, 0x19                     ; 0x5248
    push ax                          ; 0x524b
    mov ax, 7                        ; 0x524c
    push ax                          ; 0x524f
    mov ax, 0                        ; 0x5250
    push ax                          ; 0x5253
    push word [bp + 0x4]             ; 0x5254
    call math_loc_4ead               ; 0x5257
    add sp, byte 8                   ; 0x525a
    mov ax, 0x19                     ; 0x525d
    push ax                          ; 0x5260
    mov ax, 0xa                      ; 0x5261
    push ax                          ; 0x5264
    mov ax, 0                        ; 0x5265
    push ax                          ; 0x5268
    push word [bp + 0x4]             ; 0x5269
    call math_loc_4ead               ; 0x526c
    add sp, byte 8                   ; 0x526f
    mov ax, 0x19                     ; 0x5272
    push ax                          ; 0x5275
    mov ax, 0xb                      ; 0x5276
    push ax                          ; 0x5279
    mov ax, 0                        ; 0x527a
    push ax                          ; 0x527d
    push word [bp + 0x4]             ; 0x527e
    call math_loc_4ead               ; 0x5281
    add sp, byte 8                   ; 0x5284
