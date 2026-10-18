; auto-generated
ds_app_string_KVNI: ; Aztec csav frame=0x0054
    mov ax, 0xffac                   ; 0x0c0b
    call aztec_csav                  ; 0x0c0e
    mov ax, 0x18                     ; 0x0c11
    push ax                          ; 0x0c14
    call ds_app_PUNN                 ; 0x0c15
    pop cx                           ; 0x0c18
    inc ax                           ; 0x0c19
    mov word [bss_5b40], ax          ; 0x0c1a
    mov ax, 0x19                     ; 0x0c1d
    push ax                          ; 0x0c20
    call ds_app_PUNN                 ; 0x0c21
    pop cx                           ; 0x0c24
    add ax, strict word 0x19         ; 0x0c25
    mov word [bss_5b42], ax          ; 0x0c28
    mov ax, 0x19                     ; 0x0c2b
    push ax                          ; 0x0c2e
    call ds_app_PUNN                 ; 0x0c2f
    pop cx                           ; 0x0c32
    add ax, strict word 0x32         ; 0x0c33
    mov word [bss_5b44], ax          ; 0x0c36
    mov ax, 0x19                     ; 0x0c39
    push ax                          ; 0x0c3c
    call ds_app_PUNN                 ; 0x0c3d
    pop cx                           ; 0x0c40
    add ax, strict word 0x4b         ; 0x0c41
    mov word [bss_5b46], ax          ; 0x0c44
    lea ax, word [bp - 0x0054]       ; 0x0c47
    push ax                          ; 0x0c4a
    mov al, byte [bss_5990]          ; 0x0c4b
    sub ah, ah                       ; 0x0c4e
    add ax, 0x9c4                    ; 0x0c50
    push ax                          ; 0x0c53
    call ds_app_mem_TIMR             ; 0x0c54
    add sp, byte 4                   ; 0x0c57
    mov al, byte [bp - 0x0054]       ; 0x0c5a
    mov bx, word [bss_5b40]          ; 0x0c5d
    mov byte [bx + bss_5990], al     ; 0x0c61
    mov al, byte [bp - 0x0053]       ; 0x0c65
    mov bx, word [bss_5b42]          ; 0x0c68
    mov byte [bx + bss_5990], al     ; 0x0c6c
    mov al, byte [bp - 0x0052]       ; 0x0c70
    mov bx, word [bss_5b44]          ; 0x0c73
    mov byte [bx + bss_5990], al     ; 0x0c77
    mov al, byte [bp - 0x0051]       ; 0x0c7b
    mov bx, word [bss_5b46]          ; 0x0c7e
    mov byte [bx + bss_5990], al     ; 0x0c82
    mov word [bp - 0x0002], 0        ; 0x0c86
    lea ax, word [bp - 0x0054]       ; 0x0c8b
    push ax                          ; 0x0c8e
    call aztec_strlen                ; 0x0c8f
    pop cx                           ; 0x0c92
    add ax, strict word 0xfffc       ; 0x0c93
    mov word [bp - 0x0004], ax       ; 0x0c96
    mov word [bss_59f6], ax          ; 0x0c99
@..ds_app_string_KVNI.l1:
    cmp word [bp - 0x0004], byte 0   ; 0x0c9c
    jle short @..ds_app_string_KVNI.l2 ; 0x0ca0
    dec word [bp - 0x0004]           ; 0x0ca2
    mov bx, word [bp - 0x0004]       ; 0x0ca5
    add bx, bp                       ; 0x0ca8
    mov al, byte [bx - 0x0050]       ; 0x0caa
    sub ah, ah                       ; 0x0cad
    mov cx, 0x25                     ; 0x0caf
    imul cx                          ; 0x0cb2
    push ax                          ; 0x0cb4
    mov ax, 0x11                     ; 0x0cb5
    imul word [bp - 0x0004]          ; 0x0cb8
    mov cx, ax                       ; 0x0cbb
    pop ax                           ; 0x0cbd
    add ax, cx                       ; 0x0cbe
    mov cx, 0xff                     ; 0x0cc0
    cwd                              ; 0x0cc3
    idiv cx                          ; 0x0cc4
    mov ax, dx                       ; 0x0cc6
    mov bx, word [bp - 0x0004]       ; 0x0cc8
    mov byte [bx + 0xff0], al        ; 0x0ccb
    add bx, bp                       ; 0x0ccf
    mov al, byte [bx - 0x0050]       ; 0x0cd1
    sub ah, ah                       ; 0x0cd4
    mov bx, word [bp - 0x0004]       ; 0x0cd6
    imul bx                          ; 0x0cd9
    add ax, word [bp - 0x0002]       ; 0x0cdb
    cwd                              ; 0x0cde
    idiv cx                          ; 0x0cdf
    mov word [bp - 0x0002], dx       ; 0x0ce1
    jmp short @..ds_app_string_KVNI.l1 ; 0x0ce4
@..ds_app_string_KVNI.l2:
    mov al, byte [bp - 0x0002]       ; 0x0ce6
    mov byte [bss_0fd6], al          ; 0x0ce9
    ret                              ; 0x0cec
