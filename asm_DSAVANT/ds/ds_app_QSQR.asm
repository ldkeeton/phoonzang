; auto-generated
ds_app_QSQR: ; Aztec csav frame=0x0002
    mov ax, 0xfffe                   ; 0x2305
    call aztec_csav                  ; 0x2308
    mov ax, word [bp + 0x4]          ; 0x230b
    mov word [bp - 0x0002], ax       ; 0x230e
@..ds_app_QSQR.l1:
    cmp byte [bp + 0x6], 0           ; 0x2311
    jbe short @..ds_app_QSQR.l2      ; 0x2315
    mov al, byte [bp + 0x7]          ; 0x2317
    sub ah, ah                       ; 0x231a
    push ax                          ; 0x231c
    call ds_app_PUNN                 ; 0x231d
    pop cx                           ; 0x2320
    add ax, word [bp - 0x0002]       ; 0x2321
    inc ax                           ; 0x2324
    mov word [bp - 0x0002], ax       ; 0x2325
    dec byte [bp + 0x6]              ; 0x2328
    jmp short @..ds_app_QSQR.l1      ; 0x232b
@..ds_app_QSQR.l2:
    mov ax, word [bp - 0x0002]       ; 0x232d
    ret                              ; 0x2330
