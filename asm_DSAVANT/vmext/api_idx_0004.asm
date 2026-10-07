api_idx_0004:
    mov ax, 0xfffc                   ; 0x00f0
    call ds_dispatch_f40b            ; 0x00f3
    push word [bp + 0xc]             ; 0x00f6
    push word [bp + 0xa]             ; 0x00f9
    mov bx, word [bp + 0x8]          ; 0x00fc
    push word [bx]                   ; 0x00ff
    call loc_00b6                    ; 0x0101
    add sp, byte 6                   ; 0x0104
    mov word [bp - 0x0004], ax       ; 0x0107
    cmp ax, strict word 0xffff       ; 0x010a
    jne short @..api_idx_0004.l3     ; 0x010d
    push word [bp + 0xc]             ; 0x010f
    push word [bp + 0xa]             ; 0x0112
    push word [data_8f48]            ; 0x0115
    call loc_00b6                    ; 0x0119
    add sp, byte 6                   ; 0x011c
    mov word [bp - 0x0004], ax       ; 0x011f
    cmp ax, strict word 0xffff       ; 0x0122
    jne short @..api_idx_0004.l3     ; 0x0125
    mov bx, word [bp + 0x8]          ; 0x0127
    mov ax, word [bx]                ; 0x012a
    inc ax                           ; 0x012c
    mov cx, 0x10                     ; 0x012d
    cwd                              ; 0x0130
    idiv cx                          ; 0x0131
    mov word [bp - 0x0002], dx       ; 0x0133
@..api_idx_0004.l1:
    push word [bp + 0xc]             ; 0x0136
    push word [bp + 0xa]             ; 0x0139
    push word [bp - 0x0002]          ; 0x013c
    call loc_00b6                    ; 0x013f
    add sp, byte 6                   ; 0x0142
    mov word [bp - 0x0004], ax       ; 0x0145
    cmp ax, strict word 0xffff       ; 0x0148
    jne short @..api_idx_0004.l3     ; 0x014b
    mov ax, word [bp - 0x0002]       ; 0x014d
    inc ax                           ; 0x0150
    mov cx, 0x10                     ; 0x0151
    cwd                              ; 0x0154
    idiv cx                          ; 0x0155
    mov word [bp - 0x0002], dx       ; 0x0157
    mov bx, word [bp + 0x8]          ; 0x015a
    cmp dx, word [bx]                ; 0x015d
    jne short @..api_idx_0004.l2     ; 0x015f
    mov ax, 1                        ; 0x0161
    ret                              ; 0x0164
