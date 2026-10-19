; auto-generated
; asm only
restore_area:
    push bp                          ; 0x0d57
    mov bp, sp                       ; 0x0d58
    sub sp, byte 8                   ; 0x0d5a
    push es                          ; 0x0d5d
    push ds                          ; 0x0d5e
    push di                          ; 0x0d5f
    push si                          ; 0x0d60
    mov ax, ds                       ; 0x0d61
    mov es, ax                       ; 0x0d63
    mov ax, word [bp + 0xe]          ; 0x0d65
    mov ds, ax                       ; 0x0d68
    mov si, word [bp + 0xc]          ; 0x0d6a
    or ax, si                        ; 0x0d6d
    je short @..restore_area.l2      ; 0x0d6f
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x0d71
    mov es, ax                       ; 0x0d75
    lodsw                            ; 0x0d77
    mov word [bp - 0x0002], ax       ; 0x0d78
    add si, byte 2                   ; 0x0d7b
    lodsw                            ; 0x0d7e
    mov word [bp - 0x0004], ax       ; 0x0d7f
    lodsw                            ; 0x0d82
    mov word [bp - 0x0006], ax       ; 0x0d83
    add si, byte 4                   ; 0x0d86
@..restore_area.l1:
    mov di, word [bp - 0x0002]       ; 0x0d89
    add word [bp - 0x0002], strict word 0x140 ; 0x0d8c
    mov cx, word [bp - 0x0006]       ; 0x0d91
    rep movsb                        ; 0x0d94
    dec word [bp - 0x0004]           ; 0x0d96
    jne short @..restore_area.l1     ; 0x0d99
    mov ax, word [bp + 0x10]         ; 0x0d9b
    or ax, ax                        ; 0x0d9e
    je short @..restore_area.l3      ; 0x0da0
    mov ax, ds                       ; 0x0da2
    or ax, ax                        ; 0x0da4
    je short @..restore_area.l3      ; 0x0da6
    mov es, ax                       ; 0x0da8
    mov ah, 0x49                     ; 0x0daa
    int 0x21 ; DOS free memory
    jmp short @..restore_area.l3     ; 0x0dae
@..restore_area.l2:
    mov ax, cs                       ; 0x0db0
    mov ds, ax                       ; 0x0db2
    mov dx, 0xec0                    ; 0x0db4
    mov ah, 9                        ; 0x0db7
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0dbb
    int 0x21 ; DOS function dispatcher

    db 0x0d, 0x0a, 0x07
    db 'RESTOREAREA called with NULL pointer.', 0
    db 0x0a, 0x24

@..restore_area.l3:
    pop si                           ; 0x0deb
    pop di                           ; 0x0dec
    pop ds                           ; 0x0ded
    pop es                           ; 0x0dee
    mov sp, bp                       ; 0x0def
    pop bp                           ; 0x0df1
    ret                              ; 0x0df2
