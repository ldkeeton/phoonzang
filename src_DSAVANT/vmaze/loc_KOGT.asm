; auto-generated
loc_KOGT:
    mov ax, 0                        ; 0x1240
    call aztec_csav                  ; 0x1243
    mov word [location_changed], 1   ; 0x1246
    mov ax, 0                        ; 0x124c
    push ax                          ; 0x124f
    mov ax, 8                        ; 0x1250
    push ax                          ; 0x1253
    mov ax, adjacent_object_type     ; 0x1254
    push ax                          ; 0x1257
    call aztec_setmem                ; 0x1258
    add sp, byte 6                   ; 0x125b
    mov word [party_status_frame_step], 0 ; 0x125e
    mov ax, word [bp + 4]            ; 0x1264
    jmp short @..loc_KOGT.l5         ; 0x1267
@..loc_KOGT.l1:
    mov ax, word [bp + 6]            ; 0x1269
    add word [party_world_y], ax     ; 0x126c
    jmp short @..loc_KOGT.l6         ; 0x1270
@..loc_KOGT.l2:
    mov ax, word [bp + 6]            ; 0x1272
    add word [party_world_x], ax     ; 0x1275
    jmp short @..loc_KOGT.l6         ; 0x1279
@..loc_KOGT.l3:
    mov ax, word [bp + 6]            ; 0x127b
    sub word [party_world_y], ax     ; 0x127e
    jmp short @..loc_KOGT.l6         ; 0x1282
@..loc_KOGT.l4:
    mov ax, word [bp + 6]            ; 0x1284
    sub word [party_world_x], ax     ; 0x1287
    jmp short @..loc_KOGT.l6         ; 0x128b
@..loc_KOGT.l5:
    cmp ax, strict word 0            ; 0x128d
    je short @..loc_KOGT.l1          ; 0x1290
    cmp ax, strict word 1            ; 0x1292
    je short @..loc_KOGT.l2          ; 0x1295
    cmp ax, strict word 2            ; 0x1297
    je short @..loc_KOGT.l3          ; 0x129a
    cmp ax, strict word 3            ; 0x129c
    je short @..loc_KOGT.l4          ; 0x129f
@..loc_KOGT.l6:
    ret                              ; 0x12a1
