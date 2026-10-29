; auto-generated
call_set_text_opaque:
    push bp                          ; 0x42dd
    mov bp, sp                       ; 0x42de
    cld                              ; 0x42e0
    call far [cs:cseg_2feb - IMAGE_BASE] ; 0x42e1
    mov sp, bp                       ; 0x42e6
    pop bp                           ; 0x42e8
    ret                              ; 0x42e9
call_set_rgb:
    push bp                          ; 0x42ea
    mov bp, sp                       ; 0x42eb
    cld                              ; 0x42ed
    call far [cs:cseg_2ff7 - IMAGE_BASE] ; 0x42ee
    mov sp, bp                       ; 0x42f3
    pop bp                           ; 0x42f5
    ret                              ; 0x42f6
call_get_rgb:
    push bp                          ; 0x42f7
    mov bp, sp                       ; 0x42f8
    cld                              ; 0x42fa
    call far [cs:cseg_2ffb - IMAGE_BASE] ; 0x42fb
    mov sp, bp                       ; 0x4300
    pop bp                           ; 0x4302
    ret                              ; 0x4303
call_fade_in:
    push bp                          ; 0x4304
    mov bp, sp                       ; 0x4305
    cld                              ; 0x4307
    call far [cs:drv_slot_fade_in - IMAGE_BASE] ; 0x4308
    mov sp, bp                       ; 0x430d
    pop bp                           ; 0x430f
    ret                              ; 0x4310
call_fade_out:
    push bp                          ; 0x4311
    mov bp, sp                       ; 0x4312
    cld                              ; 0x4314
    call far [cs:drv_slot_fade_out - IMAGE_BASE] ; 0x4315
    mov sp, bp                       ; 0x431a
    pop bp                           ; 0x431c
    ret                              ; 0x431d
call_reset_rgb:
    push bp                          ; 0x431e
    mov bp, sp                       ; 0x431f
    cld                              ; 0x4321
    call far [cs:cseg_3007 - IMAGE_BASE] ; 0x4322
    mov sp, bp                       ; 0x4327
    pop bp                           ; 0x4329
    ret                              ; 0x432a
call_mouse_glide_to:
    push bp                          ; 0x432b
    mov bp, sp                       ; 0x432c
    cld                              ; 0x432e
    call far [cs:cseg_300b - IMAGE_BASE] ; 0x432f
    mov sp, bp                       ; 0x4334
    pop bp                           ; 0x4336
    ret                              ; 0x4337
call_mouse_glide_back:
    push bp                          ; 0x4338
    mov bp, sp                       ; 0x4339
    cld                              ; 0x433b
    call far [cs:cseg_300f - IMAGE_BASE] ; 0x433c
    mov sp, bp                       ; 0x4341
    pop bp                           ; 0x4343
    ret                              ; 0x4344
call_get_palette:
    push bp                          ; 0x4345
    mov bp, sp                       ; 0x4346
    cld                              ; 0x4348
    call far [cs:cseg_301b - IMAGE_BASE] ; 0x4349
    mov sp, bp                       ; 0x434e
    pop bp                           ; 0x4350
    ret                              ; 0x4351
call_set_palette:
    push bp                          ; 0x4352
    mov bp, sp                       ; 0x4353
    cld                              ; 0x4355
    call far [cs:cseg_301f - IMAGE_BASE] ; 0x4356
    mov sp, bp                       ; 0x435b
    pop bp                           ; 0x435d
    ret                              ; 0x435e
call_cache_maze:
    push bp                          ; 0x435f
    mov bp, sp                       ; 0x4360
    cld                              ; 0x4362
    call far [cs:drv_slot_cache_maze - IMAGE_BASE] ; 0x4363
    mov sp, bp                       ; 0x4368
    pop bp                           ; 0x436a
    ret                              ; 0x436b
call_cache_screen_to_storage:
    push bp                          ; 0x436c
    mov bp, sp                       ; 0x436d
    cld                              ; 0x436f
    call far [cs:drv_slot_cache_screen_to_storage - IMAGE_BASE] ; 0x4370
    mov sp, bp                       ; 0x4375
    pop bp                           ; 0x4377
    ret                              ; 0x4378
