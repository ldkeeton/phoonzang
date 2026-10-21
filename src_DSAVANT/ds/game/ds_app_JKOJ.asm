; auto-generated
ds_app_JKOJ: ; Aztec csav frame=0x0014
    mov ax, 0xffec                   ; 0x2c69
    call aztec_csav                  ; 0x2c6c
    mov word [bp - 0x0002], 0        ; 0x2c6f
@..ds_app_JKOJ.l1:
    mov ax, 0                        ; 0x2c74
    push ax                          ; 0x2c77
    mov ax, word [bp - 0x0002]       ; 0x2c78
    shl ax, 1                        ; 0x2c7b
    shl ax, 1                        ; 0x2c7d
    mov bx, ax                       ; 0x2c7f
    push word [bx - 0x7d2e]          ; 0x2c81
    push word [bx - 0x7d30]          ; 0x2c85
    call gfx_restore_area            ; 0x2c89
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
    jmp near @..ds_app_JKOJ.l5       ; 0x2cb7
jumptable_2d50_case_0:
    mov ax, word [bss_82e8]          ; 0x2cba
    inc ax                           ; 0x2cbd
    mov word [bp - 0x0004], ax       ; 0x2cbe
    jmp near @..ds_app_JKOJ.l6       ; 0x2cc1
jumptable_2d50_case_1:
    mov ax, word [bss_82e8]          ; 0x2cc4
    inc ax                           ; 0x2cc7
    inc ax                           ; 0x2cc8
    inc ax                           ; 0x2cc9
    mov word [bp - 0x0004], ax       ; 0x2cca
    jmp near @..ds_app_JKOJ.l6       ; 0x2ccd
jumptable_2d50_case_2:
    mov ax, word [bss_82e8]          ; 0x2cd0
    add ax, strict word 5            ; 0x2cd3
    mov word [bp - 0x0004], ax       ; 0x2cd6
    jmp near @..ds_app_JKOJ.l6       ; 0x2cd9
jumptable_2d50_case_3:
    mov ax, word [bss_82e8]          ; 0x2cdc
    imul word [bss_82ea]             ; 0x2cdf
    add ax, strict word 7            ; 0x2ce3
    mov word [bp - 0x0004], ax       ; 0x2ce6
    jmp near @..ds_app_JKOJ.l6       ; 0x2ce9
jumptable_2d50_case_5:
    mov ax, word [bss_82e8]          ; 0x2cec
    add ax, strict word 9            ; 0x2cef
    mov word [bp - 0x0004], ax       ; 0x2cf2
    jmp near @..ds_app_JKOJ.l6       ; 0x2cf5
jumptable_2d50_case_4:
    mov ax, word [bss_82e8]          ; 0x2cf8
    cmp ax, word [bss_82ec]          ; 0x2cfb
    je short @..ds_app_JKOJ.l4       ; 0x2cff
    mov word [bss_82ec], ax          ; 0x2d01
    mov ax, word [bss_82ee]          ; 0x2d04
    shl ax, 1                        ; 0x2d07
    sub ax, word [bss_82f0]          ; 0x2d09
    mov word [bp - 0x0006], ax       ; 0x2d0d
    cmp word [bp - 0x0006], byte 0   ; 0x2d10
    je short @..ds_app_JKOJ.l4       ; 0x2d14
    cmp ax, strict word 0xfffc       ; 0x2d16
    jl short @..ds_app_JKOJ.l2       ; 0x2d19
    cmp ax, strict word 0            ; 0x2d1b
    jle short @..ds_app_JKOJ.l3      ; 0x2d1e
    cmp ax, strict word 5            ; 0x2d20
    jge short @..ds_app_JKOJ.l3      ; 0x2d23
@..ds_app_JKOJ.l2:
    mov ax, word [bss_82f0]          ; 0x2d25
    inc ax                           ; 0x2d28
    mov cx, 8                        ; 0x2d29
    cwd                              ; 0x2d2c
    idiv cx                          ; 0x2d2d
    mov word [bss_82f0], dx          ; 0x2d2f
    jmp short @..ds_app_JKOJ.l4      ; 0x2d33
