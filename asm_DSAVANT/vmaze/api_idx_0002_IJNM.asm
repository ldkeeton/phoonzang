; auto-generated
api_idx_0002_IJNM:
    mov ax, 0xfffe                   ; 0x7001
    call aztec_csav                  ; 0x7004
    mov ax, 4                        ; 0x7007
    push ax                          ; 0x700a
    call ds_app_GGUI                 ; 0x700b
    pop cx                           ; 0x700e
    mov word [bp - 0x0002], ax       ; 0x700f
@..api_idx_0002_IJNM.l1:
    mov ax, word [bp - 0x0002]       ; 0x7012
    shl ax, 1                        ; 0x7015
    mov si, ax                       ; 0x7017
    mov bx, word [bp + 0x4]          ; 0x7019
    cmp word [bx + si], byte 0       ; 0x701c
    jne short @..api_idx_0002_IJNM.l2 ; 0x701f
    mov ax, word [bp - 0x0002]       ; 0x7021
    inc ax                           ; 0x7024
    mov cx, 4                        ; 0x7025
    cwd                              ; 0x7028
    idiv cx                          ; 0x7029
    mov word [bp - 0x0002], dx       ; 0x702b
    jmp short @..api_idx_0002_IJNM.l1 ; 0x702e
@..api_idx_0002_IJNM.l2:
    mov ax, word [bp - 0x0002]       ; 0x7030
    ret                              ; 0x7033
