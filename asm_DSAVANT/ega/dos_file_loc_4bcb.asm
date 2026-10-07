dos_file_loc_4bcb:
    mov cx, word [bp - 0x0002]       ; 0x4bcb
    xor bx, bx                       ; 0x4bce
@..dos_file_loc_4bcb.l1:
    shl al, 1                        ; 0x4bd0
    jb short @..dos_file_loc_4bcb.l4 ; 0x4bd2
    test word [bx], 0x8000           ; 0x4bd4
    jne short @..dos_file_loc_4bcb.l2 ; 0x4bd8
    mov bx, word [bx]                ; 0x4bda
    jmp short @..dos_file_loc_4bcb.l6 ; 0x4bdc
@..dos_file_loc_4bcb.l2:
    mov bx, word [bx]                ; 0x4bde
    neg bx                           ; 0x4be0
    shl bx, 1                        ; 0x4be2
    shl bx, 1                        ; 0x4be4
@..dos_file_loc_4bcb.l3:
    loop @..dos_file_loc_4bcb.l1     ; 0x4be6
    mov cx, 8                        ; 0x4be8
    lodsb                            ; 0x4beb
    cmp si, strict word 0x1400       ; 0x4bec
    jb short @..dos_file_loc_4bcb.l1 ; 0x4bf0
    push ax                          ; 0x4bf2
    push di                          ; 0x4bf3
    push bx                          ; 0x4bf4
    push cx                          ; 0x4bf5
    mov dx, 0x400                    ; 0x4bf6
    mov bx, word [bp + 0xc]          ; 0x4bf9
    mov cx, 0x1000                   ; 0x4bfc
    mov ah, 0x3f                     ; 0x4bff
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4c03
    pop cx                           ; 0x4c06
    pop bx                           ; 0x4c07
    pop di                           ; 0x4c08
    pop ax                           ; 0x4c09
    jmp short @..dos_file_loc_4bcb.l1 ; 0x4c0a
@..dos_file_loc_4bcb.l4:
    test word [bx + 0x2], 0x8000     ; 0x4c0c
    jne short @..dos_file_loc_4bcb.l5 ; 0x4c11
    mov bx, word [bx + 0x2]          ; 0x4c13
    jmp short @..dos_file_loc_4bcb.l6 ; 0x4c16
@..dos_file_loc_4bcb.l5:
    mov bx, word [bx + 0x2]          ; 0x4c18
    neg bx                           ; 0x4c1b
    shl bx, 1                        ; 0x4c1d
    shl bx, 1                        ; 0x4c1f
    jmp short @..dos_file_loc_4bcb.l3 ; 0x4c21
@..dos_file_loc_4bcb.l6:
    dec cx                           ; 0x4c23
    jne short @..dos_file_loc_4bcb.l7 ; 0x4c24
    mov cx, 8                        ; 0x4c26
    lodsb                            ; 0x4c29
    cmp si, strict word 0x1400       ; 0x4c2a
    jb short @..dos_file_loc_4bcb.l7 ; 0x4c2e
    push ax                          ; 0x4c30
    push di                          ; 0x4c31
    push bx                          ; 0x4c32
    push cx                          ; 0x4c33
    mov dx, 0x400                    ; 0x4c34
    mov bx, word [bp + 0xc]          ; 0x4c37
    mov cx, 0x1000                   ; 0x4c3a
    mov ah, 0x3f                     ; 0x4c3d
    int 0x21 ; DOS read file (handle)
    mov si, 0x400                    ; 0x4c41
    pop cx                           ; 0x4c44
    pop bx                           ; 0x4c45
    pop di                           ; 0x4c46
    pop ax                           ; 0x4c47
@..dos_file_loc_4bcb.l7:
    mov word [bp - 0x0002], cx       ; 0x4c48
    ret                              ; 0x4c4b
