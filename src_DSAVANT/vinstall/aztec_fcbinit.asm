; auto-generated
aztec_fcbinit:
    push bp                          ; 0x29d9
    mov bp, sp                       ; 0x29da
    push di                          ; 0x29dc
    push si                          ; 0x29dd
    mov di, ds                       ; 0x29de
    mov es, di                       ; 0x29e0
    mov si, word [bp + 4]            ; 0x29e2
    mov di, word [bp + 6]            ; 0x29e5
    mov ax, 0x2900                   ; 0x29e8
    int 0x21 ; DOS function dispatcher
    and ax, 0xff                     ; 0x29ed
    cmp byte [es:di + 1], 0x20       ; 0x29f0
    jne short @..aztec_fcbinit.nameok ; 0x29f5
    mov ax, 0xffff                   ; 0x29f7
@..aztec_fcbinit.nameok:
    pop si                           ; 0x29fa
    pop di                           ; 0x29fb
    pop bp                           ; 0x29fc
    ret                              ; 0x29fd
