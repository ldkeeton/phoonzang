; auto-generated
api_idx_0002_2:
    mov ax, 0xfffe                   ; 0x0e05
    call aztec_csav                  ; 0x0e08
    mov word [bp - 0x0002], 0        ; 0x0e0b
@..api_idx_0002_2.l1:
    cmp word [bp + 0x4], byte 0      ; 0x0e10
    jl short @..api_idx_0002_2.l2    ; 0x0e14
    mov ax, word [bp - 0x0002]       ; 0x0e16
    cmp ax, word [bp + 0x4]          ; 0x0e19
    jne short @..api_idx_0002_2.l3   ; 0x0e1c
@..api_idx_0002_2.l2:
    mov ax, word [bp - 0x0002]       ; 0x0e1e
    shl ax, 1                        ; 0x0e21
    mov bx, ax                       ; 0x0e23
    inc word [bx - 0x7cf2]           ; 0x0e25
@..api_idx_0002_2.l3:
    mov ax, 0x14                     ; 0x0e29
    imul word [bp - 0x0002]          ; 0x0e2c
    mov cx, word [bp - 0x0002]       ; 0x0e2f
    shl cx, 1                        ; 0x0e32
    mov bx, cx                       ; 0x0e34
    mov cx, word [bx - 0x7cf2]       ; 0x0e36
    shl cx, 1                        ; 0x0e3a
    add ax, cx                       ; 0x0e3c
    mov bx, ax                       ; 0x0e3e
    cmp word [bx + 0x1d4], byte 0xff ; 0x0e40
    jne short @..api_idx_0002_2.l4   ; 0x0e45
    mov ax, word [bp - 0x0002]       ; 0x0e47
    shl ax, 1                        ; 0x0e4a
    mov bx, ax                       ; 0x0e4c
    mov word [bx - 0x7cf2], 0        ; 0x0e4e
@..api_idx_0002_2.l4:
    inc word [bp - 0x0002]           ; 0x0e54
    mov ax, word [bp - 0x0002]       ; 0x0e57
    cmp ax, strict word 6            ; 0x0e5a
    jl short @..api_idx_0002_2.l1    ; 0x0e5d
    ret                              ; 0x0e5f
