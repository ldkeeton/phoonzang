; auto-generated
; asm only
load_sound:
    push bp                          ; 0x4156
    mov bp, sp                       ; 0x4157
    sub sp, byte 0x0a                ; 0x4159
    push ds                          ; 0x415c
    push es                          ; 0x415d
    push si                          ; 0x415e
    push di                          ; 0x415f
    mov ax, ds                       ; 0x4160
    mov es, ax                       ; 0x4162
    mov bx, word [bp + 0xe]          ; 0x4164
    shl bx, 1                        ; 0x4167
    shl bx, 1                        ; 0x4169
    add bx, data_4202                ; 0x416b
    mov word [bp - 0x0002], bx       ; 0x416f
    mov ax, word [cs:bx]             ; 0x4172
    or ax, ax                        ; 0x4175
    je short @..load_sound.l1        ; 0x4177
    jmp near @..load_sound.l4        ; 0x4179
@..load_sound.l1:
    mov ax, word [cs:cseg_0baa - IMAGE_BASE] ; 0x417c
    inc ax                           ; 0x4180
    mov word [cs:cseg_0baa - IMAGE_BASE], ax ; 0x4181
    mov bx, word [bp - 0x0002]       ; 0x4185
    mov word [cs:bx], ax             ; 0x4188
    dec ax                           ; 0x418b
    mov cl, 2                        ; 0x418c
    shl ax, cl                       ; 0x418e
    mov bx, data_0bda                ; 0x4190
    add bx, ax                       ; 0x4193
    mov word [bp - 0x000a], bx       ; 0x4195
    mov ax, word [cs:cseg_0bac - IMAGE_BASE] ; 0x4198
    mov word [cs:bx], ax             ; 0x419c
    mov ah, 0x42                     ; 0x419f
    mov al, 2                        ; 0x41a1
    mov bx, word [bp + 0xc]          ; 0x41a3
    xor cx, cx                       ; 0x41a6
    mov dx, cx                       ; 0x41a8
    int 0x21 ; DOS seek file (lseek)
    mov word [bp - 0x0004], ax       ; 0x41ac
    mov word [bp - 0x0006], dx       ; 0x41af
    mov ah, 0x42                     ; 0x41b2
    mov al, 0                        ; 0x41b4
    mov bx, word [bp + 0xc]          ; 0x41b6
    xor cx, cx                       ; 0x41b9
    mov dx, cx                       ; 0x41bb
    int 0x21 ; DOS seek file (lseek)
    mov ax, word [cs:cseg_00e9 - IMAGE_BASE] ; 0x41bf
    mov ds, ax                       ; 0x41c3
    xor dx, dx                       ; 0x41c5
    mov bx, word [bp + 0xc]          ; 0x41c7
    mov cx, 2                        ; 0x41ca
    mov ah, 0x3f                     ; 0x41cd
    int 0x21 ; DOS read file (handle)
    xor bx, bx                       ; 0x41d1
    mov ax, word [bx]                ; 0x41d3
    or ax, ax                        ; 0x41d5
    je short @..load_sound.l2        ; 0x41d7
    jmp near loc_42a0                ; 0x41d9
@..load_sound.l2:
    mov bx, word [bp - 0x0002]       ; 0x41dc
    mov ax, word [bp - 0x0004]       ; 0x41df
    sub ax, strict word 2            ; 0x41e2
    mov word [cs:bx + 0x2], ax       ; 0x41e5
    add ax, strict word 0xf          ; 0x41e9
    mov cl, 4                        ; 0x41ec
    shr ax, cl                       ; 0x41ee
    mov bx, word [bp - 0x000a]       ; 0x41f0
    mov word [cs:bx + 0x2], ax       ; 0x41f3
    add ax, word [cs:cseg_0bac - IMAGE_BASE] ; 0x41f7
    cmp ax, 0x4180                   ; 0x41fc
    jae short loc_4264               ; 0x41ff
    mov word [cs:cseg_0bac - IMAGE_BASE], ax ; 0x4201
    mov ax, word [cs:bx]             ; 0x4205
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x4208
    mov ds, ax                       ; 0x420d
    xor dx, dx                       ; 0x420f
    mov bx, word [bp + 0xc]          ; 0x4211
    mov cx, word [bp - 0x0004]       ; 0x4214
    sub cx, byte 2                   ; 0x4217
    mov ah, 0x3f                     ; 0x421a
    int 0x21 ; DOS read file (handle)
    xor ax, ax                       ; 0x421e
@..load_sound.l3:
    pop di                           ; 0x4220
    pop si                           ; 0x4221
    pop es                           ; 0x4222
    pop ds                           ; 0x4223
    mov sp, bp                       ; 0x4224
    pop bp                           ; 0x4226
    ret                              ; 0x4227
@..load_sound.l4:
    mov ax, cs                       ; 0x4228
    mov ds, ax                       ; 0x422a
    mov dx, dseg_4338                ; 0x422c
