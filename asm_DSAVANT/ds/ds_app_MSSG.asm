; auto-generated
ds_app_MSSG: ; Aztec csav frame=0x0002
    mov ax, 0xfffe                   ; 0x2c11
    call aztec_csav                  ; 0x2c14
    mov word [bp - 0x0002], 0        ; 0x2c17
    jmp short @..ds_app_MSSG.l4      ; 0x2c1c
@..ds_app_MSSG.l1:
    mov bx, word [bp - 0x0002]       ; 0x2c1e
    mov al, byte [bx - 0x7d48]       ; 0x2c21
    sub ah, ah                       ; 0x2c25
    mov cx, 0x25                     ; 0x2c27
    imul cx                          ; 0x2c2a
    push ax                          ; 0x2c2c
    mov ax, 0x11                     ; 0x2c2d
    imul bx                          ; 0x2c30
    mov cx, ax                       ; 0x2c32
    pop ax                           ; 0x2c34
    add ax, cx                       ; 0x2c35
    mov cx, 0xff                     ; 0x2c37
    cwd                              ; 0x2c3a
    idiv cx                          ; 0x2c3b
    mov ax, dx                       ; 0x2c3d
    mov cl, byte [bx + 0xff0]        ; 0x2c3f
    cmp al, cl                       ; 0x2c43
    jmp short @..ds_app_MSSG.l2      ; 0x2c45
ds_loc_LHJU:
    mov ax, 0                        ; 0x2c47
    ret                              ; 0x2c4a
@..ds_app_MSSG.l2:
    mov ax, word [bss_59f6]          ; 0x2c4b
    dec ax                           ; 0x2c4e
    cmp ax, bx                       ; 0x2c4f
    jne short @..ds_app_MSSG.l3      ; 0x2c51
    mov ax, word [bss_59f8]          ; 0x2c53
    mov word [bss_1008], ax          ; 0x2c56
@..ds_app_MSSG.l3:
    inc word [bp - 0x0002]           ; 0x2c59
@..ds_app_MSSG.l4:
    mov ax, word [bp - 0x0002]       ; 0x2c5c
    cmp ax, word [bss_59f6]          ; 0x2c5f
    jl short @..ds_app_MSSG.l1       ; 0x2c63
    mov ax, 1                        ; 0x2c65
    ret                              ; 0x2c68
