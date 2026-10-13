api_idx_0006_6:
    mov ax, 0xfffa                   ; 0x75ae
    call aztec_csav                  ; 0x75b1
    mov word [bp - 0x0004], 0        ; 0x75b4
    mov word [bp - 0x0002], 0        ; 0x75b9
@..api_idx_0006_6.l1:
    mov ax, 2                        ; 0x75be
    push ax                          ; 0x75c1
    mov ax, word [bp - 0x0002]       ; 0x75c2
    shl ax, 1                        ; 0x75c5
    push ax                          ; 0x75c7
    mov ax, word [bss_8d12]          ; 0x75c8
    shl ax, 1                        ; 0x75cb
    mov si, ax                       ; 0x75cd
    mov bx, word [bss_0e12]          ; 0x75cf
    push word [bx + si + 0x3c0]      ; 0x75d3
    call ds_dos_con_loc_3f81         ; 0x75d7
    add sp, byte 6                   ; 0x75da
    mov cx, word [bp - 0x0002]       ; 0x75dd
    shl cx, 1                        ; 0x75e0
    mov bx, cx                       ; 0x75e2
    mov word [bx - 0x7302], ax       ; 0x75e4
    mov ax, 2                        ; 0x75e8
    push ax                          ; 0x75eb
    add cx, byte 8                   ; 0x75ec
    mov ax, cx                       ; 0x75ef
    push ax                          ; 0x75f1
    mov ax, word [bss_8d12]          ; 0x75f2
    shl ax, 1                        ; 0x75f5
    mov si, ax                       ; 0x75f7
    mov bx, word [bss_0e12]          ; 0x75f9
    push word [bx + si + 0x3c0]      ; 0x75fd
    call ds_dos_con_loc_3f81         ; 0x7601
    add sp, byte 6                   ; 0x7604
    cmp ax, strict word 2            ; 0x7607
    jne short @..api_idx_0006_6.l2   ; 0x760a
    mov word [bp - 0x0004], 1        ; 0x760c
@..api_idx_0006_6.l2:
    inc word [bp - 0x0002]           ; 0x7611
    mov ax, word [bp - 0x0002]       ; 0x7614
    cmp ax, strict word 4            ; 0x7617
    jl short @..api_idx_0006_6.l1    ; 0x761a
    cmp word [bp - 0x0004], byte 0   ; 0x761c
    je short @..api_idx_0006_6.l3    ; 0x7620
    call api_idx_0004_12             ; 0x7622
@..api_idx_0006_6.l3:
    mov bx, word [bss_0e12]          ; 0x7625
    mov si, word [bss_8d12]          ; 0x7629
    mov al, byte [bx + si + 0xa50]   ; 0x762d
    sub ah, ah                       ; 0x7631
    mov word [bp - 0x0006], ax       ; 0x7633
    mov ax, 2                        ; 0x7636
    push ax                          ; 0x7639
    mov ax, 5                        ; 0x763a
    push ax                          ; 0x763d
    push word [bp - 0x0006]          ; 0x763e
    call ds_dos_con_loc_3f81         ; 0x7641
    add sp, byte 6                   ; 0x7644
    push ax                          ; 0x7647
    call loc_7242                    ; 0x7648
    pop cx                           ; 0x764b
    ret                              ; 0x764c
