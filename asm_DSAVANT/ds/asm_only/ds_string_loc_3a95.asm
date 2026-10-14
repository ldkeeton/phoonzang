; auto-generated
; asm only
ds_string_loc_3a95:
    push bp                          ; 0x3a95
    mov bp, sp                       ; 0x3a96
    cld                              ; 0x3a98
    sub sp, byte 4                   ; 0x3a99
    push si                          ; 0x3a9c
    push es                          ; 0x3a9d
    push ds                          ; 0x3a9e
    mov ax, ds                       ; 0x3a9f
    mov es, ax                       ; 0x3aa1
    mov si, word [bp + 0x4]          ; 0x3aa3
    mov word [bp - 0x0002], si       ; 0x3aa6
@..ds_string_loc_3a95.l1:
    mov si, word [bp - 0x0002]       ; 0x3aa9
    add word [bp - 0x0002], byte 1   ; 0x3aac
    xor ax, ax                       ; 0x3ab0
    lodsb                            ; 0x3ab2
    or al, al                        ; 0x3ab3
    je short @..ds_string_loc_3a95.l2 ; 0x3ab5
    push word [bp + 0x6]             ; 0x3ab7
    push ax                          ; 0x3aba
    call ds_loc_3a77                 ; 0x3abb
    add sp, byte 4                   ; 0x3abe
    jmp short @..ds_string_loc_3a95.l1 ; 0x3ac1
@..ds_string_loc_3a95.l2:
    pop ds                           ; 0x3ac3
    pop es                           ; 0x3ac4
    pop si                           ; 0x3ac5
    mov sp, bp                       ; 0x3ac6
    pop bp                           ; 0x3ac8
    ret                              ; 0x3ac9
ds_loc_3aca:
    push bp                          ; 0x3aca
    mov bp, sp                       ; 0x3acb
    cld                              ; 0x3acd
    sub sp, byte 2                   ; 0x3ace
    push es                          ; 0x3ad1
    push si                          ; 0x3ad2
    mov ax, ds                       ; 0x3ad3
    mov es, ax                       ; 0x3ad5
    mov cx, 0xffff                   ; 0x3ad7
    mov ax, word [bp + 0x6]          ; 0x3ada
    mov bx, 0x364a                   ; 0x3add
    shl ax, 1                        ; 0x3ae0
    add bx, ax                       ; 0x3ae2
    mov ax, word [cs:bx]             ; 0x3ae4
    or ax, ax                        ; 0x3ae7
    je short @..ds_loc_3aca.l2       ; 0x3ae9
    mov es, ax                       ; 0x3aeb
    xor bx, bx                       ; 0x3aed
    mov al, byte [es:bx + 0x7]       ; 0x3aef
    cbw                              ; 0x3af3
    mov word [bp - 0x0002], ax       ; 0x3af4
    xor cx, cx                       ; 0x3af7
    mov si, word [bp + 0x4]          ; 0x3af9
@..ds_loc_3aca.l1:
    mov bx, 0x10                     ; 0x3afc
    xor ah, ah                       ; 0x3aff
    mov al, byte [si]                ; 0x3b01
    or al, al                        ; 0x3b03
    je short @..ds_loc_3aca.l2       ; 0x3b05
    shl ax, 1                        ; 0x3b07
    add bx, ax                       ; 0x3b09
    xor ax, ax                       ; 0x3b0b
    mov al, byte [es:bx + 0x1]       ; 0x3b0d
    add cx, ax                       ; 0x3b11
    add cx, word [bp - 0x0002]       ; 0x3b13
    inc si                           ; 0x3b16
    jmp short @..ds_loc_3aca.l1      ; 0x3b17
@..ds_loc_3aca.l2:
    mov ax, cx                       ; 0x3b19
    pop si                           ; 0x3b1b
    pop es                           ; 0x3b1c
    mov sp, bp                       ; 0x3b1d
    pop bp                           ; 0x3b1f
    ret                              ; 0x3b20
