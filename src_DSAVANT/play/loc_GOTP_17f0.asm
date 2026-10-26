; auto-generated
loc_GOTP_17f0:
    push ax                          ; 0x17f0
    push bx                          ; 0x17f1
    push cx                          ; 0x17f2
    push di                          ; 0x17f3
    push dx                          ; 0x17f4
    push ds                          ; 0x17f5
    push si                          ; 0x17f6
.forward2:
    mov ax, word [cs:cseg_0d41 - IMAGE_BASE] ; 0x17f7
    sub ax, 0x2000                   ; 0x17fb
    je short .forward4               ; 0x17fe
    sar ax, 1                        ; 0x1800
    sar ax, 1                        ; 0x1802
    sar ax, 1                        ; 0x1804
    sar ax, 1                        ; 0x1806
    sar ax, 1                        ; 0x1808
    mov cx, ax                       ; 0x180a
    mov bx, word [cs:cseg_0d43 - IMAGE_BASE] ; 0x180c
    cmp bx, byte 0xc                 ; 0x1811
    jb short .forward3               ; 0x1814
    mov bx, 0xa                      ; 0x1816
.forward3:
    shl bx, 1                        ; 0x1819
    neg bx                           ; 0x181b
    add bx, strict word 0x193b       ; 0x181d
    jmp bx                           ; 0x1821

    db 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1
    db 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1

.forward4:
    add ah, byte [cs:cseg_0d3c - IMAGE_BASE] ; 0x1839
    add ax, strict word 8            ; 0x183e
    sar ax, 1                        ; 0x1841
    sar ax, 1                        ; 0x1843
    sar ax, 1                        ; 0x1845
    sar ax, 1                        ; 0x1847
    jge short .forward5              ; 0x1849
    xor ax, ax                       ; 0x184b
    jmp near .forward6               ; 0x184d
.forward5:
    cmp ax, 0x5ff                    ; 0x1850
    jl short .forward6               ; 0x1853
    mov ax, 0x5ff                    ; 0x1855
.forward6:
    mov di, ax                       ; 0x1858
    shr di, 1                        ; 0x185a
    shr di, 1                        ; 0x185c
    shr di, 1                        ; 0x185e
    shr di, 1                        ; 0x1860
    mov dx, di                       ; 0x1862
    mov bl, byte [cs:di + cseg_1709 - IMAGE_BASE] ; 0x1864
    xor bh, bh                       ; 0x1869
    mov di, bx                       ; 0x186b
    shl di, 1                        ; 0x186d
    shl di, 1                        ; 0x186f
    shl di, 1                        ; 0x1871
    shl di, 1                        ; 0x1873
    shl di, 1                        ; 0x1875
    shl ax, 1                        ; 0x1877
    and ax, strict word 0x1f         ; 0x1879
    add di, ax                       ; 0x187c
    mov ax, word [cs:di + cseg_1529 - IMAGE_BASE] ; 0x187e
    mov di, dx                       ; 0x1883
    mov bl, byte [cs:di + cseg_16a9 - IMAGE_BASE] ; 0x1885
    dec bl                           ; 0x188a
    or ax, ax                        ; 0x188c
    jge short .forward7              ; 0x188e
    inc bl                           ; 0x1890
.forward7:
    or bl, bl                        ; 0x1892
    jge short .forward8              ; 0x1894
    inc bl                           ; 0x1896
    sar ax, 1                        ; 0x1898
.forward8:
    push ax                          ; 0x189a
    mov ah, 0xa0                     ; 0x189b
    add ah, byte [cs:cseg_0d40 - IMAGE_BASE] ; 0x189d
    inc ah                           ; 0x18a2
    call opl_write                   ; 0x18a4
    pop ax                           ; 0x18a7
    mov al, ah                       ; 0x18a8
    and al, 3                        ; 0x18aa
    shl bl, 1                        ; 0x18ac
    shl bl, 1                        ; 0x18ae
    add al, bl                       ; 0x18b0
    add al, byte [cs:cseg_1774 - IMAGE_BASE] ; 0x18b2
    mov ah, 0xb0                     ; 0x18b7
    add ah, byte [cs:cseg_0d40 - IMAGE_BASE] ; 0x18b9
    inc ah                           ; 0x18be
    call opl_write                   ; 0x18c0
    pop si                           ; 0x18c3
    pop ds                           ; 0x18c4
    pop dx                           ; 0x18c5
    pop di                           ; 0x18c6
    pop cx                           ; 0x18c7
    pop bx                           ; 0x18c8
    pop ax                           ; 0x18c9
    ret                              ; 0x18ca
