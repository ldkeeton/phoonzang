; auto-generated
api_idx_0002_JNUL:
    mov ax, 0xfffe                   ; 0xa411
    call aztec_csav                  ; 0xa414
    mov word [bp - 2], 0             ; 0xa417
    jmp short .forward1              ; 0xa41c
.back1:
    mov ax, 0x32                     ; 0xa41e
    imul word [bp - 2]               ; 0xa421
    add ax, bss_a8c4                 ; 0xa424
    push ax                          ; 0xa427
    mov ax, word [bp + 4]            ; 0xa428
    add ax, word [bp - 2]            ; 0xa42b
    push ax                          ; 0xa42e
    call load_message_string         ; 0xa42f
    add sp, byte 4                   ; 0xa432
    inc word [bp - 2]                ; 0xa435
.forward1:
    mov ax, word [bp - 2]            ; 0xa438
    cmp ax, word [bp + 6]            ; 0xa43b
    jl short .back1                  ; 0xa43e
    ret                              ; 0xa440
