; auto-generated
; asm only
loc_PHNQ:
    push bp                          ; 0x4dd9
    mov bp, sp                       ; 0x4dda
    sub sp, byte 0x0a                ; 0x4ddc
    push ds                          ; 0x4ddf
    push es                          ; 0x4de0
    push si                          ; 0x4de1
    push di                          ; 0x4de2
    mov ax, ds                       ; 0x4de3
    mov es, ax                       ; 0x4de5
    mov ax, word [bp + 0xc]          ; 0x4de7
    cmp ax, strict word 0x14         ; 0x4dea
    jb short @..loc_PHNQ.l1          ; 0x4ded
    jmp near @..loc_PHNQ.l3          ; 0x4def
@..loc_PHNQ.l1:
    shl ax, 1                        ; 0x4df2
    shl ax, 1                        ; 0x4df4
    mov bx, 0x4ab4                   ; 0x4df6
    add bx, ax                       ; 0x4df9
    mov ax, word [cs:bx + 0x2]       ; 0x4dfb
    mov word [bp - 0x0002], ax       ; 0x4dff
    mov ax, word [cs:bx]             ; 0x4e02
    or ax, ax                        ; 0x4e05
    jne short @..loc_PHNQ.l2         ; 0x4e07
    jmp near @..loc_PHNQ.l3          ; 0x4e09
@..loc_PHNQ.l2:
    dec ax                           ; 0x4e0c
    mov word [bp - 0x0004], ax       ; 0x4e0d
    push word [bp + 0x12]            ; 0x4e10
    push word [bp + 0x10]            ; 0x4e13
    push word [bp + 0xe]             ; 0x4e16
    mov ax, word [bp - 0x0002]       ; 0x4e19
    push ax                          ; 0x4e1c
    xor ax, ax                       ; 0x4e1d
    push ax                          ; 0x4e1f
    mov bx, 0x10fb                   ; 0x4e20
    mov ax, word [bp - 0x0004]       ; 0x4e23
    shl ax, 1                        ; 0x4e26
    shl ax, 1                        ; 0x4e28
    add bx, ax                       ; 0x4e2a
    mov ax, word [cs:bx]             ; 0x4e2c
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x4e2f
    push ax                          ; 0x4e34
    xor ax, ax                       ; 0x4e35
    push ax                          ; 0x4e37
    call far [cs:cseg_011a - IMAGE_BASE] ; 0x4e38
    add sp, byte 0x0e                ; 0x4e3d
@..loc_PHNQ.l3:
    pop di                           ; 0x4e40
    pop si                           ; 0x4e41
    pop es                           ; 0x4e42
    pop ds                           ; 0x4e43
    mov sp, bp                       ; 0x4e44
    pop bp                           ; 0x4e46
    ret                              ; 0x4e47
