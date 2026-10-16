; auto-generated
loc_MOTJ:
    mov ax, 0                        ; 0x095a
    call aztec_csav                  ; 0x095d
    mov ax, word [bp + 0x4]          ; 0x0960
    jmp short @..loc_MOTJ.l5         ; 0x0963
@..loc_MOTJ.l1:
    dec word [bp + 0xa]              ; 0x0965
    jmp short @..loc_MOTJ.l6         ; 0x0968
@..loc_MOTJ.l2:
    inc word [bp + 0x8]              ; 0x096a
    jmp short @..loc_MOTJ.l6         ; 0x096d
@..loc_MOTJ.l3:
    inc word [bp + 0xa]              ; 0x096f
    jmp short @..loc_MOTJ.l6         ; 0x0972
@..loc_MOTJ.l4:
    dec word [bp + 0x8]              ; 0x0974
    jmp short @..loc_MOTJ.l6         ; 0x0977
@..loc_MOTJ.l5:
    cmp ax, strict word 0            ; 0x0979
    je short @..loc_MOTJ.l1          ; 0x097c
    cmp ax, strict word 1            ; 0x097e
    je short @..loc_MOTJ.l2          ; 0x0981
    cmp ax, strict word 2            ; 0x0983
    je short @..loc_MOTJ.l3          ; 0x0986
    cmp ax, strict word 3            ; 0x0988
    je short @..loc_MOTJ.l4          ; 0x098b
@..loc_MOTJ.l6:
    cmp word [bp + 0x8], byte 0      ; 0x098d
    jl short @..loc_MOTJ.l7          ; 0x0991
    cmp word [bp + 0x8], byte 0x11   ; 0x0993
    jge short @..loc_MOTJ.l7         ; 0x0997
    cmp word [bp + 0xa], byte 0      ; 0x0999
    jl short @..loc_MOTJ.l7          ; 0x099d
    cmp word [bp + 0xa], byte 0x11   ; 0x099f
    jge short @..loc_MOTJ.l7         ; 0x09a3
    mov ax, word [bp + 0x6]          ; 0x09a5
    push ax                          ; 0x09a8
    mov ax, 0x24                     ; 0x09a9
    imul word [bp + 0x8]             ; 0x09ac
    mov cx, ax                       ; 0x09af
    mov dx, word [bp + 0xa]          ; 0x09b1
    shl dx, 1                        ; 0x09b4
    add ax, dx                       ; 0x09b6
    mov bx, ax                       ; 0x09b8
    pop ax                           ; 0x09ba
    mov word [bx - 0x6f46], ax       ; 0x09bb
@..loc_MOTJ.l7:
    ret                              ; 0x09bf
