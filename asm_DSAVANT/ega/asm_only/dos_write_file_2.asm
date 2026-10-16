; auto-generated
; asm only
dos_write_file_2:
    push bp                          ; 0x4111
    mov bp, sp                       ; 0x4112
    sub sp, byte 0x0e                ; 0x4114
    push es                          ; 0x4117
    push ds                          ; 0x4118
    push di                          ; 0x4119
    push si                          ; 0x411a
    mov ax, ds                       ; 0x411b
    mov es, ax                       ; 0x411d
    cmp word [bp + 0x14], byte 3     ; 0x411f
    jne short @..dos_write_file_2.l6 ; 0x4123
    mov ax, word [bp + 0x10]         ; 0x4125
    sub ax, word [bp + 0xc]          ; 0x4128
    inc ax                           ; 0x412b
    mov word [bp - 0x0006], ax       ; 0x412c
    mov bx, word [bp + 0x12]         ; 0x412f
    sub bx, word [bp + 0xe]          ; 0x4132
    inc bx                           ; 0x4135
    mov word [bp - 0x0004], bx       ; 0x4136
    mul bx                           ; 0x4139
    mov word [bp - 0x0008], ax       ; 0x413b
    mov word [bp - 0x000a], dx       ; 0x413e
    mov ax, word [bp + 0xe]          ; 0x4141
    mov bx, 0x140                    ; 0x4144
    mul bx                           ; 0x4147
    add ax, word [bp + 0xc]          ; 0x4149
    mov word [bp - 0x0002], ax       ; 0x414c
    lea bx, word [bp - 0x000a]       ; 0x414f
    mov dx, bx                       ; 0x4152
    mov ax, ss                       ; 0x4154
    mov ds, ax                       ; 0x4156
    mov cx, 0xa                      ; 0x4158
    mov bx, word [bp + 0x16]         ; 0x415b
    mov ah, 0x40                     ; 0x415e
    int 0x21 ; DOS write file (handle)
    jae short @..dos_write_file_2.l2 ; 0x4162
    jmp near @..dos_write_file_2.l1  ; 0x4164
@..dos_write_file_2.l2:
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x4167
    mov ds, ax                       ; 0x416b
    mov cx, word [bp - 0x0004]       ; 0x416d
@..dos_write_file_2.l3:
    push cx                          ; 0x4170
    mov dx, word [bp - 0x0002]       ; 0x4171
    add word [bp - 0x0002], strict word 0x140 ; 0x4174
    mov cx, word [bp - 0x0006]       ; 0x4179
    mov bx, word [bp + 0x16]         ; 0x417c
    mov ah, 0x40                     ; 0x417f
    int 0x21 ; DOS write file (handle)
    jae short @..dos_write_file_2.l4 ; 0x4183
    jmp near @..dos_write_file_2.l1  ; 0x4185
@..dos_write_file_2.l4:
    cmp ax, word [bp - 0x0006]       ; 0x4188
    je short @..dos_write_file_2.l5  ; 0x418b
    jmp near @..dos_write_file_2.l1  ; 0x418d
@..dos_write_file_2.l5:
    pop cx                           ; 0x4190
    loop @..dos_write_file_2.l3      ; 0x4191
    xor ax, ax                       ; 0x4193
    mov dx, word [bp + 0x14]         ; 0x4195
    jmp near @..dos_write_file_2.l19 ; 0x4198
@..dos_write_file_2.l6:
    cmp word [bp + 0x14], byte 2     ; 0x419b
    je short @..dos_write_file_2.l7  ; 0x419f
    jmp near @..dos_write_file_2.l12 ; 0x41a1
@..dos_write_file_2.l7:
    mov ax, word [bp + 0x10]         ; 0x41a4
    sub ax, word [bp + 0xc]          ; 0x41a7
    inc ax                           ; 0x41aa
    mov word [bp - 0x0006], ax       ; 0x41ab
    mov bx, word [bp + 0x12]         ; 0x41ae
    sub bx, word [bp + 0xe]          ; 0x41b1
    inc bx                           ; 0x41b4
    mov word [bp - 0x0004], bx       ; 0x41b5
    mul bx                           ; 0x41b8
    mov word [bp - 0x0008], ax       ; 0x41ba
    mov word [bp - 0x000a], dx       ; 0x41bd
    add ax, strict word 0xc          ; 0x41c0
    add ax, strict word 0xf          ; 0x41c3
    mov cl, 4                        ; 0x41c6
    shr ax, cl                       ; 0x41c8
    mov word [bp - 0x0002], ax       ; 0x41ca
    add ax, word [cs:cseg_10cd - IMAGE_BASE] ; 0x41cd
    cmp ax, 0x4180                   ; 0x41d2
    jbe short @..dos_write_file_2.l8 ; 0x41d5
    jmp near @..dos_write_file_2.l21 ; 0x41d7
