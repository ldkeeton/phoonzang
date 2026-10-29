; auto-generated
api_idx_005e_QNLK:
    mov ax, 0xffa2                   ; 0x5fd0
    call aztec_csav                  ; 0x5fd3
    mov ax, 0x248                    ; 0x5fd6
    imul word [bp + 4]               ; 0x5fd9
    mov bx, ax                       ; 0x5fdc
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x5fde
    push ax                          ; 0x5fe2
    mov al, byte [bss_91c5]          ; 0x5fe3
    sub ah, ah                       ; 0x5fe6
    mov cx, ax                       ; 0x5fe8
    pop ax                           ; 0x5fea
    sub ax, cx                       ; 0x5feb
    mov cx, 5                        ; 0x5fed
    imul cx                          ; 0x5ff0
    push ax                          ; 0x5ff2
    mov al, byte [bx + party_records + pc_rec.flag + 0xf] ; 0x5ff3
    sub ah, ah                       ; 0x5ff7
    mov cx, 2                        ; 0x5ff9
    cwd                              ; 0x5ffc
    idiv cx                          ; 0x5ffd
    mov cx, ax                       ; 0x5fff
    pop ax                           ; 0x6001
    add ax, cx                       ; 0x6002
    mov word [bp - 2], ax            ; 0x6004
    cmp byte [bx + party_records + pc_rec.profession], 3 ; 0x6007
    jne short .forward1              ; 0x600c
    mov al, byte [bx + party_records + pc_rec.stat + 0x4] ; 0x600e
    sub ah, ah                       ; 0x6012
    shl ax, 1                        ; 0x6014
    add word [bp - 2], ax            ; 0x6016
    jmp short .forward3              ; 0x6019
.forward1:
    mov al, byte [bx + party_records + pc_rec.profession] ; 0x601b
    cmp al, 4                        ; 0x601f
    je short .forward2               ; 0x6021
    cmp al, 6                        ; 0x6023
    je short .forward2               ; 0x6025
    cmp al, 0xd                      ; 0x6027
    jne short .forward3              ; 0x6029
.forward2:
    mov al, byte [bx + party_records + pc_rec.stat + 0x4] ; 0x602b
    sub ah, ah                       ; 0x602f
    add word [bp - 2], ax            ; 0x6031
.forward3:
    mov al, byte [bx + party_records + pc_rec.stat + 0x6] ; 0x6034
    sub ah, ah                       ; 0x6038
    push ax                          ; 0x603a
    add bx, word [bss_9136]          ; 0x603b
    mov al, byte [bx + party_records + pc_rec.pad_01be] ; 0x603f
    cbw                              ; 0x6043
    add ax, word [bss_964e]          ; 0x6044
    mov cx, 4                        ; 0x6048
    cwd                              ; 0x604b
    idiv cx                          ; 0x604c
    mov cx, ax                       ; 0x604e
    pop ax                           ; 0x6050
    add ax, cx                       ; 0x6051
    add ax, word [bp - 2]            ; 0x6053
    add ax, strict word 0xfff6       ; 0x6056
    mov word [bp - 2], ax            ; 0x6059
    cmp ax, strict word 0            ; 0x605c
    jl short .forward4               ; 0x605f
    cmp word [bss_9136], byte 0x30   ; 0x6061
    jne short .forward5              ; 0x6066
.forward4:
    mov word [bp - 2], 0             ; 0x6068
.forward5:
    cmp word [bp - 2], byte 0x5f     ; 0x606d
    jle short .forward6              ; 0x6071
    mov word [bp - 2], 0x5f          ; 0x6073
