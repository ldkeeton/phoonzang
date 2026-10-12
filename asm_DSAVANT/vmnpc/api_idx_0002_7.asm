api_idx_0002_7:
    mov ax, 0xfffe                   ; 0x74d1
    call ds_aztec_csav               ; 0x74d4
    mov word [bp - 0x0002], 0        ; 0x74d7
@..api_idx_0002_7.l1:
    cmp word [bp + 0x4], byte 0      ; 0x74dc
    jl short @..api_idx_0002_7.l2    ; 0x74e0
    mov ax, word [bp - 0x0002]       ; 0x74e2
    cmp ax, word [bp + 0x4]          ; 0x74e5
    jne short @..api_idx_0002_7.l3   ; 0x74e8
@..api_idx_0002_7.l2:
    mov ax, word [bp - 0x0002]       ; 0x74ea
    shl ax, 1                        ; 0x74ed
    mov bx, ax                       ; 0x74ef
    inc word [bx - 0x7cf2]           ; 0x74f1
@..api_idx_0002_7.l3:
    mov ax, 0x14                     ; 0x74f5
    imul word [bp - 0x0002]          ; 0x74f8
    mov cx, word [bp - 0x0002]       ; 0x74fb
    shl cx, 1                        ; 0x74fe
    mov bx, cx                       ; 0x7500
    mov cx, word [bx - 0x7cf2]       ; 0x7502
    shl cx, 1                        ; 0x7506
    add ax, cx                       ; 0x7508
    mov bx, ax                       ; 0x750a
    cmp word [bx + 0x1d4], byte 0xff ; 0x750c
    jne short @..api_idx_0002_7.l4   ; 0x7511
    mov ax, word [bp - 0x0002]       ; 0x7513
    shl ax, 1                        ; 0x7516
    mov bx, ax                       ; 0x7518
    mov word [bx - 0x7cf2], 0        ; 0x751a
@..api_idx_0002_7.l4:
    inc word [bp - 0x0002]           ; 0x7520
    mov ax, word [bp - 0x0002]       ; 0x7523
    cmp ax, strict word 6            ; 0x7526
    jl short @..api_idx_0002_7.l1    ; 0x7529
    ret                              ; 0x752b
