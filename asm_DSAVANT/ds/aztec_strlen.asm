aztec_strlen:
    push bp                          ; 0x4cd7
    mov bp, sp                       ; 0x4cd8
    cld                              ; 0x4cda
    push di                          ; 0x4cdb
    mov di, ds                       ; 0x4cdc
    mov es, di                       ; 0x4cde
    mov di, word [bp + 0x4]          ; 0x4ce0
    mov bx, di ; save for later ; 0x4ce3
    sub ax, ax                       ; 0x4ce5
    mov cx, 0x7fff                   ; 0x4ce7
    repne scasb                      ; 0x4cea
    mov ax, di                       ; 0x4cec
    sub ax, bx ; compute length of string ; 0x4cee
    dec ax                           ; 0x4cf0
    pop di                           ; 0x4cf1
    pop bp                           ; 0x4cf2
    ret                              ; 0x4cf3
