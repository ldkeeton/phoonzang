; auto-generated
loc_KIOQ:
    mov ax, 0xfefa                   ; 0x0d87
    call aztec_csav                  ; 0x0d8a
    mov ax, 0                        ; 0x0d8d
    push ax                          ; 0x0d90
    call api_idx_000a_TIPG           ; 0x0d91
    pop cx                           ; 0x0d94
    mov word [bss_9152], 0x44        ; 0x0d95
    mov word [bss_9150], 0           ; 0x0d9b
    mov byte [bss_9154], 0           ; 0x0da1
@..loc_KIOQ.l1:
    lea ax, word [bp - 0x0105]       ; 0x0da6
    push ax                          ; 0x0daa
    push word [bp + 0x4]             ; 0x0dab
    call ds_app_mem_TIMR             ; 0x0dae
    add sp, byte 4                   ; 0x0db1
    cmp word [bss_5216], byte 0      ; 0x0db4
    jne short @..loc_KIOQ.l2         ; 0x0db9
    lea ax, word [bp - 0x0105]       ; 0x0dbb
    push ax                          ; 0x0dbf
    call api_idx_0004_QHUH           ; 0x0dc0
    pop cx                           ; 0x0dc3
    inc word [bp + 0x4]              ; 0x0dc4
@..loc_KIOQ.l2:
    cmp word [bss_5216], byte 0      ; 0x0dc7
    je short @..loc_KIOQ.l1          ; 0x0dcc
    cmp byte [bss_9154], 0           ; 0x0dce
    je short @..loc_KIOQ.l3          ; 0x0dd3
    mov ax, 0x9154                   ; 0x0dd5
    push ax                          ; 0x0dd8
    call api_idx_0004_JGSH           ; 0x0dd9
    pop cx                           ; 0x0ddc
@..loc_KIOQ.l3:
    push word [bp + 0x6]             ; 0x0ddd
    call loc_NQGV                    ; 0x0de0
    pop cx                           ; 0x0de3
    mov ax, 0                        ; 0x0de4
    push ax                          ; 0x0de7
    call api_idx_000a_TIPG           ; 0x0de8
    pop cx                           ; 0x0deb
    mov ax, 0xc6                     ; 0x0dec
    push ax                          ; 0x0def
    mov ax, 0x109                    ; 0x0df0
    push ax                          ; 0x0df3
    mov ax, 0x92                     ; 0x0df4
    push ax                          ; 0x0df7
    mov ax, 0x37                     ; 0x0df8
    push ax                          ; 0x0dfb
    call ds_app_io_VRKV              ; 0x0dfc
    add sp, byte 8                   ; 0x0dff
    ret                              ; 0x0e02
