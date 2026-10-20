; auto-generated
save_area:
    push bp                          ; 0x0c9b
    mov bp, sp                       ; 0x0c9c
    sub sp, byte 0x0a                ; 0x0c9e
    push es                          ; 0x0ca1
    push ds                          ; 0x0ca2
    push di                          ; 0x0ca3
    push si                          ; 0x0ca4
    mov ax, ds                       ; 0x0ca5
    mov es, ax                       ; 0x0ca7
    mov ax, word [bp + 0x10]         ; 0x0ca9
    sub ax, word [bp + 0xc]          ; 0x0cac
    inc ax                           ; 0x0caf
    mov word [bp - 0x0006], ax       ; 0x0cb0
    mov bx, word [bp + 0x12]         ; 0x0cb3
    sub bx, word [bp + 0xe]          ; 0x0cb6
    inc bx                           ; 0x0cb9
    mov word [bp - 0x0004], bx       ; 0x0cba
    mul bx                           ; 0x0cbd
    mov word [bp - 0x0008], ax       ; 0x0cbf
    mov word [bp - 0x000a], dx       ; 0x0cc2
    add ax, strict word 0xc          ; 0x0cc5
    add ax, strict word 0xf          ; 0x0cc8
    mov cl, 4                        ; 0x0ccb
    shr ax, cl                       ; 0x0ccd
    mov bx, ax                       ; 0x0ccf
    mov ah, 0x48                     ; 0x0cd1
    int 0x21 ; DOS allocate memory
    jae short @..save_area.l1        ; 0x0cd5
    jmp near @..save_area.l3         ; 0x0cd7
@..save_area.l1:
    mov es, ax                       ; 0x0cda
    xor di, di                       ; 0x0cdc
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x0cde
    mov ds, ax                       ; 0x0ce2
    mov ax, word [bp + 0xe]          ; 0x0ce4
    mov bx, 0x140                    ; 0x0ce7
    mul bx                           ; 0x0cea
    add ax, word [bp + 0xc]          ; 0x0cec
    mov word [bp - 0x0002], ax       ; 0x0cef
    stosw                            ; 0x0cf2
    xor ax, ax                       ; 0x0cf3
    stosw                            ; 0x0cf5
    mov ax, word [bp - 0x0004]       ; 0x0cf6
    stosw                            ; 0x0cf9
    mov ax, word [bp - 0x0006]       ; 0x0cfa
    stosw                            ; 0x0cfd
    mov ax, word [bp - 0x0008]       ; 0x0cfe
    stosw                            ; 0x0d01
    mov ax, word [bp - 0x000a]       ; 0x0d02
    stosw                            ; 0x0d05
@..save_area.l2:
    mov si, word [bp - 0x0002]       ; 0x0d06
    add word [bp - 0x0002], strict word 0x140 ; 0x0d09
    mov cx, word [bp - 0x0006]       ; 0x0d0e
    rep movsb                        ; 0x0d11
    dec word [bp - 0x0004]           ; 0x0d13
    jne short @..save_area.l2        ; 0x0d16
    mov dx, es                       ; 0x0d18
    xor ax, ax                       ; 0x0d1a
    jmp short @..save_area.l4        ; 0x0d1c
@..save_area.l3:
    mov ax, cs                       ; 0x0d1e
    mov ds, ax                       ; 0x0d20
    mov dx, cseg_0d2e - IMAGE_BASE   ; 0x0d22
    mov ah, 9                        ; 0x0d25
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x0d29
    int 0x21 ; DOS function dispatcher
cseg_0d2e:

    db 0x0d, 0x0a, 0x07
    db 'SAVEAREA out of memory.', 0
    db 0x0a, 0x24, 0x33, 0xd2, 0x8b, 0xc2

@..save_area.l4:
    pop si                           ; 0x0d4f
    pop di                           ; 0x0d50
    pop ds                           ; 0x0d51
    pop es                           ; 0x0d52
    mov sp, bp                       ; 0x0d53
    pop bp                           ; 0x0d55
    ret                              ; 0x0d56
