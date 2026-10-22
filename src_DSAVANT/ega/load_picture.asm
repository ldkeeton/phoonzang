; auto-generated
load_picture:
    push bp                          ; 0x3085
    mov bp, sp                       ; 0x3086
    sub sp, byte 8                   ; 0x3088
    push ds                          ; 0x308b
    push es                          ; 0x308c
    push si                          ; 0x308d
    push di                          ; 0x308e
    mov ax, ds                       ; 0x308f
    mov es, ax                       ; 0x3091
    mov ax, word [bp + 0xe]          ; 0x3093
    shl ax, 1                        ; 0x3096
    mov bx, cseg_0129 - IMAGE_BASE   ; 0x3098
    add bx, ax                       ; 0x309b
    mov word [bp - 0x0002], bx       ; 0x309d
    mov ax, word [cs:bx]             ; 0x30a0
    or ax, ax                        ; 0x30a3
    je short @..load_picture.l1      ; 0x30a5
    jmp near @..load_picture.l7      ; 0x30a7
@..load_picture.l1:
    mov ax, word [cs:maze_block_count - IMAGE_BASE] ; 0x30aa
    inc ax                           ; 0x30ae
    mov word [cs:maze_block_count - IMAGE_BASE], ax ; 0x30af
    mov bx, word [bp - 0x0002]       ; 0x30b3
    mov word [cs:bx], ax             ; 0x30b6
    dec ax                           ; 0x30b9
    mov cl, 2                        ; 0x30ba
    shl ax, cl                       ; 0x30bc
    mov bx, maze_blocks - IMAGE_BASE ; 0x30be
    add bx, ax                       ; 0x30c1
    mov word [bp - 0x0002], bx       ; 0x30c3
    mov ax, word [cs:maze_paras_used - IMAGE_BASE] ; 0x30c6
    mov word [cs:bx], ax             ; 0x30ca
    mov ax, word [cs:scratch_buf_seg - IMAGE_BASE] ; 0x30cd
    mov ds, ax                       ; 0x30d1
    xor dx, dx                       ; 0x30d3
    mov cx, 4                        ; 0x30d5
    mov bx, word [bp + 0xc]          ; 0x30d8
    mov ah, 0x3f                     ; 0x30db
    int 0x21 ; DOS read file (handle)
    xor bx, bx                       ; 0x30df
    mov ax, word [bx]                ; 0x30e1
    mov dx, word [bx + 0x2]          ; 0x30e3
    mov word [bp - 0x0004], ax       ; 0x30e6
    mov word [bp - 0x0006], dx       ; 0x30e9
    mov cl, 4                        ; 0x30ec
    add ax, strict word 0xf          ; 0x30ee
    adc dx, byte 0                   ; 0x30f1
    shr ax, cl                       ; 0x30f4
    shl dl, cl                       ; 0x30f6
    or ah, dl                        ; 0x30f8
    add word [cs:maze_paras_used - IMAGE_BASE], ax ; 0x30fa
    mov bx, word [bp - 0x0002]       ; 0x30ff
    mov word [cs:bx + 0x2], ax       ; 0x3102
    mov ax, word [cs:maze_paras_used - IMAGE_BASE] ; 0x3106
    cmp ax, 0x4180                   ; 0x310a
    jb short @..load_picture.l2      ; 0x310d
    jmp near dos_con_loc_QMKK        ; 0x310f
@..load_picture.l2:
    mov bx, word [bp - 0x0002]       ; 0x3112
    mov ax, word [cs:bx]             ; 0x3115
    add ax, word [cs:maze_mem_seg - IMAGE_BASE] ; 0x3118
    mov ds, ax                       ; 0x311d
@..load_picture.l3:
    mov cx, word [bp - 0x0004]       ; 0x311f
    mov dx, word [bp - 0x0006]       ; 0x3122
    mov bx, cx                       ; 0x3125
    or bx, dx                        ; 0x3127
    je short @..load_picture.l6      ; 0x3129
    or dx, dx                        ; 0x312b
    jne short @..load_picture.l4     ; 0x312d
    cmp cx, strict word 0x1000       ; 0x312f
    jae short @..load_picture.l4     ; 0x3133
    sub word [bp - 0x0004], cx       ; 0x3135
    jmp short @..load_picture.l5     ; 0x3138
@..load_picture.l4:
    sub cx, strict word 0x1000       ; 0x313a
    sbb dx, byte 0                   ; 0x313e
    mov word [bp - 0x0004], cx       ; 0x3141
    mov word [bp - 0x0006], dx       ; 0x3144
    mov cx, 0x1000                   ; 0x3147
@..load_picture.l5:
    xor dx, dx                       ; 0x314a
    mov bx, word [bp + 0xc]          ; 0x314c
    mov ah, 0x3f                     ; 0x314f
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x3153
    add ax, 0x100                    ; 0x3155
    mov ds, ax                       ; 0x3158
    jmp short @..load_picture.l3     ; 0x315a
@..load_picture.l6:
    pop di                           ; 0x315c
    pop si                           ; 0x315d
    pop es                           ; 0x315e
    pop ds                           ; 0x315f
    mov sp, bp                       ; 0x3160
    pop bp                           ; 0x3162
    ret                              ; 0x3163
@..load_picture.l7:
    mov ax, word [bp + 0xe]          ; 0x3164
    mov bx, 0xa                      ; 0x3167
    div bx                           ; 0x316a
    or byte [cs:cseg_3196 - IMAGE_BASE], al ; 0x316c
    or byte [cs:cseg_3197 - IMAGE_BASE], dl ; 0x3171
