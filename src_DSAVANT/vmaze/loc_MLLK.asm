; auto-generated
loc_MLLK:
    mov ax, 0xfefa                   ; 0x6f14
    call aztec_csav                  ; 0x6f17
    mov word [bss_9b48], 0           ; 0x6f1a
    mov ax, 0xc6                     ; 0x6f20
    push ax                          ; 0x6f23
    mov ax, 0x109                    ; 0x6f24
    push ax                          ; 0x6f27
    mov ax, 0x92                     ; 0x6f28
    push ax                          ; 0x6f2b
    mov ax, 0x37                     ; 0x6f2c
    push ax                          ; 0x6f2f
    call gfx_save_area               ; 0x6f30
    add sp, byte 8                   ; 0x6f33
    mov word [bss_8d10], dx          ; 0x6f36
    mov word [bss_8d0e], ax          ; 0x6f3a
    call api_idx_000a_RIKJ           ; 0x6f3d
    mov word [bss_9b4e], 0x44        ; 0x6f40
    mov word [bss_9b4c], 0           ; 0x6f46
    mov byte [bss_9b50], 0           ; 0x6f4c
@..loc_MLLK.l1:
    lea ax, word [bp - 0x0105]       ; 0x6f51
    push ax                          ; 0x6f55
    push word [bp + 0x4]             ; 0x6f56
    call ds_app_mem_TIMR             ; 0x6f59
    add sp, byte 4                   ; 0x6f5c
    cmp word [bss_5216], byte 0      ; 0x6f5f
    jne short @..loc_MLLK.l3         ; 0x6f64
    cmp word [bss_9b48], byte 0      ; 0x6f66
    jne short @..loc_MLLK.l2         ; 0x6f6b
    lea ax, word [bp - 0x0105]       ; 0x6f6d
    push ax                          ; 0x6f71
    call api_idx_0004_JQTM           ; 0x6f72
    pop cx                           ; 0x6f75
@..loc_MLLK.l2:
    inc word [bp + 0x4]              ; 0x6f76
@..loc_MLLK.l3:
    cmp word [bss_5216], byte 0      ; 0x6f79
    je short @..loc_MLLK.l1          ; 0x6f7e
    cmp byte [bss_9b50], 0           ; 0x6f80
    je short @..loc_MLLK.l4          ; 0x6f85
    mov ax, bss_9b50                 ; 0x6f87
    push ax                          ; 0x6f8a
    call api_idx_0004_JGSH           ; 0x6f8b
    pop cx                           ; 0x6f8e
@..loc_MLLK.l4:
    push word [bp + 0x6]             ; 0x6f8f
    call loc_MVHP                    ; 0x6f92
    pop cx                           ; 0x6f95
    mov ax, 1                        ; 0x6f96
    push ax                          ; 0x6f99
    push word [bss_8d10]             ; 0x6f9a
    push word [bss_8d0e]             ; 0x6f9e
    call gfx_restore_area            ; 0x6fa2
    add sp, byte 6                   ; 0x6fa5
    mov ax, 0xc6                     ; 0x6fa8
    push ax                          ; 0x6fab
    mov ax, 0x109                    ; 0x6fac
    push ax                          ; 0x6faf
    mov ax, 0x92                     ; 0x6fb0
    push ax                          ; 0x6fb3
    mov ax, 0x37                     ; 0x6fb4
    push ax                          ; 0x6fb7
    call ds_app_io_VRKV              ; 0x6fb8
    add sp, byte 8                   ; 0x6fbb
    ret                              ; 0x6fbe