.forward6:
    mov ax, 0x64                     ; 0x6078
    push ax                          ; 0x607b
    call random_below                ; 0x607c
    pop cx                           ; 0x607f
    add ax, word [bss_9d60]          ; 0x6080
    mov word [bp - 4], ax            ; 0x6084
    mov ax, 5                        ; 0x6087
    push ax                          ; 0x608a
    call random_below                ; 0x608b
    pop cx                           ; 0x608e
    add ax, word [bss_9d60]          ; 0x608f
    add ax, strict word 0xa          ; 0x6093
    mov word [bss_9d60], ax          ; 0x6096
    lea ax, word [bp - 0x5e]         ; 0x6099
    push ax                          ; 0x609c
    mov ax, 0x248                    ; 0x609d
    imul word [bp + 4]               ; 0x60a0
    mov bx, ax                       ; 0x60a3
    mov al, byte [bx + party_records + pc_rec.gender] ; 0x60a5
    sub ah, ah                       ; 0x60a9
    add ax, MSG_MAKES_HIS_MOVE       ; 0x60ab
    push ax                          ; 0x60ae
    call load_message_string         ; 0x60af
    add sp, byte 4                   ; 0x60b2
    mov ax, 0x5e                     ; 0x60b5
    push ax                          ; 0x60b8
    mov ax, 0x248                    ; 0x60b9
    imul word [bp + 4]               ; 0x60bc
    add ax, party_records            ; 0x60bf
    push ax                          ; 0x60c2
    lea ax, word [bp - 0x5e]         ; 0x60c3
    push ax                          ; 0x60c6
    call str_subst_char              ; 0x60c7
    add sp, byte 6                   ; 0x60ca
    mov ax, 0x55                     ; 0x60cd
    push ax                          ; 0x60d0
    mov ax, 0                        ; 0x60d1
    push ax                          ; 0x60d4
    mov ax, 1                        ; 0x60d5
    push ax                          ; 0x60d8
    lea ax, word [bp - 0x5e]         ; 0x60d9
    push ax                          ; 0x60dc
    call loc_MLKO                    ; 0x60dd
    add sp, byte 8                   ; 0x60e0
    mov word [bp - 0xa], 0           ; 0x60e3
.back1:
    push word [bss_9cd2]             ; 0x60e8
    call random_below                ; 0x60ec
    pop cx                           ; 0x60ef
    cmp ax, word [bp - 0xa]          ; 0x60f0
    jle short .forward7              ; 0x60f3
    inc word [bp - 0xa]              ; 0x60f5
    jmp short .back1                 ; 0x60f8
.forward7:
    mov ax, 0x64                     ; 0x60fa
    push ax                          ; 0x60fd
    call random_below                ; 0x60fe
    pop cx                           ; 0x6101
    push ax                          ; 0x6102
    mov al, byte [bss_91c5]          ; 0x6103
    sub ah, ah                       ; 0x6106
    mov cx, ax                       ; 0x6108
    inc ax                           ; 0x610a
    mov cx, ax                       ; 0x610b
    pop ax                           ; 0x610d
    imul cx                          ; 0x610e
    mov cx, 2                        ; 0x6110
    cwd                              ; 0x6113
    idiv cx                          ; 0x6114
    mov word [bp - 6], ax            ; 0x6116
    cwd                              ; 0x6119
    cmp dx, word [bss_91b8]          ; 0x611a
    jl short .forward8               ; 0x611e
    jne short .forward9              ; 0x6120
    cmp ax, word [bss_91b6]          ; 0x6122
    ja short .forward9               ; 0x6126
.forward8:
    jmp short .forward10             ; 0x6128
.forward9:
    mov ax, word [bss_91b6]          ; 0x612a
    mov word [bp - 6], ax            ; 0x612d
.forward10:
    mov ax, word [bp - 4]            ; 0x6130
    cmp ax, word [bp - 2]            ; 0x6133
    jl short .forward11              ; 0x6136
    jmp near .forward17              ; 0x6138
.forward11:
    mov ax, 0                        ; 0x613b
    push ax                          ; 0x613e
    push word [bp + 4]               ; 0x613f
    call api_idx_0004_PULL           ; 0x6142
    add sp, byte 4                   ; 0x6145
    mov word [bp - 8], ax            ; 0x6148
    call api_idx_0004_GJHP           ; 0x614b
    mov ax, 3                        ; 0x614e
    push ax                          ; 0x6151
    mov ax, 0xf                      ; 0x6152
    push ax                          ; 0x6155
    push word [bp + 4]               ; 0x6156
    call loc_SIKN                    ; 0x6159
    add sp, byte 6                   ; 0x615c
    cmp word [bp - 8], byte -1       ; 0x615f
    je short .forward12              ; 0x6163
    cmp word [bss_9cd2], byte 0      ; 0x6165
    jle short .forward12             ; 0x616a
    mov ax, word [bp - 0xa]          ; 0x616c
    shl ax, 1                        ; 0x616f
    mov bx, ax                       ; 0x6171
    push word [bx + bss_9cd4]        ; 0x6173
    call loc_GMVH                    ; 0x6177
    pop cx                           ; 0x617a
    test ax, ax                      ; 0x617b
    jne short .forward12             ; 0x617d
    mov ax, 0x64                     ; 0x617f
    push ax                          ; 0x6182
    call random_below                ; 0x6183
    pop cx                           ; 0x6186
    cmp ax, strict word 0x21         ; 0x6187
    jge short .forward15             ; 0x618a
