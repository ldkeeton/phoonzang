; auto-generated
load_picture:
    push bp                          ; 0x21cd
    mov bp, sp                       ; 0x21ce
    sub sp, byte 8                   ; 0x21d0
    push ds                          ; 0x21d3
    push es                          ; 0x21d4
    push si                          ; 0x21d5
    push di                          ; 0x21d6
    mov ax, ds                       ; 0x21d7
    mov es, ax                       ; 0x21d9
    mov ax, word [bp + 0xe]          ; 0x21db
    shl ax, 1                        ; 0x21de
    mov bx, data_0229                ; 0x21e0
    add bx, ax                       ; 0x21e3
    mov word [bp - 0x0002], bx       ; 0x21e5
    mov ax, word [cs:bx]             ; 0x21e8
    or ax, ax                        ; 0x21eb
    je short @..load_picture.l1      ; 0x21ed
    jmp near @..load_picture.l7      ; 0x21ef
@..load_picture.l1:
    mov ax, word [cs:maze_block_count - IMAGE_BASE] ; 0x21f2
    inc ax                           ; 0x21f6
    mov word [cs:maze_block_count - IMAGE_BASE], ax ; 0x21f7
    mov bx, word [bp - 0x0002]       ; 0x21fb
    mov word [cs:bx], ax             ; 0x21fe
    dec ax                           ; 0x2201
    mov cl, 2                        ; 0x2202
    shl ax, cl                       ; 0x2204
    mov bx, maze_blocks - IMAGE_BASE ; 0x2206
    add bx, ax                       ; 0x2209
    mov word [bp - 0x0002], bx       ; 0x220b
    mov ax, word [cs:maze_paras_used - IMAGE_BASE] ; 0x220e
    mov word [cs:bx], ax             ; 0x2212
    mov ax, word [cs:scratch_buf_seg - IMAGE_BASE] ; 0x2215
    mov ds, ax                       ; 0x2219
    xor dx, dx                       ; 0x221b
    mov cx, 4                        ; 0x221d
    mov bx, word [bp + 0xc]          ; 0x2220
    mov ah, 0x3f                     ; 0x2223
    int 0x21 ; DOS read file (handle)
    xor bx, bx                       ; 0x2227
    mov ax, word [bx]                ; 0x2229
    mov dx, word [bx + 0x2]          ; 0x222b
    mov word [bp - 0x0004], ax       ; 0x222e
    mov word [bp - 0x0006], dx       ; 0x2231
    mov cl, 4                        ; 0x2234
    add ax, strict word 0xf          ; 0x2236
    adc dx, byte 0                   ; 0x2239
    shr ax, cl                       ; 0x223c
    shl dl, cl                       ; 0x223e
    or ah, dl                        ; 0x2240
    add word [cs:maze_paras_used - IMAGE_BASE], ax ; 0x2242
    mov bx, word [bp - 0x0002]       ; 0x2247
    mov word [cs:bx + 0x2], ax       ; 0x224a
    mov ax, word [cs:maze_paras_used - IMAGE_BASE] ; 0x224e
    cmp ax, 0x4180                   ; 0x2252
    jb short @..load_picture.l2      ; 0x2255
    jmp near dos_con_loc_TTIT        ; 0x2257
@..load_picture.l2:
    mov bx, word [bp - 0x0002]       ; 0x225a
    mov ax, word [cs:bx]             ; 0x225d
    add ax, word [cs:maze_mem_seg - IMAGE_BASE] ; 0x2260
    mov ds, ax                       ; 0x2265
@..load_picture.l3:
    mov cx, word [bp - 0x0004]       ; 0x2267
    mov dx, word [bp - 0x0006]       ; 0x226a
    mov bx, cx                       ; 0x226d
    or bx, dx                        ; 0x226f
    je short @..load_picture.l6      ; 0x2271
    or dx, dx                        ; 0x2273
    jne short @..load_picture.l4     ; 0x2275
    cmp cx, strict word 0x1000       ; 0x2277
    jae short @..load_picture.l4     ; 0x227b
    sub word [bp - 0x0004], cx       ; 0x227d
    jmp short @..load_picture.l5     ; 0x2280
@..load_picture.l4:
    sub cx, strict word 0x1000       ; 0x2282
    sbb dx, byte 0                   ; 0x2286
    mov word [bp - 0x0004], cx       ; 0x2289
    mov word [bp - 0x0006], dx       ; 0x228c
    mov cx, 0x1000                   ; 0x228f
@..load_picture.l5:
    xor dx, dx                       ; 0x2292
    mov bx, word [bp + 0xc]          ; 0x2294
    mov ah, 0x3f                     ; 0x2297
    int 0x21 ; DOS read file (handle)
    mov ax, ds                       ; 0x229b
    add ax, 0x100                    ; 0x229d
    mov ds, ax                       ; 0x22a0
    jmp short @..load_picture.l3     ; 0x22a2
@..load_picture.l6:
    pop di                           ; 0x22a4
    pop si                           ; 0x22a5
    pop es                           ; 0x22a6
    pop ds                           ; 0x22a7
    mov sp, bp                       ; 0x22a8
    pop bp                           ; 0x22aa
    ret                              ; 0x22ab
@..load_picture.l7:
    mov ax, word [bp + 0xe]          ; 0x22ac
    mov bx, 0xa                      ; 0x22af
    div bx                           ; 0x22b2
    or byte [cs:cseg_22de - IMAGE_BASE], al ; 0x22b4
    or byte [cs:cseg_22df - IMAGE_BASE], dl ; 0x22b9
