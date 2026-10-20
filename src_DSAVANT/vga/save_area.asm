; auto-generated
save_area:
    push bp                          ; 0x077a
    mov bp, sp                       ; 0x077b
    sub sp, byte 0x0a                ; 0x077d
    push es                          ; 0x0780
    push ds                          ; 0x0781
    push di                          ; 0x0782
    push si                          ; 0x0783
    mov ax, ds                       ; 0x0784
    mov es, ax                       ; 0x0786
    mov ax, word [bp + 0x10]         ; 0x0788
    sub ax, word [bp + 0xc]          ; 0x078b
    inc ax                           ; 0x078e
    mov word [bp - 0x0006], ax       ; 0x078f
    mov bx, word [bp + 0x12]         ; 0x0792
    sub bx, word [bp + 0xe]          ; 0x0795
    inc bx                           ; 0x0798
    mov word [bp - 0x0004], bx       ; 0x0799
    mul bx                           ; 0x079c
    mov word [bp - 0x0008], ax       ; 0x079e
    mov word [bp - 0x000a], dx       ; 0x07a1
    add ax, strict word 0xc          ; 0x07a4
    add ax, strict word 0xf          ; 0x07a7
    mov cl, 4                        ; 0x07aa
    shr ax, cl                       ; 0x07ac
    mov bx, ax                       ; 0x07ae
    mov ah, 0x48                     ; 0x07b0
    int 0x21 ; DOS allocate memory
    jae short @..save_area.l1        ; 0x07b4
    jmp near dos_con_loc_PJHN        ; 0x07b6
@..save_area.l1:
    mov es, ax                       ; 0x07b9
    xor di, di                       ; 0x07bb
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x07bd
    mov ds, ax                       ; 0x07c1
    mov ax, word [bp + 0xe]          ; 0x07c3
    mov bx, 0x140                    ; 0x07c6
    mul bx                           ; 0x07c9
    add ax, word [bp + 0xc]          ; 0x07cb
    mov word [bp - 0x0002], ax       ; 0x07ce
    stosw                            ; 0x07d1
    xor ax, ax                       ; 0x07d2
    stosw                            ; 0x07d4
    mov ax, word [bp - 0x0004]       ; 0x07d5
    stosw                            ; 0x07d8
    mov ax, word [bp - 0x0006]       ; 0x07d9
    stosw                            ; 0x07dc
    mov ax, word [bp - 0x0008]       ; 0x07dd
    stosw                            ; 0x07e0
    mov ax, word [bp - 0x000a]       ; 0x07e1
    stosw                            ; 0x07e4
@..save_area.l2:
    mov si, word [bp - 0x0002]       ; 0x07e5
    add word [bp - 0x0002], strict word 0x140 ; 0x07e8
    mov cx, word [bp - 0x0006]       ; 0x07ed
    rep movsb                        ; 0x07f0
    dec word [bp - 0x0004]           ; 0x07f2
    jne short @..save_area.l2        ; 0x07f5
    mov dx, es                       ; 0x07f7
    xor ax, ax                       ; 0x07f9
    jmp short loc_082e               ; 0x07fb
