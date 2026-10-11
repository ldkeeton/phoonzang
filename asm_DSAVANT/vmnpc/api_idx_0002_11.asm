api_idx_0002_11:
    mov ax, 0xfffe                   ; 0x8be8
    call ds_dispatch_f40b            ; 0x8beb
    mov word [bp - 0x0002], 0        ; 0x8bee
@..api_idx_0002_11.l1:
    mov ax, 0x14                     ; 0x8bf3
    imul word [bp - 0x0002]          ; 0x8bf6
    add ax, 0xa7ac                   ; 0x8bf9
    push ax                          ; 0x8bfc
    push word [bp + 0x4]             ; 0x8bfd
    call aztec_strcmp                ; 0x8c00
    add sp, byte 4                   ; 0x8c03
    test ax, ax                      ; 0x8c06
    jne short @..api_idx_0002_11.l2  ; 0x8c08
    mov ax, 0x14                     ; 0x8c0a
    imul word [bp - 0x0002]          ; 0x8c0d
    add ax, 0xa7b6                   ; 0x8c10
    push ax                          ; 0x8c13
    push word [bp + 0x4]             ; 0x8c14
    call ds_dispatch_f364            ; 0x8c17
    add sp, byte 4                   ; 0x8c1a
    ret                              ; 0x8c1d
@..api_idx_0002_11.l2:
    inc word [bp - 0x0002]           ; 0x8c1e
    mov ax, word [bp - 0x0002]       ; 0x8c21
    cmp ax, strict word 5            ; 0x8c24
    jl short @..api_idx_0002_11.l1   ; 0x8c27
    ret                              ; 0x8c29
