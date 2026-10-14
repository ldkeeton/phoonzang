; auto-generated
api_idx_0010:
    mov ax, 0xfff0                   ; 0x0ea1
    call aztec_csav                  ; 0x0ea4
    lea ax, word [bp - 0x000c]       ; 0x0ea7
    push ax                          ; 0x0eaa
    lea ax, word [bp - 0x000a]       ; 0x0eab
    push ax                          ; 0x0eae
    mov ax, word [bp + 0x4]          ; 0x0eaf
    shl ax, 1                        ; 0x0eb2
    mov bx, ax                       ; 0x0eb4
    push word [bx + 0x69bc]          ; 0x0eb6
    mov ax, 5                        ; 0x0eba
    push ax                          ; 0x0ebd
    call ds_loc_39f6                 ; 0x0ebe
    add sp, byte 8                   ; 0x0ec1
    mov word [bp - 0x0006], dx       ; 0x0ec4
    mov word [bp - 0x0008], ax       ; 0x0ec7
    mov ax, word [bp - 0x000a]       ; 0x0eca
    mov word [bp - 0x000e], ax       ; 0x0ecd
    mov word [bp - 0x0004], 0        ; 0x0ed0
    jmp near @..api_idx_0010.l7      ; 0x0ed5
@..api_idx_0010.l1:
    mov word [bp - 0x0002], 0        ; 0x0ed8
    jmp near @..api_idx_0010.l5      ; 0x0edd
@..api_idx_0010.l2:
    les bx, word [bp - 0x0008]       ; 0x0ee0
    mov si, word [bp - 0x000e]       ; 0x0ee3
    mov al, byte [es:bx + si]        ; 0x0ee6
    sub ah, ah                       ; 0x0ee9
    mov word [bp - 0x0010], ax       ; 0x0eeb
    cmp ax, 0xff                     ; 0x0eee
    jne short @..api_idx_0010.l3     ; 0x0ef1
    jmp near @..api_idx_0010.l4      ; 0x0ef3
@..api_idx_0010.l3:
    mov ax, 0xffff                   ; 0x0ef6
    push ax                          ; 0x0ef9
    push word [bp - 0x0010]          ; 0x0efa
    call api_idx_0002_3              ; 0x0efd
    add sp, byte 4                   ; 0x0f00
    push ax                          ; 0x0f03
    mov ax, word [bp - 0x0004]       ; 0x0f04
    shl ax, 1                        ; 0x0f07
    add ax, word [bp + 0x8]          ; 0x0f09
    push ax                          ; 0x0f0c
    mov ax, word [bp - 0x0002]       ; 0x0f0d
    shl ax, 1                        ; 0x0f10
    add ax, word [bp + 0x6]          ; 0x0f12
    push ax                          ; 0x0f15
    call thunk_6                     ; 0x0f16
    add sp, byte 6                   ; 0x0f19
    push word [bp - 0x0010]          ; 0x0f1c
    mov ax, word [bp - 0x0004]       ; 0x0f1f
    shl ax, 1                        ; 0x0f22
    add ax, word [bp + 0x8]          ; 0x0f24
    push ax                          ; 0x0f27
    mov ax, word [bp - 0x0002]       ; 0x0f28
    shl ax, 1                        ; 0x0f2b
    add ax, word [bp + 0x6]          ; 0x0f2d
    inc ax                           ; 0x0f30
    push ax                          ; 0x0f31
    call thunk_6                     ; 0x0f32
    add sp, byte 6                   ; 0x0f35
    push word [bp - 0x0010]          ; 0x0f38
    mov ax, word [bp - 0x0004]       ; 0x0f3b
    shl ax, 1                        ; 0x0f3e
    add ax, word [bp + 0x8]          ; 0x0f40
    inc ax                           ; 0x0f43
    push ax                          ; 0x0f44
    mov ax, word [bp - 0x0002]       ; 0x0f45
    shl ax, 1                        ; 0x0f48
    add ax, word [bp + 0x6]          ; 0x0f4a
    push ax                          ; 0x0f4d
    call thunk_6                     ; 0x0f4e
    add sp, byte 6                   ; 0x0f51
    mov ax, 1                        ; 0x0f54
    push ax                          ; 0x0f57
    push word [bp - 0x0010]          ; 0x0f58
    call api_idx_0002_3              ; 0x0f5b
    add sp, byte 4                   ; 0x0f5e
    push ax                          ; 0x0f61
    mov ax, word [bp - 0x0004]       ; 0x0f62
    shl ax, 1                        ; 0x0f65
    add ax, word [bp + 0x8]          ; 0x0f67
    inc ax                           ; 0x0f6a
    push ax                          ; 0x0f6b
    mov ax, word [bp - 0x0002]       ; 0x0f6c
    shl ax, 1                        ; 0x0f6f
    add ax, word [bp + 0x6]          ; 0x0f71
    inc ax                           ; 0x0f74
    push ax                          ; 0x0f75
    call thunk_6                     ; 0x0f76
    add sp, byte 6                   ; 0x0f79
@..api_idx_0010.l4:
    inc word [bp - 0x000e]           ; 0x0f7c
    inc word [bp - 0x0002]           ; 0x0f7f
@..api_idx_0010.l5:
    mov ax, word [bp - 0x0002]       ; 0x0f82
    cmp ax, word [bp - 0x000a]       ; 0x0f85
    jge short @..api_idx_0010.l6     ; 0x0f88
    jmp near @..api_idx_0010.l2      ; 0x0f8a
@..api_idx_0010.l6:
    inc word [bp - 0x0004]           ; 0x0f8d
@..api_idx_0010.l7:
    mov ax, word [bp - 0x000c]       ; 0x0f90
    dec ax                           ; 0x0f93
    dec ax                           ; 0x0f94
    cmp ax, word [bp - 0x0004]       ; 0x0f95
    jle short @..api_idx_0010.l8     ; 0x0f98
    jmp near @..api_idx_0010.l1      ; 0x0f9a
@..api_idx_0010.l8:
    ret                              ; 0x0f9d
