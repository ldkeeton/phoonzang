; auto-generated
api_idx_0004_5:
    mov ax, 0xfffc                   ; 0x2d63
    call aztec_csav                  ; 0x2d66
    mov word [bp - 0x0004], 0        ; 0x2d69
    mov word [bp - 0x0002], 0        ; 0x2d6e
@..api_idx_0004_5.l1:
    mov ax, 6                        ; 0x2d73
    imul word [bp - 0x0002]          ; 0x2d76
    mov bx, ax                       ; 0x2d79
    mov al, byte [bx + 0x620]        ; 0x2d7b
    sub ah, ah                       ; 0x2d7f
    cmp ax, word [bp + 0x6]          ; 0x2d81
    jne short @..api_idx_0004_5.l2   ; 0x2d84
    push word [bp - 0x0002]          ; 0x2d86
    mov ax, 0x248                    ; 0x2d89
    imul word [bp + 0x4]             ; 0x2d8c
    add ax, 0x5e12                   ; 0x2d8f
    push ax                          ; 0x2d92
    call ds_leaf_loc_3ebb            ; 0x2d93
    add sp, byte 4                   ; 0x2d96
    test ax, ax                      ; 0x2d99
    je short @..api_idx_0004_5.l2    ; 0x2d9b
    mov ax, 0x14                     ; 0x2d9d
    imul word [bp - 0x0004]          ; 0x2da0
    add ax, 0xe38                    ; 0x2da3
    push ax                          ; 0x2da6
    mov ax, word [bp - 0x0002]       ; 0x2da7
    add ax, 0xfa0                    ; 0x2daa
    push ax                          ; 0x2dad
    call ds_app_mem_0782             ; 0x2dae
    add sp, byte 4                   ; 0x2db1
    mov ax, word [bp - 0x0002]       ; 0x2db4
    mov cx, word [bp - 0x0004]       ; 0x2db7
    shl cx, 1                        ; 0x2dba
    mov bx, cx                       ; 0x2dbc
    mov word [bx - 0x68e4], ax       ; 0x2dbe
    inc word [bp - 0x0004]           ; 0x2dc2
@..api_idx_0004_5.l2:
    inc word [bp - 0x0002]           ; 0x2dc5
    mov ax, word [bp - 0x0002]       ; 0x2dc8
    cmp ax, strict word 0x66         ; 0x2dcb
    jl short @..api_idx_0004_5.l1    ; 0x2dce
    mov ax, word [bp - 0x0004]       ; 0x2dd0
    ret                              ; 0x2dd3
