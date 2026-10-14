; auto-generated
; asm only
leaf_loc_06d9:
    push bp                          ; 0x06d9
    mov bp, sp                       ; 0x06da
    sub sp, byte 8                   ; 0x06dc
    push es                          ; 0x06df
    push di                          ; 0x06e0
    mov ax, ds                       ; 0x06e1
    mov es, ax                       ; 0x06e3
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x06e5
    mov es, ax                       ; 0x06e9
    mov ax, word [bp + 0xe]          ; 0x06eb
    mov bx, 0x140                    ; 0x06ee
    mul bx                           ; 0x06f1
    add ax, word [bp + 0xc]          ; 0x06f3
    mov word [bp - 0x0002], ax       ; 0x06f6
    mov ax, word [bp + 0x12]         ; 0x06f9
    sub ax, word [bp + 0xe]          ; 0x06fc
    inc ax                           ; 0x06ff
    mov word [bp - 0x0004], ax       ; 0x0700
    mov ax, word [bp + 0x10]         ; 0x0703
    sub ax, word [bp + 0xc]          ; 0x0706
    inc ax                           ; 0x0709
    mov word [bp - 0x0006], ax       ; 0x070a
    mov ax, word [bp + 0x14]         ; 0x070d
@..leaf_loc_06d9.l1:
    mov di, word [bp - 0x0002]       ; 0x0710
    add word [bp - 0x0002], strict word 0x140 ; 0x0713
    mov cx, word [bp - 0x0006]       ; 0x0718
    rep stosb                        ; 0x071b
    dec word [bp - 0x0004]           ; 0x071d
    jne short @..leaf_loc_06d9.l1    ; 0x0720
    pop di                           ; 0x0722
    pop es                           ; 0x0723
    mov sp, bp                       ; 0x0724
    pop bp                           ; 0x0726
    ret                              ; 0x0727
