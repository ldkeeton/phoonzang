; auto-generated
ds_app_QIQN: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x1ccc
    call aztec_csav                  ; 0x1ccf
    mov ax, 0x248                    ; 0x1cd2
    imul word [bp + 0x4]             ; 0x1cd5
    mov bx, ax                       ; 0x1cd8
    cmp byte [bx + 0x5e2f], 0        ; 0x1cda
    jne short @..ds_app_QIQN.l1      ; 0x1cdf
    cmp byte [bx + 0x5d5c], 0        ; 0x1ce1
    ja short @..ds_app_QIQN.l1       ; 0x1ce6
    cmp byte [bx + 0x5d5d], 0        ; 0x1ce8
    jbe short @..ds_app_QIQN.l2      ; 0x1ced
@..ds_app_QIQN.l1:
    mov ax, 0                        ; 0x1cef
    jmp short @..ds_app_QIQN.l3      ; 0x1cf2
@..ds_app_QIQN.l2:
    mov ax, 1                        ; 0x1cf4
@..ds_app_QIQN.l3:
    ret                              ; 0x1cf7
