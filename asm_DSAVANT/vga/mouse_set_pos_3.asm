mouse_set_pos_3:
    push bp                          ; 0x2c0e
    mov bp, sp                       ; 0x2c0f
    sub sp, byte 0x0a                ; 0x2c11
    push ds                          ; 0x2c14
    push es                          ; 0x2c15
    push si                          ; 0x2c16
    push di                          ; 0x2c17
    mov ax, ds                       ; 0x2c18
    mov es, ax                       ; 0x2c1a
    cmp byte [cs:data_0228], 1       ; 0x2c1c
    je short @..mouse_set_pos_3.l1   ; 0x2c22
    jmp near @..mouse_set_pos_3.l9   ; 0x2c24
@..mouse_set_pos_3.l1:
    mov ax, word [bp + 0xc]          ; 0x2c27
    shl ax, 1                        ; 0x2c2a
    mov word [bp - 0x0002], ax       ; 0x2c2c
    mov ax, word [bp + 0xe]          ; 0x2c2f
    mov word [bp - 0x0004], ax       ; 0x2c32
    mov cx, word [cs:data_15ac]      ; 0x2c35
    shl cx, 1                        ; 0x2c3a
    mov dx, word [cs:data_15ae]      ; 0x2c3c
    mov word [bp - 0x0006], cx       ; 0x2c41
    mov word [bp - 0x0008], dx       ; 0x2c44
@..mouse_set_pos_3.l2:
    mov cx, word [bp - 0x0006]       ; 0x2c47
    mov dx, word [bp - 0x0008]       ; 0x2c4a
    cmp cx, word [bp - 0x0002]       ; 0x2c4d
    jne short @..mouse_set_pos_3.l3  ; 0x2c50
    cmp dx, word [bp - 0x0004]       ; 0x2c52
    jne short @..mouse_set_pos_3.l3  ; 0x2c55
    jmp short @..mouse_set_pos_3.l8  ; 0x2c57
@..mouse_set_pos_3.l3:
    cmp cx, word [bp - 0x0002]       ; 0x2c59
    je short @..mouse_set_pos_3.l5   ; 0x2c5c
    js short @..mouse_set_pos_3.l4   ; 0x2c5e
    sub word [bp - 0x0006], byte 2   ; 0x2c60
    jmp short @..mouse_set_pos_3.l5  ; 0x2c64
@..mouse_set_pos_3.l4:
    add word [bp - 0x0006], byte 2   ; 0x2c66
@..mouse_set_pos_3.l5:
    mov cx, word [bp - 0x0006]       ; 0x2c6a
    cmp dx, word [bp - 0x0004]       ; 0x2c6d
    je short @..mouse_set_pos_3.l7   ; 0x2c70
    js short @..mouse_set_pos_3.l6   ; 0x2c72
    sub word [bp - 0x0008], byte 1   ; 0x2c74
    jmp short @..mouse_set_pos_3.l7  ; 0x2c78
@..mouse_set_pos_3.l6:
    add word [bp - 0x0008], byte 1   ; 0x2c7a
@..mouse_set_pos_3.l7:
    mov dx, word [bp - 0x0008]       ; 0x2c7e
    mov ax, cs                       ; 0x2c81
    push ax                          ; 0x2c83
    mov ax, 0                        ; 0x2c84
    call leaf_loc_1e1a               ; 0x2c87
    mov cx, word [bp - 0x0006]       ; 0x2c8a
    mov dx, word [bp - 0x0008]       ; 0x2c8d
    mov ax, 4                        ; 0x2c90
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]         ; 0x2c95
    or ax, ax                        ; 0x2c98
    je short @..mouse_set_pos_3.l2   ; 0x2c9a
    push ax                          ; 0x2c9c
    call far [cs:data_01fb]          ; 0x2c9d
    pop ax                           ; 0x2ca2
    jmp short @..mouse_set_pos_3.l2  ; 0x2ca3
@..mouse_set_pos_3.l8:
    mov cx, word [bp - 0x0002]       ; 0x2ca5
    mov dx, word [bp - 0x0004]       ; 0x2ca8
    mov ax, 4                        ; 0x2cab
    int 0x33 ; BIOS mouse
    mov byte [cs:data_0226], 0       ; 0x2cb0
@..mouse_set_pos_3.l9:
    pop di                           ; 0x2cb6
    pop si                           ; 0x2cb7
    pop es                           ; 0x2cb8
    pop ds                           ; 0x2cb9
    mov sp, bp                       ; 0x2cba
    pop bp                           ; 0x2cbc
    ret                              ; 0x2cbd
