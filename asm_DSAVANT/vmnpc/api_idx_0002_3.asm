; auto-generated
api_idx_0002_3:
    mov ax, 0xfffe                   ; 0x38c1
    call aztec_csav                  ; 0x38c4
    mov ax, 0x248                    ; 0x38c7
    imul word [bp + 0x4]             ; 0x38ca
    add ax, word [bp + 0x6]          ; 0x38cd
    mov bx, ax                       ; 0x38d0
    mov al, byte [bx + 0x5d5a]       ; 0x38d2
    sub ah, ah                       ; 0x38d6
    sub ax, word [bp + 0x8]          ; 0x38d8
    mov word [bp - 0x0002], ax       ; 0x38db
    push ax                          ; 0x38de
    cmp ax, strict word 0            ; 0x38df
    pop ax                           ; 0x38e2
    jge short @..api_idx_0002_3.l1   ; 0x38e3
    mov ax, 0                        ; 0x38e5
@..api_idx_0002_3.l1:
    mov byte [bx + 0x5d5a], al       ; 0x38e8
    cmp word [bp + 0xa], byte 0      ; 0x38ec
    je short @..api_idx_0002_3.l2    ; 0x38f0
    mov ax, 1                        ; 0x38f2
    push ax                          ; 0x38f5
    push word [bp + 0x4]             ; 0x38f6
    call ds_app_1d81                 ; 0x38f9
    add sp, byte 4                   ; 0x38fc
@..api_idx_0002_3.l2:
    ret                              ; 0x38ff
