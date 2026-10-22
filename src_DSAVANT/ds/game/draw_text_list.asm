; auto-generated
draw_text_list: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x11de
    call aztec_csav                  ; 0x11e1
    mov ax, 6                        ; 0x11e4
    imul word [bp + 0xa]             ; 0x11e7
    add ax, word [bp + 0x6]          ; 0x11ea
    push ax                          ; 0x11ed
    mov ax, 6                        ; 0x11ee
    imul word [bp + 0x8]             ; 0x11f1
    add ax, word [bp + 0x4]          ; 0x11f4
    inc ax                           ; 0x11f7
    inc ax                           ; 0x11f8
    push ax                          ; 0x11f9
    push word [bp + 0x6]             ; 0x11fa
    push word [bp + 0x4]             ; 0x11fd
    call ds_app_OPOL                 ; 0x1200
    add sp, byte 8                   ; 0x1203
    push word [bp + 0xe]             ; 0x1206
    push word [bp + 0xc]             ; 0x1209
    push word [bp + 0x10]            ; 0x120c
    push word [bp + 0x8]             ; 0x120f
    push word [bp + 0x6]             ; 0x1212
    push word [bp + 0x4]             ; 0x1215
    call ds_app_UNSL                 ; 0x1218
    add sp, byte 0x0c                ; 0x121b
    ret                              ; 0x121e
