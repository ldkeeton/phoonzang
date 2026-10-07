dos_con_loc_426b:
    mov ah, 9                        ; 0x426b
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x426f
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SOUND() ... not enough memory.', 0
    db 0x0a, 0x24

@..dos_read_file_6.l6:
    mov cx, ax                       ; 0x42a0
    mov ax, word [cs:data_01e9]      ; 0x42a2
    mov ds, ax                       ; 0x42a6
    xor dx, dx                       ; 0x42a8
    mov bx, word [bp + 0xc]          ; 0x42aa
    mov ah, 0x3f                     ; 0x42ad
    int 0x21 ; DOS read file (handle)
    mov dx, 0x400                    ; 0x42b1
    mov bx, word [bp + 0xc]          ; 0x42b4
    mov cx, 0x1000                   ; 0x42b7
    mov ah, 0x3f                     ; 0x42ba
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x42be
    mov di, 0                        ; 0x42c1
    lodsw                            ; 0x42c4
    mov word [bp - 0x0004], ax       ; 0x42c5
    mov bx, word [bp - 0x0002]       ; 0x42c8
    mov word [cs:bx + 0x2], ax       ; 0x42cb
    add ax, strict word 0xf          ; 0x42cf
    mov cl, 4                        ; 0x42d2
    shr ax, cl                       ; 0x42d4
    mov bx, word [bp - 0x000a]       ; 0x42d6
    mov word [cs:bx + 0x2], ax       ; 0x42d9
    add ax, word [cs:data_0cac]      ; 0x42dd
    cmp ax, 0x4180                   ; 0x42e2
    jb short @..dos_read_file_6.l7   ; 0x42e5
    jmp near @..dos_read_file_6.l5   ; 0x42e7
@..dos_read_file_6.l7:
    mov word [cs:data_0cac], ax      ; 0x42ea
    mov ax, word [cs:bx]             ; 0x42ee
    add ax, word [cs:data_01e1]      ; 0x42f1
    mov es, ax                       ; 0x42f6
    call string_loc_4300             ; 0x42f8
    xor ax, ax                       ; 0x42fb
    jmp near @..dos_read_file_6.l3   ; 0x42fd
