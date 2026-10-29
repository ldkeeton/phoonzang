; auto-generated
call_free_sound:
    push bp                          ; 0x4134
    mov bp, sp                       ; 0x4135
    cld                              ; 0x4137
    call far [cs:drv_slot_free_sound - IMAGE_BASE] ; 0x4138
    mov sp, bp                       ; 0x413d
    pop bp                           ; 0x413f
    ret                              ; 0x4140
call_load_sound:
    push bp                          ; 0x4141
    mov bp, sp                       ; 0x4142
    cld                              ; 0x4144
    call far [cs:drv_slot_load_sound - IMAGE_BASE] ; 0x4145
    mov sp, bp                       ; 0x414a
    pop bp                           ; 0x414c
    ret                              ; 0x414d
call_play_sound:
    push bp                          ; 0x414e
    mov bp, sp                       ; 0x414f
    cld                              ; 0x4151
    call far [cs:drv_slot_play_sound - IMAGE_BASE] ; 0x4152
    mov sp, bp                       ; 0x4157
    pop bp                           ; 0x4159
    ret                              ; 0x415a
call_wait_sound:
    push bp                          ; 0x415b
    mov bp, sp                       ; 0x415c
    cld                              ; 0x415e
    call far [cs:drv_slot_wait_sound - IMAGE_BASE] ; 0x415f
    mov sp, bp                       ; 0x4164
    pop bp                           ; 0x4166
    ret                              ; 0x4167
call_stop_sound:
    push bp                          ; 0x4168
    mov bp, sp                       ; 0x4169
    cld                              ; 0x416b
    call far [cs:drv_slot_stop_sound - IMAGE_BASE] ; 0x416c
    mov sp, bp                       ; 0x4171
    pop bp                           ; 0x4173
    ret                              ; 0x4174
call_play_select_device:
    push bp                          ; 0x4175
    mov bp, sp                       ; 0x4176
    cld                              ; 0x4178
    push ds                          ; 0x4179
    push es                          ; 0x417a
    push si                          ; 0x417b
    push di                          ; 0x417c
    mov ax, ds                       ; 0x417d
    mov es, ax                       ; 0x417f
    mov ax, word [bp + 6]            ; 0x4181
    mov ah, al                       ; 0x4184
    mov al, 0xff                     ; 0x4186
    push ax                          ; 0x4188
    push word [bp + 4]               ; 0x4189
    xor ax, ax                       ; 0x418c
    push ax                          ; 0x418e
    push ax                          ; 0x418f
    push ax                          ; 0x4190
    push ax                          ; 0x4191
    push ax                          ; 0x4192
    call far [cs:drv_slot_play_select_device - IMAGE_BASE] ; 0x4193
    add sp, byte 0xe                 ; 0x4198
    pop di                           ; 0x419b
    pop si                           ; 0x419c
    pop es                           ; 0x419d
    pop ds                           ; 0x419e
    mov sp, bp                       ; 0x419f
    pop bp                           ; 0x41a1
    ret                              ; 0x41a2
call_load_score:
    push bp                          ; 0x41a3
    mov bp, sp                       ; 0x41a4
    cld                              ; 0x41a6
    call far [cs:drv_slot_load_score - IMAGE_BASE] ; 0x41a7
    mov sp, bp                       ; 0x41ac
    pop bp                           ; 0x41ae
    ret                              ; 0x41af
call_play_score:
    push bp                          ; 0x41b0
    mov bp, sp                       ; 0x41b1
    cld                              ; 0x41b3
    call far [cs:drv_slot_play_score - IMAGE_BASE] ; 0x41b4
    mov sp, bp                       ; 0x41b9
    pop bp                           ; 0x41bb
    ret                              ; 0x41bc
call_free_score:
    push bp                          ; 0x41bd
    mov bp, sp                       ; 0x41be
    cld                              ; 0x41c0
    call far [cs:drv_slot_free_score - IMAGE_BASE] ; 0x41c1
    mov sp, bp                       ; 0x41c6
    pop bp                           ; 0x41c8
    ret                              ; 0x41c9
call_is_music_playing:
    push bp                          ; 0x41ca
    mov bp, sp                       ; 0x41cb
    cld                              ; 0x41cd
    call far [cs:drv_slot_is_music_playing - IMAGE_BASE] ; 0x41ce
    mov sp, bp                       ; 0x41d3
    pop bp                           ; 0x41d5
    ret                              ; 0x41d6
call_stop_music:
    push bp                          ; 0x41d7
    mov bp, sp                       ; 0x41d8
    cld                              ; 0x41da
    call far [cs:drv_slot_stop_music - IMAGE_BASE] ; 0x41db
    mov sp, bp                       ; 0x41e0
    pop bp                           ; 0x41e2
    ret                              ; 0x41e3
call_set_music_tempo_volume:
    push bp                          ; 0x41e4
    mov bp, sp                       ; 0x41e5
    cld                              ; 0x41e7
    call far [cs:drv_slot_set_music_tempo_volume - IMAGE_BASE] ; 0x41e8
    mov sp, bp                       ; 0x41ed
    pop bp                           ; 0x41ef
    ret                              ; 0x41f0
