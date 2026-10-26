; auto-generated
measure_text_width:
    push bp                          ; 0x3aca
    mov bp, sp                       ; 0x3acb
    cld                              ; 0x3acd
    sub sp, byte 2                   ; 0x3ace
    push es                          ; 0x3ad1
    push si                          ; 0x3ad2
    mov ax, ds                       ; 0x3ad3
    mov es, ax                       ; 0x3ad5
    mov cx, 0xffff                   ; 0x3ad7
    mov ax, word [bp + 6]            ; 0x3ada
    mov bx, font_seg_table - IMAGE_BASE ; 0x3add
    shl ax, 1                        ; 0x3ae0
    add bx, ax                       ; 0x3ae2
    mov ax, word [cs:bx]             ; 0x3ae4
    or ax, ax                        ; 0x3ae7
    je short .forward1               ; 0x3ae9
    mov es, ax                       ; 0x3aeb
    xor bx, bx                       ; 0x3aed
    mov al, byte [es:bx + 7]         ; 0x3aef
    cbw                              ; 0x3af3
    mov word [bp - 2], ax            ; 0x3af4
    xor cx, cx                       ; 0x3af7
    mov si, word [bp + 4]            ; 0x3af9
.back1:
    mov bx, 0x10                     ; 0x3afc
    xor ah, ah                       ; 0x3aff
    mov al, byte [si]                ; 0x3b01
    or al, al                        ; 0x3b03
    je short .forward1               ; 0x3b05
    shl ax, 1                        ; 0x3b07
    add bx, ax                       ; 0x3b09
    xor ax, ax                       ; 0x3b0b
    mov al, byte [es:bx + 1]         ; 0x3b0d
    add cx, ax                       ; 0x3b11
    add cx, word [bp - 2]            ; 0x3b13
    inc si                           ; 0x3b16
    jmp short .back1                 ; 0x3b17
.forward1:
    mov ax, cx                       ; 0x3b19
    pop si                           ; 0x3b1b
    pop es                           ; 0x3b1c
    mov sp, bp                       ; 0x3b1d
    pop bp                           ; 0x3b1f
    ret                              ; 0x3b20
