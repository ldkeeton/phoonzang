; auto-generated
api_idx_0054_LVHV:
    mov ax, 0xffac                   ; 0x128c
    call aztec_csav                  ; 0x128f
    lea ax, word [bp - 0x0054]       ; 0x1292
    push ax                          ; 0x1295
    push word [bp + 0x4]             ; 0x1296
    call load_message_string         ; 0x1299
    add sp, byte 4                   ; 0x129c
    lea ax, word [bp - 0x0054]       ; 0x129f
    push ax                          ; 0x12a2
    call aztec_strlen                ; 0x12a3
    pop cx                           ; 0x12a6
    mov cx, 6                        ; 0x12a7
    imul cx                          ; 0x12aa
    mov cx, 2                        ; 0x12ac
    cwd                              ; 0x12af
    idiv cx                          ; 0x12b0
    mov cx, ax                       ; 0x12b2
    mov ax, word [bp + 0x6]          ; 0x12b4
    sub ax, cx                       ; 0x12b7
    mov word [bp - 0x0002], ax       ; 0x12b9
    lea ax, word [bp - 0x0054]       ; 0x12bc
    push ax                          ; 0x12bf
    call aztec_strlen                ; 0x12c0
    pop cx                           ; 0x12c3
    mov cx, 6                        ; 0x12c4
    imul cx                          ; 0x12c7
    mov cx, ax                       ; 0x12c9
    mov ax, word [bp - 0x0002]       ; 0x12cb
    add cx, ax                       ; 0x12ce
    mov word [bp - 0x0004], cx       ; 0x12d0
    lea ax, word [bp - 0x0054]       ; 0x12d3
    push ax                          ; 0x12d6
    mov ax, 0xc2                     ; 0x12d7
    push ax                          ; 0x12da
    push ax                          ; 0x12db
    mov ax, 1                        ; 0x12dc
    push ax                          ; 0x12df
    push word [bp + 0x8]             ; 0x12e0
    push word [bp - 0x0002]          ; 0x12e3
    mov ax, word [bp + 0x8]          ; 0x12e6
    add ax, strict word 6            ; 0x12e9
    push ax                          ; 0x12ec
    push cx                          ; 0x12ed
    push word [bp + 0x8]             ; 0x12ee
    push word [bp - 0x0002]          ; 0x12f1
    call api_idx_0004_MIJS           ; 0x12f4
    add sp, byte 0x14                ; 0x12f7
    mov ax, 0                        ; 0x12fa
    push ax                          ; 0x12fd
    call play_sound_effect           ; 0x12fe
    pop cx                           ; 0x1301
    push word [message_delay]        ; 0x1302
    call wait_for_hotspot_timeout    ; 0x1306
    pop cx                           ; 0x1309
    ret                              ; 0x130a
