; auto-generated
; asm only
loc_NQLH:
    push ax                          ; 0x1775
    push bx                          ; 0x1776
    push cx                          ; 0x1777
    push di                          ; 0x1778
    push dx                          ; 0x1779
    push ds                          ; 0x177a
    push si                          ; 0x177b
    mov byte [cs:cseg_1774 - IMAGE_BASE], 0x20 ; 0x177c
    mov bx, word [cs:cseg_0aac - IMAGE_BASE] ; 0x1782
    mov ds, bx                       ; 0x1787
    mov si, word [cs:cseg_0aae - IMAGE_BASE] ; 0x1789
    mov bl, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x178e
    shr bl, 1                        ; 0x1793
    shr bl, 1                        ; 0x1795
    xor bh, bh                       ; 0x1797
    mov al, byte [bx + si]           ; 0x1799
    xor ah, ah                       ; 0x179b
    mov bl, 0xb                      ; 0x179d
    mul bl                           ; 0x179f
    add ax, strict word 0x40         ; 0x17a1
    add si, ax                       ; 0x17a4
    mov al, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x17a6
    and al, 3                        ; 0x17aa
    xor ah, ah                       ; 0x17ac
    mov bl, 0xb                      ; 0x17ae
    mul bl                           ; 0x17b0
    add ax, strict word 0            ; 0x17b2
    mov bl, byte [cs:cseg_0d40 - IMAGE_BASE] ; 0x17b5
    inc bl                           ; 0x17ba
    shl bl, 1                        ; 0x17bc
    xor bh, bh                       ; 0x17be
    mov ch, byte [cs:bx + 0x13df]    ; 0x17c0
    mov al, ch                       ; 0x17c5
    add al, 3                        ; 0x17c7
    mov ah, byte [si + 0x6]          ; 0x17c9
    call loc_QVOP                    ; 0x17cc
    mov al, byte [si + 0xa]          ; 0x17cf
    and al, 1                        ; 0x17d2
    cmp al, 1                        ; 0x17d4
    jne short @..loc_NQLH.l1         ; 0x17d6
    mov al, ch                       ; 0x17d8
    mov ah, byte [si + 0x1]          ; 0x17da
    call loc_QVOP                    ; 0x17dd
    jmp near @..loc_NQLH.l2          ; 0x17e0
@..loc_NQLH.l1:
    mov al, byte [si + 0x1]          ; 0x17e3
    mov ah, 0x40                     ; 0x17e6
    add ah, ch                       ; 0x17e8
    call io_loc_KRUO                 ; 0x17ea
    jmp near @..loc_NQLH.l2          ; 0x17ed
    db 'PSQWR'
    db 0x1e, 0x56
@..loc_NQLH.l2:
    mov ax, word [cs:cseg_0d41 - IMAGE_BASE] ; 0x17f7
    sub ax, 0x2000                   ; 0x17fb
    je short @..loc_NQLH.l4          ; 0x17fe
    sar ax, 1                        ; 0x1800
    sar ax, 1                        ; 0x1802
    sar ax, 1                        ; 0x1804
    sar ax, 1                        ; 0x1806
    sar ax, 1                        ; 0x1808
    mov cx, ax                       ; 0x180a
    mov bx, word [cs:cseg_0d43 - IMAGE_BASE] ; 0x180c
    cmp bx, byte 0x0c                ; 0x1811
    jb short @..loc_NQLH.l3          ; 0x1814
    mov bx, 0xa                      ; 0x1816
@..loc_NQLH.l3:
    shl bx, 1                        ; 0x1819
    neg bx                           ; 0x181b
    add bx, strict word 0x193b       ; 0x181d
    jmp bx                           ; 0x1821

    db 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1
    db 0x03, 0xc1, 0x03, 0xc1, 0x03, 0xc1

@..loc_NQLH.l4:
    add ah, byte [cs:cseg_0d3c - IMAGE_BASE] ; 0x1839
    add ax, strict word 8            ; 0x183e
    sar ax, 1                        ; 0x1841
    sar ax, 1                        ; 0x1843
    sar ax, 1                        ; 0x1845
    sar ax, 1                        ; 0x1847
    jge short @..loc_NQLH.l5         ; 0x1849
    xor ax, ax                       ; 0x184b
    jmp near @..loc_NQLH.l6          ; 0x184d
@..loc_NQLH.l5:
    cmp ax, 0x5ff                    ; 0x1850
    jl short @..loc_NQLH.l6          ; 0x1853
    mov ax, 0x5ff                    ; 0x1855
@..loc_NQLH.l6:
    mov di, ax                       ; 0x1858
    shr di, 1                        ; 0x185a
    shr di, 1                        ; 0x185c
    shr di, 1                        ; 0x185e
    shr di, 1                        ; 0x1860
    mov dx, di                       ; 0x1862
    mov bl, byte [cs:di + 0x1809]    ; 0x1864
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
    mov ax, word [cs:di + 0x1629]    ; 0x187e
    mov di, dx                       ; 0x1883
    mov bl, byte [cs:di + 0x17a9]    ; 0x1885
    dec bl                           ; 0x188a
    or ax, ax                        ; 0x188c
    jge short @..loc_NQLH.l7         ; 0x188e
    inc bl                           ; 0x1890
@..loc_NQLH.l7:
    or bl, bl                        ; 0x1892
    jge short @..loc_NQLH.l8         ; 0x1894
    inc bl                           ; 0x1896
    sar ax, 1                        ; 0x1898
@..loc_NQLH.l8:
    push ax                          ; 0x189a
    mov ah, 0xa0                     ; 0x189b
    add ah, byte [cs:cseg_0d40 - IMAGE_BASE] ; 0x189d
    inc ah                           ; 0x18a2
    call io_loc_KRUO                 ; 0x18a4
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
    call io_loc_KRUO                 ; 0x18c0
    pop si                           ; 0x18c3
    pop ds                           ; 0x18c4
    pop dx                           ; 0x18c5
    pop di                           ; 0x18c6
    pop cx                           ; 0x18c7
    pop bx                           ; 0x18c8
    pop ax                           ; 0x18c9
    ret                              ; 0x18ca
