; auto-generated
api_idx_0002_QRVU:
    mov ax, 0xfffe                   ; 0x3fac
    call aztec_csav                  ; 0x3faf
    mov ax, 2                        ; 0x3fb2
    push ax                          ; 0x3fb5
    mov ax, 0                        ; 0x3fb6
    push ax                          ; 0x3fb9
    mov ax, dseg_90e8                ; 0x3fba
    push ax                          ; 0x3fbd
    call ds_app_UUHT                 ; 0x3fbe
    add sp, byte 4                   ; 0x3fc1
    push ax                          ; 0x3fc4
    call aztec_open                  ; 0x3fc5
    add sp, byte 4                   ; 0x3fc8
    mov word [bss_9088], ax          ; 0x3fcb
    cmp ax, strict word 0xffff       ; 0x3fce
    jne short @..api_idx_0002_QRVU.l1 ; 0x3fd1
    mov ax, 0x14                     ; 0x3fd3
    push ax                          ; 0x3fd6
    call ds_app_UKIP                 ; 0x3fd7
    pop cx                           ; 0x3fda
@..api_idx_0002_QRVU.l1:
    mov ax, 0                        ; 0x3fdb
    push ax                          ; 0x3fde
    mov ax, 0                        ; 0x3fdf
    mov dx, 0                        ; 0x3fe2
    push dx                          ; 0x3fe5
    push ax                          ; 0x3fe6
    push word [bss_9088]             ; 0x3fe7
    call aztec_lseek                 ; 0x3feb
    add sp, byte 8                   ; 0x3fee
    mov ax, 0x34c                    ; 0x3ff1
    push ax                          ; 0x3ff4
    mov ax, bss_5642                 ; 0x3ff5
    push ax                          ; 0x3ff8
    push word [bss_9088]             ; 0x3ff9
    call aztec_write                 ; 0x3ffd
    add sp, byte 6                   ; 0x4000
    mov word [bp - 0x0002], ax       ; 0x4003
    cmp ax, strict word 0xffff       ; 0x4006
    jne short @..api_idx_0002_QRVU.l2 ; 0x4009
    mov ax, 0x14                     ; 0x400b
    push ax                          ; 0x400e
    call ds_app_UKIP                 ; 0x400f
    pop cx                           ; 0x4012
@..api_idx_0002_QRVU.l2:
    push word [bss_9088]             ; 0x4013
    call aztec_close                 ; 0x4017
    pop cx                           ; 0x401a
    mov al, byte [bss_5986]          ; 0x401b
    sub ah, ah                       ; 0x401e
    mov word [bss_9058], ax          ; 0x4020
    mov ax, 1                        ; 0x4023
    push ax                          ; 0x4026
    call thunk_17                    ; 0x4027
    pop cx                           ; 0x402a
    test word [bss_9056], 0x1000     ; 0x402b
    je short @..api_idx_0002_QRVU.l4 ; 0x4031
    cmp byte [bss_5989], 1           ; 0x4033
    jne short @..api_idx_0002_QRVU.l4 ; 0x4038
    cmp word [bss_0e32], byte 0      ; 0x403a
    jne short @..api_idx_0002_QRVU.l3 ; 0x403f
    call thunk_35                    ; 0x4041
@..api_idx_0002_QRVU.l3:
    mov word [bss_0e32], 1           ; 0x4044
    jmp short @..api_idx_0002_QRVU.l6 ; 0x404a
@..api_idx_0002_QRVU.l4:
    cmp word [bss_0e32], byte 1      ; 0x404c
    jne short @..api_idx_0002_QRVU.l5 ; 0x4051
    call thunk_36                    ; 0x4053
@..api_idx_0002_QRVU.l5:
    mov word [bss_0e32], 0           ; 0x4056
@..api_idx_0002_QRVU.l6:
    call bios_kbd_check              ; 0x405c
    ret                              ; 0x405f
