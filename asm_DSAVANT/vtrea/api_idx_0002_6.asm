api_idx_0002_6:
    mov ax, 0xfffe                   ; 0x89bd
    call ds_aztec_csav               ; 0x89c0
    mov word [bp - 0x0002], 0        ; 0x89c3
@..api_idx_0002_6.l1:
    cmp word [bp + 0x4], byte 0      ; 0x89c8
    jl short @..api_idx_0002_6.l2    ; 0x89cc
    mov ax, word [bp - 0x0002]       ; 0x89ce
    cmp ax, word [bp + 0x4]          ; 0x89d1
    jne short @..api_idx_0002_6.l3   ; 0x89d4
@..api_idx_0002_6.l2:
    mov ax, word [bp - 0x0002]       ; 0x89d6
    shl ax, 1                        ; 0x89d9
    mov bx, ax                       ; 0x89db
    inc word [bx - 0x7cf2]           ; 0x89dd
@..api_idx_0002_6.l3:
    mov ax, 0x14                     ; 0x89e1
    imul word [bp - 0x0002]          ; 0x89e4
    mov cx, word [bp - 0x0002]       ; 0x89e7
    shl cx, 1                        ; 0x89ea
    mov bx, cx                       ; 0x89ec
    mov cx, word [bx - 0x7cf2]       ; 0x89ee
    shl cx, 1                        ; 0x89f2
    add ax, cx                       ; 0x89f4
    mov bx, ax                       ; 0x89f6
    cmp word [bx + 0x1d4], byte 0xff ; 0x89f8
    jne short @..api_idx_0002_6.l4   ; 0x89fd
    mov ax, word [bp - 0x0002]       ; 0x89ff
    shl ax, 1                        ; 0x8a02
    mov bx, ax                       ; 0x8a04
    mov word [bx - 0x7cf2], 0        ; 0x8a06
@..api_idx_0002_6.l4:
    inc word [bp - 0x0002]           ; 0x8a0c
    mov ax, word [bp - 0x0002]       ; 0x8a0f
    cmp ax, strict word 6            ; 0x8a12
    jl short @..api_idx_0002_6.l1    ; 0x8a15
    ret                              ; 0x8a17
