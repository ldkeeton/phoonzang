; auto-generated
aztec_realloc:
    push bp                          ; 0x2eac
    mov bp, sp                       ; 0x2ead
    add sp, byte 0xfc                ; 0x2eaf
    push di                          ; 0x2eb2
    push si                          ; 0x2eb3
    mov si, word [bp + 0x4]          ; 0x2eb4
    mov ax, word [si - 0x0002]       ; 0x2eb7
    and ax, strict word 0xfffe       ; 0x2eba
    mov word [bp - 0x0002], ax       ; 0x2ebd
    sub ax, si                       ; 0x2ec0
    mov word [bp - 0x0004], ax       ; 0x2ec2
    cmp ax, word [bp + 0x6]          ; 0x2ec5
    jbe short @..aztec_realloc.l1    ; 0x2ec8
    mov ax, word [bp + 0x6]          ; 0x2eca
    mov word [bp - 0x0004], ax       ; 0x2ecd
    mov cx, si                       ; 0x2ed0
    add cx, ax                       ; 0x2ed2
    mov word [bp - 0x0002], cx       ; 0x2ed4
@..aztec_realloc.l1:
    push si                          ; 0x2ed7
    call aztec_free                  ; 0x2ed8
    pop cx                           ; 0x2edb
    push word [bp + 0x6]             ; 0x2edc
    call aztec_malloc                ; 0x2edf
    pop cx                           ; 0x2ee2
    mov di, ax                       ; 0x2ee3
    test di, di                      ; 0x2ee5
    je short @..aztec_realloc.l2     ; 0x2ee7
    cmp di, si                       ; 0x2ee9
    je short @..aztec_realloc.l2     ; 0x2eeb
    push word [bp - 0x0004]          ; 0x2eed
    push di                          ; 0x2ef0
    push si                          ; 0x2ef1
    call aztec_movmem                ; 0x2ef2
    add sp, byte 6                   ; 0x2ef5
    cmp si, word [bss_2536]          ; 0x2ef8
    ja short @..aztec_realloc.l2     ; 0x2efc
    mov ax, word [bss_2536]          ; 0x2efe
    cmp ax, word [bp - 0x0002]       ; 0x2f01
    jae short @..aztec_realloc.l2    ; 0x2f04
    mov ax, word [bss_2534]          ; 0x2f06
    mov cx, word [bss_2536]          ; 0x2f09
    sub cx, si                       ; 0x2f0d
    mov bx, cx                       ; 0x2f0f
    mov word [bx + di], ax           ; 0x2f11
@..aztec_realloc.l2:
    mov ax, di                       ; 0x2f13
    pop si                           ; 0x2f15
    pop di                           ; 0x2f16
    mov sp, bp                       ; 0x2f17
    pop bp                           ; 0x2f19
    ret                              ; 0x2f1a
