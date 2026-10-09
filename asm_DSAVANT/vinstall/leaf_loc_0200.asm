leaf_loc_0200:
    push bp                          ; 0x0200
    mov bp, sp                       ; 0x0201
    add sp, byte 0xee                ; 0x0203
loc_0206:
    mov bx, word [bp + 0x4]          ; 0x0206
    mov al, byte [bx]                ; 0x0209
    cbw                              ; 0x020b
    push ax                          ; 0x020c
    call aztec_toupper               ; 0x020d
    pop cx                           ; 0x0210
    add ax, strict word 0xffbf       ; 0x0211
    mov word [bp - 0x0012], ax       ; 0x0214
    cmp ax, strict word 0            ; 0x0217
    jl short loc_0263                ; 0x021a
    cmp ax, strict word 0x19         ; 0x021c
    jg short loc_0263                ; 0x021f
    mov ax, word [bp - 0x0012]       ; 0x0221
    mov word [bp - 0x000a], ax       ; 0x0224
    mov word [bp - 0x0010], 0xe00    ; 0x0227
    lea ax, word [bp - 0x0010]       ; 0x022c
    push ax                          ; 0x022f
    push ax                          ; 0x0230
    mov ax, 0x21                     ; 0x0231
    push ax                          ; 0x0234
    call aztec_sysint                ; 0x0235
    add sp, byte 6                   ; 0x0238
    mov word [bp - 0x0010], 0x1900   ; 0x023b
    lea ax, word [bp - 0x0010]       ; 0x0240
    push ax                          ; 0x0243
    push ax                          ; 0x0244
    mov ax, 0x21                     ; 0x0245
    push ax                          ; 0x0248
    call aztec_sysint                ; 0x0249
    add sp, byte 6                   ; 0x024c
    mov ax, word [bp - 0x0010]       ; 0x024f
    and ax, 0xff                     ; 0x0252
    cmp ax, word [bp - 0x0012]       ; 0x0255
    je short loc_0261                ; 0x0258
    mov ax, 0xffff                   ; 0x025a
loc_025d:
    mov sp, bp                       ; 0x025d
    pop bp                           ; 0x025f
    ret                              ; 0x0260
loc_0261:
    jmp short loc_0268               ; 0x0261
loc_0263:
    mov ax, 0xffff                   ; 0x0263
    jmp short loc_025d               ; 0x0266
loc_0268:
    mov ax, 0                        ; 0x0268
    jmp short loc_025d               ; 0x026b
loc_026d:
    push bp                          ; 0x026d
    mov bp, sp                       ; 0x026e
    add sp, byte 0xfe                ; 0x0270
    push di                          ; 0x0273
    push si                          ; 0x0274
    mov di, 0                        ; 0x0275
    push word [bp + 0x4]             ; 0x0278
    call aztec_strlen                ; 0x027b
    pop cx                           ; 0x027e
    dec ax                           ; 0x027f
    mov word [bp - 0x0002], ax       ; 0x0280
    jmp short @..local.l2            ; 0x0283
@..local.l1:
    mov bx, word [bp + 0x4]          ; 0x0285
    mov al, byte [bx + di]           ; 0x0288
    cbw                              ; 0x028a
    mov si, ax                       ; 0x028b
    add bx, word [bp - 0x0002]       ; 0x028d
    mov al, byte [bx]                ; 0x0290
    mov bx, word [bp + 0x4]          ; 0x0292
    mov byte [bx + di], al           ; 0x0295
    mov ax, si                       ; 0x0297
    mov cx, word [bp + 0x4]          ; 0x0299
    add cx, word [bp - 0x0002]       ; 0x029c
    mov bx, cx                       ; 0x029f
    mov byte [bx], al                ; 0x02a1
    dec word [bp - 0x0002]           ; 0x02a3
    inc di                           ; 0x02a6
@..local.l2:
    cmp di, word [bp - 0x0002]       ; 0x02a7
    jl short @..local.l1             ; 0x02aa
    pop si                           ; 0x02ac
    pop di                           ; 0x02ad
    mov sp, bp                       ; 0x02ae
    pop bp                           ; 0x02b0
    ret                              ; 0x02b1