.forward12:
    cmp word [bp - 6], byte 0        ; 0x618c
    jg short .forward13              ; 0x6190
    lea ax, word [bp - 0x5e]         ; 0x6192
    push ax                          ; 0x6195
    mov ax, MSG_PILFER_FAILED_1572   ; 0x6196
    push ax                          ; 0x6199
    call load_message_string         ; 0x619a
    add sp, byte 4                   ; 0x619d
    jmp short .forward14             ; 0x61a0
.forward13:
    mov ax, word [bp - 6]            ; 0x61a2
    cwd                              ; 0x61a5
    sub word [bss_91b6], ax          ; 0x61a6
    sbb word [bss_91b8], dx          ; 0x61aa
    mov ax, word [bp - 6]            ; 0x61ae
    cwd                              ; 0x61b1
    push ax                          ; 0x61b2
    push dx                          ; 0x61b3
    mov ax, 0x248                    ; 0x61b4
    imul word [bp + 4]               ; 0x61b7
    mov bx, ax                       ; 0x61ba
    pop dx                           ; 0x61bc
    pop ax                           ; 0x61bd
    add word [bx + party_records + pc_rec.f_0014], ax ; 0x61be
    adc word [bx + party_records + pc_rec.f_0016], dx ; 0x61c2
    lea ax, word [bp - 0x5e]         ; 0x61c6
    push ax                          ; 0x61c9
    mov ax, MSG_STOLE_SOME_GOLD      ; 0x61ca
    push ax                          ; 0x61cd
    call load_message_string         ; 0x61ce
    add sp, byte 4                   ; 0x61d1
.forward14:
    jmp short .forward16             ; 0x61d4
.forward15:
    mov ax, word [bp - 8]            ; 0x61d6
    mov cx, 0x100                    ; 0x61d9
    cwd                              ; 0x61dc
    idiv cx                          ; 0x61dd
    mov word [bp - 0xc], ax          ; 0x61df
    mov word [bp - 0xe], dx          ; 0x61e2
    mov ax, 0                        ; 0x61e5
    push ax                          ; 0x61e8
    mov ax, word [bp - 0xa]          ; 0x61e9
    shl ax, 1                        ; 0x61ec
    mov bx, ax                       ; 0x61ee
    push word [bx + bss_9c6a]        ; 0x61f0
    mov ax, 0x248                    ; 0x61f4
    imul word [bp + 4]               ; 0x61f7
    push ax                          ; 0x61fa
    mov ax, 0x78                     ; 0x61fb
    imul word [bp - 0xc]             ; 0x61fe
    mov cx, ax                       ; 0x6201
    pop ax                           ; 0x6203
    add ax, cx                       ; 0x6204
    push ax                          ; 0x6206
    mov ax, 0xc                      ; 0x6207
    imul word [bp - 0xe]             ; 0x620a
    mov cx, ax                       ; 0x620d
    pop ax                           ; 0x620f
    add ax, cx                       ; 0x6210
    add ax, 0x5c34                   ; 0x6212
    push ax                          ; 0x6215
    push word [bx + bss_9cd4]        ; 0x6216
    push word [bp + 4]               ; 0x621a
    call api_idx_004c_RQSO           ; 0x621d
    add sp, byte 0xa                 ; 0x6220
    lea ax, word [bp - 0x5e]         ; 0x6223
    push ax                          ; 0x6226
    mov ax, MSG_STOLE_AN_ITEM        ; 0x6227
    push ax                          ; 0x622a
    call load_message_string         ; 0x622b
    add sp, byte 4                   ; 0x622e
    mov ax, word [bp - 0xa]          ; 0x6231
    shl ax, 1                        ; 0x6234
    mov bx, ax                       ; 0x6236
    mov word [bx + bss_9cd4], 0      ; 0x6238
    call api_idx_0004_GJHP           ; 0x623e
.forward16:
    jmp near .forward21              ; 0x6241