call_load_picture:
    push bp                          ; 0x41f1
    mov bp, sp                       ; 0x41f2
    cld                              ; 0x41f4
    call far [cs:drv_slot_load_picture - IMAGE_BASE] ; 0x41f5
    mov sp, bp                       ; 0x41fa
    pop bp                           ; 0x41fc
    ret                              ; 0x41fd
call_free_picture:
    push bp                          ; 0x41fe
    mov bp, sp                       ; 0x41ff
    cld                              ; 0x4201
    call far [cs:drv_slot_free_picture - IMAGE_BASE] ; 0x4202
    mov sp, bp                       ; 0x4207
    pop bp                           ; 0x4209
    ret                              ; 0x420a
call_free_maze:
    push bp                          ; 0x420b
    mov bp, sp                       ; 0x420c
    cld                              ; 0x420e
    call far [cs:drv_slot_free_maze - IMAGE_BASE] ; 0x420f
    mov sp, bp                       ; 0x4214
    pop bp                           ; 0x4216
    ret                              ; 0x4217
call_draw_text:
    push bp                          ; 0x4218
    mov bp, sp                       ; 0x4219
    cld                              ; 0x421b
    call far [cs:drv_slot_draw_text - IMAGE_BASE] ; 0x421c
    mov sp, bp                       ; 0x4221
    pop bp                           ; 0x4223
    ret                              ; 0x4224
call_load_screen:
    push bp                          ; 0x4225
    mov bp, sp                       ; 0x4226
    cld                              ; 0x4228
    call far [cs:drv_slot_load_screen - IMAGE_BASE] ; 0x4229
    mov sp, bp                       ; 0x422e
    pop bp                           ; 0x4230
    ret                              ; 0x4231
call_free_screen:
    push bp                          ; 0x4232
    mov bp, sp                       ; 0x4233
    cld                              ; 0x4235
    call far [cs:drv_slot_free_screen - IMAGE_BASE] ; 0x4236
    mov sp, bp                       ; 0x423b
    pop bp                           ; 0x423d
    ret                              ; 0x423e
call_save_screen:
    push bp                          ; 0x423f
    mov bp, sp                       ; 0x4240
    cld                              ; 0x4242
    call far [cs:drv_slot_save_screen - IMAGE_BASE] ; 0x4243
    mov sp, bp                       ; 0x4248
    pop bp                           ; 0x424a
    ret                              ; 0x424b
call_dissolve_area:
    push bp                          ; 0x424c
    mov bp, sp                       ; 0x424d
    cld                              ; 0x424f
    call far [cs:drv_slot_dissolve_area - IMAGE_BASE] ; 0x4250
    mov sp, bp                       ; 0x4255
    pop bp                           ; 0x4257
    ret                              ; 0x4258
call_load_maze:
    push bp                          ; 0x4259
    mov bp, sp                       ; 0x425a
    cld                              ; 0x425c
    call far [cs:drv_slot_load_maze - IMAGE_BASE] ; 0x425d
    mov sp, bp                       ; 0x4262
    pop bp                           ; 0x4264
    ret                              ; 0x4265
call_draw_maze_piece:
    push bp                          ; 0x4266
    mov bp, sp                       ; 0x4267
    cld                              ; 0x4269
    call far [cs:drv_slot_draw_maze_piece - IMAGE_BASE] ; 0x426a
    mov sp, bp                       ; 0x426f
    pop bp                           ; 0x4271
    ret                              ; 0x4272
call_mouse_init:
    push bp                          ; 0x4273
    mov bp, sp                       ; 0x4274
    cld                              ; 0x4276
    call far [cs:drv_slot_mouse_init - IMAGE_BASE] ; 0x4277
    mov sp, bp                       ; 0x427c
    pop bp                           ; 0x427e
    ret                              ; 0x427f
call_mouse_off:
    push bp                          ; 0x4280
    mov bp, sp                       ; 0x4281
    cld                              ; 0x4283
    call far [cs:drv_slot_mouse_off - IMAGE_BASE] ; 0x4284
    mov sp, bp                       ; 0x4289
    pop bp                           ; 0x428b
    ret                              ; 0x428c
call_mouse_hit_test:
    push bp                          ; 0x428d
    mov bp, sp                       ; 0x428e
    cld                              ; 0x4290
    call far [cs:drv_slot_mouse_hit_test - IMAGE_BASE] ; 0x4291
    mov sp, bp                       ; 0x4296
    pop bp                           ; 0x4298
    ret                              ; 0x4299
call_get_mouse:
    push bp                          ; 0x429a
    mov bp, sp                       ; 0x429b
    cld                              ; 0x429d
    call far [cs:drv_slot_get_mouse - IMAGE_BASE] ; 0x429e
    mov sp, bp                       ; 0x42a3
    pop bp                           ; 0x42a5
    ret                              ; 0x42a6
call_set_mouse_pointer:
    push bp                          ; 0x42a7
    mov bp, sp                       ; 0x42a8
    cld                              ; 0x42aa
    call far [cs:drv_slot_set_mouse_pointer - IMAGE_BASE] ; 0x42ab
    mov sp, bp                       ; 0x42b0
    pop bp                           ; 0x42b2
    ret                              ; 0x42b3
