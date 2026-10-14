; auto-generated
; asm only
bios_mouse_loc_190f:
    push bp                          ; 0x190f
    mov bp, sp                       ; 0x1910
    sub sp, byte 4                   ; 0x1912
    push ds                          ; 0x1915
    push si                          ; 0x1916
    push es                          ; 0x1917
    mov ax, ds                       ; 0x1918
    mov es, ax                       ; 0x191a
    mov word [bp - 0x0004], 1        ; 0x191c
    xor ax, ax                       ; 0x1921
    cmp byte [cs:cseg_0228 - IMAGE_BASE], 0 ; 0x1923
    je short @..bios_mouse_loc_190f.l6 ; 0x1929
    mov bx, word [cs:cseg_2b02 - IMAGE_BASE] ; 0x192b
    or bx, bx                        ; 0x1930
    je short @..bios_mouse_loc_190f.l1 ; 0x1932
    mov word [cs:cseg_2b02 - IMAGE_BASE], 0 ; 0x1934
    mov word [bp - 0x0002], bx       ; 0x193b
    mov cx, word [cs:cseg_2b04 - IMAGE_BASE] ; 0x193e
    mov dx, word [cs:cseg_2b06 - IMAGE_BASE] ; 0x1943
    jmp short @..bios_mouse_loc_190f.l2 ; 0x1948
@..bios_mouse_loc_190f.l1:
    mov ax, 3                        ; 0x194a
    int 0x33 ; BIOS mouse
    xor bx, bx                       ; 0x194f
    mov word [bp - 0x0002], bx       ; 0x1951
    shr cx, 1                        ; 0x1954
@..bios_mouse_loc_190f.l2:
    mov bx, cx                       ; 0x1956
    mov si, word [bp + 0xc]          ; 0x1958
@..bios_mouse_loc_190f.l3:
    cmp word [si], byte 0xff         ; 0x195b
    je short @..bios_mouse_loc_190f.l5 ; 0x195e
    cmp bx, word [si]                ; 0x1960
    jb short @..bios_mouse_loc_190f.l4 ; 0x1962
    cmp dx, word [si + 0x2]          ; 0x1964
    jb short @..bios_mouse_loc_190f.l4 ; 0x1967
    cmp word [si + 0x4], bx          ; 0x1969
    jb short @..bios_mouse_loc_190f.l4 ; 0x196c
    cmp word [si + 0x6], dx          ; 0x196e
    jb short @..bios_mouse_loc_190f.l4 ; 0x1971
    mov ax, word [bp - 0x0004]       ; 0x1973
    mov bx, word [bp - 0x0002]       ; 0x1976
    or bx, bx                        ; 0x1979
    je short @..bios_mouse_loc_190f.l6 ; 0x197b
    neg ax                           ; 0x197d
    jmp short @..bios_mouse_loc_190f.l6 ; 0x197f
@..bios_mouse_loc_190f.l4:
    add si, byte 8                   ; 0x1981
    inc word [bp - 0x0004]           ; 0x1984
    jmp short @..bios_mouse_loc_190f.l3 ; 0x1987
@..bios_mouse_loc_190f.l5:
    xor ax, ax                       ; 0x1989
@..bios_mouse_loc_190f.l6:
    pop es                           ; 0x198b
    pop si                           ; 0x198c
    pop ds                           ; 0x198d
    mov sp, bp                       ; 0x198e
    pop bp                           ; 0x1990
    ret                              ; 0x1991