@..ds_app_JKOJ.l3:
    mov ax, word [bss_82f0]          ; 0x2d35
    add ax, strict word 7            ; 0x2d38
    mov cx, 8                        ; 0x2d3b
    cwd                              ; 0x2d3e
    idiv cx                          ; 0x2d3f
    mov word [bss_82f0], dx          ; 0x2d41
@..ds_app_JKOJ.l4:
    mov ax, word [bss_82f0]          ; 0x2d45
    add ax, strict word 0xb          ; 0x2d48
    mov word [bp - 0x0004], ax       ; 0x2d4b
    jmp short @..ds_app_JKOJ.l6      ; 0x2d4e
jumptable_2d50:
    dw jumptable_2d50_case_0 - IMAGE_BASE      ; 0x2d50
    dw jumptable_2d50_case_1 - IMAGE_BASE      ; 0x2d52
    dw jumptable_2d50_case_2 - IMAGE_BASE      ; 0x2d54
    dw jumptable_2d50_case_3 - IMAGE_BASE      ; 0x2d56
    dw jumptable_2d50_case_4 - IMAGE_BASE      ; 0x2d58
    dw jumptable_2d50_case_5 - IMAGE_BASE      ; 0x2d5a
@..ds_app_JKOJ.l5:
    cmp ax, strict word 6            ; 0x2d5c
    jae short @..ds_app_JKOJ.l6      ; 0x2d5f
    xchg bx, ax                      ; 0x2d61
    shl bx, 1                        ; 0x2d62
    jmp [cs:bx + jumptable_2d50 - IMAGE_BASE] ; 0x2d64
@..ds_app_JKOJ.l6:
    mov ax, word [bp - 0x0002]       ; 0x2d69
    shl ax, 1                        ; 0x2d6c
    shl ax, 1                        ; 0x2d6e
    mov bx, ax                       ; 0x2d70
    cmp word [bx + bss_82f2], byte 0 ; 0x2d72
    jle short @..ds_app_JKOJ.l7      ; 0x2d77
    mov al, byte [bp - 0x0004]       ; 0x2d79
    mov byte [bp - 0x0014], al       ; 0x2d7c
    mov byte [bp - 0x0013], 0        ; 0x2d7f
    mov ax, 0                        ; 0x2d83
    push ax                          ; 0x2d86
    push ax                          ; 0x2d87
    lea ax, word [bp - 0x0014]       ; 0x2d88
    push ax                          ; 0x2d8b
    mov ax, 0                        ; 0x2d8c
    push ax                          ; 0x2d8f
    mov ax, 0xc7                     ; 0x2d90
    push ax                          ; 0x2d93
    mov ax, 0                        ; 0x2d94
    push ax                          ; 0x2d97
    mov ax, 0x13f                    ; 0x2d98
    push ax                          ; 0x2d9b
    mov ax, 0                        ; 0x2d9c
    push ax                          ; 0x2d9f
    push word [bp - 0x000a]          ; 0x2da0
    push word [bp - 0x0008]          ; 0x2da3
    mov ax, 8                        ; 0x2da6
    push ax                          ; 0x2da9
    call gfx_draw_text               ; 0x2daa
    add sp, byte 0x16                ; 0x2dad
@..ds_app_JKOJ.l7:
    inc word [bp - 0x0002]           ; 0x2db0
    mov ax, word [bp - 0x0002]       ; 0x2db3
    cmp ax, strict word 6            ; 0x2db6
    jge short @..ds_app_JKOJ.l8      ; 0x2db9
    jmp near @..ds_app_JKOJ.l1       ; 0x2dbb
@..ds_app_JKOJ.l8:
    mov ax, 0x16                     ; 0x2dbe
    push ax                          ; 0x2dc1
    mov ax, 0xfc                     ; 0x2dc2
    push ax                          ; 0x2dc5
    mov ax, 6                        ; 0x2dc6
    push ax                          ; 0x2dc9
    mov ax, 0x44                     ; 0x2dca
    push ax                          ; 0x2dcd
    call gfx_show_area               ; 0x2dce
    add sp, byte 8                   ; 0x2dd1
    ret                              ; 0x2dd4
