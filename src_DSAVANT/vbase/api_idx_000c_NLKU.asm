; auto-generated
api_idx_000c_NLKU:
    mov ax, 0xfff4                   ; 0x4060
    call aztec_csav                  ; 0x4063
    mov word [bp - 0x0002], 0        ; 0x4066
@..api_idx_000c_NLKU.l1:
    mov word [bp - 0x0004], 0        ; 0x406b
@..api_idx_000c_NLKU.l2:
    mov ax, 0x3f                     ; 0x4070
    push ax                          ; 0x4073
    mov ax, 0                        ; 0x4074
    push ax                          ; 0x4077
    mov ax, 3                        ; 0x4078
    imul word [bp - 0x0002]          ; 0x407b
    add ax, word [bp - 0x0004]       ; 0x407e
    mov bx, ax                       ; 0x4081
    mov al, byte [bx + bss_9c94]     ; 0x4083
    sub ah, ah                       ; 0x4087
    add ax, word [bp + 0x4]          ; 0x4089
    push ax                          ; 0x408c
    call clamp_between               ; 0x408d
    add sp, byte 6                   ; 0x4090
    push ax                          ; 0x4093
    mov ax, 3                        ; 0x4094
    imul word [bp - 0x0002]          ; 0x4097
    mov cx, ax                       ; 0x409a
    add ax, word [bp - 0x0004]       ; 0x409c
    mov bx, ax                       ; 0x409f
    pop ax                           ; 0x40a1
    mov byte [bx - 0x606c], al       ; 0x40a2
    cmp al, 0x20                     ; 0x40a6
    jbe short @..api_idx_000c_NLKU.l3 ; 0x40a8
    sub ah, ah                       ; 0x40aa
    add ax, strict word 0xffe0       ; 0x40ac
    imul word [bp + 0x6]             ; 0x40af
    mov cx, 0x20                     ; 0x40b2
    cwd                              ; 0x40b5
    idiv cx                          ; 0x40b6
    mov word [bp - 0x0006], ax       ; 0x40b8
    mov ax, 0x3f                     ; 0x40bb
    push ax                          ; 0x40be
    mov ax, 0                        ; 0x40bf
    push ax                          ; 0x40c2
    mov al, byte [bx - 0x606c]       ; 0x40c3
    sub ah, ah                       ; 0x40c7
    add ax, word [bp - 0x0006]       ; 0x40c9
    push ax                          ; 0x40cc
    call clamp_between               ; 0x40cd
    add sp, byte 6                   ; 0x40d0
    push ax                          ; 0x40d3
    mov ax, 3                        ; 0x40d4
    imul word [bp - 0x0002]          ; 0x40d7
    mov cx, ax                       ; 0x40da
    add ax, word [bp - 0x0004]       ; 0x40dc
    mov bx, ax                       ; 0x40df
    pop ax                           ; 0x40e1
    mov byte [bx - 0x606c], al       ; 0x40e2
    jmp short @..api_idx_000c_NLKU.l4 ; 0x40e6
@..api_idx_000c_NLKU.l3:
    mov ax, 3                        ; 0x40e8
    imul word [bp - 0x0002]          ; 0x40eb
    add ax, word [bp - 0x0004]       ; 0x40ee
    mov bx, ax                       ; 0x40f1
    cmp byte [bx - 0x606c], 0x20     ; 0x40f3
    jae short @..api_idx_000c_NLKU.l4 ; 0x40f8
    mov al, byte [bx - 0x606c]       ; 0x40fa
    sub ah, ah                       ; 0x40fe
    mov cx, ax                       ; 0x4100
    mov ax, 0x20                     ; 0x4102
    sub ax, cx                       ; 0x4105
    imul word [bp + 0x6]             ; 0x4107
    mov cx, 0x20                     ; 0x410a
    cwd                              ; 0x410d
    idiv cx                          ; 0x410e
    mov word [bp - 0x0006], ax       ; 0x4110
    mov ax, 0x3f                     ; 0x4113
    push ax                          ; 0x4116
    mov ax, 0                        ; 0x4117
    push ax                          ; 0x411a
    mov al, byte [bx - 0x606c]       ; 0x411b
    sub ah, ah                       ; 0x411f
    sub ax, word [bp - 0x0006]       ; 0x4121
    push ax                          ; 0x4124
    call clamp_between               ; 0x4125
    add sp, byte 6                   ; 0x4128
    push ax                          ; 0x412b
    mov ax, 3                        ; 0x412c
    imul word [bp - 0x0002]          ; 0x412f
    mov cx, ax                       ; 0x4132
    add ax, word [bp - 0x0004]       ; 0x4134
    mov bx, ax                       ; 0x4137
    pop ax                           ; 0x4139
    mov byte [bx - 0x606c], al       ; 0x413a
