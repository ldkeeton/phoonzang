api_idx_0014:
    mov ax, 0xffec                   ; 0x6476
    call ds_dispatch_f40b            ; 0x6479
    mov bx, word [data_8490]         ; 0x647c
    mov byte [bx + 0xe2], 0          ; 0x6480
    mov word [data_90de], 6          ; 0x6485
    mov word [data_91d8], 0          ; 0x648b
    mov word [data_91da], 0          ; 0x6491
    mov ax, 0x2c                     ; 0x6497
    imul word [data_8462]            ; 0x649a
    mov cx, ax                       ; 0x649e
    mov ax, word [data_8464]         ; 0x64a0
    shl ax, 1                        ; 0x64a3
    mov bx, ax                       ; 0x64a5
    mov ax, word [bx - 0x7b7e]       ; 0x64a7
    add ax, cx                       ; 0x64ab
    mov word [bp - 0x0002], ax       ; 0x64ad
    mov bx, ax                       ; 0x64b0
    cmp byte [bx + 0x22], 2          ; 0x64b2
    jae short @..api_idx_0014.l1     ; 0x64b6
    cmp byte [bx + 0x11], 0          ; 0x64b8
    ja short @..api_idx_0014.l1      ; 0x64bc
    cmp byte [bx + 0x10], 0          ; 0x64be
    jbe short @..api_idx_0014.l2     ; 0x64c2
@..api_idx_0014.l1:
    ret                              ; 0x64c4
