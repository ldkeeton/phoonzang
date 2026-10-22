; auto-generated
mouse_init:
    push bp                          ; 0x11f8
    mov bp, sp                       ; 0x11f9
    push es                          ; 0x11fb
    mov ax, ds                       ; 0x11fc
    mov es, ax                       ; 0x11fe
    cmp byte [cs:cseg_0105 - IMAGE_BASE], 0 ; 0x1200
    je short @..mouse_init.l1        ; 0x1206
    mov ax, 0                        ; 0x1208
    int 0x33 ; BIOS mouse
    push ds                          ; 0x120d
    push es                          ; 0x120e
    push di                          ; 0x120f
    push si                          ; 0x1210
    mov ax, 7                        ; 0x1211
    xor cx, cx                       ; 0x1214
    mov dx, 0x27f                    ; 0x1216
    int 0x33 ; BIOS mouse
    mov ax, 8                        ; 0x121b
    xor cx, cx                       ; 0x121e
    mov dx, 0xc7                     ; 0x1220
    int 0x33 ; BIOS mouse
    mov ax, 4                        ; 0x1225
    xor cx, cx                       ; 0x1228
    xor dx, dx                       ; 0x122a
    int 0x33 ; BIOS mouse
    mov ax, 3                        ; 0x122e
    int 0x33 ; BIOS mouse
    shr cx, 1                        ; 0x1233
    mov word [cs:cseg_14b0 - IMAGE_BASE], cx ; 0x1235
    mov word [cs:cseg_14b2 - IMAGE_BASE], dx ; 0x123a
    mov ax, cs                       ; 0x123f
    push ax                          ; 0x1241
    mov ax, 0xffff                   ; 0x1242
    mov word [cs:mouse_drawn_y - IMAGE_BASE], ax ; 0x1245
    call graphics_loc_OSKV           ; 0x1249
    pop si                           ; 0x124c
    pop di                           ; 0x124d
    pop es                           ; 0x124e
    pop ds                           ; 0x124f
    mov byte [cs:mouse_present - IMAGE_BASE], 1 ; 0x1250
    push es                          ; 0x1256
    mov ax, 0x14                     ; 0x1257
    mov bx, cs                       ; 0x125a
    mov es, bx                       ; 0x125c
    mov cx, 0xb                      ; 0x125e
    mov dx, 0x1ed4                   ; 0x1261
    int 0x33 ; BIOS mouse
    pop es                           ; 0x1266
@..mouse_init.l1:
    pop es                           ; 0x1267
    mov sp, bp                       ; 0x1268
    pop bp                           ; 0x126a
    ret                              ; 0x126b
