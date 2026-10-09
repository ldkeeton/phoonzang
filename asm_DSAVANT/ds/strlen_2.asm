strlen_2:
    push bp                          ; 0x40ca
    mov bp, sp                       ; 0x40cb
    cld                              ; 0x40cd
    sub sp, byte 6                   ; 0x40ce
    push ds                          ; 0x40d1
    push es                          ; 0x40d2
    push si                          ; 0x40d3
    push di                          ; 0x40d4
    mov ax, ds                       ; 0x40d5
    mov es, ax                       ; 0x40d7
    cld                              ; 0x40d9
    mov di, word [bp + 0x4]          ; 0x40da
    mov si, word [bp + 0x6]          ; 0x40dd
    mov bx, di                       ; 0x40e0
    mov al, 0                        ; 0x40e2
    mov cx, 0xffff                   ; 0x40e4
    repne scasb                      ; 0x40e7
    mov cx, di                       ; 0x40e9
    sub cx, bx                       ; 0x40eb
    dec cx                           ; 0x40ed
    mov word [bp - 0x0002], cx       ; 0x40ee
    mov di, bx                       ; 0x40f1
@..strlen_2.l1:
    mov al, byte [si]                ; 0x40f3
    repne scasb                      ; 0x40f5
    dec di                           ; 0x40f7
    cmp al, byte [es:di]             ; 0x40f8
    jne short @..strlen_2.l5         ; 0x40fb
    mov dx, di                       ; 0x40fd
    sub dx, bx                       ; 0x40ff
    push si                          ; 0x4101
    push di                          ; 0x4102
@..strlen_2.l2:
    inc si                           ; 0x4103
    inc di                           ; 0x4104
    mov al, byte [si]                ; 0x4105
    cmp al, 0                        ; 0x4107
    je short @..strlen_2.l4          ; 0x4109
    cmp byte [es:di], 0              ; 0x410b
    je short @..strlen_2.l3          ; 0x410f
    cmp al, byte [es:di]             ; 0x4111
    je short @..strlen_2.l2          ; 0x4114
@..strlen_2.l3:
    pop di                           ; 0x4116
    pop si                           ; 0x4117
    inc di                           ; 0x4118
    mov cx, word [bp - 0x0002]       ; 0x4119
    sub cx, dx                       ; 0x411c
    dec cx                           ; 0x411e
    je short @..strlen_2.l5          ; 0x411f
    jmp short @..strlen_2.l1         ; 0x4121
@..strlen_2.l4:
    pop si                           ; 0x4123
    pop di                           ; 0x4124
    mov ax, dx                       ; 0x4125
    jmp short @..strlen_2.l6         ; 0x4127
@..strlen_2.l5:
    mov ax, 0xffff                   ; 0x4129
@..strlen_2.l6:
    pop di                           ; 0x412c
    pop si                           ; 0x412d
    pop es                           ; 0x412e
    pop ds                           ; 0x412f
    mov sp, bp                       ; 0x4130
    pop bp                           ; 0x4132
    ret                              ; 0x4133
loc_4134:
    push bp                          ; 0x4134
    mov bp, sp                       ; 0x4135
    cld                              ; 0x4137
    call far [cs:data_2e3b]          ; 0x4138
    mov sp, bp                       ; 0x413d
    pop bp                           ; 0x413f
    ret                              ; 0x4140
loc_4141:
    push bp                          ; 0x4141
    mov bp, sp                       ; 0x4142
    cld                              ; 0x4144
    call far [cs:data_2e37]          ; 0x4145
    mov sp, bp                       ; 0x414a
    pop bp                           ; 0x414c
    ret                              ; 0x414d
loc_414e:
    push bp                          ; 0x414e
    mov bp, sp                       ; 0x414f
    cld                              ; 0x4151
    call far [cs:data_2e3f]          ; 0x4152
    mov sp, bp                       ; 0x4157
    pop bp                           ; 0x4159
    ret                              ; 0x415a
loc_415b:
    push bp                          ; 0x415b
    mov bp, sp                       ; 0x415c
    cld                              ; 0x415e
    call far [cs:data_2e43]          ; 0x415f
    mov sp, bp                       ; 0x4164
    pop bp                           ; 0x4166
    ret                              ; 0x4167
loc_4168:
    push bp                          ; 0x4168
    mov bp, sp                       ; 0x4169
    cld                              ; 0x416b
    call far [cs:data_2e47]          ; 0x416c
    mov sp, bp                       ; 0x4171
    pop bp                           ; 0x4173
    ret                              ; 0x4174
