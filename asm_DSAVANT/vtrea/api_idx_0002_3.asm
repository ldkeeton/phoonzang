; auto-generated
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x5689
    call aztec_csav                  ; 0x568c
@..api_idx_0002_3.l1:
    mov ax, 0x2f                     ; 0x568f
    push ax                          ; 0x5692
    push word [bp + 0x4]             ; 0x5693
    call strlen                      ; 0x5696
    add sp, byte 4                   ; 0x5699
    mov word [bp - 0x0002], ax       ; 0x569c
    cmp ax, strict word 0xffff       ; 0x569f
    je short @..api_idx_0002_3.l2    ; 0x56a2
    mov bx, word [bp + 0x4]          ; 0x56a4
    mov si, ax                       ; 0x56a7
    mov byte [bx + si], 0x20         ; 0x56a9
    jmp short @..api_idx_0002_3.l1   ; 0x56ac
@..api_idx_0002_3.l2:
    ret                              ; 0x56ae
loc_56af:
    mov ax, 0                        ; 0x56af
    call aztec_csav                  ; 0x56b2
    cmp word [bp + 0x4], strict word 0x190 ; 0x56b5
    jl short @..loc_56af.l1          ; 0x56ba
    cmp word [bp + 0x4], strict word 0x19b ; 0x56bc
    jge short @..loc_56af.l1         ; 0x56c1
    mov ax, 1                        ; 0x56c3
    jmp short @..loc_56af.l2         ; 0x56c6
@..loc_56af.l1:
    mov ax, 0                        ; 0x56c8
@..loc_56af.l2:
    ret                              ; 0x56cb
