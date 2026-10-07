api_idx_0010_2:
    mov ax, 0xfff0                   ; 0x5050
    call ds_dispatch_f40b            ; 0x5053
    mov word [bp - 0x0010], 1        ; 0x5056
    mov word [bp - 0x000e], 1        ; 0x505b
    mov word [bp - 0x000c], 0xffff   ; 0x5060
    lea ax, word [bp - 0x0010]       ; 0x5065
    push ax                          ; 0x5068
    mov ax, 1                        ; 0x5069
    push ax                          ; 0x506c
    mov ax, 0xffff                   ; 0x506d
    push ax                          ; 0x5070
    mov ax, 1                        ; 0x5071
    push ax                          ; 0x5074
    mov ax, data_0002                ; 0x5075
    push ax                          ; 0x5078
    mov ax, 1                        ; 0x5079
    push ax                          ; 0x507c
    mov ax, 0xc                      ; 0x507d
    push ax                          ; 0x5080
    mov ax, 0x6a                     ; 0x5081
    push ax                          ; 0x5084
    mov ax, 0xb                      ; 0x5085
    push ax                          ; 0x5088
    mov ax, 0x70                     ; 0x5089
    push ax                          ; 0x508c
    mov ax, 0x4a                     ; 0x508d
    push ax                          ; 0x5090
    mov ax, 0x161                    ; 0x5091
    push ax                          ; 0x5094
    mov ax, 0x162                    ; 0x5095
    push ax                          ; 0x5098
    call math_loc_1ca0               ; 0x5099
    add sp, byte 0x1a                ; 0x509c
    mov word [bp - 0x0006], ax       ; 0x509f
    cmp word [bp - 0x0006], byte 0   ; 0x50a2
    je short @..api_idx_0010_2.l1    ; 0x50a6
    jmp near @..api_idx_0010_2.l6    ; 0x50a8
@..api_idx_0010_2.l1:
    cmp word [bp + 0xa], byte 9      ; 0x50ab
    jge short @..api_idx_0010_2.l3   ; 0x50af
    mov ax, word [bp + 0xa]          ; 0x50b1
    dec ax                           ; 0x50b4
    mov word [bp - 0x0004], ax       ; 0x50b5
    mov ax, 0x248                    ; 0x50b8
    imul word [bp + 0x4]             ; 0x50bb
    mov cx, ax                       ; 0x50be
    mov ax, word [bp - 0x0004]       ; 0x50c0
    add cx, ax                       ; 0x50c3
    mov bx, cx                       ; 0x50c5
    cmp byte [bx + 0x5d64], 0x14     ; 0x50c7
    jae short @..api_idx_0010_2.l2   ; 0x50cc
    inc byte [bx + 0x5d64]           ; 0x50ce
@..api_idx_0010_2.l2:
    jmp near @..api_idx_0010_2.l5    ; 0x50d2
