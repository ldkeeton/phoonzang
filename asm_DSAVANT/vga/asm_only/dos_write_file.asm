; auto-generated
; asm only
dos_write_file:
    push bp                          ; 0x099c
    mov bp, sp                       ; 0x099d
    sub sp, byte 8                   ; 0x099f
    push ds                          ; 0x09a2
    push es                          ; 0x09a3
    push si                          ; 0x09a4
    push di                          ; 0x09a5
    mov ax, ds                       ; 0x09a6
    mov es, ax                       ; 0x09a8
    mov ax, word [bp + 0xc]          ; 0x09aa
    test ah, 0x80                    ; 0x09ad
    jne short @..dos_write_file.l1   ; 0x09b0
    jmp near @..dos_write_file.l4    ; 0x09b2
@..dos_write_file.l1:
    neg ax                           ; 0x09b5
    mov bx, data_0251                ; 0x09b7
    shl ax, 1                        ; 0x09ba
    add bx, ax                       ; 0x09bc
    mov ax, word [cs:bx]             ; 0x09be
    or ax, ax                        ; 0x09c1
    je short @..dos_write_file.l2    ; 0x09c3
    jmp near dos_con_loc_0a4f        ; 0x09c5
@..dos_write_file.l2:
    mov ax, word [cs:cseg_0caa - IMAGE_BASE] ; 0x09c8
    inc ax                           ; 0x09cc
    mov word [cs:cseg_0caa - IMAGE_BASE], ax ; 0x09cd
    mov word [cs:bx], ax             ; 0x09d1
    mov cl, 2                        ; 0x09d4
    dec ax                           ; 0x09d6
    shl ax, cl                       ; 0x09d7
    mov bx, data_0bda                ; 0x09d9
    add bx, ax                       ; 0x09dc
    mov ax, word [cs:cseg_0cac - IMAGE_BASE] ; 0x09de
    mov word [cs:bx], ax             ; 0x09e2
    mov cx, 0xfa0                    ; 0x09e5
    mov word [cs:bx + 0x2], cx       ; 0x09e8
    mov dx, word [cs:cseg_0cac - IMAGE_BASE] ; 0x09ec
    add dx, cx                       ; 0x09f1
    mov word [cs:cseg_0cac - IMAGE_BASE], dx ; 0x09f3
    cmp dx, strict word 0x4180       ; 0x09f8
    jb short @..dos_write_file.l3    ; 0x09fc
    jmp near dos_con_loc_0a8d        ; 0x09fe
@..dos_write_file.l3:
    mov ax, word [bp + 0xc]          ; 0x0a01
    neg ax                           ; 0x0a04
    shl ax, 1                        ; 0x0a06
    mov bx, data_0251                ; 0x0a08
    add bx, ax                       ; 0x0a0b
    mov ax, word [cs:bx]             ; 0x0a0d
    dec ax                           ; 0x0a10
    mov cl, 2                        ; 0x0a11
    shl ax, cl                       ; 0x0a13
    mov bx, data_0bda                ; 0x0a15
    add bx, ax                       ; 0x0a18
    mov ax, word [cs:bx]             ; 0x0a1a
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x0a1d
    mov es, ax                       ; 0x0a22
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x0a24
    mov ds, ax                       ; 0x0a28
    xor di, di                       ; 0x0a2a
    xor si, si                       ; 0x0a2c
    mov cx, 0xfa00                   ; 0x0a2e
    rep movsb                        ; 0x0a31
    jmp short @..dos_write_file.l5   ; 0x0a33
@..dos_write_file.l4:
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x0a35
    mov ds, ax                       ; 0x0a39
    xor dx, dx                       ; 0x0a3b
    mov bx, word [bp + 0xc]          ; 0x0a3d
    mov cx, 0xfa00                   ; 0x0a40
    mov ah, 0x40                     ; 0x0a43
    int 0x21 ; DOS write file (handle)
@..dos_write_file.l5:
    pop di                           ; 0x0a47
    pop si                           ; 0x0a48
    pop es                           ; 0x0a49
    pop ds                           ; 0x0a4a
    mov sp, bp                       ; 0x0a4b
    pop bp                           ; 0x0a4d
    ret                              ; 0x0a4e
