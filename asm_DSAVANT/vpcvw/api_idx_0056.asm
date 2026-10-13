api_idx_0056:
    mov ax, 0xffaa                   ; 0x3c7b
    call aztec_csav                  ; 0x3c7e
    mov ax, 0                        ; 0x3c81
    push ax                          ; 0x3c84
    push ax                          ; 0x3c85
    push word [bss_93f8]             ; 0x3c86
    push word [bss_93f6]             ; 0x3c8a
    call ds_loc_3b89                 ; 0x3c8e
    add sp, byte 8                   ; 0x3c91
    mov word [bss_9568], 4           ; 0x3c94
    mov word [bss_9566], 0           ; 0x3c9a
    mov byte [bss_956a], 0           ; 0x3ca0
@..api_idx_0056.l1:
    lea ax, word [bp - 0x0056]       ; 0x3ca5
    push ax                          ; 0x3ca8
    push word [bp + 0x4]             ; 0x3ca9
    call ds_app_mem_0782             ; 0x3cac
    add sp, byte 4                   ; 0x3caf
    cmp word [bss_5216], byte 0      ; 0x3cb2
    jne short @..api_idx_0056.l2     ; 0x3cb7
    lea ax, word [bp - 0x0056]       ; 0x3cb9
    push ax                          ; 0x3cbc
    call api_idx_0004_7              ; 0x3cbd
    pop cx                           ; 0x3cc0
    inc word [bp + 0x4]              ; 0x3cc1
@..api_idx_0056.l2:
    cmp word [bss_5216], byte 0      ; 0x3cc4
    je short @..api_idx_0056.l1      ; 0x3cc9
    cmp byte [bss_956a], 0           ; 0x3ccb
    je short @..api_idx_0056.l3      ; 0x3cd0
    mov ax, 0x956a                   ; 0x3cd2
    push ax                          ; 0x3cd5
    call api_idx_0004_6              ; 0x3cd6
    pop cx                           ; 0x3cd9
@..api_idx_0056.l3:
    call loc_3a6a                    ; 0x3cda
    ret                              ; 0x3cdd
loc_3cde:
    mov ax, 0                        ; 0x3cde
    call aztec_csav                  ; 0x3ce1
    mov bx, word [bp + 0x4]          ; 0x3ce4
    cmp byte [bx + 0x6], 0           ; 0x3ce7
    jbe short @..loc_3cde.l1         ; 0x3ceb
    dec byte [bx + 0x6]              ; 0x3ced
    mov bx, word [bp + 0x4]          ; 0x3cf0
    cmp byte [bx + 0x6], 0           ; 0x3cf3
    jne short @..loc_3cde.l1         ; 0x3cf7
    mov word [bx], 0                 ; 0x3cf9
@..loc_3cde.l1:
    ret                              ; 0x3cfd
