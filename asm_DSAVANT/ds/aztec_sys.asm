aztec_sys:
    push bp                          ; 0x4cf4
    mov bp, sp                       ; 0x4cf5
    mov ax, word [bp + 0x4]          ; 0x4cf7
    test ah, ah                      ; 0x4cfa
    jne short @..aztec_sys.l1        ; 0x4cfc
    xchg al, ah                      ; 0x4cfe
@..aztec_sys.l1:
    cmp ah, 0xa                      ; 0x4d00
    jb short @..aztec_sys.l5         ; 0x4d03
    push si                          ; 0x4d05
    push es                          ; 0x4d06
    cmp ah, 0x47                     ; 0x4d07
    jne short @..aztec_sys.l2        ; 0x4d0a
    mov dx, word [bp + 0x8]          ; 0x4d0c
    mov si, word [bp + 0x6]          ; 0x4d0f
    jmp short @..aztec_sys.l3        ; 0x4d12
@..aztec_sys.l2:
    mov cx, word [bp + 0x8]          ; 0x4d14
    mov dx, word [bp + 0x6]          ; 0x4d17
@..aztec_sys.l3:
    int 0x21 ; DOS function dispatcher
    mov dx, es                       ; 0x4d1c
    pop es                           ; 0x4d1e
    jae short @..aztec_sys.l4        ; 0x4d1f
    mov word [dseg_0c72], ax         ; 0x4d21
    mov ax, 0xffff                   ; 0x4d24
    mov dx, ax                       ; 0x4d27
@..aztec_sys.l4:
    pop si                           ; 0x4d29
    pop bp                           ; 0x4d2a
    ret                              ; 0x4d2b
@..aztec_sys.l5:
    mov dx, word [bp + 0x6]          ; 0x4d2c
    int 0x21 ; DOS function dispatcher
    and ax, 0xff                     ; 0x4d31
    pop bp                           ; 0x4d34
    ret                              ; 0x4d35
    db 0x00, 0x00
cseg_4d38:
    db 0x00, 0x00
