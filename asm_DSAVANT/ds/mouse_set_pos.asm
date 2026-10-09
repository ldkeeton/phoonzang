mouse_set_pos:
    push bp                          ; 0x42b4
    mov bp, sp                       ; 0x42b5
    cld                              ; 0x42b7
    push ds                          ; 0x42b8
    push es                          ; 0x42b9
    push si                          ; 0x42ba
    push di                          ; 0x42bb
    mov ax, ds                       ; 0x42bc
    mov es, ax                       ; 0x42be
    cmp byte [cs:data_2d66], 0       ; 0x42c0
    je short @..mouse_set_pos.l1     ; 0x42c6
    mov cx, word [bp + 0x4]          ; 0x42c8
    shl cx, 1                        ; 0x42cb
    mov dx, word [bp + 0x6]          ; 0x42cd
    mov ax, 4                        ; 0x42d0
    int 0x33 ; BIOS mouse
@..mouse_set_pos.l1:
    pop di                           ; 0x42d5
    pop si                           ; 0x42d6
    pop es                           ; 0x42d7
    pop ds                           ; 0x42d8
    mov sp, bp                       ; 0x42d9
    pop bp                           ; 0x42db
    ret                              ; 0x42dc
loc_42dd:
    push bp                          ; 0x42dd
    mov bp, sp                       ; 0x42de
    cld                              ; 0x42e0
    call far [cs:data_2deb]          ; 0x42e1
    mov sp, bp                       ; 0x42e6
    pop bp                           ; 0x42e8
    ret                              ; 0x42e9
loc_42ea:
    push bp                          ; 0x42ea
    mov bp, sp                       ; 0x42eb
    cld                              ; 0x42ed
    call far [cs:data_2df7]          ; 0x42ee
    mov sp, bp                       ; 0x42f3
    pop bp                           ; 0x42f5
    ret                              ; 0x42f6
loc_42f7:
    push bp                          ; 0x42f7
    mov bp, sp                       ; 0x42f8
    cld                              ; 0x42fa
    call far [cs:data_2dfb]          ; 0x42fb
    mov sp, bp                       ; 0x4300
    pop bp                           ; 0x4302
    ret                              ; 0x4303
loc_4304:
    push bp                          ; 0x4304
    mov bp, sp                       ; 0x4305
    cld                              ; 0x4307
    call far [cs:data_2dff]          ; 0x4308
    mov sp, bp                       ; 0x430d
    pop bp                           ; 0x430f
    ret                              ; 0x4310
loc_4311:
    push bp                          ; 0x4311
    mov bp, sp                       ; 0x4312
    cld                              ; 0x4314
    call far [cs:data_2e03]          ; 0x4315
    mov sp, bp                       ; 0x431a
    pop bp                           ; 0x431c
    ret                              ; 0x431d
loc_431e:
    push bp                          ; 0x431e
    mov bp, sp                       ; 0x431f
    cld                              ; 0x4321
    call far [cs:data_2e07]          ; 0x4322
    mov sp, bp                       ; 0x4327
    pop bp                           ; 0x4329
    ret                              ; 0x432a
loc_432b:
    push bp                          ; 0x432b
    mov bp, sp                       ; 0x432c
    cld                              ; 0x432e
    call far [cs:data_2e0b]          ; 0x432f
    mov sp, bp                       ; 0x4334
    pop bp                           ; 0x4336
    ret                              ; 0x4337
loc_4338:
    push bp                          ; 0x4338
    mov bp, sp                       ; 0x4339
    cld                              ; 0x433b
    call far [cs:data_2e0f]          ; 0x433c
    mov sp, bp                       ; 0x4341
    pop bp                           ; 0x4343
    ret                              ; 0x4344
loc_4345:
    push bp                          ; 0x4345
    mov bp, sp                       ; 0x4346
    cld                              ; 0x4348
    call far [cs:data_2e1b]          ; 0x4349
    mov sp, bp                       ; 0x434e
    pop bp                           ; 0x4350
    ret                              ; 0x4351
loc_4352:
    push bp                          ; 0x4352
    mov bp, sp                       ; 0x4353
    cld                              ; 0x4355
    call far [cs:data_2e1f]          ; 0x4356
    mov sp, bp                       ; 0x435b
    pop bp                           ; 0x435d
    ret                              ; 0x435e
loc_435f:
    push bp                          ; 0x435f
    mov bp, sp                       ; 0x4360
    cld                              ; 0x4362
    call far [cs:data_2e2f]          ; 0x4363
    mov sp, bp                       ; 0x4368
    pop bp                           ; 0x436a
    ret                              ; 0x436b
loc_436c:
    push bp                          ; 0x436c
    mov bp, sp                       ; 0x436d
    cld                              ; 0x436f
    call far [cs:data_2e33]          ; 0x4370
    mov sp, bp                       ; 0x4375
    pop bp                           ; 0x4377
    ret                              ; 0x4378
