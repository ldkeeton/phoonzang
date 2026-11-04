; auto-generated
aztec_fopen:
    push bp                          ; 0x2bda
    mov bp, sp                       ; 0x2bdb
    push si                          ; 0x2bdd
    call aztec_newstream             ; 0x2bde
    mov si, ax                       ; 0x2be1
    test si, si                      ; 0x2be3
    jne short .forward1              ; 0x2be5
    mov ax, 0                        ; 0x2be7
.back1:
    pop si                           ; 0x2bea
    mov sp, bp                       ; 0x2beb
    pop bp                           ; 0x2bed
    ret                              ; 0x2bee
.forward1:
    push si                          ; 0x2bef
    push word [bp + 6]               ; 0x2bf0
    push word [bp + 4]               ; 0x2bf3
    call aztec_freopen               ; 0x2bf6
    add sp, byte 6                   ; 0x2bf9
    jmp short .back1                 ; 0x2bfc
