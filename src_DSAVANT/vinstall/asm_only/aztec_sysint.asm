; auto-generated
; asm only
aztec_sysint:
    push bp                          ; 0x2b31
    mov bp, sp                       ; 0x2b32
    sub sp, byte 0x0e                ; 0x2b34
    push si                          ; 0x2b37
    push di                          ; 0x2b38
    push es                          ; 0x2b39
    push ds                          ; 0x2b3a
    mov byte [bp - 0x000a], 0xcd ; build instruction sequence on the stack to issue int / and restore ss:sp to value before int. / N... ; 0x2b3b
    mov al, byte [bp + 0x4]          ; 0x2b3f
    mov byte [bp - 0x0009], al       ; 0x2b42
    mov word [bp - 0x0008], 0xcd8c ; mov bp,cs ; 0x2b45
    mov word [bp - 0x0006], 0xd58e ; mov ss,bp ; 0x2b4a
    mov byte [bp - 0x0004], 0xbc ; mov sp,xx ; 0x2b4f
    mov ax, sp                       ; 0x2b53
    sub ax, strict word 6            ; 0x2b55
    mov word [bp - 0x0003], ax       ; 0x2b58
    mov byte [bp - 0x0001], 0xcb ; retf ; 0x2b5b
    mov word [bp - 0x000c], ss ; set up pointer to above code ; 0x2b5f
    lea ax, word [bp - 0x000a]       ; 0x2b62
    mov word [bp - 0x000e], ax       ; 0x2b65
    mov bx, word [bp + 0x6]          ; 0x2b68
    mov ax, word [bx]                ; 0x2b6b
    push word [bx + 0x2] ; value to go into BX ; 0x2b6d
    mov cx, word [bx + 0x4]          ; 0x2b70
    mov dx, word [bx + 0x6]          ; 0x2b73
    mov si, word [bx + 0x8]          ; 0x2b76
    mov di, word [bx + 0xa]          ; 0x2b79
    mov es, word [bx + 0xe]          ; 0x2b7c
    mov ds, word [bx + 0xc]          ; 0x2b7f
    pop bx                           ; 0x2b82
    push bp                          ; 0x2b83
    call far [bp - 0x000e]           ; 0x2b84
    pop bp                           ; 0x2b87
    push ds ; save values so we have working registers ; 0x2b88
    push bx                          ; 0x2b89
    mov bx, word [bp + 0x8]          ; 0x2b8a
    mov word [ss:bx + 0xe], es       ; 0x2b8d
    pop word [ss:bx + 0x2] ; value returned in BX ; 0x2b91
    pop word [ss:bx + 0xc] ; value returned in DS ; 0x2b95
    pop ds                           ; 0x2b99
    mov word [bx], ax                ; 0x2b9a
    mov word [bx + 0x4], cx          ; 0x2b9c
    mov word [bx + 0x6], dx          ; 0x2b9f
    mov word [bx + 0x8], si          ; 0x2ba2
    mov word [bx + 0xa], di          ; 0x2ba5
    pop es                           ; 0x2ba8
    pop di                           ; 0x2ba9
    pop si                           ; 0x2baa
    pushf                            ; 0x2bab
    pop ax                           ; 0x2bac
    add sp, byte 0x0e                ; 0x2bad
    pop bp                           ; 0x2bb0
    ret                              ; 0x2bb1
