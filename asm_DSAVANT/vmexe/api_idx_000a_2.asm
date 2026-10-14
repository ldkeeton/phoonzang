; auto-generated
api_idx_000a_2:
    mov ax, 0xfff6                   ; 0x1ac7
    call aztec_csav                  ; 0x1aca
    mov ax, 0                        ; 0x1acd
    push ax                          ; 0x1ad0
    push word [bss_8d10]             ; 0x1ad1
    push word [bss_8d0e]             ; 0x1ad5
    call thunk_13                    ; 0x1ad9
    add sp, byte 6                   ; 0x1adc
    mov ax, 0                        ; 0x1adf
    push ax                          ; 0x1ae2
    push word [bss_8d0c]             ; 0x1ae3
    push word [bss_8d0a]             ; 0x1ae7
    call thunk_13                    ; 0x1aeb
    add sp, byte 6                   ; 0x1aee
    mov byte [bp - 0x000a], 1        ; 0x1af1
    mov byte [bp - 0x0009], 0        ; 0x1af5
    mov ax, 0                        ; 0x1af9
    push ax                          ; 0x1afc
    push ax                          ; 0x1afd
    lea ax, word [bp - 0x000a]       ; 0x1afe
    push ax                          ; 0x1b01
    mov ax, 0                        ; 0x1b02
    push ax                          ; 0x1b05
    mov ax, 0xc7                     ; 0x1b06
    push ax                          ; 0x1b09
    mov ax, 0                        ; 0x1b0a
    push ax                          ; 0x1b0d
    mov ax, 0x13f                    ; 0x1b0e
    push ax                          ; 0x1b11
    mov ax, 0                        ; 0x1b12
    push ax                          ; 0x1b15
    mov ax, 0x9a                     ; 0x1b16
    push ax                          ; 0x1b19
    mov ax, 0x37                     ; 0x1b1a
    push ax                          ; 0x1b1d
    mov ax, 0xe                      ; 0x1b1e
    push ax                          ; 0x1b21
    call thunk_28                    ; 0x1b22
    add sp, byte 0x16                ; 0x1b25
    cmp word [bp + 0x4], byte 0      ; 0x1b28
    je short @..api_idx_000a_2.l1    ; 0x1b2c
    mov ax, 0xc2                     ; 0x1b2e
    push ax                          ; 0x1b31
    mov ax, 0x13a                    ; 0x1b32
    push ax                          ; 0x1b35
    mov ax, 0x93                     ; 0x1b36
    push ax                          ; 0x1b39
    mov ax, 8                        ; 0x1b3a
    push ax                          ; 0x1b3d
    call thunk_4                     ; 0x1b3e
    add sp, byte 8                   ; 0x1b41
@..api_idx_000a_2.l1:
    ret                              ; 0x1b44
