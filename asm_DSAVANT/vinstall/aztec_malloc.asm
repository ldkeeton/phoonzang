aztec_malloc:
    push bp                          ; 0x2f1b
    mov bp, sp                       ; 0x2f1c
    add sp, byte 0xfa                ; 0x2f1e
    push di                          ; 0x2f21
    push si                          ; 0x2f22
    mov ax, word [bp + 0x4]          ; 0x2f23
    inc ax                           ; 0x2f26
    inc ax                           ; 0x2f27
    inc ax                           ; 0x2f28
    shr ax, 1                        ; 0x2f29
    shl ax, 1                        ; 0x2f2b
    mov word [bp + 0x4], ax          ; 0x2f2d
    cmp word [bss_2536], byte 0      ; 0x2f30
    jne short @..aztec_malloc.l1     ; 0x2f35
    mov word [bss_2538], 0x2538      ; 0x2f37
    or word [bss_2538], 1            ; 0x2f3d
    mov word [bss_2536], 0x2538      ; 0x2f43
@..aztec_malloc.l1:
    mov word [bp - 0x0006], 0        ; 0x2f49
    mov si, word [bss_2536]          ; 0x2f4e
    mov word [bp - 0x0002], si       ; 0x2f52
@..aztec_malloc.l2:
    cmp si, word [dseg_244e]         ; 0x2f55
    jne short @..aztec_malloc.l5     ; 0x2f59
    inc word [bp - 0x0006]           ; 0x2f5b
    mov ax, word [bp - 0x0006]       ; 0x2f5e
    cmp ax, strict word 1            ; 0x2f61
    jle short @..aztec_malloc.l5     ; 0x2f64
    mov word [bp - 0x0004], 0x400    ; 0x2f66
    push word [bp - 0x0004]          ; 0x2f6b
    call aztec_sbrk                  ; 0x2f6e
    pop cx                           ; 0x2f71
    mov di, ax                       ; 0x2f72
    mov ax, di                       ; 0x2f74
    cmp ax, strict word 0xffff       ; 0x2f76
    jne short @..aztec_malloc.l3     ; 0x2f79
    mov ax, 0                        ; 0x2f7b
loc_2f7e:
    pop si                           ; 0x2f7e
    pop di                           ; 0x2f7f
    mov sp, bp                       ; 0x2f80
    pop bp                           ; 0x2f82
    ret                              ; 0x2f83
@..aztec_malloc.l3:
    mov ax, si                       ; 0x2f84
    add ax, strict word 2            ; 0x2f86
    cmp di, ax                       ; 0x2f89
    je short @..aztec_malloc.l4      ; 0x2f8b
    mov word [si], di                ; 0x2f8d
    or word [si], 1                  ; 0x2f8f
    dec word [bp - 0x0004]           ; 0x2f93
    dec word [bp - 0x0004]           ; 0x2f96
    mov si, di                       ; 0x2f99
@..aztec_malloc.l4:
    mov di, si                       ; 0x2f9b
    add di, word [bp - 0x0004]       ; 0x2f9d
    mov word [si], di                ; 0x2fa0
    mov word [di], 0x2538            ; 0x2fa2
    or word [di], 1                  ; 0x2fa6
    mov word [dseg_244e], di         ; 0x2faa
    mov bx, word [bp - 0x0002]       ; 0x2fae
    mov ax, word [bx]                ; 0x2fb1
    and ax, strict word 0xfffe       ; 0x2fb3
    cmp ax, si                       ; 0x2fb6
    jne short @..aztec_malloc.l5     ; 0x2fb8
    mov si, bx                       ; 0x2fba
@..aztec_malloc.l5:
    test word [si], 1                ; 0x2fbc
    jne short @..aztec_malloc.l9     ; 0x2fc0
    mov word [bp - 0x0002], si       ; 0x2fc2
@..aztec_malloc.l6:
    mov ax, word [si]                ; 0x2fc5
    and ax, strict word 0xfffe       ; 0x2fc7
    mov di, ax                       ; 0x2fca
    mov bx, di                       ; 0x2fcc
    test word [bx], 1                ; 0x2fce
    jne short @..aztec_malloc.l7     ; 0x2fd2
    mov ax, word [di]                ; 0x2fd4
    mov word [si], ax                ; 0x2fd6
    jmp short @..aztec_malloc.l6     ; 0x2fd8
@..aztec_malloc.l7:
    sub bx, si                       ; 0x2fda
    mov word [bp - 0x0004], bx       ; 0x2fdc
    cmp bx, word [bp + 0x4]          ; 0x2fdf
    jb short @..aztec_malloc.l9      ; 0x2fe2
    cmp bx, word [bp + 0x4]          ; 0x2fe4
    jbe short @..aztec_malloc.l8     ; 0x2fe7
    mov ax, si                       ; 0x2fe9
    add ax, word [bp + 0x4]          ; 0x2feb
    mov word [si], ax                ; 0x2fee
    mov bx, ax                       ; 0x2ff0
    mov ax, word [bx]                ; 0x2ff2
    mov word [bss_2534], ax          ; 0x2ff4
    mov bx, word [si]                ; 0x2ff7
    mov word [bx], di                ; 0x2ff9
@..aztec_malloc.l8:
    mov ax, word [si]                ; 0x2ffb
    mov word [bss_2536], ax          ; 0x2ffd
    or word [si], 1                  ; 0x3000
    mov ax, si                       ; 0x3004
    add ax, strict word 2            ; 0x3006
    jmp near loc_2f7e                ; 0x3009
@..aztec_malloc.l9:
    mov ax, word [si]                ; 0x300c
    and ax, strict word 0xfffe       ; 0x300e
    mov si, ax                       ; 0x3011
    jmp near @..aztec_malloc.l2      ; 0x3013
leaf_loc_3016:
    jmp near loc_2f7e                ; 0x3016
