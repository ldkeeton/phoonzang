; auto-generated
api_idx_0002_IUMT:
    mov ax, 0xfffe                   ; 0x0dc3
    call aztec_csav                  ; 0x0dc6
    mov word [bp - 0x0002], 0        ; 0x0dc9
@..api_idx_0002_IUMT.l1:
    mov ax, word [bp - 0x0002]       ; 0x0dce
    mov cx, 7                        ; 0x0dd1
    shl ax, cl                       ; 0x0dd4
    add ax, 0x924c                   ; 0x0dd6
    push ax                          ; 0x0dd9
    mov ax, word [bp - 0x0002]       ; 0x0dda
    shl ax, cl                       ; 0x0ddd
    add ax, 0x91cc                   ; 0x0ddf
    push ax                          ; 0x0de2
    call aztec_strcpy                ; 0x0de3
    add sp, byte 4                   ; 0x0de6
    mov ax, word [bp - 0x0002]       ; 0x0de9
    shl ax, 1                        ; 0x0dec
    mov bx, ax                       ; 0x0dee
    mov ax, word [bx - 0x6c32]       ; 0x0df0
    mov word [bx - 0x6c34], ax       ; 0x0df4
    inc word [bp - 0x0002]           ; 0x0df8
    mov ax, word [bp - 0x0002]       ; 0x0dfb
    cmp ax, strict word 3            ; 0x0dfe
    jl short @..api_idx_0002_IUMT.l1 ; 0x0e01
    mov byte [bss_934c], 0           ; 0x0e03
    mov word [bss_93d2], 0           ; 0x0e08
    mov word [bss_93d4], 3           ; 0x0e0e
    ret                              ; 0x0e14
