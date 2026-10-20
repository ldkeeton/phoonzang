; auto-generated
api_idx_0004_GKHR:
    mov ax, 0xfffc                   ; 0x4ad8
    call aztec_csav                  ; 0x4adb
    mov ax, 1                        ; 0x4ade
    push ax                          ; 0x4ae1
    push ax                          ; 0x4ae2
    mov ax, 0x7ea                    ; 0x4ae3
    push ax                          ; 0x4ae6
    push word [bp + 0x4]             ; 0x4ae7
    call api_idx_0044_NJQJ           ; 0x4aea
    add sp, byte 8                   ; 0x4aed
    test ax, ax                      ; 0x4af0
    je short @..api_idx_0004_GKHR.l1 ; 0x4af2
    jmp near @..api_idx_0004_GKHR.l5 ; 0x4af4
@..api_idx_0004_GKHR.l1:
    mov ax, word [bss_904e]          ; 0x4af7
    mov cx, 0x100                    ; 0x4afa
    cwd                              ; 0x4afd
    idiv cx                          ; 0x4afe
    mov word [bp - 0x0004], ax       ; 0x4b00
    mov word [bp - 0x0002], dx       ; 0x4b03
    mov ax, 6                        ; 0x4b06
    imul dx                          ; 0x4b09
    mov bx, ax                       ; 0x4b0b
    cmp byte [bx + 0x624], 1         ; 0x4b0d
    jne short @..api_idx_0004_GKHR.l2 ; 0x4b12
    call ds_app_VGOM                 ; 0x4b14
    mov word [bss_95e2], ax          ; 0x4b17
    cmp ax, strict word 0xffff       ; 0x4b1a
    jne short @..api_idx_0004_GKHR.l2 ; 0x4b1d
@..api_idx_0004_GKHR.l2:
    cmp word [bp - 0x0002], byte 0   ; 0x4b1f
    jge short @..api_idx_0004_GKHR.l3 ; 0x4b23
    jmp near @..api_idx_0004_GKHR.l5 ; 0x4b25
@..api_idx_0004_GKHR.l3:
    mov ax, 6                        ; 0x4b28
    imul word [bp - 0x0002]          ; 0x4b2b
    mov bx, ax                       ; 0x4b2e
    mov al, byte [bx + 0x622]        ; 0x4b30
    sub ah, ah                       ; 0x4b34
    imul word [bp - 0x0004]          ; 0x4b36
    push ax                          ; 0x4b39
    mov ax, 0x248                    ; 0x4b3a
    imul word [bp + 0x4]             ; 0x4b3d
    mov cx, ax                       ; 0x4b40
    mov al, byte [bx + 0x620]        ; 0x4b42
    sub ah, ah                       ; 0x4b46
    mov dx, ax                       ; 0x4b48
    shl ax, 1                        ; 0x4b4a
    shl ax, 1                        ; 0x4b4c
    mov dx, ax                       ; 0x4b4e
    add cx, ax                       ; 0x4b50
    mov bx, cx                       ; 0x4b52
    pop ax                           ; 0x4b54
    sub word [bx + 0x5c1c], ax       ; 0x4b55
    push word [bss_95e2]             ; 0x4b59
    push word [bp - 0x0004]          ; 0x4b5d
    push word [bp - 0x0002]          ; 0x4b60
    push word [bp + 0x4]             ; 0x4b63
    call api_idx_0008_HJOM           ; 0x4b66
    add sp, byte 8                   ; 0x4b69
    push word [bp - 0x0004]          ; 0x4b6c
    call ds_app_PUNN                 ; 0x4b6f
    pop cx                           ; 0x4b72
    push ax                          ; 0x4b73
    mov ax, 6                        ; 0x4b74
    imul word [bp - 0x0002]          ; 0x4b77
    mov bx, ax                       ; 0x4b7a
    mov al, byte [bx + 0x621]        ; 0x4b7c
    sub ah, ah                       ; 0x4b80
    mov cx, ax                       ; 0x4b82
    pop ax                           ; 0x4b84
    add ax, cx                       ; 0x4b85
    add ax, word [bp - 0x0004]       ; 0x4b87
    push ax                          ; 0x4b8a
    mov ax, 0x248                    ; 0x4b8b
    imul word [bp + 0x4]             ; 0x4b8e
    mov bx, ax                       ; 0x4b91
    pop ax                           ; 0x4b93
    sub word [bx + 0x5c10], ax       ; 0x4b94
    cmp word [bx + 0x5c10], byte 0   ; 0x4b98
    jge short @..api_idx_0004_GKHR.l4 ; 0x4b9d
    mov word [bx + 0x5c10], 0        ; 0x4b9f
    mov ax, 6                        ; 0x4ba5
    push ax                          ; 0x4ba8
    call ds_app_PUNN                 ; 0x4ba9
    pop cx                           ; 0x4bac
    add ax, strict word 6            ; 0x4bad
    push ax                          ; 0x4bb0
    mov ax, 0x248                    ; 0x4bb1
    imul word [bp + 0x4]             ; 0x4bb4
    mov bx, ax                       ; 0x4bb7
    pop ax                           ; 0x4bb9
    mov byte [bx + 0x5d5c], al       ; 0x4bba
@..api_idx_0004_GKHR.l4:
    mov ax, 1                        ; 0x4bbe
    push ax                          ; 0x4bc1
    push word [bp + 0x4]             ; 0x4bc2
    call ds_app_LUOV                 ; 0x4bc5
    add sp, byte 4                   ; 0x4bc8
@..api_idx_0004_GKHR.l5:
    ret                              ; 0x4bcb
