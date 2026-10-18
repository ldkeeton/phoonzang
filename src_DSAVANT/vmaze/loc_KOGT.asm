; auto-generated
loc_KOGT:
    mov ax, 0                        ; 0x1240
    call aztec_csav                  ; 0x1243
    mov word [bss_91a8], 1           ; 0x1246
    mov ax, 0                        ; 0x124c
    push ax                          ; 0x124f
    mov ax, 8                        ; 0x1250
    push ax                          ; 0x1253
    mov ax, bss_8cfe                 ; 0x1254
    push ax                          ; 0x1257
    call aztec_setmem                ; 0x1258
    add sp, byte 6                   ; 0x125b
    mov word [bss_82ea], 0           ; 0x125e
    mov ax, word [bp + 0x4]          ; 0x1264
    jmp short @..loc_KOGT.l5         ; 0x1267
@..loc_KOGT.l1:
    mov ax, word [bp + 0x6]          ; 0x1269
    add word [bss_8f44], ax          ; 0x126c
    jmp short @..loc_KOGT.l6         ; 0x1270
@..loc_KOGT.l2:
    mov ax, word [bp + 0x6]          ; 0x1272
    add word [bss_8f46], ax          ; 0x1275
    jmp short @..loc_KOGT.l6         ; 0x1279
@..loc_KOGT.l3:
    mov ax, word [bp + 0x6]          ; 0x127b
    sub word [bss_8f44], ax          ; 0x127e
    jmp short @..loc_KOGT.l6         ; 0x1282
@..loc_KOGT.l4:
    mov ax, word [bp + 0x6]          ; 0x1284
    sub word [bss_8f46], ax          ; 0x1287
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
