; auto-generated
dos_read_file_6:
    push bp                          ; 0x4a08
    mov bp, sp                       ; 0x4a09
    sub sp, byte 0x0a                ; 0x4a0b
    push ds                          ; 0x4a0e
    push es                          ; 0x4a0f
    push si                          ; 0x4a10
    push di                          ; 0x4a11
    mov ax, ds                       ; 0x4a12
    mov es, ax                       ; 0x4a14
    mov bx, word [bp + 0xe]          ; 0x4a16
    shl bx, 1                        ; 0x4a19
    shl bx, 1                        ; 0x4a1b
    add bx, strict word 0x4ab4       ; 0x4a1d
    mov word [bp - 0x0002], bx       ; 0x4a21
    mov ax, word [cs:bx]             ; 0x4a24
    or ax, ax                        ; 0x4a27
    je short @..dos_read_file_6.l1   ; 0x4a29
    jmp near @..dos_read_file_6.l4   ; 0x4a2b
@..dos_read_file_6.l1:
    mov ax, word [cs:cseg_11cb - IMAGE_BASE] ; 0x4a2e
    inc ax                           ; 0x4a32
    mov word [cs:cseg_11cb - IMAGE_BASE], ax ; 0x4a33
    mov bx, word [bp - 0x0002]       ; 0x4a37
    mov word [cs:bx], ax             ; 0x4a3a
    dec ax                           ; 0x4a3d
    mov cl, 2                        ; 0x4a3e
    shl ax, cl                       ; 0x4a40
    mov bx, 0x10fb                   ; 0x4a42
    add bx, ax                       ; 0x4a45
    mov word [bp - 0x000a], bx       ; 0x4a47
    mov ax, word [cs:cseg_11cd - IMAGE_BASE] ; 0x4a4a
    mov word [cs:bx], ax             ; 0x4a4e
    mov ah, 0x42                     ; 0x4a51
    mov al, 2                        ; 0x4a53
    mov bx, word [bp + 0xc]          ; 0x4a55
    xor cx, cx                       ; 0x4a58
    mov dx, cx                       ; 0x4a5a
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax       ; 0x4a5e
    mov word [bp - 0x0006], dx       ; 0x4a61
    mov ah, 0x42                     ; 0x4a64
    mov al, 0                        ; 0x4a66
    mov bx, word [bp + 0xc]          ; 0x4a68
    xor cx, cx                       ; 0x4a6b
    mov dx, cx                       ; 0x4a6d
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [cs:cseg_01e9 - IMAGE_BASE] ; 0x4a71
    mov ds, ax                       ; 0x4a75
    xor dx, dx                       ; 0x4a77
    mov bx, word [bp + 0xc]          ; 0x4a79
    mov cx, 2                        ; 0x4a7c
    mov ah, 0x3f                     ; 0x4a7f
    int 0x21 ; DOS read file (handle)
    xor bx, bx                       ; 0x4a83
    mov ax, word [bx]                ; 0x4a85
    or ax, ax                        ; 0x4a87
    je short @..dos_read_file_6.l2   ; 0x4a89
    jmp near @..dos_read_file_6.l6   ; 0x4a8b
@..dos_read_file_6.l2:
    mov bx, word [bp - 0x0002]       ; 0x4a8e
    mov ax, word [bp - 0x0004]       ; 0x4a91
    sub ax, strict word 2            ; 0x4a94
    mov word [cs:bx + 0x2], ax       ; 0x4a97
    add ax, strict word 0xf          ; 0x4a9b
    mov cl, 4                        ; 0x4a9e
    shr ax, cl                       ; 0x4aa0
    mov bx, word [bp - 0x000a]       ; 0x4aa2
    mov word [cs:bx + 0x2], ax       ; 0x4aa5
    add ax, word [cs:cseg_11cd - IMAGE_BASE] ; 0x4aa9
    cmp ax, 0x4180                   ; 0x4aae
    jae short @..dos_read_file_6.l5  ; 0x4ab1
    mov word [cs:cseg_11cd - IMAGE_BASE], ax ; 0x4ab3
    mov ax, word [cs:bx]             ; 0x4ab7
    add ax, word [cs:cseg_01e1 - IMAGE_BASE] ; 0x4aba
    mov ds, ax                       ; 0x4abf
    xor dx, dx                       ; 0x4ac1
    mov bx, word [bp + 0xc]          ; 0x4ac3
    mov cx, word [bp - 0x0004]       ; 0x4ac6
    sub cx, byte 2                   ; 0x4ac9
    mov ah, 0x3f                     ; 0x4acc
    int 0x21 ; DOS read file (handle)
    xor ax, ax                       ; 0x4ad0
@..dos_read_file_6.l3:
    pop di                           ; 0x4ad2
    pop si                           ; 0x4ad3
    pop es                           ; 0x4ad4
    pop ds                           ; 0x4ad5
    mov sp, bp                       ; 0x4ad6
    pop bp                           ; 0x4ad8
    ret                              ; 0x4ad9
@..dos_read_file_6.l4:
    mov ax, cs                       ; 0x4ada
    mov ds, ax                       ; 0x4adc
    mov dx, 0x4bea                   ; 0x4ade
