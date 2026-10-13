; auto-generated
api_idx_004c_2:
    mov ax, 0xffb4                   ; 0x4fea
    call aztec_csav                  ; 0x4fed
    mov word [bss_9ca8], 0           ; 0x4ff0
    mov word [bp - 0x0002], 0        ; 0x4ff6
@..api_idx_004c_2.l1:
    mov word [bp - 0x0004], 0        ; 0x4ffb
@..api_idx_004c_2.l2:
    mov ax, 0x248                    ; 0x5000
    imul word [bp + 0x4]             ; 0x5003
    push ax                          ; 0x5006
    mov ax, 0x78                     ; 0x5007
    imul word [bp - 0x0002]          ; 0x500a
    mov cx, ax                       ; 0x500d
    pop ax                           ; 0x500f
    add ax, cx                       ; 0x5010
    push ax                          ; 0x5012
    mov ax, 0xc                      ; 0x5013
    imul word [bp - 0x0004]          ; 0x5016
    mov cx, ax                       ; 0x5019
    pop ax                           ; 0x501b
    add ax, cx                       ; 0x501c
    mov bx, ax                       ; 0x501e
    cmp word [bx + 0x5c34], byte 0   ; 0x5020
    jg short @..api_idx_004c_2.l3    ; 0x5025
    jmp near @..api_idx_004c_2.l8    ; 0x5027
@..api_idx_004c_2.l3:
    mov ax, 0                        ; 0x502a
    push ax                          ; 0x502d
    push word [bx + 0x5c34]          ; 0x502e
    lea ax, word [bp - 0x004c]       ; 0x5032
    push ax                          ; 0x5035
    mov ax, 1                        ; 0x5036
    push ax                          ; 0x5039
    call ds_app_file_0883            ; 0x503a
    add sp, byte 8                   ; 0x503d
    mov ax, 0x248                    ; 0x5040
    imul word [bp + 0x4]             ; 0x5043
    push ax                          ; 0x5046
    mov ax, 0x78                     ; 0x5047
    imul word [bp - 0x0002]          ; 0x504a
    mov cx, ax                       ; 0x504d
    pop ax                           ; 0x504f
    add ax, cx                       ; 0x5050
    push ax                          ; 0x5052
    mov ax, 0xc                      ; 0x5053
    imul word [bp - 0x0004]          ; 0x5056
    mov cx, ax                       ; 0x5059
    pop ax                           ; 0x505b
    add ax, cx                       ; 0x505c
    mov bx, ax                       ; 0x505e
    mov al, byte [bx + 0x5c3b]       ; 0x5060
    sub ah, ah                       ; 0x5064
    test ax, 0x80                    ; 0x5066
    je short @..api_idx_004c_2.l4    ; 0x5069
    lea ax, word [bp - 0x004c]       ; 0x506b
    push ax                          ; 0x506e
    mov ax, 0x16                     ; 0x506f
    imul word [bss_9ca8]             ; 0x5072
    add ax, 0x96a2                   ; 0x5076
    push ax                          ; 0x5079
    call aztec_strcpy                ; 0x507a
    add sp, byte 4                   ; 0x507d
    jmp short @..api_idx_004c_2.l5   ; 0x5080
@..api_idx_004c_2.l4:
    mov ax, 0x16                     ; 0x5082
    imul word [bss_9ca8]             ; 0x5085
    add ax, 0x96a2                   ; 0x5089
    push ax                          ; 0x508c
    mov al, byte [bp - 0x0013]       ; 0x508d
    sub ah, ah                       ; 0x5090
    add ax, 0x1770                   ; 0x5092
    push ax                          ; 0x5095
    call ds_app_mem_0782             ; 0x5096
    add sp, byte 4                   ; 0x5099
