; auto-generated
ds_app_2c69: ; Aztec csav frame=0x0014
    mov ax, 0xffec                   ; 0x2c69
    call aztec_csav                  ; 0x2c6c
    mov word [bp - 0x0002], 0        ; 0x2c6f
ds_loc_2c74:
    mov ax, 0                        ; 0x2c74
    push ax                          ; 0x2c77
    mov ax, word [bp - 0x0002]       ; 0x2c78
    shl ax, 1                        ; 0x2c7b
    shl ax, 1                        ; 0x2c7d
    mov bx, ax                       ; 0x2c7f
    push word [bx - 0x7d2e]          ; 0x2c81
    push word [bx - 0x7d30]          ; 0x2c85
    call ds_loc_3b96                 ; 0x2c89
    add sp, byte 6                   ; 0x2c8c
    mov ax, word [bp - 0x0002]       ; 0x2c8f
    mov cx, 3                        ; 0x2c92
    cwd                              ; 0x2c95
    idiv cx                          ; 0x2c96
    mov cx, 0x28                     ; 0x2c98
    imul cx                          ; 0x2c9b
    push ax                          ; 0x2c9d
    mov ax, 0x19                     ; 0x2c9e
    imul word [bp - 0x0002]          ; 0x2ca1
    mov cx, ax                       ; 0x2ca4
    pop ax                           ; 0x2ca6
    add ax, cx                       ; 0x2ca7
    add ax, strict word 0x45         ; 0x2ca9
    mov word [bp - 0x0008], ax       ; 0x2cac
    mov word [bp - 0x000a], 7        ; 0x2caf
    mov ax, word [bp - 0x0002]       ; 0x2cb4
    jmp near ds_loc_2d5c             ; 0x2cb7
