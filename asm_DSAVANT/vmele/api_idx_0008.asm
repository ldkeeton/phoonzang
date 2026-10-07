api_idx_0008:
    mov ax, 0xfff8                   ; 0x004e
    call ds_dispatch_f40b            ; 0x0051
    push word [bp + 0x4]             ; 0x0054
    call ds_dispatch_ca85            ; 0x0057
    pop cx                           ; 0x005a
    test ax, ax                      ; 0x005b
    jne short @..api_idx_0008.l1     ; 0x005d
    jmp near @..api_idx_0008.l4      ; 0x005f
@..api_idx_0008.l1:
    mov ax, 0x2c                     ; 0x0062
    imul word [bp + 0x4]             ; 0x0065
    mov si, ax                       ; 0x0068
    mov bx, word [data_8482]         ; 0x006a
    cmp byte [bx + si + 0x2b], 1     ; 0x006e
    je short @..api_idx_0008.l2      ; 0x0072
    cmp byte [bx + si + 0x2b], 3     ; 0x0074
    je short @..api_idx_0008.l2      ; 0x0078
    jmp near @..api_idx_0008.l4      ; 0x007a
@..api_idx_0008.l2:
    mov ax, 0                        ; 0x007d
    push ax                          ; 0x0080
    push word [bp + 0x4]             ; 0x0081
    call ds_dispatch_cb3a            ; 0x0084
    add sp, byte 4                   ; 0x0087
    mov ax, word [bp + 0x4]          ; 0x008a
    mov cx, data_0002                ; 0x008d
    cwd                              ; 0x0090
    idiv cx                          ; 0x0091
    mov ax, dx                       ; 0x0093
    mov cx, 0xfc                     ; 0x0095
    imul cx                          ; 0x0098
    add ax, strict word 5            ; 0x009a
    mov word [bp - 0x0006], ax       ; 0x009d
    mov ax, word [bp + 0x4]          ; 0x00a0
    mov cx, data_0002                ; 0x00a3
    cwd                              ; 0x00a6
    idiv cx                          ; 0x00a7
    mov cx, 0x2d                     ; 0x00a9
    imul cx                          ; 0x00ac
    add ax, strict word 0x12         ; 0x00ae
    mov word [bp - 0x0008], ax       ; 0x00b1
    add ax, strict word 0x15         ; 0x00b4
    push ax                          ; 0x00b7
    mov ax, word [bp - 0x0006]       ; 0x00b8
    add ax, strict word 0x1c         ; 0x00bb
    push ax                          ; 0x00be
    call ds_dispatch_e809            ; 0x00bf
    add sp, byte 4                   ; 0x00c2
    mov ax, 6                        ; 0x00c5
    push ax                          ; 0x00c8
    mov ax, 0xb                      ; 0x00c9
    push ax                          ; 0x00cc
    call ds_dispatch_e830            ; 0x00cd
    add sp, byte 4                   ; 0x00d0
    cmp word [bp + 0x6], byte 0      ; 0x00d3
    je short @..api_idx_0008.l3      ; 0x00d7
    mov ax, word [bp - 0x0008]       ; 0x00d9
    add ax, strict word 0x2b         ; 0x00dc
    push ax                          ; 0x00df
    mov ax, word [bp - 0x0006]       ; 0x00e0
    add ax, strict word 0x3b         ; 0x00e3
    push ax                          ; 0x00e6
    push word [bp - 0x0008]          ; 0x00e7
    push word [bp - 0x0006]          ; 0x00ea
    call ds_dispatch_e8da            ; 0x00ed
    add sp, byte 8                   ; 0x00f0
@..api_idx_0008.l3:
    jmp short @..api_idx_0008.l5     ; 0x00f3
@..api_idx_0008.l4:
    push word [bp + 0x6]             ; 0x00f5
    push word [bp + 0x4]             ; 0x00f8
    call ds_dispatch_cb3a            ; 0x00fb
    add sp, byte 4                   ; 0x00fe
@..api_idx_0008.l5:
    ret                              ; 0x0101
