; auto-generated
api_idx_0002_UVON:
    mov ax, 0xfffe                   ; 0xa391
    call aztec_csav                  ; 0xa394
    mov word [bp - 2], 0             ; 0xa397
    jmp short .forward1              ; 0xa39c
.back1:
    mov ax, 0x14                     ; 0xa39e
    imul word [bp - 2]               ; 0xa3a1
    add ax, bss_a7ac                 ; 0xa3a4
    push ax                          ; 0xa3a7
    mov ax, word [bp - 2]            ; 0xa3a8
    shl ax, 1                        ; 0xa3ab
    add ax, word [bp + 4]            ; 0xa3ad
    push ax                          ; 0xa3b0
    call load_message_string         ; 0xa3b1
    add sp, byte 4                   ; 0xa3b4
    mov ax, 0x14                     ; 0xa3b7
    imul word [bp - 2]               ; 0xa3ba
    add ax, bss_a7b6                 ; 0xa3bd
    push ax                          ; 0xa3c0
    mov ax, word [bp - 2]            ; 0xa3c1
    shl ax, 1                        ; 0xa3c4
    add ax, word [bp + 4]            ; 0xa3c6
    inc ax                           ; 0xa3c9
    push ax                          ; 0xa3ca
    call load_message_string         ; 0xa3cb
    add sp, byte 4                   ; 0xa3ce
    inc word [bp - 2]                ; 0xa3d1
.forward1:
    mov ax, word [bp - 2]            ; 0xa3d4
    cmp ax, word [bp + 6]            ; 0xa3d7
    jl short .back1                  ; 0xa3da
    ret                              ; 0xa3dc
