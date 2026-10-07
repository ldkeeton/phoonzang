dos_con_loc_4755:
    mov ah, 9                        ; 0x4755
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x4759
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'In LOAD_SCORE() ... not enough memory.', 0
    db 0x0a, 0x24

loc_478a:
    push bp                          ; 0x478a
    mov bp, sp                       ; 0x478b
    sub sp, byte 0x0a                ; 0x478d
    push ds                          ; 0x4790
    push es                          ; 0x4791
    push si                          ; 0x4792
    push di                          ; 0x4793
    mov ax, ds                       ; 0x4794
    mov es, ax                       ; 0x4796
    mov bx, word [bp + 0xc]          ; 0x4798
    shl bx, 1                        ; 0x479b
    add bx, data_46f1                ; 0x479d
    mov ax, word [cs:bx]             ; 0x47a1
    mov word [bp - 0x0008], ax       ; 0x47a4
    mov bx, word [bp + 0xc]          ; 0x47a7
    shl bx, 1                        ; 0x47aa
    shl bx, 1                        ; 0x47ac
    add bx, data_46d9                ; 0x47ae
    mov word [bp - 0x0002], bx       ; 0x47b2
    mov ax, word [cs:bx + 0x2]       ; 0x47b5
    mov word [bp - 0x0006], ax       ; 0x47b9
    mov ax, word [cs:bx]             ; 0x47bc
    or ax, ax                        ; 0x47bf
    je short @..local.l12            ; 0x47c1
    dec ax                           ; 0x47c3
    shl ax, 1                        ; 0x47c4
    shl ax, 1                        ; 0x47c6
    mov bx, data_0bda                ; 0x47c8
    add bx, ax                       ; 0x47cb
    mov word [bp - 0x0004], bx       ; 0x47cd
    push word [bp - 0x0008]          ; 0x47d0
    xor ax, ax                       ; 0x47d3
    cmp word [bp - 0x0006], byte 0   ; 0x47d5
    je short @..local.l11            ; 0x47d9
    mov ax, word [cs:bx]             ; 0x47db
    add ax, word [cs:data_01e1]      ; 0x47de
@..local.l11:
    push ax                          ; 0x47e3
    xor ax, ax                       ; 0x47e4
    push ax                          ; 0x47e6
    call far [cs:data_020e]          ; 0x47e7
    add sp, byte 6                   ; 0x47ec
    push word [bp + 0x10]            ; 0x47ef
    push word [bp + 0xe]             ; 0x47f2
    call far [cs:data_0216]          ; 0x47f5
    add sp, byte 4                   ; 0x47fa
    push word [bp + 0x12]            ; 0x47fd
    mov bx, word [bp - 0x0004]       ; 0x4800
    mov ax, word [cs:bx]             ; 0x4803
    add ax, word [cs:data_01e1]      ; 0x4806
    push ax                          ; 0x480b
    push word [bp - 0x0006]          ; 0x480c
    call far [cs:data_0206]          ; 0x480f
    add sp, byte 6                   ; 0x4814
@..local.l12:
    pop di                           ; 0x4817
    pop si                           ; 0x4818
    pop es                           ; 0x4819
    pop ds                           ; 0x481a
    mov sp, bp                       ; 0x481b
    pop bp                           ; 0x481d
    ret                              ; 0x481e