.forward17:
    mov ax, word [bp - 2]            ; 0x6244
    shl ax, 1                        ; 0x6247
    cmp ax, word [bp - 4]            ; 0x6249
    jl short .forward18              ; 0x624c
    cmp word [bp - 4], byte 0x5f     ; 0x624e
    jge short .forward18             ; 0x6252
    jmp near .forward20              ; 0x6254
.forward18:
    lea ax, word [bp - 0x5e]         ; 0x6257
    push ax                          ; 0x625a
    mov ax, MSG_GOT_CAUGHT           ; 0x625b
    push ax                          ; 0x625e
    call load_message_string         ; 0x625f
    add sp, byte 4                   ; 0x6262
    mov ax, 0x5e                     ; 0x6265
    push ax                          ; 0x6268
    mov ax, 0x248                    ; 0x6269
    imul word [bp + 4]               ; 0x626c
    add ax, party_records            ; 0x626f
    push ax                          ; 0x6272
    lea ax, word [bp - 0x5e]         ; 0x6273
    push ax                          ; 0x6276
    call str_subst_char              ; 0x6277
    add sp, byte 6                   ; 0x627a
    mov ax, 0x16                     ; 0x627d
    push ax                          ; 0x6280
    mov ax, 1                        ; 0x6281
    push ax                          ; 0x6284
    push ax                          ; 0x6285
    lea ax, word [bp - 0x5e]         ; 0x6286
    push ax                          ; 0x6289
    call loc_MLKO                    ; 0x628a
    add sp, byte 8                   ; 0x628d
    cmp word [bss_9136], byte 0x30   ; 0x6290
    je short .forward19              ; 0x6295
    mov ax, 0xf                      ; 0x6297
    push ax                          ; 0x629a
    call random_below                ; 0x629b
    pop cx                           ; 0x629e
    mov cx, ax                       ; 0x629f
    add ax, strict word 0xf          ; 0x62a1
    mov cx, ax                       ; 0x62a4
    mov ax, 0                        ; 0x62a6
    sub ax, cx                       ; 0x62a9
    push ax                          ; 0x62ab
    mov ax, 0x19                     ; 0x62ac
    push ax                          ; 0x62af
    call random_below                ; 0x62b0
    pop cx                           ; 0x62b3
    mov cx, ax                       ; 0x62b4
    add ax, strict word 0x19         ; 0x62b6
    mov cx, ax                       ; 0x62b9
    mov ax, 0                        ; 0x62bb
    sub ax, cx                       ; 0x62be
    push ax                          ; 0x62c0
    push word [bp + 4]               ; 0x62c1
    call loc_HOSN                    ; 0x62c4
    add sp, byte 6                   ; 0x62c7
.forward19:
    mov ax, 0                        ; 0x62ca
    push ax                          ; 0x62cd
    push ax                          ; 0x62ce
    push ax                          ; 0x62cf
    mov ax, 0xa                      ; 0x62d0
    push ax                          ; 0x62d3
    push word [bp + 4]               ; 0x62d4
    call api_idx_0006_SRQN           ; 0x62d7
    add sp, byte 0xa                 ; 0x62da
    mov ax, 0xffff                   ; 0x62dd
    ret                              ; 0x62e0
.forward20:
    lea ax, word [bp - 0x5e]         ; 0x62e1
    push ax                          ; 0x62e4
    mov ax, MSG_PILFER_FAILED_1572   ; 0x62e5
    push ax                          ; 0x62e8
    call load_message_string         ; 0x62e9
    add sp, byte 4                   ; 0x62ec
.forward21:
    mov ax, 0x5e                     ; 0x62ef
    push ax                          ; 0x62f2
    mov ax, 0x248                    ; 0x62f3
    imul word [bp + 4]               ; 0x62f6
    add ax, party_records            ; 0x62f9
    push ax                          ; 0x62fc
    lea ax, word [bp - 0x5e]         ; 0x62fd
    push ax                          ; 0x6300
    call str_subst_char              ; 0x6301
    add sp, byte 6                   ; 0x6304
    mov ax, 0x55                     ; 0x6307
    push ax                          ; 0x630a
    mov ax, 1                        ; 0x630b
    push ax                          ; 0x630e
    push ax                          ; 0x630f
    lea ax, word [bp - 0x5e]         ; 0x6310
    push ax                          ; 0x6313
    call loc_MLKO                    ; 0x6314
    add sp, byte 8                   ; 0x6317
    mov ax, 0                        ; 0x631a
    ret                              ; 0x631d
