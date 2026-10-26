; auto-generated
api_idx_0002_UHGS:
    mov ax, 0xfffe                   ; 0x8be8
    call aztec_csav                  ; 0x8beb
    mov word [bp - 2], 0             ; 0x8bee
.back1:
    mov ax, 0x14                     ; 0x8bf3
    imul word [bp - 2]               ; 0x8bf6
    add ax, bss_a7ac                 ; 0x8bf9
    push ax                          ; 0x8bfc
    push word [bp + 4]               ; 0x8bfd
    call aztec_strcmp                ; 0x8c00
    add sp, byte 4                   ; 0x8c03
    test ax, ax                      ; 0x8c06
    jne short .forward1              ; 0x8c08
    mov ax, 0x14                     ; 0x8c0a
    imul word [bp - 2]               ; 0x8c0d
    add ax, bss_a7b6                 ; 0x8c10
    push ax                          ; 0x8c13
    push word [bp + 4]               ; 0x8c14
    call aztec_strcpy                ; 0x8c17
    add sp, byte 4                   ; 0x8c1a
    ret                              ; 0x8c1d
.forward1:
    inc word [bp - 2]                ; 0x8c1e
    mov ax, word [bp - 2]            ; 0x8c21
    cmp ax, strict word 5            ; 0x8c24
    jl short .back1                  ; 0x8c27
    ret                              ; 0x8c29
