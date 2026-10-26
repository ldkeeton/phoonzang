; auto-generated
loc_ILSL:
    push bp                          ; 0x0200
    mov bp, sp                       ; 0x0201
    add sp, byte 0xee                ; 0x0203
    mov bx, word [bp + 4]            ; 0x0206
    mov al, byte [bx]                ; 0x0209
    cbw                              ; 0x020b
    push ax                          ; 0x020c
    call aztec_toupper               ; 0x020d
    pop cx                           ; 0x0210
    add ax, strict word 0xffbf       ; 0x0211
    mov word [bp - 0x12], ax         ; 0x0214
    cmp ax, strict word 0            ; 0x0217
    jl short @..loc_ILSL.l3          ; 0x021a
    cmp ax, strict word 0x19         ; 0x021c
    jg short @..loc_ILSL.l3          ; 0x021f
    mov ax, word [bp - 0x12]         ; 0x0221
    mov word [bp - 0xa], ax          ; 0x0224
    mov word [bp - 0x10], 0xe00      ; 0x0227
    lea ax, word [bp - 0x10]         ; 0x022c
    push ax                          ; 0x022f
    push ax                          ; 0x0230
    mov ax, 0x21                     ; 0x0231
    push ax                          ; 0x0234
    call aztec_sysint                ; 0x0235
    add sp, byte 6                   ; 0x0238
    mov word [bp - 0x10], 0x1900     ; 0x023b
    lea ax, word [bp - 0x10]         ; 0x0240
    push ax                          ; 0x0243
    push ax                          ; 0x0244
    mov ax, 0x21                     ; 0x0245
    push ax                          ; 0x0248
    call aztec_sysint                ; 0x0249
    add sp, byte 6                   ; 0x024c
    mov ax, word [bp - 0x10]         ; 0x024f
    and ax, 0xff                     ; 0x0252
    cmp ax, word [bp - 0x12]         ; 0x0255
    je short @..loc_ILSL.l2          ; 0x0258
    mov ax, 0xffff                   ; 0x025a
@..loc_ILSL.l1:
    mov sp, bp                       ; 0x025d
    pop bp                           ; 0x025f
    ret                              ; 0x0260
@..loc_ILSL.l2:
    jmp short @..loc_ILSL.l4         ; 0x0261
@..loc_ILSL.l3:
    mov ax, 0xffff                   ; 0x0263
    jmp short @..loc_ILSL.l1         ; 0x0266
@..loc_ILSL.l4:
    mov ax, 0                        ; 0x0268
    jmp short @..loc_ILSL.l1         ; 0x026b
