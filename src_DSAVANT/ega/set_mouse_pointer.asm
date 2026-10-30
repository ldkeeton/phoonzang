; auto-generated
set_mouse_pointer:
    push bp                          ; 0x19c1
    mov bp, sp                       ; 0x19c2
    sub sp, byte 4                   ; 0x19c4
    push ds                          ; 0x19c7
    push es                          ; 0x19c8
    push si                          ; 0x19c9
    push di                          ; 0x19ca
    mov ax, ds                       ; 0x19cb
    mov es, ax                       ; 0x19cd
    mov ax, word [bp + 0x10]         ; 0x19cf
    cmp ax, strict word 0x51         ; 0x19d2
    jb short .forward1               ; 0x19d5
.back1:
    jmp near .forward7               ; 0x19d7
.forward1:
    mov bx, word [bp + 0x12]         ; 0x19da
    mul bx                           ; 0x19dd
    or dx, dx                        ; 0x19df
    jne short .back1                 ; 0x19e1
    cmp ax, 0x401                    ; 0x19e3
    jae short .back1                 ; 0x19e6
    call request_mouse_redraw        ; 0x19e8
    mov ax, word [bp + 0xc]          ; 0x19eb
    mov word [cs:mouse_pointer_bitmap_offset - IMAGE_BASE], ax ; 0x19ee
    mov ax, word [bp + 0xe]          ; 0x19f2
    mov word [cs:mouse_pointer_bitmap_segment - IMAGE_BASE], ax ; 0x19f5
    mov ax, word [bp + 0x10]         ; 0x19f9
    mov word [cs:mouse_pointer_width - IMAGE_BASE], ax ; 0x19fc
    mov ax, word [bp + 0x12]         ; 0x1a00
    mov word [cs:mouse_pointer_height - IMAGE_BASE], ax ; 0x1a03
    mov ax, word [cs:mouse_pointer_bitmap_offset - IMAGE_BASE] ; 0x1a07
    or ax, word [cs:mouse_pointer_bitmap_segment - IMAGE_BASE] ; 0x1a0b
    jne short .forward2              ; 0x1a10
    mov ax, cs                       ; 0x1a12
    mov ds, ax                       ; 0x1a14
    mov es, ax                       ; 0x1a16
    mov si, default_pointer_dimensions - IMAGE_BASE ; 0x1a18
    mov di, mouse_pointer_width - IMAGE_BASE ; 0x1a1b
    mov cx, 6                        ; 0x1a1e
    rep movsb                        ; 0x1a21
    push ds                          ; 0x1a23
    push si                          ; 0x1a24
    mov si, default_pointer_bitmap - IMAGE_BASE ; 0x1a25
    mov ax, cs                       ; 0x1a28
    mov ds, ax                       ; 0x1a2a
    call expand_cursor_bitmap_planes ; 0x1a2c
    pop si                           ; 0x1a2f
    pop ds                           ; 0x1a30
    jmp short .forward3              ; 0x1a31
.forward2:
    mov ax, word [cs:mouse_pointer_width - IMAGE_BASE] ; 0x1a33
    add ax, strict word 3            ; 0x1a37
    mov cl, 2                        ; 0x1a3a
    shr ax, cl                       ; 0x1a3c
    mov word [cs:cursor_bitmap_stride - IMAGE_BASE], ax ; 0x1a3e
    push ds                          ; 0x1a42
    push si                          ; 0x1a43
    mov si, word [bp + 0xc]          ; 0x1a44
    mov ax, word [bp + 0xe]          ; 0x1a47
    mov ds, ax                       ; 0x1a4a
    call expand_cursor_bitmap_planes ; 0x1a4c
    pop si                           ; 0x1a4f
    pop ds                           ; 0x1a50
.forward3:
    cmp byte [cs:mouse_present - IMAGE_BASE], 0 ; 0x1a51
    je short .forward6               ; 0x1a57
    mov cx, word [bp + 0x14]         ; 0x1a59
    cmp cx, byte -1                  ; 0x1a5c
    je short .forward4               ; 0x1a5f
    mov dx, word [bp + 0x16]         ; 0x1a61
    cmp dx, byte -1                  ; 0x1a64
    je short .forward4               ; 0x1a67
    shl cx, 1                        ; 0x1a69
    mov ax, 4                        ; 0x1a6b
    int 0x33 ; BIOS mouse
.back2:
    mov ax, 3                        ; 0x1a70
    int 0x33 ; BIOS mouse
    jmp short .forward5              ; 0x1a75
.forward4:
    cmp byte [cs:mouse_glide_active - IMAGE_BASE], 0 ; 0x1a77
    je short .back2                  ; 0x1a7d
    mov cx, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x1a7f
    shl cx, 1                        ; 0x1a84
    mov dx, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x1a86
.forward5:
    mov ax, cs                       ; 0x1a8b
    push ax                          ; 0x1a8d
    call draw_mouse_pointer_at       ; 0x1a8e
    mov byte [cs:mouse_redraw_pending - IMAGE_BASE], 0 ; 0x1a91
.forward6:
    pop di                           ; 0x1a97
    pop si                           ; 0x1a98
    pop es                           ; 0x1a99
    pop ds                           ; 0x1a9a
    mov sp, bp                       ; 0x1a9b
    pop bp                           ; 0x1a9d
    ret                              ; 0x1a9e
.forward7:
    mov ax, cs                       ; 0x1a9f
    mov ds, ax                       ; 0x1aa1
    mov dx, mouse_pointer_size_message - IMAGE_BASE ; 0x1aa3
    mov ah, 9                        ; 0x1aa6
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x1aaa
    int 0x21 ; DOS function dispatcher