@..dos_write_file_2.l8:
    mov bx, word [cs:cseg_10cd - IMAGE_BASE] ; 0x41da
    mov word [bp - 0x000e], bx       ; 0x41df
    mov word [cs:cseg_10cd - IMAGE_BASE], ax ; 0x41e2
    mov bx, cseg_015b - IMAGE_BASE   ; 0x41e6
    mov cx, 0x10                     ; 0x41e9
    xor dx, dx                       ; 0x41ec
@..dos_write_file_2.l9:
    mov ax, word [cs:bx]             ; 0x41ee
    or ax, ax                        ; 0x41f1
    je short @..dos_write_file_2.l10 ; 0x41f3
    inc dx                           ; 0x41f5
    add bx, byte 2                   ; 0x41f6
    loop @..dos_write_file_2.l9      ; 0x41f9
    jmp near @..dos_write_file_2.l22 ; 0x41fb
@..dos_write_file_2.l10:
    mov word [bp - 0x000c], dx       ; 0x41fe
    mov ax, word [cs:cseg_10cb - IMAGE_BASE] ; 0x4201
    inc ax                           ; 0x4205
    mov word [cs:cseg_10cb - IMAGE_BASE], ax ; 0x4206
    mov word [cs:bx], ax             ; 0x420a
    dec ax                           ; 0x420d
    mov cl, 2                        ; 0x420e
    shl ax, cl                       ; 0x4210
    mov bx, 0x10fb                   ; 0x4212
    add bx, ax                       ; 0x4215
    mov ax, word [bp - 0x000e]       ; 0x4217
    mov word [cs:bx], ax             ; 0x421a
    add ax, word [cs:cseg_00e1 - IMAGE_BASE] ; 0x421d
    mov es, ax                       ; 0x4222
    mov ax, word [bp - 0x0002]       ; 0x4224
    mov word [cs:bx + 0x2], ax       ; 0x4227
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x422b
    mov ds, ax                       ; 0x422f
    mov ax, word [bp + 0xe]          ; 0x4231
    mov bx, 0x140                    ; 0x4234
    mul bx                           ; 0x4237
    add ax, word [bp + 0xc]          ; 0x4239
    mov word [bp - 0x0002], ax       ; 0x423c
    xor di, di                       ; 0x423f
    stosw                            ; 0x4241
    xor ax, ax                       ; 0x4242
    stosw                            ; 0x4244
    mov ax, word [bp - 0x0004]       ; 0x4245
    stosw                            ; 0x4248
    mov ax, word [bp - 0x0006]       ; 0x4249
    stosw                            ; 0x424c
    mov ax, word [bp - 0x0008]       ; 0x424d
    stosw                            ; 0x4250
    mov ax, word [bp - 0x000a]       ; 0x4251
    stosw                            ; 0x4254
@..dos_write_file_2.l11:
    mov si, word [bp - 0x0002]       ; 0x4255
    add word [bp - 0x0002], strict word 0x140 ; 0x4258
    mov cx, word [bp - 0x0006]       ; 0x425d
    rep movsb                        ; 0x4260
    dec word [bp - 0x0004]           ; 0x4262
    jne short @..dos_write_file_2.l11 ; 0x4265
    mov ax, word [bp - 0x000c]       ; 0x4267
    mov dx, word [bp + 0x14]         ; 0x426a
    jmp near @..dos_write_file_2.l19 ; 0x426d
@..dos_write_file_2.l12:
    mov ax, word [bp + 0x10]         ; 0x4270
    sub ax, word [bp + 0xc]          ; 0x4273
    inc ax                           ; 0x4276
    mov word [bp - 0x0006], ax       ; 0x4277
    mov bx, word [bp + 0x12]         ; 0x427a
    sub bx, word [bp + 0xe]          ; 0x427d
    inc bx                           ; 0x4280
    mov word [bp - 0x0004], bx       ; 0x4281
    mul bx                           ; 0x4284
    mov word [bp - 0x0008], ax       ; 0x4286
    mov word [bp - 0x000a], dx       ; 0x4289
    add ax, strict word 0xc          ; 0x428c
    add ax, strict word 0xf          ; 0x428f
    mov cl, 4                        ; 0x4292
    shr ax, cl                       ; 0x4294
    mov word [bp - 0x0002], ax       ; 0x4296
    add ax, word [cs:cseg_0291 - IMAGE_BASE] ; 0x4299
    cmp ax, word [cs:cseg_00ff - IMAGE_BASE] ; 0x429e
    jbe short @..dos_write_file_2.l13 ; 0x42a3
    jmp near @..dos_write_file_2.l18 ; 0x42a5
