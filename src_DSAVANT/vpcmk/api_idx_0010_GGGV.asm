; auto-generated
api_idx_0010_GGGV:
    mov ax, 0xfff0                   ; 0x18b5
    call aztec_csav                  ; 0x18b8
    lea ax, word [bp - 0xc]          ; 0x18bb
    push ax                          ; 0x18be
    lea ax, word [bp - 0xa]          ; 0x18bf
    push ax                          ; 0x18c2
    mov ax, 0                        ; 0x18c3
    push ax                          ; 0x18c6
    mov ax, 5                        ; 0x18c7
    push ax                          ; 0x18ca
    call get_font_glyph              ; 0x18cb
    add sp, byte 8                   ; 0x18ce
    mov word [bp - 6], dx            ; 0x18d1
    mov word [bp - 8], ax            ; 0x18d4
    mov ax, word [bp - 0xa]          ; 0x18d7
    mov word [bp - 0xe], ax          ; 0x18da
    mov word [bp - 4], 0             ; 0x18dd
    jmp near .forward5               ; 0x18e2
.back1:
    mov word [bp - 2], 0             ; 0x18e5
    jmp near .forward3               ; 0x18ea
.back2:
    les bx, word [bp - 8]            ; 0x18ed
    mov si, word [bp - 0xe]          ; 0x18f0
    mov al, byte [es:bx + si]        ; 0x18f3
    sub ah, ah                       ; 0x18f6
    mov word [bp - 0x10], ax         ; 0x18f8
    cmp ax, 0xff                     ; 0x18fb
    jne short .forward1              ; 0x18fe
    jmp near .forward2               ; 0x1900
.forward1:
    mov ax, 0xffff                   ; 0x1903
    push ax                          ; 0x1906
    push word [bp - 0x10]            ; 0x1907
    call clamp_value_to_range        ; 0x190a
    add sp, byte 4                   ; 0x190d
    push ax                          ; 0x1910
    mov ax, word [bp - 4]            ; 0x1911
    shl ax, 1                        ; 0x1914
    add ax, word [bp + 8]            ; 0x1916
    push ax                          ; 0x1919
    mov ax, word [bp - 2]            ; 0x191a
    shl ax, 1                        ; 0x191d
    add ax, word [bp + 6]            ; 0x191f
    push ax                          ; 0x1922
    call gfx_put_pixel               ; 0x1923
    add sp, byte 6                   ; 0x1926
    push word [bp - 0x10]            ; 0x1929
    mov ax, word [bp - 4]            ; 0x192c
    shl ax, 1                        ; 0x192f
    add ax, word [bp + 8]            ; 0x1931
    push ax                          ; 0x1934
    mov ax, word [bp - 2]            ; 0x1935
    shl ax, 1                        ; 0x1938
    add ax, word [bp + 6]            ; 0x193a
    inc ax                           ; 0x193d
    push ax                          ; 0x193e
    call gfx_put_pixel               ; 0x193f
    add sp, byte 6                   ; 0x1942
    push word [bp - 0x10]            ; 0x1945
    mov ax, word [bp - 4]            ; 0x1948
    shl ax, 1                        ; 0x194b
    add ax, word [bp + 8]            ; 0x194d
    inc ax                           ; 0x1950
    push ax                          ; 0x1951
    mov ax, word [bp - 2]            ; 0x1952
    shl ax, 1                        ; 0x1955
    add ax, word [bp + 6]            ; 0x1957
    push ax                          ; 0x195a
    call gfx_put_pixel               ; 0x195b
    add sp, byte 6                   ; 0x195e
    mov ax, 1                        ; 0x1961
    push ax                          ; 0x1964
    push word [bp - 0x10]            ; 0x1965
    call clamp_value_to_range        ; 0x1968
    add sp, byte 4                   ; 0x196b
    push ax                          ; 0x196e
    mov ax, word [bp - 4]            ; 0x196f
    shl ax, 1                        ; 0x1972
    add ax, word [bp + 8]            ; 0x1974
    inc ax                           ; 0x1977
    push ax                          ; 0x1978
    mov ax, word [bp - 2]            ; 0x1979
    shl ax, 1                        ; 0x197c
    add ax, word [bp + 6]            ; 0x197e
    inc ax                           ; 0x1981
    push ax                          ; 0x1982
    call gfx_put_pixel               ; 0x1983
    add sp, byte 6                   ; 0x1986
.forward2:
    inc word [bp - 0xe]              ; 0x1989
    inc word [bp - 2]                ; 0x198c
.forward3:
    mov ax, word [bp - 2]            ; 0x198f
    cmp ax, word [bp - 0xa]          ; 0x1992
    jge short .forward4              ; 0x1995
    jmp near .back2                  ; 0x1997
.forward4:
    inc word [bp - 4]                ; 0x199a
.forward5:
    mov ax, word [bp - 0xc]          ; 0x199d
    dec ax                           ; 0x19a0
    dec ax                           ; 0x19a1
    cmp ax, word [bp - 4]            ; 0x19a2
    jle short .return1               ; 0x19a5
    jmp near .back1                  ; 0x19a7
.return1:
    ret                              ; 0x19aa
