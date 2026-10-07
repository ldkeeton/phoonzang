mouse_set_pos:
    push bp                          ; 0x19c1
    mov bp, sp                       ; 0x19c2
    sub sp, byte 4                   ; 0x19c4
    push ds                          ; 0x19c7
    push es                          ; 0x19c8
    push si                          ; 0x19c9
    push di                          ; 0x19ca
    mov ax, ds                       ; 0x19cb
    mov es, ax                       ; 0x19cd
    mov ax, word [bp + 0x10]         ; 0x19cf
    cmp ax, strict word 0x51         ; 0x19d2
    jb short @..mouse_set_pos.l2     ; 0x19d5
@..mouse_set_pos.l1:
    jmp near dos_con_loc_1a9f        ; 0x19d7
@..mouse_set_pos.l2:
    mov bx, word [bp + 0x12]         ; 0x19da
    mul bx                           ; 0x19dd
    or dx, dx                        ; 0x19df
    jne short @..mouse_set_pos.l1    ; 0x19e1
    cmp ax, 0x401                    ; 0x19e3
    jae short @..mouse_set_pos.l1    ; 0x19e6
    call leaf_loc_1900               ; 0x19e8
    mov ax, word [bp + 0xc]          ; 0x19eb
    mov word [cs:data_2599], ax      ; 0x19ee
    mov ax, word [bp + 0xe]          ; 0x19f2
    mov word [cs:data_259b], ax      ; 0x19f5
    mov ax, word [bp + 0x10]         ; 0x19f9
    mov word [cs:data_258d], ax      ; 0x19fc
    mov ax, word [bp + 0x12]         ; 0x1a00
    mov word [cs:data_2591], ax      ; 0x1a03
    mov ax, word [cs:data_2599]      ; 0x1a07
    or ax, word [cs:data_259b]       ; 0x1a0b
    jne short @..mouse_set_pos.l3    ; 0x1a10
    mov ax, cs                       ; 0x1a12
    mov ds, ax                       ; 0x1a14
    mov es, ax                       ; 0x1a16
    mov si, 0x2593                   ; 0x1a18
    mov di, data_258d                ; 0x1a1b
    mov cx, 6                        ; 0x1a1e
    rep movsb                        ; 0x1a21
    push ds                          ; 0x1a23
    push si                          ; 0x1a24
    mov si, 0x259e                   ; 0x1a25
    mov ax, cs                       ; 0x1a28
    mov ds, ax                       ; 0x1a2a
    call string_loc_17a1             ; 0x1a2c
    pop si                           ; 0x1a2f
    pop ds                           ; 0x1a30
    jmp short @..mouse_set_pos.l4    ; 0x1a31
@..mouse_set_pos.l3:
    mov ax, word [cs:data_258d]      ; 0x1a33
    add ax, strict word 3            ; 0x1a37
    mov cl, 2                        ; 0x1a3a
    shr ax, cl                       ; 0x1a3c
    mov word [cs:data_258f], ax      ; 0x1a3e
    push ds                          ; 0x1a42
    push si                          ; 0x1a43
    mov si, word [bp + 0xc]          ; 0x1a44
    mov ax, word [bp + 0xe]          ; 0x1a47
    mov ds, ax                       ; 0x1a4a
    call string_loc_17a1             ; 0x1a4c
    pop si                           ; 0x1a4f
    pop ds                           ; 0x1a50
@..mouse_set_pos.l4:
    cmp byte [cs:data_0228], 0       ; 0x1a51
    je short @..mouse_set_pos.l8     ; 0x1a57
    mov cx, word [bp + 0x14]         ; 0x1a59
    cmp cx, byte 0xff                ; 0x1a5c
    je short @..mouse_set_pos.l6     ; 0x1a5f
    mov dx, word [bp + 0x16]         ; 0x1a61
    cmp dx, byte 0xff                ; 0x1a64
    je short @..mouse_set_pos.l6     ; 0x1a67
    shl cx, 1                        ; 0x1a69
    mov ax, 4                        ; 0x1a6b
    int 0x33 ; BIOS mouse
@..mouse_set_pos.l5:
    mov ax, 3                        ; 0x1a70
    int 0x33 ; BIOS mouse
    jmp short @..mouse_set_pos.l7    ; 0x1a75
@..mouse_set_pos.l6:
    cmp byte [cs:data_0226], 0       ; 0x1a77
    je short @..mouse_set_pos.l5     ; 0x1a7d
    mov cx, word [cs:data_1bd9]      ; 0x1a7f
    shl cx, 1                        ; 0x1a84
    mov dx, word [cs:data_1bdb]      ; 0x1a86
@..mouse_set_pos.l7:
    mov ax, cs                       ; 0x1a8b
    push ax                          ; 0x1a8d
    call leaf_loc_2a4f               ; 0x1a8e
    mov byte [cs:data_0227], 0       ; 0x1a91
@..mouse_set_pos.l8:
    pop di                           ; 0x1a97
    pop si                           ; 0x1a98
    pop es                           ; 0x1a99
    pop ds                           ; 0x1a9a
    mov sp, bp                       ; 0x1a9b
    pop bp                           ; 0x1a9d
    ret                              ; 0x1a9e
