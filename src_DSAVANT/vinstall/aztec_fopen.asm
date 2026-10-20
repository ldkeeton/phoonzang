; auto-generated
aztec_fopen:
    push bp                          ; 0x2bda
    mov bp, sp                       ; 0x2bdb
    push si                          ; 0x2bdd
    call aztec_newstream             ; 0x2bde
    mov si, ax                       ; 0x2be1
    test si, si                      ; 0x2be3
    jne short @..aztec_fopen.l2      ; 0x2be5
    mov ax, 0                        ; 0x2be7
@..aztec_fopen.l1:
    pop si                           ; 0x2bea
    mov sp, bp                       ; 0x2beb
    pop bp                           ; 0x2bed
    ret                              ; 0x2bee
@..aztec_fopen.l2:
    push si                          ; 0x2bef
    push word [bp + 0x6]             ; 0x2bf0
    push word [bp + 0x4]             ; 0x2bf3
    call aztec_freopen               ; 0x2bf6
    add sp, byte 6                   ; 0x2bf9
    jmp short @..aztec_fopen.l1      ; 0x2bfc
aztec_freopen:
    push bp                          ; 0x2bfe
    mov bp, sp                       ; 0x2bff
    push di                          ; 0x2c01
    push si                          ; 0x2c02
    push word [bp + 0x8]             ; 0x2c03
    call aztec_fclose                ; 0x2c06
    pop cx                           ; 0x2c09
    mov si, modes                    ; 0x2c0a
@..aztec_freopen.l1:
    cmp byte [si], 0                 ; 0x2c0d
    jne short @..aztec_freopen.l3    ; 0x2c10
    mov word [errno], 1              ; 0x2c12
    mov ax, 0                        ; 0x2c18
@..aztec_freopen.l2:
    pop si                           ; 0x2c1b
    pop di                           ; 0x2c1c
    mov sp, bp                       ; 0x2c1d
    pop bp                           ; 0x2c1f
    ret                              ; 0x2c20
@..aztec_freopen.l3:
    push word [bp + 0x6]             ; 0x2c21
    push si                          ; 0x2c24
    call aztec_strcmp                ; 0x2c25
    add sp, byte 4                   ; 0x2c28
    test ax, ax                      ; 0x2c2b
    je short @..aztec_freopen.l4     ; 0x2c2d
    add si, byte 5                   ; 0x2c2f
    jmp short @..aztec_freopen.l1    ; 0x2c32
@..aztec_freopen.l4:
    push word [si + 0x3]             ; 0x2c34
    push word [bp + 0x4]             ; 0x2c37
    call aztec_open                  ; 0x2c3a
    add sp, byte 4                   ; 0x2c3d
    mov di, ax                       ; 0x2c40
    mov ax, di                       ; 0x2c42
    cmp ax, strict word 0xffff       ; 0x2c44
    jne short @..aztec_freopen.l5    ; 0x2c47
    mov ax, 0                        ; 0x2c49
    jmp short @..aztec_freopen.l2    ; 0x2c4c
@..aztec_freopen.l5:
    mov ax, di                       ; 0x2c4e
    mov bx, word [bp + 0x8]          ; 0x2c50
    mov byte [bx + 0x7], al          ; 0x2c53
    mov bx, word [bp + 0x8]          ; 0x2c56
    mov byte [bx + 0x6], 1           ; 0x2c59
    mov ax, word [bp + 0x8]          ; 0x2c5d
    jmp short @..aztec_freopen.l2    ; 0x2c60
