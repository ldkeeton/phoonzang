; auto-generated
aztec_newstream:
    push si                          ; 0x2e45
    mov si, Cbuffs                   ; 0x2e46
@..aztec_newstream.l1:
    cmp byte [si + 0x6], 0           ; 0x2e49
    je short @..aztec_newstream.l4   ; 0x2e4d
    add si, byte 0x0d                ; 0x2e4f
    cmp si, Cbuffs + 0x104           ; 0x2e52
    jb short @..aztec_newstream.l3   ; 0x2e56
    mov ax, 0                        ; 0x2e58
@..aztec_newstream.l2:
    pop si                           ; 0x2e5b
    ret                              ; 0x2e5c
@..aztec_newstream.l3:
    jmp short @..aztec_newstream.l1  ; 0x2e5d
@..aztec_newstream.l4:
    mov ax, si                       ; 0x2e5f
    jmp short @..aztec_newstream.l2  ; 0x2e61
aztec_getbuff:
    push bp                          ; 0x2e63
    mov bp, sp                       ; 0x2e64
    add sp, byte 0xfe                ; 0x2e66
    push si                          ; 0x2e69
    mov si, word [bp + 0x4]          ; 0x2e6a
    mov al, byte [si + 0x7]          ; 0x2e6d
    cbw                              ; 0x2e70
    push ax                          ; 0x2e71
    call aztec_isatty                ; 0x2e72
    pop cx                           ; 0x2e75
    test ax, ax                      ; 0x2e76
    je short @..aztec_getbuff.l3     ; 0x2e78
@..aztec_getbuff.l1:
    mov word [si + 0x9], 1           ; 0x2e7a
    mov ax, si                       ; 0x2e7f
    add ax, strict word 8            ; 0x2e81
    mov word [si + 0x4], ax          ; 0x2e84
@..aztec_getbuff.l2:
    pop si                           ; 0x2e87
    mov sp, bp                       ; 0x2e88
    pop bp                           ; 0x2e8a
    ret                              ; 0x2e8b
@..aztec_getbuff.l3:
    mov ax, 0x400                    ; 0x2e8c
    push ax                          ; 0x2e8f
    call aztec_malloc                ; 0x2e90
    pop cx                           ; 0x2e93
    mov word [bp - 0x0002], ax       ; 0x2e94
    test ax, ax                      ; 0x2e97
    je short @..aztec_getbuff.l1     ; 0x2e99
    mov word [si + 0x9], 0x400       ; 0x2e9b
    or byte [si + 0x6], 2            ; 0x2ea0
    mov ax, word [bp - 0x0002]       ; 0x2ea4
    mov word [si + 0x4], ax          ; 0x2ea7
    jmp short @..aztec_getbuff.l2    ; 0x2eaa
