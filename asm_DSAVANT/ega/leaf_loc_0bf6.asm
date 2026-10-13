; auto-generated
leaf_loc_0bf6:
    push bp                          ; 0x0bf6
    mov bp, sp                       ; 0x0bf7
    sub sp, byte 8                   ; 0x0bf9
    push es                          ; 0x0bfc
    push di                          ; 0x0bfd
    mov ax, ds                       ; 0x0bfe
    mov es, ax                       ; 0x0c00
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x0c02
    mov es, ax                       ; 0x0c06
    mov ax, word [bp + 0xe]          ; 0x0c08
    mov bx, 0x140                    ; 0x0c0b
    mul bx                           ; 0x0c0e
    add ax, word [bp + 0xc]          ; 0x0c10
    mov word [bp - 0x0002], ax       ; 0x0c13
    mov ax, word [bp + 0x12]         ; 0x0c16
    sub ax, word [bp + 0xe]          ; 0x0c19
    inc ax                           ; 0x0c1c
    mov word [bp - 0x0004], ax       ; 0x0c1d
    mov ax, word [bp + 0x10]         ; 0x0c20
    sub ax, word [bp + 0xc]          ; 0x0c23
    inc ax                           ; 0x0c26
    mov word [bp - 0x0006], ax       ; 0x0c27
    mov ax, word [bp + 0x14]         ; 0x0c2a
@..leaf_loc_0bf6.l1:
    mov di, word [bp - 0x0002]       ; 0x0c2d
    add word [bp - 0x0002], strict word 0x140 ; 0x0c30
    mov cx, word [bp - 0x0006]       ; 0x0c35
    rep stosb                        ; 0x0c38
    dec word [bp - 0x0004]           ; 0x0c3a
    jne short @..leaf_loc_0bf6.l1    ; 0x0c3d
    pop di                           ; 0x0c3f
    pop es                           ; 0x0c40
    mov sp, bp                       ; 0x0c41
    pop bp                           ; 0x0c43
    ret                              ; 0x0c44
