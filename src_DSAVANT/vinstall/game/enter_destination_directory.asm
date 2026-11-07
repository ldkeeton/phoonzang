; auto-generated
enter_destination_directory:
    push bp                          ; 0x11ba
    mov bp, sp                       ; 0x11bb
    add sp, byte -82                 ; 0x11bd
    push word [bp + 4]               ; 0x11c0
    call drive_is_valid              ; 0x11c3
    pop cx                           ; 0x11c6
    mov word [bp - 2], ax            ; 0x11c7
    cmp ax, strict word 0xffff       ; 0x11ca
    jne short .forward1              ; 0x11cd
    mov ax, invalid_destination_drive ; 0x11cf
    push ax                          ; 0x11d2
    lea ax, word [bp - 0x52]         ; 0x11d3
    push ax                          ; 0x11d6
    call strcpy                ; 0x11d7
    add sp, byte 4                   ; 0x11da
    push word [bp + 4]               ; 0x11dd
    lea ax, word [bp - 0x52]         ; 0x11e0
    push ax                          ; 0x11e3
    call strcat                ; 0x11e4
    add sp, byte 4                   ; 0x11e7
    mov ax, invalid_drive_prompt_suffix ; 0x11ea
    push ax                          ; 0x11ed
    lea ax, word [bp - 0x52]         ; 0x11ee
    push ax                          ; 0x11f1
    call strcat                ; 0x11f2
    add sp, byte 4                   ; 0x11f5
    lea ax, word [bp - 0x52]         ; 0x11f8
    push ax                          ; 0x11fb
    call show_message_wait_for_enter ; 0x11fc
    pop cx                           ; 0x11ff
    mov ax, 4                        ; 0x1200
    push ax                          ; 0x1203
    call exit                  ; 0x1204
    pop cx                           ; 0x1207
.forward1:
    push word [bp + 6]               ; 0x1208
    call chdir                 ; 0x120b
    pop cx                           ; 0x120e
    mov word [bp - 2], ax            ; 0x120f
    cmp ax, strict word 0xffff       ; 0x1212
    je short .forward2               ; 0x1215
    jmp near .forward5               ; 0x1217
.forward2:
    cmp word [bp + 8], byte 1        ; 0x121a
    jne short .forward4              ; 0x121e
    push word [bp + 6]               ; 0x1220
    call mkdir                 ; 0x1223
    pop cx                           ; 0x1226
    mov word [bp - 2], ax            ; 0x1227
    cmp ax, strict word 0xffff       ; 0x122a
    jne short .forward3              ; 0x122d
    mov ax, directory_create_error_prefix ; 0x122f
    push ax                          ; 0x1232
    lea ax, word [bp - 0x52]         ; 0x1233
    push ax                          ; 0x1236
    call strcpy                ; 0x1237
    add sp, byte 4                   ; 0x123a
    push word [bp + 6]               ; 0x123d
    lea ax, word [bp - 0x52]         ; 0x1240
    push ax                          ; 0x1243
    call strcat                ; 0x1244
    add sp, byte 4                   ; 0x1247
    mov ax, directory_create_prompt_suffix ; 0x124a
    push ax                          ; 0x124d
    lea ax, word [bp - 0x52]         ; 0x124e
    push ax                          ; 0x1251
    call strcat                ; 0x1252
    add sp, byte 4                   ; 0x1255
    lea ax, word [bp - 0x52]         ; 0x1258
    push ax                          ; 0x125b
    call show_message_wait_for_enter ; 0x125c
    pop cx                           ; 0x125f
    mov ax, 1                        ; 0x1260
    push ax                          ; 0x1263
    call exit                  ; 0x1264
    pop cx                           ; 0x1267
.forward3:
    push word [bp + 6]               ; 0x1268
    call chdir                 ; 0x126b
    pop cx                           ; 0x126e
    mov word [bp - 2], ax            ; 0x126f
.forward4:
    cmp word [bp - 2], byte -1       ; 0x1272
    jne short .forward5              ; 0x1276
    mov ax, directory_lookup_error_prefix ; 0x1278
    push ax                          ; 0x127b
    lea ax, word [bp - 0x52]         ; 0x127c
    push ax                          ; 0x127f
    call strcpy                ; 0x1280
    add sp, byte 4                   ; 0x1283
    push word [bp + 6]               ; 0x1286
    lea ax, word [bp - 0x52]         ; 0x1289
    push ax                          ; 0x128c
    call strcat                ; 0x128d
    add sp, byte 4                   ; 0x1290
    mov ax, directory_lookup_prompt_suffix ; 0x1293
    push ax                          ; 0x1296
    lea ax, word [bp - 0x52]         ; 0x1297
    push ax                          ; 0x129a
    call strcat                ; 0x129b
    add sp, byte 4                   ; 0x129e
    lea ax, word [bp - 0x52]         ; 0x12a1
    push ax                          ; 0x12a4
    call show_message_wait_for_enter ; 0x12a5
    pop cx                           ; 0x12a8
    mov ax, 2                        ; 0x12a9
    push ax                          ; 0x12ac
    call exit                  ; 0x12ad
    pop cx                           ; 0x12b0
.forward5:
    mov sp, bp                       ; 0x12b1
    pop bp                           ; 0x12b3
    ret                              ; 0x12b4
