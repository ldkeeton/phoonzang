mouse_set_pos_2:
    push bp                          ; 0x2b6c
    mov bp, sp                       ; 0x2b6d
    sub sp, byte 0x0a                ; 0x2b6f
    push ds                          ; 0x2b72
    push es                          ; 0x2b73
    push si                          ; 0x2b74
    push di                          ; 0x2b75
    mov ax, ds                       ; 0x2b76
    mov es, ax                       ; 0x2b78
    cmp byte [cs:data_0228], 1       ; 0x2b7a
    je short @..mouse_set_pos_2.l1   ; 0x2b80
    jmp near @..mouse_set_pos_2.l8   ; 0x2b82
@..mouse_set_pos_2.l1:
    mov byte [cs:data_0226], 1       ; 0x2b85
    mov ax, word [bp + 0xc]          ; 0x2b8b
    shl ax, 1                        ; 0x2b8e
    mov word [bp - 0x0002], ax       ; 0x2b90
    mov ax, word [bp + 0xe]          ; 0x2b93
    mov word [bp - 0x0004], ax       ; 0x2b96
    mov ax, 3                        ; 0x2b99
    int 0x33 ; BIOS mouse
    and cx, strict word 0xfffe       ; 0x2b9e
    mov word [bp - 0x0006], cx       ; 0x2ba2
    mov word [bp - 0x0008], dx       ; 0x2ba5
@..mouse_set_pos_2.l2:
    mov cx, word [bp - 0x0006]       ; 0x2ba8
    mov dx, word [bp - 0x0008]       ; 0x2bab
    cmp cx, word [bp - 0x0002]       ; 0x2bae
    jne short @..mouse_set_pos_2.l3  ; 0x2bb1
    cmp dx, word [bp - 0x0004]       ; 0x2bb3
    jne short @..mouse_set_pos_2.l3  ; 0x2bb6
    jmp short @..mouse_set_pos_2.l8  ; 0x2bb8
@..mouse_set_pos_2.l3:
    cmp cx, word [bp - 0x0002]       ; 0x2bba
    je short @..mouse_set_pos_2.l5   ; 0x2bbd
    js short @..mouse_set_pos_2.l4   ; 0x2bbf
    sub word [bp - 0x0006], byte 2   ; 0x2bc1
    jmp short @..mouse_set_pos_2.l5  ; 0x2bc5
@..mouse_set_pos_2.l4:
    add word [bp - 0x0006], byte 2   ; 0x2bc7
@..mouse_set_pos_2.l5:
    mov cx, word [bp - 0x0006]       ; 0x2bcb
    cmp dx, word [bp - 0x0004]       ; 0x2bce
    je short @..mouse_set_pos_2.l7   ; 0x2bd1
    js short @..mouse_set_pos_2.l6   ; 0x2bd3
    sub word [bp - 0x0008], byte 1   ; 0x2bd5
    jmp short @..mouse_set_pos_2.l7  ; 0x2bd9
@..mouse_set_pos_2.l6:
    add word [bp - 0x0008], byte 1   ; 0x2bdb
@..mouse_set_pos_2.l7:
    mov dx, word [bp - 0x0008]       ; 0x2bdf
    mov ax, cs                       ; 0x2be2
    push ax                          ; 0x2be4
    mov ax, 0                        ; 0x2be5
    call math_loc_1e1a               ; 0x2be8
    mov cx, word [bp - 0x0006]       ; 0x2beb
    mov dx, word [bp - 0x0008]       ; 0x2bee
    mov ax, 4                        ; 0x2bf1
    int 0x33 ; BIOS mouse
    mov ax, word [bp + 0x10]         ; 0x2bf6
    or ax, ax                        ; 0x2bf9
    je short @..mouse_set_pos_2.l2   ; 0x2bfb
    push ax                          ; 0x2bfd
    call far [cs:data_01fb]          ; 0x2bfe
    pop ax                           ; 0x2c03
    jmp short @..mouse_set_pos_2.l2  ; 0x2c04
@..mouse_set_pos_2.l8:
    pop di                           ; 0x2c06
    pop si                           ; 0x2c07
    pop es                           ; 0x2c08
    pop ds                           ; 0x2c09
    mov sp, bp                       ; 0x2c0a
    pop bp                           ; 0x2c0c
    ret                              ; 0x2c0d
