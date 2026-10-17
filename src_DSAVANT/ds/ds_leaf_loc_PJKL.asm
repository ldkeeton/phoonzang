; auto-generated
ds_leaf_loc_PJKL:
    mov ax, word [bss_82e8]          ; 0x2cf8
    cmp ax, word [bss_82ec]          ; 0x2cfb
    je short @..ds_leaf_loc_PJKL.l3  ; 0x2cff
    mov word [bss_82ec], ax          ; 0x2d01
    mov ax, word [bss_82ee]          ; 0x2d04
    shl ax, 1                        ; 0x2d07
    sub ax, word [bss_82f0]          ; 0x2d09
    mov word [bp - 0x0006], ax       ; 0x2d0d
    cmp word [bp - 0x0006], byte 0   ; 0x2d10
    je short @..ds_leaf_loc_PJKL.l3  ; 0x2d14
    cmp ax, strict word 0xfffc       ; 0x2d16
    jl short @..ds_leaf_loc_PJKL.l1  ; 0x2d19
    cmp ax, strict word 0            ; 0x2d1b
    jle short @..ds_leaf_loc_PJKL.l2 ; 0x2d1e
    cmp ax, strict word 5            ; 0x2d20
    jge short @..ds_leaf_loc_PJKL.l2 ; 0x2d23
@..ds_leaf_loc_PJKL.l1:
    mov ax, word [bss_82f0]          ; 0x2d25
    inc ax                           ; 0x2d28
    mov cx, 8                        ; 0x2d29
    cwd                              ; 0x2d2c
    idiv cx                          ; 0x2d2d
    mov word [bss_82f0], dx          ; 0x2d2f
    jmp short @..ds_leaf_loc_PJKL.l3 ; 0x2d33
@..ds_leaf_loc_PJKL.l2:
    mov ax, word [bss_82f0]          ; 0x2d35
    add ax, strict word 7            ; 0x2d38
    mov cx, 8                        ; 0x2d3b
    cwd                              ; 0x2d3e
    idiv cx                          ; 0x2d3f
    mov word [bss_82f0], dx          ; 0x2d41
@..ds_leaf_loc_PJKL.l3:
    mov ax, word [bss_82f0]          ; 0x2d45
    add ax, strict word 0xb          ; 0x2d48
    mov word [bp - 0x0004], ax       ; 0x2d4b
    jmp short ds_loc_VQTI            ; 0x2d4e
jumptable_2d50:
    dw ds_leaf_loc_SOGP - IMAGE_BASE           ; 0x2d50
    dw ds_leaf_loc_VNSJ - IMAGE_BASE           ; 0x2d52
    dw ds_leaf_loc_QNQO - IMAGE_BASE           ; 0x2d54
    dw ds_leaf_loc_VSOJ - IMAGE_BASE           ; 0x2d56
    dw ds_leaf_loc_PJKL - IMAGE_BASE           ; 0x2d58
    dw ds_leaf_loc_HJGN - IMAGE_BASE           ; 0x2d5a
ds_loc_OMRM:
    cmp ax, strict word 6            ; 0x2d5c
    jae short ds_loc_VQTI            ; 0x2d5f
    xchg bx, ax                      ; 0x2d61
    shl bx, 1                        ; 0x2d62
    jmp [cs:bx + jumptable_2d50 - IMAGE_BASE] ; 0x2d64
ds_loc_VQTI:
    mov ax, word [bp - 0x0002]       ; 0x2d69
    shl ax, 1                        ; 0x2d6c
    shl ax, 1                        ; 0x2d6e
    mov bx, ax                       ; 0x2d70
    cmp word [bx - 0x7d0e], byte 0   ; 0x2d72
    jle short ds_loc_ISUU            ; 0x2d77
    mov al, byte [bp - 0x0004]       ; 0x2d79
    mov byte [bp - 0x0014], al       ; 0x2d7c
    mov byte [bp - 0x0013], 0        ; 0x2d7f
    mov ax, 0                        ; 0x2d83
    push ax                          ; 0x2d86
    push ax                          ; 0x2d87
    lea ax, word [bp - 0x0014]       ; 0x2d88
    push ax                          ; 0x2d8b
    mov ax, 0                        ; 0x2d8c
    push ax                          ; 0x2d8f
    mov ax, 0xc7                     ; 0x2d90
    push ax                          ; 0x2d93
    mov ax, 0                        ; 0x2d94
    push ax                          ; 0x2d97
    mov ax, 0x13f                    ; 0x2d98
    push ax                          ; 0x2d9b
    mov ax, 0                        ; 0x2d9c
    push ax                          ; 0x2d9f
    push word [bp - 0x000a]          ; 0x2da0
    push word [bp - 0x0008]          ; 0x2da3
    mov ax, 8                        ; 0x2da6
    push ax                          ; 0x2da9
    call thunk_28                    ; 0x2daa
    add sp, byte 0x16                ; 0x2dad
ds_loc_ISUU:
    inc word [bp - 0x0002]           ; 0x2db0
    mov ax, word [bp - 0x0002]       ; 0x2db3
    cmp ax, strict word 6            ; 0x2db6
    jge short ds_loc_KOJT            ; 0x2db9
    jmp near ds_loc_TJNR             ; 0x2dbb
ds_loc_KOJT:
    mov ax, 0x16                     ; 0x2dbe
    push ax                          ; 0x2dc1
    mov ax, 0xfc                     ; 0x2dc2
    push ax                          ; 0x2dc5
    mov ax, 6                        ; 0x2dc6
    push ax                          ; 0x2dc9
    mov ax, 0x44                     ; 0x2dca
    push ax                          ; 0x2dcd
    call thunk_4                     ; 0x2dce
    add sp, byte 8                   ; 0x2dd1
    ret                              ; 0x2dd4