@..api_idx_0010_2.l3:
    mov ax, word [bp + 0xa]          ; 0x50d5
    jmp near @..api_idx_0010_2.l4    ; 0x50d8
    mov ax, 0x248                    ; 0x50db
    imul word [bp + 0x4]             ; 0x50de
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e37], 4        ; 0x50e3
    jae short loc_50ef               ; 0x50e8
    mov byte [bx + 0x5e37], 4        ; 0x50ea
    jmp near @..api_idx_0010_2.l5    ; 0x50ef
    mov ax, 0x248                    ; 0x50f2
    imul word [bp + 0x4]             ; 0x50f5
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5e38], 4        ; 0x50fa
    jae short loc_5106               ; 0x50ff
    mov byte [bx + 0x5e38], 4        ; 0x5101
    jmp near @..api_idx_0010_2.l5    ; 0x5106
    mov ax, 0x248                    ; 0x5109
    imul word [bp + 0x4]             ; 0x510c
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5e2f], 0        ; 0x5111
    mov word [bp - 0x0004], 0        ; 0x5116
    mov ax, 0x248                    ; 0x511b
    imul word [bp + 0x4]             ; 0x511e
    add ax, word [bp - 0x0004]       ; 0x5121
    db 0x8b, 0xd8 ; mov bx, ax
    mov byte [bx + 0x5d5a], 0        ; 0x5126
    inc word [bp - 0x0004]           ; 0x512b
    mov ax, word [bp - 0x0004]       ; 0x512e
    cmp ax, strict word 0xa          ; 0x5131
    jl short loc_511b                ; 0x5134
    mov ax, 0x248                    ; 0x5136
    imul word [bp + 0x4]             ; 0x5139
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c0e]       ; 0x513e
    mov word [bx + 0x5c0c], ax       ; 0x5142
    mov ax, word [bx + 0x5c12]       ; 0x5146
    mov word [bx + 0x5c10], ax       ; 0x514a
    cmp word [bp + 0xa], byte 0x0b   ; 0x514e
    je short loc_51a1                ; 0x5152
    mov ax, 0x248                    ; 0x5154
    imul word [bp + 0x4]             ; 0x5157
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5bfc]       ; 0x515c
    mov dx, word [bx + 0x5bfe]       ; 0x5160
    mov cx, 0x16d                    ; 0x5164
    mov bx, 0                        ; 0x5167
    db 0xe8, 0x32, 0xa8 ; call ds_dispatch_f99f
    cmp dx, byte 0                   ; 0x516d
    jl short loc_5179                ; 0x5170
    jne short loc_517b               ; 0x5172
    cmp ax, strict word 0x12         ; 0x5174
    ja short loc_517b                ; 0x5177
    jmp short loc_518e               ; 0x5179
    mov ax, 0x248                    ; 0x517b
    imul word [bp + 0x4]             ; 0x517e
    db 0x8b, 0xd8 ; mov bx, ax
    add word [bx + 0x5bfc], strict word 0xfe92 ; 0x5183
    adc word [bx + 0x5bfe], byte 0xff ; 0x5189
    mov ax, 0x248                    ; 0x518e
    imul word [bp + 0x4]             ; 0x5191
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d67], 0x12     ; 0x5196
    jae short loc_51a1               ; 0x519b
    inc byte [bx + 0x5d67]           ; 0x519d
    jmp near @..api_idx_0010_2.l5    ; 0x51a1
    mov ax, 5                        ; 0x51a4
    push ax                          ; 0x51a7
    db 0xe8, 0xfe, 0x65 ; call ds_dispatch_b7a9
    pop cx                           ; 0x51ab
    inc ax                           ; 0x51ac
    inc ax                           ; 0x51ad
    mov word [bp - 0x0004], ax       ; 0x51ae
    push ax                          ; 0x51b1
    mov ax, 0x248                    ; 0x51b2
    imul word [bp + 0x4]             ; 0x51b5
    db 0x8b, 0xd8 ; mov bx, ax
    pop ax                           ; 0x51ba
    add word [bx + 0x5c0e], ax       ; 0x51bb
    add word [bx + 0x5c0c], ax       ; 0x51bf
    jmp near @..api_idx_0010_2.l5    ; 0x51c3
    mov word [bp - 0x0004], 0        ; 0x51c6
    mov ax, 0x248                    ; 0x51cb
    imul word [bp + 0x4]             ; 0x51ce
    mov cx, word [bp - 0x0004]       ; 0x51d1
    shl cx, 1                        ; 0x51d4
    shl cx, 1                        ; 0x51d6
    db 0x03, 0xc1 ; add ax, cx
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, word [bx + 0x5c1e]       ; 0x51dc
    mov word [bx + 0x5c1c], ax       ; 0x51e0
    inc word [bp - 0x0004]           ; 0x51e4
    mov ax, word [bp - 0x0004]       ; 0x51e7
    cmp ax, strict word 6            ; 0x51ea
    jl short loc_51cb                ; 0x51ed
    jmp near @..api_idx_0010_2.l5    ; 0x51ef
    mov ax, 0x248                    ; 0x51f2
    imul word [bp + 0x4]             ; 0x51f5
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d68], 0x12     ; 0x51fa
    jae short loc_5206               ; 0x51ff
    mov byte [bx + 0x5d68], 0x12     ; 0x5201
    cmp byte [bx + 0x5d69], 0x12     ; 0x5206
    jae short loc_5212               ; 0x520b
    mov byte [bx + 0x5d69], 0x12     ; 0x520d
    mov ax, 5                        ; 0x5212
    push ax                          ; 0x5215
    mov ax, 0xa                      ; 0x5216
    push ax                          ; 0x5219
    mov ax, 0x21                     ; 0x521a
    push ax                          ; 0x521d
    push word [bp + 0x4]             ; 0x521e
    call api_idx_0002_7              ; 0x5221
    add sp, byte 8                   ; 0x5224
    jmp near @..api_idx_0010_2.l5    ; 0x5227
    mov word [bp - 0x0002], 0        ; 0x522a
    mov ax, 0x248                    ; 0x522f
    imul word [bp + 0x4]             ; 0x5232
    db 0x8b, 0xd8 ; mov bx, ax
    cmp byte [bx + 0x5d6b], 0        ; 0x5237
    jbe short loc_5255               ; 0x523c
    cmp word [bp - 0x0002], byte 0   ; 0x523e
    jne short loc_5255               ; 0x5242
    dec byte [bx + 0x5d6b]           ; 0x5244
    mov ax, 3                        ; 0x5248
    push ax                          ; 0x524b
    db 0xe8, 0x5a, 0x65 ; call ds_dispatch_b7a9
    pop cx                           ; 0x524f
