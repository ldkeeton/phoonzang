api_idx_0072:
    mov ax, 0xff8e                   ; 0x1faf
    call ds_dispatch_f40b            ; 0x1fb2
    mov word [bp - 0x000e], 0        ; 0x1fb5
    mov ax, word [data_5218]         ; 0x1fba
    mov word [bp - 0x0010], ax       ; 0x1fbd
    cmp byte [data_5987], 5          ; 0x1fc0
    jne short @..api_idx_0072.l1     ; 0x1fc5
    cmp ax, strict word 0            ; 0x1fc7
    jle short @..api_idx_0072.l1     ; 0x1fca
    inc ax                           ; 0x1fcc
    inc ax                           ; 0x1fcd
    jmp short @..api_idx_0072.l2     ; 0x1fce
@..api_idx_0072.l1:
    mov ax, word [bp - 0x0010]       ; 0x1fd0
@..api_idx_0072.l2:
    mov word [bp - 0x0010], ax       ; 0x1fd3
    mov ax, 0                        ; 0x1fd6
    push ax                          ; 0x1fd9
    call ds_dispatch_ef14            ; 0x1fda
    pop cx                           ; 0x1fdd
    lea ax, word [bp - 0x005e]       ; 0x1fde
    push ax                          ; 0x1fe1
    mov ax, 0x58c                    ; 0x1fe2
    push ax                          ; 0x1fe5
    call ds_dispatch_b53b            ; 0x1fe6
    add sp, byte 4                   ; 0x1fe9
    lea ax, word [bp - 0x0072]       ; 0x1fec
    push ax                          ; 0x1fef
    mov ax, 0x58d                    ; 0x1ff0
    push ax                          ; 0x1ff3
    call ds_dispatch_b53b            ; 0x1ff4
    add sp, byte 4                   ; 0x1ff7
    mov ax, 0x90c2                   ; 0x1ffa
    push ax                          ; 0x1ffd
    lea ax, word [bp - 0x0036]       ; 0x1ffe
    push ax                          ; 0x2001
    call ds_dispatch_f364            ; 0x2002
    add sp, byte 4                   ; 0x2005
    mov ax, 0x593a                   ; 0x2008
    push ax                          ; 0x200b
    lea ax, word [bp - 0x004a]       ; 0x200c
    push ax                          ; 0x200f
    call ds_dispatch_f364            ; 0x2010
    add sp, byte 4                   ; 0x2013
    mov word [bp - 0x0012], 1        ; 0x2016
    lea ax, word [bp - 0x0036]       ; 0x201b
    push ax                          ; 0x201e
    lea ax, word [bp - 0x004a]       ; 0x201f
    push ax                          ; 0x2022
    mov ax, 1                        ; 0x2023
    push ax                          ; 0x2026
    push ax                          ; 0x2027
    mov ax, 0                        ; 0x2028
    push ax                          ; 0x202b
    mov ax, 0x587                    ; 0x202c
    push ax                          ; 0x202f
    call api_idx_0028                ; 0x2030
    add sp, byte 0x0c                ; 0x2033
    cmp ax, strict word 2            ; 0x2036
    jne short @..api_idx_0072.l3     ; 0x2039
    mov ax, 0xffff                   ; 0x203b
    ret                              ; 0x203e