loc_4175:
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
    call far [cs:data_2d7b]          ; 0x4193
    add sp, byte 0x0e                ; 0x4198
    pop di                           ; 0x419b
    pop si                           ; 0x419c
    pop es                           ; 0x419d
    pop ds                           ; 0x419e
    mov sp, bp                       ; 0x419f
    pop bp                           ; 0x41a1
    ret                              ; 0x41a2
loc_41a3:
    push bp                          ; 0x41a3
    mov bp, sp                       ; 0x41a4
    cld                              ; 0x41a6
    call far [cs:data_2e4b]          ; 0x41a7
    mov sp, bp                       ; 0x41ac
    pop bp                           ; 0x41ae
    ret                              ; 0x41af
loc_41b0:
    push bp                          ; 0x41b0
    mov bp, sp                       ; 0x41b1
    cld                              ; 0x41b3
    call far [cs:data_2e4f]          ; 0x41b4
    mov sp, bp                       ; 0x41b9
    pop bp                           ; 0x41bb
    ret                              ; 0x41bc
loc_41bd:
    push bp                          ; 0x41bd
    mov bp, sp                       ; 0x41be
    cld                              ; 0x41c0
    call far [cs:data_2e53]          ; 0x41c1
    mov sp, bp                       ; 0x41c6
    pop bp                           ; 0x41c8
    ret                              ; 0x41c9
loc_41ca:
    push bp                          ; 0x41ca
    mov bp, sp                       ; 0x41cb
    cld                              ; 0x41cd
    call far [cs:data_2e57]          ; 0x41ce
    mov sp, bp                       ; 0x41d3
    pop bp                           ; 0x41d5
    ret                              ; 0x41d6
loc_41d7:
    push bp                          ; 0x41d7
    mov bp, sp                       ; 0x41d8
    cld                              ; 0x41da
    call far [cs:data_2e5b]          ; 0x41db
    mov sp, bp                       ; 0x41e0
    pop bp                           ; 0x41e2
    ret                              ; 0x41e3
loc_41e4:
    push bp                          ; 0x41e4
    mov bp, sp                       ; 0x41e5
    cld                              ; 0x41e7
    call far [cs:data_2e5f]          ; 0x41e8
    mov sp, bp                       ; 0x41ed
    pop bp                           ; 0x41ef
    ret                              ; 0x41f0
loc_41f1:
    push bp                          ; 0x41f1
    mov bp, sp                       ; 0x41f2
    cld                              ; 0x41f4
    call far [cs:data_2d9b]          ; 0x41f5
    mov sp, bp                       ; 0x41fa
    pop bp                           ; 0x41fc
    ret                              ; 0x41fd
loc_41fe:
    push bp                          ; 0x41fe
    mov bp, sp                       ; 0x41ff
    cld                              ; 0x4201
    call far [cs:data_2ddf]          ; 0x4202
    mov sp, bp                       ; 0x4207
    pop bp                           ; 0x4209
    ret                              ; 0x420a
loc_420b:
    push bp                          ; 0x420b
    mov bp, sp                       ; 0x420c
    cld                              ; 0x420e
    call far [cs:data_2e13]          ; 0x420f
    mov sp, bp                       ; 0x4214
    pop bp                           ; 0x4216
    ret                              ; 0x4217
loc_4218:
    push bp                          ; 0x4218
    mov bp, sp                       ; 0x4219
    cld                              ; 0x421b
    call far [cs:data_2d9f]          ; 0x421c
    mov sp, bp                       ; 0x4221
    pop bp                           ; 0x4223
    ret                              ; 0x4224
loc_4225:
    push bp                          ; 0x4225
    mov bp, sp                       ; 0x4226
    cld                              ; 0x4228
    call far [cs:data_2da3]          ; 0x4229
    mov sp, bp                       ; 0x422e
    pop bp                           ; 0x4230
    ret                              ; 0x4231
loc_4232:
    push bp                          ; 0x4232
    mov bp, sp                       ; 0x4233
    cld                              ; 0x4235
    call far [cs:data_2e17]          ; 0x4236
    mov sp, bp                       ; 0x423b
    pop bp                           ; 0x423d
    ret                              ; 0x423e
loc_423f:
    push bp                          ; 0x423f
    mov bp, sp                       ; 0x4240
    cld                              ; 0x4242
    call far [cs:data_2def]          ; 0x4243
    mov sp, bp                       ; 0x4248
    pop bp                           ; 0x424a
    ret                              ; 0x424b
loc_424c:
    push bp                          ; 0x424c
    mov bp, sp                       ; 0x424d
    cld                              ; 0x424f
    call far [cs:data_2df3]          ; 0x4250
    mov sp, bp                       ; 0x4255
    pop bp                           ; 0x4257
    ret                              ; 0x4258
