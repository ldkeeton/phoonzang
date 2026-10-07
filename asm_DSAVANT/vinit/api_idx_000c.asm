api_idx_000c:
    mov ax, 0xfff4                   ; 0x0146
    call ds_dispatch_f40b            ; 0x0149
    mov ax, 0                        ; 0x014c
    push ax                          ; 0x014f
    push ax                          ; 0x0150
    push word [bp + 0x4]             ; 0x0151
    call ds_dispatch_d161            ; 0x0154
    add sp, byte 4                   ; 0x0157
    push ax                          ; 0x015a
    call ds_dispatch_f909            ; 0x015b
    add sp, byte 4                   ; 0x015e
    mov word [bp - 0x0002], ax       ; 0x0161
    cmp ax, strict word 0xffff       ; 0x0164
    jne short @..api_idx_000c.l1     ; 0x0167
    mov ax, 6                        ; 0x0169
    push ax                          ; 0x016c
    call ds_dispatch_b171            ; 0x016d
    pop cx                           ; 0x0170
@..api_idx_000c.l1:
    mov ax, data_0002                ; 0x0171
    push ax                          ; 0x0174
    mov ax, 0                        ; 0x0175
    mov dx, 0                        ; 0x0178
    push dx                          ; 0x017b
    push ax                          ; 0x017c
    push word [bp - 0x0002]          ; 0x017d
    call ds_dispatch_fdbd            ; 0x0180
    add sp, byte 8                   ; 0x0183
    mov word [bp - 0x0004], dx       ; 0x0186
    mov word [bp - 0x0006], ax       ; 0x0189
    push word [bp - 0x0004]          ; 0x018c
    push word [bp - 0x0006]          ; 0x018f
    call ds_dispatch_afb9            ; 0x0192
    add sp, byte 4                   ; 0x0195
    mov word [bp - 0x0008], dx       ; 0x0198
    mov word [bp - 0x000a], ax       ; 0x019b
    push word [bp - 0x0006]          ; 0x019e
    call ds_dispatch_f4a3            ; 0x01a1
    pop cx                           ; 0x01a4
    mov word [bp - 0x000c], ax       ; 0x01a5
    cmp word [bp - 0x0008], byte 0   ; 0x01a8
    jne short @..api_idx_000c.l2     ; 0x01ac
    cmp word [bp - 0x000a], byte 0   ; 0x01ae
@..api_idx_000c.l2:
    je short @..api_idx_000c.l3      ; 0x01b2
    cmp word [bp - 0x000c], byte 0   ; 0x01b4
    jne short @..api_idx_000c.l4     ; 0x01b8
@..api_idx_000c.l3:
    mov ax, 6                        ; 0x01ba
    push ax                          ; 0x01bd
    call ds_dispatch_b171            ; 0x01be
    pop cx                           ; 0x01c1
@..api_idx_000c.l4:
    mov ax, 0                        ; 0x01c2
    push ax                          ; 0x01c5
    mov ax, 0                        ; 0x01c6
    mov dx, 0                        ; 0x01c9
    push dx                          ; 0x01cc
    push ax                          ; 0x01cd
    push word [bp - 0x0002]          ; 0x01ce
    call ds_dispatch_fdbd            ; 0x01d1
    add sp, byte 8                   ; 0x01d4
    push word [bp - 0x0006]          ; 0x01d7
    push word [bp - 0x000c]          ; 0x01da
    push word [bp - 0x0002]          ; 0x01dd
    call ds_dispatch_fd6f            ; 0x01e0
    add sp, byte 6                   ; 0x01e3
    push word [bp - 0x0002]          ; 0x01e6
    call ds_dispatch_fda5            ; 0x01e9
    pop cx                           ; 0x01ec
    push word [bp - 0x0006]          ; 0x01ed
    push word [bp - 0x0008]          ; 0x01f0
    push word [bp - 0x000a]          ; 0x01f3
    mov ax, word [bp - 0x000c]       ; 0x01f6
    mov dx, ds                       ; 0x01f9
    push dx                          ; 0x01fb
    push ax                          ; 0x01fc
    call ds_dispatch_afcc            ; 0x01fd
    add sp, byte 0x0a                ; 0x0200
    push word [bp - 0x000c]          ; 0x0203
    call ds_dispatch_f5a1            ; 0x0206
    pop cx                           ; 0x0209
    mov ax, word [bp - 0x000a]       ; 0x020a
    mov dx, word [bp - 0x0008]       ; 0x020d
    ret                              ; 0x0210