@..dos_write_file_2.l13:
    mov bx, word [cs:cseg_0291 - IMAGE_BASE] ; 0x42a8
    mov word [bp - 0x000e], bx       ; 0x42ad
    mov word [cs:cseg_0291 - IMAGE_BASE], ax ; 0x42b0
    mov bx, cseg_019b - IMAGE_BASE   ; 0x42b4
    mov cx, 0x14                     ; 0x42b7
    xor dx, dx                       ; 0x42ba
@..dos_write_file_2.l14:
    mov ax, word [cs:bx]             ; 0x42bc
    or ax, ax                        ; 0x42bf
    je short @..dos_write_file_2.l15 ; 0x42c1
    inc dx                           ; 0x42c3
    add bx, byte 2                   ; 0x42c4
    loop @..dos_write_file_2.l14     ; 0x42c7
    jmp near @..dos_write_file_2.l20 ; 0x42c9
@..dos_write_file_2.l15:
    mov word [bp - 0x000c], dx       ; 0x42cc
    mov ax, word [cs:cseg_028f - IMAGE_BASE] ; 0x42cf
    inc ax                           ; 0x42d3
    mov word [cs:cseg_028f - IMAGE_BASE], ax ; 0x42d4
    mov word [cs:bx], ax             ; 0x42d8
    dec ax                           ; 0x42db
    mov cl, 2                        ; 0x42dc
    shl ax, cl                       ; 0x42de
    mov bx, 0x2eb                    ; 0x42e0
    add bx, ax                       ; 0x42e3
    mov ax, word [bp - 0x000e]       ; 0x42e5
    mov word [cs:bx], ax             ; 0x42e8
    mov ax, word [bp - 0x0002]       ; 0x42eb
    mov word [cs:bx + 0x2], ax       ; 0x42ee
    mov ax, word [cs:cseg_0103 - IMAGE_BASE] ; 0x42f2
    mov es, ax                       ; 0x42f6
    mov ax, word [bp - 0x000e]       ; 0x42f8
    mov di, ax                       ; 0x42fb
    and di, strict word 0x3ff        ; 0x42fd
    mov cl, 4                        ; 0x4301
    shl di, cl                       ; 0x4303
    mov cl, 0xa                      ; 0x4305
    shr ax, cl                       ; 0x4307
    mov word [cs:cseg_4440 - IMAGE_BASE], ax ; 0x4309
    call leaf_loc_HLGJ               ; 0x430d
    mov ax, word [cs:cseg_00e5 - IMAGE_BASE] ; 0x4310
    mov ds, ax                       ; 0x4314
    mov ax, word [bp + 0xe]          ; 0x4316
    mov bx, 0x140                    ; 0x4319
    mul bx                           ; 0x431c
    add ax, word [bp + 0xc]          ; 0x431e
    mov word [bp - 0x0002], ax       ; 0x4321
    stosw                            ; 0x4324
    xor ax, ax                       ; 0x4325
    stosw                            ; 0x4327
    mov ax, word [bp - 0x0004]       ; 0x4328
    stosw                            ; 0x432b
    mov ax, word [bp - 0x0006]       ; 0x432c
    stosw                            ; 0x432f
    mov ax, word [bp - 0x0008]       ; 0x4330
    stosw                            ; 0x4333
    mov ax, word [bp - 0x000a]       ; 0x4334
    stosw                            ; 0x4337
@..dos_write_file_2.l16:
    mov si, word [bp - 0x0002]       ; 0x4338
    add word [bp - 0x0002], strict word 0x140 ; 0x433b
    mov cx, word [bp - 0x0006]       ; 0x4340
    rep movsb                        ; 0x4343
    test di, 0xc000                  ; 0x4345
    je short @..dos_write_file_2.l17 ; 0x4349
    inc word [cs:cseg_4440 - IMAGE_BASE] ; 0x434b
    mov ax, word [cs:cseg_4440 - IMAGE_BASE] ; 0x4350
    call leaf_loc_HLGJ               ; 0x4354
    and di, strict word 0x3fff       ; 0x4357
@..dos_write_file_2.l17:
    dec word [bp - 0x0004]           ; 0x435b
    jne short @..dos_write_file_2.l16 ; 0x435e
    mov ax, word [bp - 0x000c]       ; 0x4360
    mov dx, word [bp + 0x14]         ; 0x4363
    jmp near @..dos_write_file_2.l19 ; 0x4366
@..dos_write_file_2.l18:
    mov ax, cs                       ; 0x4369
    mov ds, ax                       ; 0x436b
    mov dx, 0x4479                   ; 0x436d
