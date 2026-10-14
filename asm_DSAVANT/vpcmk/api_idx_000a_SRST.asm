; auto-generated
api_idx_000a_SRST:
    mov ax, 0xfff6                   ; 0x1a98
    call aztec_csav                  ; 0x1a9b
    mov ax, 0                        ; 0x1a9e
    push ax                          ; 0x1aa1
    push ax                          ; 0x1aa2
    push word [bss_9542]             ; 0x1aa3
    push word [bss_9540]             ; 0x1aa7
    call thunk_12                    ; 0x1aab
    add sp, byte 8                   ; 0x1aae
    cmp word [bss_95aa], byte 0      ; 0x1ab1
    jle short @..api_idx_000a_SRST.l1 ; 0x1ab6
    mov byte [bp - 0x000a], 1        ; 0x1ab8
    mov byte [bp - 0x0009], 0        ; 0x1abc
    mov ax, 0                        ; 0x1ac0
    push ax                          ; 0x1ac3
    push ax                          ; 0x1ac4
    lea ax, word [bp - 0x000a]       ; 0x1ac5
    push ax                          ; 0x1ac8
    mov ax, 0                        ; 0x1ac9
    push ax                          ; 0x1acc
    mov ax, 0xc7                     ; 0x1acd
    push ax                          ; 0x1ad0
    mov ax, 0x41                     ; 0x1ad1
    sub ax, word [bss_95aa]          ; 0x1ad4
    push ax                          ; 0x1ad8
    mov ax, 0x13f                    ; 0x1ad9
    push ax                          ; 0x1adc
    mov ax, 0                        ; 0x1add
    push ax                          ; 0x1ae0
    mov ax, 0x2d                     ; 0x1ae1
    push ax                          ; 0x1ae4
    mov ax, 0x5a                     ; 0x1ae5
    push ax                          ; 0x1ae8
    mov ax, 0xf                      ; 0x1ae9
    push ax                          ; 0x1aec
    call thunk_28                    ; 0x1aed
    add sp, byte 0x16                ; 0x1af0
@..api_idx_000a_SRST.l1:
    mov ax, 5                        ; 0x1af3
    cmp word [bss_95ac], byte 0      ; 0x1af6
    jne short @..api_idx_000a_SRST.l2 ; 0x1afb
    mov ax, word [bp + 0x4]          ; 0x1afd
    inc ax                           ; 0x1b00
    inc ax                           ; 0x1b01
@..api_idx_000a_SRST.l2:
    mov byte [bp - 0x000a], al       ; 0x1b02
    mov byte [bp - 0x0009], 0        ; 0x1b05
    mov ax, 0                        ; 0x1b09
    push ax                          ; 0x1b0c
    push ax                          ; 0x1b0d
    lea ax, word [bp - 0x000a]       ; 0x1b0e
    push ax                          ; 0x1b11
    mov ax, 0                        ; 0x1b12
    push ax                          ; 0x1b15
    mov ax, 0xc7                     ; 0x1b16
    push ax                          ; 0x1b19
    mov ax, 0                        ; 0x1b1a
    push ax                          ; 0x1b1d
    mov ax, 0x13f                    ; 0x1b1e
    push ax                          ; 0x1b21
    mov ax, 0                        ; 0x1b22
    push ax                          ; 0x1b25
    mov ax, 0x14                     ; 0x1b26
    sub ax, word [bss_95aa]          ; 0x1b29
    add ax, strict word 0x19         ; 0x1b2d
    push ax                          ; 0x1b30
    mov ax, 0x5a                     ; 0x1b31
    push ax                          ; 0x1b34
    mov ax, 0xf                      ; 0x1b35
    push ax                          ; 0x1b38
    call thunk_28                    ; 0x1b39
    add sp, byte 0x16                ; 0x1b3c
    ret                              ; 0x1b3f
