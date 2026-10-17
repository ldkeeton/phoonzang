; auto-generated
api_idx_0004_KVIP:
    mov ax, 0xfffc                   ; 0x09a1
    call aztec_csav                  ; 0x09a4
    cmp word [bss_940e], byte 0xff   ; 0x09a7
    jne short @..api_idx_0004_KVIP.l1 ; 0x09ac
    ret                              ; 0x09ae
@..api_idx_0004_KVIP.l1:
    mov ax, word [bss_940e]          ; 0x09af
    mov cx, 5                        ; 0x09b2
    cwd                              ; 0x09b5
    idiv cx                          ; 0x09b6
    mov cx, 0xd                      ; 0x09b8
    imul cx                          ; 0x09bb
    mov cx, 6                        ; 0x09bd
    imul cx                          ; 0x09c0
    push ax                          ; 0x09c2
    mov ax, word [bss_940e]          ; 0x09c3
    mov cx, 5                        ; 0x09c6
    cwd                              ; 0x09c9
    idiv cx                          ; 0x09ca
    mov cx, ax                       ; 0x09cc
    pop ax                           ; 0x09ce
    add ax, cx                       ; 0x09cf
    add ax, strict word 6            ; 0x09d1
    mov word [bp - 0x0002], ax       ; 0x09d4
    shl dx, 1                        ; 0x09d7
    mov ax, dx                       ; 0x09d9
    mov cx, 6                        ; 0x09db
    imul cx                          ; 0x09de
    push ax                          ; 0x09e0
    mov ax, word [bss_940e]          ; 0x09e1
    mov cx, 5                        ; 0x09e4
    cwd                              ; 0x09e7
    idiv cx                          ; 0x09e8
    mov cx, dx                       ; 0x09ea
    shl cx, 1                        ; 0x09ec
    pop ax                           ; 0x09ee
    add ax, cx                       ; 0x09ef
    add ax, strict word 0x74         ; 0x09f1
    mov word [bp - 0x0004], ax       ; 0x09f4
    push ax                          ; 0x09f7
    push word [bp - 0x0002]          ; 0x09f8
    call thunk                       ; 0x09fb
    add sp, byte 4                   ; 0x09fe
    mov ax, 4                        ; 0x0a01
    push ax                          ; 0x0a04
    mov al, byte [bss_9410]          ; 0x0a05
    sub ah, ah                       ; 0x0a08
    push ax                          ; 0x0a0a
    call ds_loc_TJTV                 ; 0x0a0b
    add sp, byte 4                   ; 0x0a0e
    push word [bss_9412]             ; 0x0a11
    push word [bp - 0x0004]          ; 0x0a15
    mov ax, word [bp - 0x0002]       ; 0x0a18
    add ax, strict word 0xe          ; 0x0a1b
    push ax                          ; 0x0a1e
    mov ax, 0x9414                   ; 0x0a1f
    push ax                          ; 0x0a22
    call api_idx_002a_STSK           ; 0x0a23
    add sp, byte 8                   ; 0x0a26
    mov bx, word [bss_942a]          ; 0x0a29
    cmp byte [bx + 0x60e], 1         ; 0x0a2d
    jne short @..api_idx_0004_KVIP.l2 ; 0x0a32
    mov ax, word [bp - 0x0004]       ; 0x0a34
    add ax, strict word 6            ; 0x0a37
    push ax                          ; 0x0a3a
    mov ax, word [bp - 0x0002]       ; 0x0a3b
    add ax, strict word 0x38         ; 0x0a3e
    push ax                          ; 0x0a41
    call thunk                       ; 0x0a42
    add sp, byte 4                   ; 0x0a45
    mov ax, 0                        ; 0x0a48
    push ax                          ; 0x0a4b
    mov ax, 2                        ; 0x0a4c
    push ax                          ; 0x0a4f
    call thunk_3                     ; 0x0a50
    add sp, byte 4                   ; 0x0a53
    mov ax, 0                        ; 0x0a56
    push ax                          ; 0x0a59
    mov ax, 3                        ; 0x0a5a
    push ax                          ; 0x0a5d
    push word [bss_942c]             ; 0x0a5e
    call ds_app_GUML                 ; 0x0a62
    add sp, byte 6                   ; 0x0a65
@..api_idx_0004_KVIP.l2:
    mov ax, 0xff                     ; 0x0a68
    push ax                          ; 0x0a6b
    mov ax, 0x15                     ; 0x0a6c
    push ax                          ; 0x0a6f
    call thunk_3                     ; 0x0a70
    add sp, byte 4                   ; 0x0a73
    mov ax, word [bp - 0x0004]       ; 0x0a76
    dec ax                           ; 0x0a79
    push ax                          ; 0x0a7a
    mov ax, word [bp - 0x0002]       ; 0x0a7b
    dec ax                           ; 0x0a7e
    dec ax                           ; 0x0a7f
    push ax                          ; 0x0a80
    call thunk                       ; 0x0a81
    add sp, byte 4                   ; 0x0a84
    mov ax, 0                        ; 0x0a87
    push ax                          ; 0x0a8a
    mov ax, 4                        ; 0x0a8b
    push ax                          ; 0x0a8e
    call ds_loc_TJTV                 ; 0x0a8f
    add sp, byte 4                   ; 0x0a92
    ret                              ; 0x0a95
