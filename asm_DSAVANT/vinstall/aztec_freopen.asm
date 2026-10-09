aztec_freopen:
    push si                          ; 0x2bef
    push word [bp + 0x6]             ; 0x2bf0
    push word [bp + 0x4]             ; 0x2bf3
    call loc_2bfe                    ; 0x2bf6
    add sp, byte 6                   ; 0x2bf9
    jmp short loc_2bea               ; 0x2bfc
loc_2bfe:
    push bp                          ; 0x2bfe
    mov bp, sp                       ; 0x2bff
    push di                          ; 0x2c01
    push si                          ; 0x2c02
    push word [bp + 0x8]             ; 0x2c03
    call loc_2d0b                    ; 0x2c06
    pop cx                           ; 0x2c09
    mov si, 0x231c                   ; 0x2c0a
@..local.l45:
    cmp byte [si], 0                 ; 0x2c0d
    jne short @..local.l47           ; 0x2c10
    mov word [data_24d6], 1          ; 0x2c12
    mov ax, 0                        ; 0x2c18
@..local.l46:
    pop si                           ; 0x2c1b
    pop di                           ; 0x2c1c
    mov sp, bp                       ; 0x2c1d
    pop bp                           ; 0x2c1f
    ret                              ; 0x2c20
