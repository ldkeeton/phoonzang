; auto-generated
api_idx_0006_MHOR:
    mov ax, 0xfffa                   ; 0x05b6
    call aztec_csav                  ; 0x05b9
    mov word [bp - 2], 0             ; 0x05bc
@..api_idx_0006_MHOR.l1:
    mov word [bp - 6], 0             ; 0x05c1
    mov word [bp - 4], 0             ; 0x05c6
    jmp short @..api_idx_0006_MHOR.l4 ; 0x05cb
@..api_idx_0006_MHOR.l2:
    mov ax, word [bp - 4]            ; 0x05cd
    shl ax, 1                        ; 0x05d0
    mov bx, ax                       ; 0x05d2
    mov ax, word [bx + member_icon]  ; 0x05d4
    cmp ax, word [bp - 2]            ; 0x05d8
    jne short @..api_idx_0006_MHOR.l3 ; 0x05db
    mov word [bp - 6], 1             ; 0x05dd
@..api_idx_0006_MHOR.l3:
    inc word [bp - 4]                ; 0x05e2
@..api_idx_0006_MHOR.l4:
    mov ax, word [bp - 4]            ; 0x05e5
    cmp ax, word [bp + 4]            ; 0x05e8
    jl short @..api_idx_0006_MHOR.l2 ; 0x05eb
    cmp word [bp - 6], byte 0        ; 0x05ed
    jne short @..api_idx_0006_MHOR.l5 ; 0x05f1
    mov ax, word [bp - 2]            ; 0x05f3
    ret                              ; 0x05f6
@..api_idx_0006_MHOR.l5:
    inc word [bp - 2]                ; 0x05f7
    mov ax, word [bp - 2]            ; 0x05fa
    cmp ax, strict word 6            ; 0x05fd
    jl short @..api_idx_0006_MHOR.l1 ; 0x0600
    mov ax, 0                        ; 0x0602
    ret                              ; 0x0605
