; auto-generated
api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x0d24
    call aztec_csav                  ; 0x0d27
@..api_idx_0004_3.l1:
    mov ax, 0x20                     ; 0x0d2a
    push ax                          ; 0x0d2d
    push word [bp + 0x4]             ; 0x0d2e
    call strpos                      ; 0x0d31
    add sp, byte 4                   ; 0x0d34
    mov word [bp - 0x0002], ax       ; 0x0d37
    cmp ax, strict word 0xffff       ; 0x0d3a
    je short @..api_idx_0004_3.l4    ; 0x0d3d
    mov bx, word [bp + 0x4]          ; 0x0d3f
    mov si, ax                       ; 0x0d42
    mov byte [bx + si], 0            ; 0x0d44
@..api_idx_0004_3.l2:
    mov ax, 0x5f                     ; 0x0d47
    push ax                          ; 0x0d4a
    push word [bp + 0x4]             ; 0x0d4b
    call strpos                      ; 0x0d4e
    add sp, byte 4                   ; 0x0d51
    mov word [bp - 0x0004], ax       ; 0x0d54
    cmp ax, strict word 0xffff       ; 0x0d57
    je short @..api_idx_0004_3.l3    ; 0x0d5a
    mov bx, word [bp + 0x4]          ; 0x0d5c
    mov si, ax                       ; 0x0d5f
    mov byte [bx + si], 0x20         ; 0x0d61
    jmp short @..api_idx_0004_3.l2   ; 0x0d64
@..api_idx_0004_3.l3:
    push word [bp + 0x4]             ; 0x0d66
    call api_idx_0090                ; 0x0d69
    pop cx                           ; 0x0d6c
    mov ax, word [bp - 0x0002]       ; 0x0d6d
    add word [bp + 0x4], ax          ; 0x0d70
    add word [bp + 0x4], byte 1      ; 0x0d73
    jmp short @..api_idx_0004_3.l1   ; 0x0d77
@..api_idx_0004_3.l4:
    mov bx, word [bp + 0x4]          ; 0x0d79
    cmp byte [bx], 0                 ; 0x0d7c
    je short @..api_idx_0004_3.l5    ; 0x0d7f
    push bx                          ; 0x0d81
    call api_idx_0090                ; 0x0d82
    pop cx                           ; 0x0d85
@..api_idx_0004_3.l5:
    ret                              ; 0x0d86
loc_0d87:
    mov ax, 0xfefa                   ; 0x0d87
    call aztec_csav                  ; 0x0d8a
    mov ax, 0                        ; 0x0d8d
    push ax                          ; 0x0d90
    call api_idx_000a_2              ; 0x0d91
    pop cx                           ; 0x0d94
    mov word [bss_9152], 0x44        ; 0x0d95
    mov word [bss_9150], 0           ; 0x0d9b
    mov byte [bss_9154], 0           ; 0x0da1
@..loc_0d87.l1:
    lea ax, word [bp - 0x0105]       ; 0x0da6
    push ax                          ; 0x0daa
    push word [bp + 0x4]             ; 0x0dab
    call ds_app_mem_0782             ; 0x0dae
    add sp, byte 4                   ; 0x0db1
    cmp word [bss_5216], byte 0      ; 0x0db4
    jne short @..loc_0d87.l2         ; 0x0db9
    lea ax, word [bp - 0x0105]       ; 0x0dbb
    push ax                          ; 0x0dbf
    call api_idx_0004_3              ; 0x0dc0
    pop cx                           ; 0x0dc3
    inc word [bp + 0x4]              ; 0x0dc4
@..loc_0d87.l2:
    cmp word [bss_5216], byte 0      ; 0x0dc7
    je short @..loc_0d87.l1          ; 0x0dcc
    cmp byte [bss_9154], 0           ; 0x0dce
    je short @..loc_0d87.l3          ; 0x0dd3
    mov ax, 0x9154                   ; 0x0dd5
    push ax                          ; 0x0dd8
    call api_idx_0004_2              ; 0x0dd9
    pop cx                           ; 0x0ddc
@..loc_0d87.l3:
    push word [bp + 0x6]             ; 0x0ddd
    call loc_0a1a                    ; 0x0de0
    pop cx                           ; 0x0de3
    mov ax, 0                        ; 0x0de4
    push ax                          ; 0x0de7
    call api_idx_000a_2              ; 0x0de8
    pop cx                           ; 0x0deb
    mov ax, 0xc6                     ; 0x0dec
    push ax                          ; 0x0def
    mov ax, 0x109                    ; 0x0df0
    push ax                          ; 0x0df3
    mov ax, 0x92                     ; 0x0df4
    push ax                          ; 0x0df7
    mov ax, 0x37                     ; 0x0df8
    push ax                          ; 0x0dfb
    call ds_app_io_0d7a              ; 0x0dfc
    add sp, byte 8                   ; 0x0dff
    ret                              ; 0x0e02
