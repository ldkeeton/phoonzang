api_idx_0006_8:
    mov ax, 0xfffa                   ; 0x9e5d
    call ds_aztec_csav               ; 0x9e60
    mov ax, word [bp + 0x4]          ; 0x9e63
    cmp ax, word [bp + 0x6]          ; 0x9e66
    jne short @..api_idx_0006_8.l1   ; 0x9e69
    ret                              ; 0x9e6b
@..api_idx_0006_8.l1:
    mov cx, 2                        ; 0x9e6c
    cwd                              ; 0x9e6f
    idiv cx                          ; 0x9e70
    mov ax, dx                       ; 0x9e72
    push ax                          ; 0x9e74
    mov ax, word [bp + 0x6]          ; 0x9e75
    cwd                              ; 0x9e78
    idiv cx                          ; 0x9e79
    mov cx, dx                       ; 0x9e7b
    pop ax                           ; 0x9e7d
    cmp ax, cx                       ; 0x9e7e
    jne short @..api_idx_0006_8.l2   ; 0x9e80
    mov word [bp - 0x0004], 0        ; 0x9e82
    jmp short @..api_idx_0006_8.l4   ; 0x9e87
@..api_idx_0006_8.l2:
    test cx, cx                      ; 0x9e89
    jne short @..api_idx_0006_8.l3   ; 0x9e8b
    mov word [bp - 0x0004], 1        ; 0x9e8d
    jmp short @..api_idx_0006_8.l4   ; 0x9e92
@..api_idx_0006_8.l3:
    mov word [bp - 0x0004], 0xffff   ; 0x9e94
@..api_idx_0006_8.l4:
    push word [bss_8462]             ; 0x9e99
    push word [bss_8464]             ; 0x9e9d
    mov ax, 0x90e6                   ; 0x9ea1
    push ax                          ; 0x9ea4
    call loc_15ab                    ; 0x9ea5
    add sp, byte 6                   ; 0x9ea8
    mov ax, word [bp + 0x4]          ; 0x9eab
    cmp ax, word [bp + 0x6]          ; 0x9eae
    jle short @..api_idx_0006_8.l5   ; 0x9eb1
    mov ax, 0x9136                   ; 0x9eb3
    push ax                          ; 0x9eb6
    mov ax, 0xdb9                    ; 0x9eb7
    push ax                          ; 0x9eba
    call ds_app_mem_0782             ; 0x9ebb
    add sp, byte 4                   ; 0x9ebe
    mov word [bp - 0x0002], 0xfffe   ; 0x9ec1
    jmp short @..api_idx_0006_8.l6   ; 0x9ec6
@..api_idx_0006_8.l5:
    mov ax, 0x9136                   ; 0x9ec8
    push ax                          ; 0x9ecb
    mov ax, 0xdba                    ; 0x9ecc
    push ax                          ; 0x9ecf
    call ds_app_mem_0782             ; 0x9ed0
    add sp, byte 4                   ; 0x9ed3
    mov word [bp - 0x0002], 2        ; 0x9ed6
@..api_idx_0006_8.l6:
    mov byte [bss_9186], 0           ; 0x9edb
    mov ax, 0                        ; 0x9ee0
    push ax                          ; 0x9ee3
    mov ax, 0x43                     ; 0x9ee4
    push ax                          ; 0x9ee7
    mov ax, 1                        ; 0x9ee8
    push ax                          ; 0x9eeb
    mov ax, 0x9186                   ; 0x9eec
    push ax                          ; 0x9eef
    mov ax, 0x9136                   ; 0x9ef0
    push ax                          ; 0x9ef3
    mov ax, 0x90e6                   ; 0x9ef4
    push ax                          ; 0x9ef7
    mov ax, 0                        ; 0x9ef8
    push ax                          ; 0x9efb
    call api_idx_0004_4              ; 0x9efc
    add sp, byte 0x0e                ; 0x9eff
    mov ax, 6                        ; 0x9f02
    push ax                          ; 0x9f05
    call api_idx_0004_5              ; 0x9f06
    pop cx                           ; 0x9f09
@..api_idx_0006_8.l7:
    mov ax, word [bp + 0x6]          ; 0x9f0a
    add ax, word [bp - 0x0004]       ; 0x9f0d
    cmp ax, word [bp + 0x4]          ; 0x9f10
    je short @..api_idx_0006_8.l8    ; 0x9f13
    mov ax, word [bp + 0x4]          ; 0x9f15
    add ax, word [bp - 0x0002]       ; 0x9f18
    mov word [bp - 0x0006], ax       ; 0x9f1b
    push ax                          ; 0x9f1e
    push word [bp + 0x4]             ; 0x9f1f
    call loc_9d8d                    ; 0x9f22
    add sp, byte 4                   ; 0x9f25
    mov ax, word [bp - 0x0002]       ; 0x9f28
    add word [bp + 0x4], ax          ; 0x9f2b
    jmp short @..api_idx_0006_8.l7   ; 0x9f2e
@..api_idx_0006_8.l8:
    cmp word [bp - 0x0004], byte 0   ; 0x9f30
    je short @..api_idx_0006_8.l9    ; 0x9f34
    push word [bp + 0x6]             ; 0x9f36
    mov ax, word [bp + 0x6]          ; 0x9f39
    add ax, word [bp - 0x0004]       ; 0x9f3c
    push ax                          ; 0x9f3f
    call loc_9d8d                    ; 0x9f40
    add sp, byte 4                   ; 0x9f43
@..api_idx_0006_8.l9:
    push word [bss_9058]             ; 0x9f46
    call api_idx_0004_5              ; 0x9f4a
    pop cx                           ; 0x9f4d
    ret                              ; 0x9f4e
