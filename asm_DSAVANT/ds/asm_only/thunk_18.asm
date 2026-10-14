; auto-generated
; asm only
thunk_18:
    push bp                          ; 0x4168
    mov bp, sp                       ; 0x4169
    cld                              ; 0x416b
    call far [cs:cseg_3047 - IMAGE_BASE] ; 0x416c
    mov sp, bp                       ; 0x4171
    pop bp                           ; 0x4173
    ret                              ; 0x4174
ds_loc_4175:
    push bp                          ; 0x4175
    mov bp, sp                       ; 0x4176
    cld                              ; 0x4178
    push ds                          ; 0x4179
    push es                          ; 0x417a
    push si                          ; 0x417b
    push di                          ; 0x417c
    mov ax, ds                       ; 0x417d
    mov es, ax                       ; 0x417f
    mov ax, word [bp + 0x6]          ; 0x4181
    mov ah, al                       ; 0x4184
    mov al, 0xff                     ; 0x4186
    push ax                          ; 0x4188
    push word [bp + 0x4]             ; 0x4189
    xor ax, ax                       ; 0x418c
    push ax                          ; 0x418e
    push ax                          ; 0x418f
    push ax                          ; 0x4190
    push ax                          ; 0x4191
    push ax                          ; 0x4192
    call far [cs:cseg_2f7b - IMAGE_BASE] ; 0x4193
    add sp, byte 0x0e                ; 0x4198
    pop di                           ; 0x419b
    pop si                           ; 0x419c
    pop es                           ; 0x419d
    pop ds                           ; 0x419e
    mov sp, bp                       ; 0x419f
    pop bp                           ; 0x41a1
    ret                              ; 0x41a2
