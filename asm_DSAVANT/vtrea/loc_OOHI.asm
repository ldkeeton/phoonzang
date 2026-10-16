; auto-generated
loc_OOHI:
    mov ax, 0                        ; 0x0eb2
    call aztec_csav                  ; 0x0eb5
    push word [bp + 0x6]             ; 0x0eb8
    push word [bp + 0x6]             ; 0x0ebb
    call api_idx_0004_IMVS           ; 0x0ebe
    add sp, byte 4                   ; 0x0ec1
    mov ax, 0                        ; 0x0ec4
    push ax                          ; 0x0ec7
    push word [bp + 0xa]             ; 0x0ec8
    call thunk_3                     ; 0x0ecb
    add sp, byte 4                   ; 0x0ece
    mov ax, 7                        ; 0x0ed1
    imul word [bp + 0x6]             ; 0x0ed4
    add ax, 0x9c                     ; 0x0ed7
    push ax                          ; 0x0eda
    push word [bp + 0x4]             ; 0x0edb
    call aztec_strlen                ; 0x0ede
    pop cx                           ; 0x0ee1
    mov cx, 6                        ; 0x0ee2
    imul cx                          ; 0x0ee5
    mov cx, 2                        ; 0x0ee7
    cwd                              ; 0x0eea
    idiv cx                          ; 0x0eeb
    mov cx, ax                       ; 0x0eed
    mov ax, 0xa0                     ; 0x0eef
    sub ax, cx                       ; 0x0ef2
    push ax                          ; 0x0ef4
    call thunk                       ; 0x0ef5
    add sp, byte 4                   ; 0x0ef8
    mov ax, 0                        ; 0x0efb
    push ax                          ; 0x0efe
    push word [bp + 0x4]             ; 0x0eff
    call ds_string_loc_QRJV          ; 0x0f02
    add sp, byte 4                   ; 0x0f05
    mov ax, 7                        ; 0x0f08
    imul word [bp + 0x6]             ; 0x0f0b
    add ax, 0xa2                     ; 0x0f0e
    push ax                          ; 0x0f11
    mov ax, 0x127                    ; 0x0f12
    push ax                          ; 0x0f15
    mov ax, 7                        ; 0x0f16
    imul word [bp + 0x6]             ; 0x0f19
    add ax, 0x9c                     ; 0x0f1c
    push ax                          ; 0x0f1f
    mov ax, 0x19                     ; 0x0f20
    push ax                          ; 0x0f23
    call thunk_4                     ; 0x0f24
    add sp, byte 8                   ; 0x0f27
    cmp word [bp + 0x8], byte 0      ; 0x0f2a
    jle short @..loc_OOHI.l1         ; 0x0f2e
    mov ax, word [bp + 0x8]          ; 0x0f30
    dec ax                           ; 0x0f33
    push ax                          ; 0x0f34
    call ds_app_HKIJ                 ; 0x0f35
    pop cx                           ; 0x0f38
@..loc_OOHI.l1:
    push word [bss_905a]             ; 0x0f39
    call api_idx_0004_UQUT           ; 0x0f3d
    pop cx                           ; 0x0f40
    cmp word [bp + 0x8], byte 0xff   ; 0x0f41
    je short @..loc_OOHI.l2          ; 0x0f45
    push word [bp + 0x6]             ; 0x0f47
    push word [bp + 0x6]             ; 0x0f4a
    call api_idx_0004_IMVS           ; 0x0f4d
    add sp, byte 4                   ; 0x0f50
@..loc_OOHI.l2:
    ret                              ; 0x0f53
