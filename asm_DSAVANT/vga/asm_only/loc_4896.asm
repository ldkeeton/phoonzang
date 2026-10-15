; auto-generated
; asm only
loc_4896:
    push bp                          ; 0x4896
    mov bp, sp                       ; 0x4897
    push ds                          ; 0x4899
    push es                          ; 0x489a
    push si                          ; 0x489b
    push di                          ; 0x489c
    mov ax, ds                       ; 0x489d
    mov es, ax                       ; 0x489f
    push word [bp + 0xe]             ; 0x48a1
    push word [bp + 0xc]             ; 0x48a4
    call far [cs:cseg_0116 - IMAGE_BASE] ; 0x48a7
    add sp, byte 4                   ; 0x48ac
    pop di                           ; 0x48af
    pop si                           ; 0x48b0
    pop es                           ; 0x48b1
    pop ds                           ; 0x48b2
    mov sp, bp                       ; 0x48b3
    pop bp                           ; 0x48b5
    ret                              ; 0x48b6
    db 0x00
