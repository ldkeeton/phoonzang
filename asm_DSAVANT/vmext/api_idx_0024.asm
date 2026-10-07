api_idx_0024:
    mov ax, 0xffdc                   ; 0x3b83
    call ds_dispatch_f40b            ; 0x3b86
    mov ax, word [data_8f1c]         ; 0x3b89
    mov dx, word [data_8f1e]         ; 0x3b8c
    mov cx, 0x5a0                    ; 0x3b90
    mov bx, 0                        ; 0x3b93
    call ds_dispatch_f99f            ; 0x3b96
    add ax, strict word 1            ; 0x3b99
    adc dx, byte 0                   ; 0x3b9c
    mov word [bp - 0x0004], ax       ; 0x3b9f
    add ax, strict word 0x12         ; 0x3ba2
    mov cx, 0x18                     ; 0x3ba5
    cwd                              ; 0x3ba8
    idiv cx                          ; 0x3ba9
    mov word [bp - 0x0006], dx       ; 0x3bab
    mov ax, word [data_8f1c]         ; 0x3bae
    mov dx, word [data_8f1e]         ; 0x3bb1
    mov cx, 0x5a0                    ; 0x3bb5
    mov bx, 0                        ; 0x3bb8
    call ds_dispatch_f9cd            ; 0x3bbb
    mov cx, 0x3c                     ; 0x3bbe
    mov bx, 0                        ; 0x3bc1
    call ds_dispatch_f99f            ; 0x3bc4
    cmp dx, byte 0                   ; 0x3bc7
    jg short @..api_idx_0024.l1      ; 0x3bca
    jne short @..api_idx_0024.l2     ; 0x3bcc
    cmp ax, strict word 0xc          ; 0x3bce
    jb short @..api_idx_0024.l2      ; 0x3bd1
@..api_idx_0024.l1:
    jmp short @..api_idx_0024.l3     ; 0x3bd3
@..api_idx_0024.l2:
    cmp word [bp - 0x0006], byte 0x0c ; 0x3bd5
    jle short @..api_idx_0024.l3     ; 0x3bd9
    dec word [bp - 0x0004]           ; 0x3bdb
    mov ax, word [bp - 0x0004]       ; 0x3bde
    add ax, strict word 0x12         ; 0x3be1
    mov cx, 0x18                     ; 0x3be4
    cwd                              ; 0x3be7
    idiv cx                          ; 0x3be8
    mov word [bp - 0x0006], dx       ; 0x3bea
@..api_idx_0024.l3:
    mov ax, 0x3c                     ; 0x3bed
    imul word [bp - 0x0006]          ; 0x3bf0
    cwd                              ; 0x3bf3
    mov cx, ax                       ; 0x3bf4
    mov bx, dx                       ; 0x3bf6
    mov ax, word [data_8f1c]         ; 0x3bf8
    mov dx, word [data_8f1e]         ; 0x3bfb
    sub ax, cx                       ; 0x3bff
    sbb dx, bx                       ; 0x3c01
    mov cx, 0x5a0                    ; 0x3c03
    mov bx, 0                        ; 0x3c06
    call ds_dispatch_f9cd            ; 0x3c09
    mov word [bp - 0x0008], ax       ; 0x3c0c
    cmp ax, strict word 0            ; 0x3c0f
    jl short @..api_idx_0024.l4      ; 0x3c12
    cmp ax, 0x1e0                    ; 0x3c14
    jl short @..api_idx_0024.l5      ; 0x3c17
@..api_idx_0024.l4:
    ret                              ; 0x3c19
