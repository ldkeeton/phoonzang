; auto-generated
expand_cursor_bitmap_planes:
    push es                          ; 0x17a1
    push di                          ; 0x17a2
    mov ax, cs                       ; 0x17a3
    mov es, ax                       ; 0x17a5
    mov cx, 0x100                    ; 0x17a7
    mov di, cursor_bitmap_base - IMAGE_BASE ; 0x17aa
    xor al, al                       ; 0x17ad
    rep stosb                        ; 0x17af
    mov cx, 0x400                    ; 0x17b1
    mov di, cursor_plane_buffers - IMAGE_BASE ; 0x17b4
    xor al, al                       ; 0x17b7
    rep stosb                        ; 0x17b9
    xor di, di                       ; 0x17bb
    mov bx, pixel_plane_lookup - IMAGE_BASE ; 0x17bd
    mov cx, word [cs:mouse_pointer_height - IMAGE_BASE] ; 0x17c0
.back1:
    push cx                          ; 0x17c5
    mov cx, word [cs:mouse_pointer_width - IMAGE_BASE] ; 0x17c6
    mov word [bp - 2], cx            ; 0x17cb
    mov al, 6                        ; 0x17ce
    mov byte [bp - 4], al            ; 0x17d0
.back2:
    lodsb                            ; 0x17d3
    mov ah, byte [bp - 4]            ; 0x17d4
    call expand_transparent_px_to_planes ; 0x17d7
    or byte [cs:di + cursor_bitmap_base - IMAGE_BASE], ch ; 0x17da
    or byte [cs:di + cursor_plane_buffers - IMAGE_BASE], dl ; 0x17df
    or byte [cs:di + cursor_plane_buffer_2 - IMAGE_BASE], dh ; 0x17e4
    or byte [cs:di + cursor_plane_buffer_3 - IMAGE_BASE], al ; 0x17e9
    or byte [cs:di + cursor_plane_buffer_4 - IMAGE_BASE], ah ; 0x17ee
    sub byte [bp - 4], 2             ; 0x17f3
    jae short .forward1              ; 0x17f7
    inc di                           ; 0x17f9
    mov byte [bp - 4], 6             ; 0x17fa
.forward1:
    dec word [bp - 2]                ; 0x17fe
    jne short .back2                 ; 0x1801
    cmp byte [bp - 4], 6             ; 0x1803
    je short .forward2               ; 0x1807
    inc di                           ; 0x1809
.forward2:
    pop cx                           ; 0x180a
    loop .back1                      ; 0x180b
    pop di                           ; 0x180d
    pop es                           ; 0x180e
    ret                              ; 0x180f
