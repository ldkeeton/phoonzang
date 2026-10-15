; auto-generated
api_idx_0002_JOPL:
    mov ax, 0xfffe                   ; 0x9bcc
    call aztec_csav                  ; 0x9bcf
    mov al, byte [bss_91c7]          ; 0x9bd2
    sub ah, ah                       ; 0x9bd5
    cmp ax, word [bp + 0x4]          ; 0x9bd7
    jne short @..api_idx_0002_JOPL.l1 ; 0x9bda
    mov ax, 0x95a8                   ; 0x9bdc
    push ax                          ; 0x9bdf
    mov ax, 0x790                    ; 0x9be0
    push ax                          ; 0x9be3
    call ds_app_mem_VKHV             ; 0x9be4
    add sp, byte 4                   ; 0x9be7
    jmp near @..api_idx_0002_JOPL.l4 ; 0x9bea
@..api_idx_0002_JOPL.l1:
    mov al, byte [bss_91c7]          ; 0x9bed
    sub ah, ah                       ; 0x9bf0
    mov cx, 0xc                      ; 0x9bf2
    imul cx                          ; 0x9bf5
    add ax, word [bp + 0x4]          ; 0x9bf7
    mov bx, ax                       ; 0x9bfa
    mov al, byte [bx - 0x7622]       ; 0x9bfc
    cbw                              ; 0x9c00
    mov word [bp - 0x0002], ax       ; 0x9c01
    cmp word [bp + 0x4], byte 0      ; 0x9c04
    jne short @..api_idx_0002_JOPL.l2 ; 0x9c08
    mov al, byte [bss_91c7]          ; 0x9c0a
    sub ah, ah                       ; 0x9c0d
    mov bx, ax                       ; 0x9c0f
    mov al, byte [bx - 0x7622]       ; 0x9c11
    cbw                              ; 0x9c15
    mov word [bp - 0x0002], ax       ; 0x9c16
@..api_idx_0002_JOPL.l2:
    mov ax, 0x95a8                   ; 0x9c19
    push ax                          ; 0x9c1c
    mov al, byte [bss_91c7]          ; 0x9c1d
    sub ah, ah                       ; 0x9c20
    mov cx, 3                        ; 0x9c22
    imul cx                          ; 0x9c25
    mov cx, 0                        ; 0x9c27
    cmp word [bp - 0x0002], byte 0xe7 ; 0x9c2a
    jl short @..api_idx_0002_JOPL.l3 ; 0x9c2e
    mov cx, 2                        ; 0x9c30
    cmp word [bp - 0x0002], byte 0x19 ; 0x9c33
    jge short @..api_idx_0002_JOPL.l3 ; 0x9c37
    mov cx, 1                        ; 0x9c39
@..api_idx_0002_JOPL.l3:
    add ax, cx                       ; 0x9c3c
    add ax, 0x76c                    ; 0x9c3e
    push ax                          ; 0x9c41
    call ds_app_mem_VKHV             ; 0x9c42
    add sp, byte 4                   ; 0x9c45
    mov ax, 0x9d10                   ; 0x9c48
    push ax                          ; 0x9c4b
    mov ax, word [bp + 0x4]          ; 0x9c4c
    add ax, 0x79e                    ; 0x9c4f
    push ax                          ; 0x9c52
    call ds_app_mem_VKHV             ; 0x9c53
    add sp, byte 4                   ; 0x9c56
    mov ax, 0x24                     ; 0x9c59
    push ax                          ; 0x9c5c
    mov ax, 0x9d10                   ; 0x9c5d
    push ax                          ; 0x9c60
    mov ax, 0x95a8                   ; 0x9c61
    push ax                          ; 0x9c64
    call ds_app_string_VPKQ          ; 0x9c65
    add sp, byte 6                   ; 0x9c68
@..api_idx_0002_JOPL.l4:
    mov ax, 0x95a8                   ; 0x9c6b
    push ax                          ; 0x9c6e
    call loc_JVJP                    ; 0x9c6f
    pop cx                           ; 0x9c72
    call api_idx_000e_LSOI           ; 0x9c73
    call api_idx_0004_IKJO           ; 0x9c76
    ret                              ; 0x9c79
