; auto-generated
aztec_Croot:
    push bp                          ; 0x4ea7
    mov bp, sp                       ; 0x4ea8
    push di                          ; 0x4eaa
    push si                          ; 0x4eab
    mov si, word [bp + 0x4]          ; 0x4eac
    mov ax, 0                        ; 0x4eaf
    push ax                          ; 0x4eb2
    call aztec_isatty                ; 0x4eb3
    pop cx                           ; 0x4eb6
    mov byte [_ioflg], al            ; 0x4eb7
    mov ax, 1                        ; 0x4eba
    push ax                          ; 0x4ebd
    call aztec_isatty                ; 0x4ebe
    pop cx                           ; 0x4ec1
    mov byte [_ioflg + 0x1], al      ; 0x4ec2
    mov ax, 2                        ; 0x4ec5
    push ax                          ; 0x4ec8
    call aztec_isatty                ; 0x4ec9
    pop cx                           ; 0x4ecc
    mov byte [_ioflg + 0x2], al      ; 0x4ecd
    mov ax, word [bp + 0x6]          ; 0x4ed0
    shl ax, 1                        ; 0x4ed3
    inc ax                           ; 0x4ed5
    inc ax                           ; 0x4ed6
    push ax                          ; 0x4ed7
    call aztec_sbrk                  ; 0x4ed8
    pop cx                           ; 0x4edb
    mov word [bss_0d06], ax          ; 0x4edc
    mov ax, dseg_0c9e                ; 0x4edf
    mov bx, word [bss_0d06]          ; 0x4ee2
    mov word [bx], dseg_0c9e         ; 0x4ee6
    mov ax, word [bp + 0x6]          ; 0x4eea
    mov word [bss_0d04], ax          ; 0x4eed
    shl ax, 1                        ; 0x4ef0
    mov di, word [bss_0d06]          ; 0x4ef2
    add di, ax                       ; 0x4ef6
@..aztec_Croot.l1:
    cmp byte [si], 0x20              ; 0x4ef8
    je short @..aztec_Croot.l2       ; 0x4efb
    cmp byte [si], 9                 ; 0x4efd
    jne short @..aztec_Croot.l3      ; 0x4f00
@..aztec_Croot.l2:
    inc si                           ; 0x4f02
    jmp short @..aztec_Croot.l1      ; 0x4f03
@..aztec_Croot.l3:
    cmp byte [si], 0                 ; 0x4f05
    je short @..aztec_Croot.l8       ; 0x4f08
    mov word [di], si                ; 0x4f0a
    inc di                           ; 0x4f0c
    inc di                           ; 0x4f0d
    inc word [bss_0d04]              ; 0x4f0e
    mov ax, 2                        ; 0x4f12
    push ax                          ; 0x4f15
    call aztec_sbrk                  ; 0x4f16
    pop cx                           ; 0x4f19
    cmp ax, strict word 0xffff       ; 0x4f1a
    jne short @..aztec_Croot.l4      ; 0x4f1d
    mov ax, 0xe                      ; 0x4f1f
    push ax                          ; 0x4f22
    mov ax, dseg_0c9e + 0x1          ; 0x4f23
    push ax                          ; 0x4f26
    mov ax, 2                        ; 0x4f27
    push ax                          ; 0x4f2a
    call aztec_write                 ; 0x4f2b
    add sp, byte 6                   ; 0x4f2e
    mov ax, 0xc8                     ; 0x4f31
    push ax                          ; 0x4f34
    call aztec_impl_exit             ; 0x4f35
    pop cx                           ; 0x4f38
@..aztec_Croot.l4:
    inc si                           ; 0x4f39
    cmp byte [si], 0                 ; 0x4f3a
    je short @..aztec_Croot.l7       ; 0x4f3d
    mov al, byte [si]                ; 0x4f3f
    cmp al, 0x20                     ; 0x4f41
    je short @..aztec_Croot.l5       ; 0x4f43
    cmp al, 9                        ; 0x4f45
    jne short @..aztec_Croot.l6      ; 0x4f47
@..aztec_Croot.l5:
    mov byte [si], 0                 ; 0x4f49
    inc si                           ; 0x4f4c
    jmp short @..aztec_Croot.l7      ; 0x4f4d
@..aztec_Croot.l6:
    jmp short @..aztec_Croot.l4      ; 0x4f4f
@..aztec_Croot.l7:
    jmp short @..aztec_Croot.l1      ; 0x4f51
@..aztec_Croot.l8:
    mov word [di], 0                 ; 0x4f53
    push word [bss_0d06]             ; 0x4f57
    push word [bss_0d04]             ; 0x4f5b
    call main                        ; 0x4f5f
    add sp, byte 4                   ; 0x4f62
    mov ax, 0                        ; 0x4f65
    push ax                          ; 0x4f68
    call aztec_exit                  ; 0x4f69
    pop cx                           ; 0x4f6c
    pop si                           ; 0x4f6d
    pop di                           ; 0x4f6e
    mov sp, bp                       ; 0x4f6f
    pop bp                           ; 0x4f71
    ret                              ; 0x4f72
