; auto-generated
loc_OJVU:
    mov ax, 0                        ; 0x9c7a
    call aztec_csav                  ; 0x9c7d
    mov ax, bss_95fa                 ; 0x9c80
    push ax                          ; 0x9c83
    push word [bp + 0x4]             ; 0x9c84
    call load_message_string         ; 0x9c87
    add sp, byte 4                   ; 0x9c8a
    mov ax, bss_9d10                 ; 0x9c8d
    push ax                          ; 0x9c90
    push word [bp + 0x6]             ; 0x9c91
    call load_message_string         ; 0x9c94
    add sp, byte 4                   ; 0x9c97
    cmp byte [bss_95fa], 0           ; 0x9c9a
    jne short @..loc_OJVU.l1         ; 0x9c9f
    mov ax, 0x9d10                   ; 0x9ca1
    push ax                          ; 0x9ca4
    mov ax, MSG_I_DON_T_KNOW_1616    ; 0x9ca5
    push ax                          ; 0x9ca8
    call api_idx_0080_TKTP           ; 0x9ca9
    add sp, byte 4                   ; 0x9cac
    jmp short @..loc_OJVU.l6         ; 0x9caf
@..loc_OJVU.l1:
    cmp byte [bss_95fa], 0x24        ; 0x9cb1
    jne short @..loc_OJVU.l3         ; 0x9cb6
    mov al, byte [bss_95fb]          ; 0x9cb8
    sub ah, ah                       ; 0x9cbb
    push ax                          ; 0x9cbd
    push word [bss_b04e]             ; 0x9cbe
    call api_idx_0040_LSRO           ; 0x9cc2
    add sp, byte 4                   ; 0x9cc5
    cmp ax, strict word 1            ; 0x9cc8
    jne short @..loc_OJVU.l2         ; 0x9ccb
    mov word [bss_9e70], 1           ; 0x9ccd
@..loc_OJVU.l2:
    jmp short @..loc_OJVU.l6         ; 0x9cd3
@..loc_OJVU.l3:
    cmp byte [bss_95fa], 0x26        ; 0x9cd5
    jne short @..loc_OJVU.l4         ; 0x9cda
    mov al, byte [bss_95fb]          ; 0x9cdc
    sub ah, ah                       ; 0x9cdf
    dec ax                           ; 0x9ce1
    push ax                          ; 0x9ce2
    call api_idx_0002_NUKT           ; 0x9ce3
    pop cx                           ; 0x9ce6
    jmp short @..loc_OJVU.l6         ; 0x9ce7
@..loc_OJVU.l4:
    cmp byte [bss_95fa], 0x2d        ; 0x9ce9
    jne short @..loc_OJVU.l5         ; 0x9cee
    mov al, byte [bss_95fb]          ; 0x9cf0
    sub ah, ah                       ; 0x9cf3
    sub word [bp + 0x4], ax          ; 0x9cf5
@..loc_OJVU.l5:
    mov ax, 0x9102                   ; 0x9cf8
    push ax                          ; 0x9cfb
    push word [bp + 0x4]             ; 0x9cfc
    call api_idx_0080_TKTP           ; 0x9cff
    add sp, byte 4                   ; 0x9d02
@..loc_OJVU.l6:
    ret                              ; 0x9d05
