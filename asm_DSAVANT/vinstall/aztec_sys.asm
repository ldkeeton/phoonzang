aztec_sys:
    push bp                          ; 0x358c
    mov bp, sp                       ; 0x358d
    mov ax, word [bp + 0x4]          ; 0x358f
    test ah, ah                      ; 0x3592
    jne short @..aztec_sys.l1        ; 0x3594
    xchg al, ah                      ; 0x3596
@..aztec_sys.l1:
    cmp ah, 0xa                      ; 0x3598
    jb short @..aztec_sys.l5         ; 0x359b
    push si                          ; 0x359d
    push es                          ; 0x359e
    cmp ah, 0x47                     ; 0x359f
    jne short @..aztec_sys.l2        ; 0x35a2
    mov dx, word [bp + 0x8]          ; 0x35a4
    mov si, word [bp + 0x6]          ; 0x35a7
    jmp short @..aztec_sys.l3        ; 0x35aa
@..aztec_sys.l2:
    mov cx, word [bp + 0x8]          ; 0x35ac
    mov dx, word [bp + 0x6]          ; 0x35af
@..aztec_sys.l3:
    int 0x21 ; DOS function dispatcher
    mov dx, es                       ; 0x35b4
    pop es                           ; 0x35b6
    jae short @..aztec_sys.l4        ; 0x35b7
    mov word [data_24d6], ax         ; 0x35b9
    mov ax, 0xffff                   ; 0x35bc
    mov dx, ax                       ; 0x35bf
@..aztec_sys.l4:
    pop si                           ; 0x35c1
    pop bp                           ; 0x35c2
    ret                              ; 0x35c3
@..aztec_sys.l5:
    mov dx, word [bp + 0x6]          ; 0x35c4
    int 0x21 ; DOS function dispatcher
    and ax, 0xff                     ; 0x35c9
    pop bp                           ; 0x35cc
    ret                              ; 0x35cd
    times 4 db 0
