; auto-generated
api_idx_0002_NIML:
    mov ax, 0xfffe                   ; 0xa28c
    call aztec_csav                  ; 0xa28f
    mov ax, 0x18                     ; 0xa292
    push ax                          ; 0xa295
    call ds_app_GGUI                 ; 0xa296
    pop cx                           ; 0xa299
    cmp ax, strict word 0xf          ; 0xa29a
    jle short @..api_idx_0002_NIML.l2 ; 0xa29d
    push word [bp + 0x8]             ; 0xa29f
    call ds_app_GGUI                 ; 0xa2a2
    pop cx                           ; 0xa2a5
    push ax                          ; 0xa2a6
    mov ax, 0x26                     ; 0xa2a7
    imul word [bp + 0x4]             ; 0xa2aa
    mov bx, ax                       ; 0xa2ad
    mov al, byte [bx - 0x7b00]       ; 0xa2af
    cbw                              ; 0xa2b3
    mov cx, ax                       ; 0xa2b4
    pop ax                           ; 0xa2b6
    add ax, cx                       ; 0xa2b7
    add ax, word [bp + 0x6]          ; 0xa2b9
    mov word [bp - 0x0002], ax       ; 0xa2bc
    mov al, byte [bx - 0x7aff]       ; 0xa2bf
    cbw                              ; 0xa2c3
    mov cx, ax                       ; 0xa2c4
    mov ax, word [bp - 0x0002]       ; 0xa2c6
    cmp cx, ax                       ; 0xa2c9
    jge short @..api_idx_0002_NIML.l1 ; 0xa2cb
    mov word [bp - 0x0002], cx       ; 0xa2cd
@..api_idx_0002_NIML.l1:
    mov al, byte [bp - 0x0002]       ; 0xa2d0
    mov byte [bx - 0x7b00], al       ; 0xa2d3
    mov ax, 1                        ; 0xa2d7
    ret                              ; 0xa2da
@..api_idx_0002_NIML.l2:
    mov ax, 0                        ; 0xa2db
    ret                              ; 0xa2de