@..api_idx_000c_NLKU.l4:
    inc word [bp - 0x0004]           ; 0x413e
    mov ax, word [bp - 0x0004]       ; 0x4141
    cmp ax, strict word 3            ; 0x4144
    jge short @..api_idx_000c_NLKU.l5 ; 0x4147
    jmp near @..api_idx_000c_NLKU.l2 ; 0x4149
@..api_idx_000c_NLKU.l5:
    inc word [bp - 0x0002]           ; 0x414c
    mov ax, word [bp - 0x0002]       ; 0x414f
    cmp ax, 0x100                    ; 0x4152
    jge short @..api_idx_000c_NLKU.l6 ; 0x4155
    jmp near @..api_idx_000c_NLKU.l1 ; 0x4157
@..api_idx_000c_NLKU.l6:
    mov ax, 0xff                     ; 0x415a
    push ax                          ; 0x415d
    mov ax, 0x200                    ; 0x415e
    push ax                          ; 0x4161
    mov ax, bss_a294                 ; 0x4162
    push ax                          ; 0x4165
    call aztec_setmem                ; 0x4166
    add sp, byte 6                   ; 0x4169
    mov word [bp - 0x0002], 0        ; 0x416c
@..api_idx_000c_NLKU.l7:
    mov ax, 3                        ; 0x4171
    imul word [bp - 0x0002]          ; 0x4174
    mov bx, ax                       ; 0x4177
    mov al, byte [bx - 0x606c]       ; 0x4179
    sub ah, ah                       ; 0x417d
    mov cx, 8                        ; 0x417f
    cwd                              ; 0x4182
    idiv cx                          ; 0x4183
    mov word [bp - 0x0008], ax       ; 0x4185
    mov al, byte [bx - 0x606b]       ; 0x4188
    sub ah, ah                       ; 0x418c
    cwd                              ; 0x418e
    idiv cx                          ; 0x418f
    mov word [bp - 0x000a], ax       ; 0x4191
    mov al, byte [bx - 0x606a]       ; 0x4194
    sub ah, ah                       ; 0x4198
    cwd                              ; 0x419a
    idiv cx                          ; 0x419b
    mov word [bp - 0x000c], ax       ; 0x419d
    mov al, byte [bp - 0x0002]       ; 0x41a0
    mov dx, word [bp - 0x0008]       ; 0x41a3
    mov cx, 6                        ; 0x41a6
    shl dx, cl                       ; 0x41a9
    mov cx, dx                       ; 0x41ab
    mov dx, word [bp - 0x000a]       ; 0x41ad
    shl dx, 1                        ; 0x41b0
    shl dx, 1                        ; 0x41b2
    shl dx, 1                        ; 0x41b4
    add cx, dx                       ; 0x41b6
    add cx, word [bp - 0x000c]       ; 0x41b8
    mov bx, cx                       ; 0x41bb
    mov byte [bx + bss_a294], al     ; 0x41bd
    inc word [bp - 0x0002]           ; 0x41c1
    mov ax, word [bp - 0x0002]       ; 0x41c4
    cmp ax, 0x100                    ; 0x41c7
    jl short @..api_idx_000c_NLKU.l7 ; 0x41ca
    mov ax, 0xa294                   ; 0x41cc
    push ax                          ; 0x41cf
    mov ax, 0x9f94                   ; 0x41d0
    push ax                          ; 0x41d3
    call gfx_entry_38                ; 0x41d4
    add sp, byte 4                   ; 0x41d7
    mov ax, 0xffff                   ; 0x41da
    push ax                          ; 0x41dd
    push ax                          ; 0x41de
    push ax                          ; 0x41df
    call gfx_reset_rgb               ; 0x41e0
    add sp, byte 6                   ; 0x41e3
    ret                              ; 0x41e6
