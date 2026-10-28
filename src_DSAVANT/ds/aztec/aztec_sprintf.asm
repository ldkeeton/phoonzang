; auto-generated
aztec_sprintf:
    push bp                          ; 0x44d4
    mov bp, sp                       ; 0x44d5
    push si                          ; 0x44d7
    mov ax, word [bp + 4]            ; 0x44d8
    mov word [buff], ax              ; 0x44db
    lea ax, word [bp + 8]            ; 0x44de
    push ax                          ; 0x44e1
    push word [bp + 6]               ; 0x44e2
    mov ax, 0x42ff                   ; 0x44e5
    push ax                          ; 0x44e8
    call aztec_format                ; 0x44e9
    add sp, byte 6                   ; 0x44ec
    mov si, ax                       ; 0x44ef
    mov bx, word [buff]              ; 0x44f1
    mov byte [bx], 0                 ; 0x44f5
    mov ax, si                       ; 0x44f8
    pop si                           ; 0x44fa
    mov sp, bp                       ; 0x44fb
    pop bp                           ; 0x44fd
    ret                              ; 0x44fe
aztec_spsub:
    push bp                          ; 0x44ff
    mov bp, sp                       ; 0x4500
    mov al, byte [bp + 4]            ; 0x4502
    mov bx, word [buff]              ; 0x4505
    inc word [buff]                  ; 0x4509
    mov byte [bx], al                ; 0x450d
    cbw                              ; 0x450f
    and ax, 0xff                     ; 0x4510
    mov sp, bp                       ; 0x4513
    pop bp                           ; 0x4515
    ret                              ; 0x4516
