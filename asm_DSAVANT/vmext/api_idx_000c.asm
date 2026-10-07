api_idx_000c:
    mov ax, 0xfff4                   ; 0x09be
    call ds_dispatch_f40b            ; 0x09c1
    call loc_0860                    ; 0x09c4
    mov ax, word [data_8f3e]         ; 0x09c7
    mov cx, 6                        ; 0x09ca
    shl ax, cl                       ; 0x09cd
    mov cx, word [data_8f40]         ; 0x09cf
    shl cx, 1                        ; 0x09d3
    shl cx, 1                        ; 0x09d5
    shl cx, 1                        ; 0x09d7
    add ax, cx                       ; 0x09d9
    add ax, word [data_8f42]         ; 0x09db
    mov word [bp - 0x0002], ax       ; 0x09df
    mov ax, 6                        ; 0x09e2
    push ax                          ; 0x09e5
    push word [bp - 0x0002]          ; 0x09e6
    mov ax, word [data_0e14]         ; 0x09e9
    add ax, 0x4b0                    ; 0x09ec
    push ax                          ; 0x09ef
    call ds_dispatch_ecf6            ; 0x09f0
    add sp, byte 6                   ; 0x09f3
    mov word [bp - 0x0008], ax       ; 0x09f6
    cmp ax, strict word 1            ; 0x09f9
    je short @..api_idx_000c.l1      ; 0x09fc
    cmp ax, strict word 2            ; 0x09fe
    jne short @..api_idx_000c.l2     ; 0x0a01
@..api_idx_000c.l1:
    mov ax, 2                        ; 0x0a03
    push ax                          ; 0x0a06
    push word [bp - 0x0002]          ; 0x0a07
    mov ax, word [data_0e14]         ; 0x0a0a
    add ax, 0x7b0                    ; 0x0a0d
    push ax                          ; 0x0a10
    call ds_dispatch_ecf6            ; 0x0a11
    add sp, byte 6                   ; 0x0a14
    cmp ax, word [bp + 0x4]          ; 0x0a17
    jne short @..api_idx_000c.l2     ; 0x0a1a
    mov ax, 1                        ; 0x0a1c
    ret                              ; 0x0a1f