@..api_idx_004c_2.l5:
    mov al, byte [bp - 0x0013]       ; 0x509c
    sub ah, ah                       ; 0x509f
    mov cx, word [bss_9ca8]          ; 0x50a1
    shl cx, 1                        ; 0x50a5
    mov bx, cx                       ; 0x50a7
    mov word [bx - 0x6986], ax       ; 0x50a9
    mov ax, word [bp - 0x0002]       ; 0x50ad
    mov word [bx - 0x69ae], ax       ; 0x50b0
    mov ax, 0x248                    ; 0x50b4
    imul word [bp + 0x4]             ; 0x50b7
    push ax                          ; 0x50ba
    mov ax, 0x78                     ; 0x50bb
    imul word [bp - 0x0002]          ; 0x50be
    mov cx, ax                       ; 0x50c1
    pop ax                           ; 0x50c3
    add ax, cx                       ; 0x50c4
    push ax                          ; 0x50c6
    mov ax, 0xc                      ; 0x50c7
    imul word [bp - 0x0004]          ; 0x50ca
    mov cx, ax                       ; 0x50cd
    pop ax                           ; 0x50cf
    add ax, cx                       ; 0x50d0
    mov bx, ax                       ; 0x50d2
    mov al, byte [bx + 0x5c38]       ; 0x50d4
    sub ah, ah                       ; 0x50d8
    mov bx, ax                       ; 0x50da
    cmp byte [bx + 0x60e], 1         ; 0x50dc
    jne short @..api_idx_004c_2.l6   ; 0x50e1
    mov ax, 0x248                    ; 0x50e3
    imul word [bp + 0x4]             ; 0x50e6
    push ax                          ; 0x50e9
    mov ax, 0x78                     ; 0x50ea
    imul word [bp - 0x0002]          ; 0x50ed
    mov cx, ax                       ; 0x50f0
    pop ax                           ; 0x50f2
    add ax, cx                       ; 0x50f3
    push ax                          ; 0x50f5
    mov ax, 0xc                      ; 0x50f6
    imul word [bp - 0x0004]          ; 0x50f9
    mov cx, ax                       ; 0x50fc
    pop ax                           ; 0x50fe
    add ax, cx                       ; 0x50ff
    mov bx, ax                       ; 0x5101
    mov al, byte [bx + 0x5c3a]       ; 0x5103
    sub ah, ah                       ; 0x5107
    mov cx, word [bss_9ca8]          ; 0x5109
    shl cx, 1                        ; 0x510d
    mov bx, cx                       ; 0x510f
    mov word [bx - 0x67a6], ax       ; 0x5111
    jmp short @..api_idx_004c_2.l7   ; 0x5115
@..api_idx_004c_2.l6:
    mov ax, word [bss_9ca8]          ; 0x5117
    shl ax, 1                        ; 0x511a
    mov bx, ax                       ; 0x511c
    mov word [bx - 0x67a6], 0        ; 0x511e
@..api_idx_004c_2.l7:
    mov ax, word [bp - 0x0002]       ; 0x5124
    xchg al, ah                      ; 0x5127
    sub al, al                       ; 0x5129
    add ax, word [bp - 0x0004]       ; 0x512b
    mov cx, word [bss_9ca8]          ; 0x512e
    shl cx, 1                        ; 0x5132
    mov bx, cx                       ; 0x5134
    mov word [bx - 0x6356], ax       ; 0x5136
    inc word [bss_9ca8]              ; 0x513a
@..api_idx_004c_2.l8:
    inc word [bp - 0x0004]           ; 0x513e
    mov ax, word [bp - 0x0004]       ; 0x5141
    cmp ax, strict word 0xa          ; 0x5144
    jge short @..api_idx_004c_2.l9   ; 0x5147
    jmp near @..api_idx_004c_2.l2    ; 0x5149
@..api_idx_004c_2.l9:
    inc word [bp - 0x0002]           ; 0x514c
    mov ax, word [bp - 0x0002]       ; 0x514f
    cmp ax, strict word 2            ; 0x5152
    jge short @..api_idx_004c_2.l10  ; 0x5155
    jmp near @..api_idx_004c_2.l1    ; 0x5157
@..api_idx_004c_2.l10:
    ret                              ; 0x515a
