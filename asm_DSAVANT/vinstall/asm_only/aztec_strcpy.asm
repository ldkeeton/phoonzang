; auto-generated
; asm only
aztec_strcpy:
    push bp                          ; 0x2add
    mov bp, sp                       ; 0x2ade
    cld                              ; 0x2ae0
    push si                          ; 0x2ae1
    push di                          ; 0x2ae2
    mov di, ds                       ; 0x2ae3
    mov es, di                       ; 0x2ae5
    mov di, word [bp + 0x6]          ; 0x2ae7
    mov cx, 0xffff                   ; 0x2aea
    mov al, 0                        ; 0x2aed
    repne scasb                      ; 0x2aef
    not cx ; real length of string ; 0x2af1
    mov di, word [bp + 0x4]          ; 0x2af3
    mov si, word [bp + 0x6]          ; 0x2af6
    shr cx, 1                        ; 0x2af9
    jcxz @..aztec_strcpy.nowords     ; 0x2afb
    rep movsw                        ; 0x2afd
@..aztec_strcpy.nowords:
    jae short @..aztec_strcpy.nobyte ; 0x2aff
    movsb                            ; 0x2b01
@..aztec_strcpy.nobyte:
    pop di                           ; 0x2b02
    pop si                           ; 0x2b03
    mov ax, word [bp + 0x4]          ; 0x2b04
    pop bp                           ; 0x2b07
    ret                              ; 0x2b08
