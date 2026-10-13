; auto-generated
dos_write_file:
    push bp                          ; 0x0ebd
    mov bp, sp                       ; 0x0ebe
    sub sp, byte 8                   ; 0x0ec0
    push ds                          ; 0x0ec3
    push es                          ; 0x0ec4
    push si                          ; 0x0ec5
    push di                          ; 0x0ec6
    mov ax, ds                       ; 0x0ec7
    mov es, ax                       ; 0x0ec9
    mov ax, word [bp + 0xc]          ; 0x0ecb
    test ah, 0x80                    ; 0x0ece
    jne short @..dos_write_file.l1   ; 0x0ed1
    jmp near @..dos_write_file.l4    ; 0x0ed3
@..dos_write_file.l1:
    neg ax                           ; 0x0ed6
    mov bx, 0x251                    ; 0x0ed8
    shl ax, 1                        ; 0x0edb
    add bx, ax                       ; 0x0edd
    mov ax, word [cs:bx]             ; 0x0edf
    or ax, ax                        ; 0x0ee2
    je short @..dos_write_file.l2    ; 0x0ee4
    jmp near dos_con_loc_0f70        ; 0x0ee6
@..dos_write_file.l2:
    mov ax, word [cs:cseg_11cb - IMAGE_BASE] ; 0x0ee9
    inc ax                           ; 0x0eed
    mov word [cs:cseg_11cb - IMAGE_BASE], ax ; 0x0eee
    mov word [cs:bx], ax             ; 0x0ef2
    mov cl, 2                        ; 0x0ef5
    dec ax                           ; 0x0ef7
    shl ax, cl                       ; 0x0ef8
    mov bx, 0x10fb                   ; 0x0efa
    add bx, ax                       ; 0x0efd
    mov ax, word [cs:cseg_11cd - IMAGE_BASE] ; 0x0eff
    mov word [cs:bx], ax             ; 0x0f03
    mov cx, 0xfa0                    ; 0x0f06
    mov word [cs:bx + 0x2], cx       ; 0x0f09
    mov dx, word [cs:cseg_11cd - IMAGE_BASE] ; 0x0f0d
    add dx, cx                       ; 0x0f12
    mov word [cs:cseg_11cd - IMAGE_BASE], dx ; 0x0f14
    cmp dx, strict word 0x4180       ; 0x0f19
    jb short @..dos_write_file.l3    ; 0x0f1d
    jmp near dos_con_loc_0fae        ; 0x0f1f
@..dos_write_file.l3:
    mov ax, word [bp + 0xc]          ; 0x0f22
    neg ax                           ; 0x0f25
    shl ax, 1                        ; 0x0f27
    mov bx, 0x251                    ; 0x0f29
    add bx, ax                       ; 0x0f2c
    mov ax, word [cs:bx]             ; 0x0f2e
    dec ax                           ; 0x0f31
    mov cl, 2                        ; 0x0f32
    shl ax, cl                       ; 0x0f34
    mov bx, 0x10fb                   ; 0x0f36
    add bx, ax                       ; 0x0f39
    mov ax, word [cs:bx]             ; 0x0f3b
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x0f3e
    mov es, ax                       ; 0x0f43
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x0f45
    mov ds, ax                       ; 0x0f49
    xor di, di                       ; 0x0f4b
    xor si, si                       ; 0x0f4d
    mov cx, 0xfa00                   ; 0x0f4f
    rep movsb                        ; 0x0f52
    jmp short @..dos_write_file.l5   ; 0x0f54
@..dos_write_file.l4:
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x0f56
    mov ds, ax                       ; 0x0f5a
    xor dx, dx                       ; 0x0f5c
    mov bx, word [bp + 0xc]          ; 0x0f5e
    mov cx, 0xfa00                   ; 0x0f61
    mov ah, 0x40                     ; 0x0f64
    int 0x21 ; DOS write file (handle)
@..dos_write_file.l5:
    pop di                           ; 0x0f68
    pop si                           ; 0x0f69
    pop es                           ; 0x0f6a
    pop ds                           ; 0x0f6b
    mov sp, bp                       ; 0x0f6c
    pop bp                           ; 0x0f6e
    ret                              ; 0x0f6f
