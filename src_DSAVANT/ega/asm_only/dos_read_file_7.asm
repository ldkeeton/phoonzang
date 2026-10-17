; auto-generated
; asm only
dos_read_file_7:
    push bp                          ; 0x4ead
    mov bp, sp                       ; 0x4eae
    sub sp, byte 0x0e                ; 0x4eb0
    push ds                          ; 0x4eb3
    push es                          ; 0x4eb4
    push si                          ; 0x4eb5
    push di                          ; 0x4eb6
    mov ax, ds                       ; 0x4eb7
    mov es, ax                       ; 0x4eb9
    mov bx, word [bp + 0x12]         ; 0x4ebb
    shl bx, 1                        ; 0x4ebe
    shl bx, 1                        ; 0x4ec0
    add bx, strict word 0x4f8b       ; 0x4ec2
    mov word [bp - 0x0002], bx       ; 0x4ec6
    mov ax, word [cs:bx]             ; 0x4ec9
    or ax, ax                        ; 0x4ecc
    je short @..dos_read_file_7.l1   ; 0x4ece
    jmp near @..dos_read_file_7.l5   ; 0x4ed0
@..dos_read_file_7.l1:
    mov bx, word [bp + 0x12]         ; 0x4ed3
    shl bx, 1                        ; 0x4ed6
    add bx, strict word 0x4fa3       ; 0x4ed8
    mov ax, word [bp + 0x10]         ; 0x4edc
    mov word [cs:bx], ax             ; 0x4edf
    mov ax, word [cs:cseg_10cb - IMAGE_BASE] ; 0x4ee2
    inc ax                           ; 0x4ee6
    mov word [cs:cseg_10cb - IMAGE_BASE], ax ; 0x4ee7
    mov bx, word [bp - 0x0002]       ; 0x4eeb
    mov word [cs:bx], ax             ; 0x4eee
    dec ax                           ; 0x4ef1
    mov cl, 2                        ; 0x4ef2
    shl ax, cl                       ; 0x4ef4
    mov bx, 0x10fb                   ; 0x4ef6
    add bx, ax                       ; 0x4ef9
    mov word [bp - 0x000a], bx       ; 0x4efb
    mov ax, word [cs:cseg_10cd - IMAGE_BASE] ; 0x4efe
    mov word [cs:bx], ax             ; 0x4f02
    xor ax, ax                       ; 0x4f05
    mov word [bp - 0x000c], ax       ; 0x4f07
    mov word [bp - 0x000e], ax       ; 0x4f0a
    mov bx, word [bp - 0x0002]       ; 0x4f0d
    mov word [cs:bx + 0x2], ax       ; 0x4f10
    mov bx, word [bp + 0xe]          ; 0x4f14
    cmp bx, byte 0xff                ; 0x4f17
    je short @..dos_read_file_7.l2   ; 0x4f1a
    mov ah, 0x42                     ; 0x4f1c
    mov al, 2                        ; 0x4f1e
    xor cx, cx                       ; 0x4f20
    mov dx, cx                       ; 0x4f22
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x000c], ax       ; 0x4f26
    mov bx, word [bp - 0x0002]       ; 0x4f29
    mov word [cs:bx + 0x2], ax       ; 0x4f2c
    add ax, strict word 0xf          ; 0x4f30
    mov cl, 4                        ; 0x4f33
    shr ax, cl                       ; 0x4f35
    mov word [bp - 0x000e], ax       ; 0x4f37
    mov ah, 0x42                     ; 0x4f3a
    mov al, 0                        ; 0x4f3c
    mov bx, word [bp + 0xe]          ; 0x4f3e
    xor cx, cx                       ; 0x4f41
    mov dx, cx                       ; 0x4f43
    int 0x21 ; DOS seek file (lseek)
@..dos_read_file_7.l2:
    mov ah, 0x42                     ; 0x4f47
    mov al, 2                        ; 0x4f49
    mov bx, word [bp + 0xc]          ; 0x4f4b
    xor cx, cx                       ; 0x4f4e
    mov dx, cx                       ; 0x4f50
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax       ; 0x4f54
    mov word [bp - 0x0006], dx       ; 0x4f57
    mov ah, 0x42                     ; 0x4f5a
    mov al, 0                        ; 0x4f5c
    mov bx, word [bp + 0xc]          ; 0x4f5e
    xor cx, cx                       ; 0x4f61
    mov dx, cx                       ; 0x4f63
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [bp - 0x0004]       ; 0x4f67
    add ax, strict word 0xf          ; 0x4f6a
    mov cl, 4                        ; 0x4f6d
    shr ax, cl                       ; 0x4f6f
    mov bx, word [bp - 0x000a]       ; 0x4f71
    add ax, word [bp - 0x000e]       ; 0x4f74
    mov word [cs:bx + 0x2], ax       ; 0x4f77
    add ax, word [cs:cseg_10cd - IMAGE_BASE] ; 0x4f7b
    cmp ax, 0x4180                   ; 0x4f80
    jb short @..dos_read_file_7.l3   ; 0x4f83
    jmp near @..dos_read_file_7.l6   ; 0x4f85
@..dos_read_file_7.l3:
    mov word [cs:cseg_10cd - IMAGE_BASE], ax ; 0x4f88
    mov ax, word [cs:bx]             ; 0x4f8c
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x4f8f
    mov ds, ax                       ; 0x4f94
    mov bx, word [bp + 0xe]          ; 0x4f96
    cmp bx, byte 0xff                ; 0x4f99
    je short @..dos_read_file_7.l4   ; 0x4f9c
    xor dx, dx                       ; 0x4f9e
    mov cx, word [bp - 0x000c]       ; 0x4fa0
    mov ah, 0x3f                     ; 0x4fa3
    int 0x21 ; DOS read file (handle)
@..dos_read_file_7.l4:
    mov bx, word [bp - 0x0002]       ; 0x4fa7
    mov bx, word [cs:bx + 0x2]       ; 0x4faa
    mov dx, bx                       ; 0x4fae
    mov bx, word [bp + 0xc]          ; 0x4fb0
    mov cx, word [bp - 0x0004]       ; 0x4fb3
    mov ah, 0x3f                     ; 0x4fb6
    int 0x21 ; DOS read file (handle)
    xor ax, ax                       ; 0x4fba
    pop di                           ; 0x4fbc
    pop si                           ; 0x4fbd
    pop es                           ; 0x4fbe
    pop ds                           ; 0x4fbf
    mov sp, bp                       ; 0x4fc0
    pop bp                           ; 0x4fc2
    ret                              ; 0x4fc3
@..dos_read_file_7.l5:
    mov ax, cs                       ; 0x4fc4
    mov ds, ax                       ; 0x4fc6
    mov dx, 0x50d4                   ; 0x4fc8
    mov ah, 9                        ; 0x4fcb
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4fcf
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... slot already used.', 0
    db 0x0a, 0x24

@..dos_read_file_7.l6:
    mov ax, cs                       ; 0x5000
    mov ds, ax                       ; 0x5002
    mov dx, 0x5110                   ; 0x5004
    mov ah, 9                        ; 0x5007
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x500b
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... not enough memory.', 0
    db 0x0a, 0x24

