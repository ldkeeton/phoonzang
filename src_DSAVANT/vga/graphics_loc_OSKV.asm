; auto-generated
graphics_loc_OSKV:
    push bp                          ; 0x1e35
    mov bp, sp                       ; 0x1e36
    sub sp, byte 0x10                ; 0x1e38
    mov ax, word [cs:cseg_14b2 - IMAGE_BASE] ; 0x1e3b
    mov bx, 0xc8                     ; 0x1e3f
    sub bx, ax                       ; 0x1e42
    cmp bx, word [cs:cseg_1d5e - IMAGE_BASE] ; 0x1e44
    jb short .forward1               ; 0x1e49
    mov bx, word [cs:cseg_1d5e - IMAGE_BASE] ; 0x1e4b
.forward1:
    mov word [cs:cseg_14c0 - IMAGE_BASE], bx ; 0x1e50
    mov bx, 0x140                    ; 0x1e55
    mul bx                           ; 0x1e58
    mov bx, word [cs:cseg_14b0 - IMAGE_BASE] ; 0x1e5a
    add ax, bx                       ; 0x1e5f
    mov si, ax                       ; 0x1e61
    mov word [cs:cseg_14c2 - IMAGE_BASE], ax ; 0x1e63
    mov cx, 0x140                    ; 0x1e67
    sub cx, bx                       ; 0x1e6a
    cmp cx, word [cs:mouse_image_stride - IMAGE_BASE] ; 0x1e6c
    jb short .forward2               ; 0x1e71
    mov cx, word [cs:mouse_image_stride - IMAGE_BASE] ; 0x1e73
.forward2:
    mov word [cs:cseg_14be - IMAGE_BASE], cx ; 0x1e78
    mov di, word [cs:mouse_redraw_background_offset - IMAGE_BASE] ; 0x1e7d
    mov ax, cs                       ; 0x1e82
    mov es, ax                       ; 0x1e84
    mov ax, 0xa000                   ; 0x1e86
    mov ds, ax                       ; 0x1e89
    mov cx, word [cs:cseg_14c0 - IMAGE_BASE] ; 0x1e8b
.back1:
    push cx                          ; 0x1e90
    push si                          ; 0x1e91
    mov cx, word [cs:cseg_14be - IMAGE_BASE] ; 0x1e92
    rep movsb                        ; 0x1e97
    pop si                           ; 0x1e99
    add si, strict word 0x140        ; 0x1e9a
    pop cx                           ; 0x1e9e
    loop .back1                      ; 0x1e9f
    mov ax, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x1ea1
    cmp ax, strict word 0xffff       ; 0x1ea5
    jne short .forward3              ; 0x1ea8
    jmp near .forward10              ; 0x1eaa
.forward3:
    add ax, word [cs:mouse_drawn_height - IMAGE_BASE] ; 0x1ead
    dec ax                           ; 0x1eb2
    mov word [bp - 2], ax            ; 0x1eb3
    mov ax, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x1eb6
    add ax, word [cs:mouse_drawn_width - IMAGE_BASE] ; 0x1eba
    dec ax                           ; 0x1ebf
    mov word [bp - 4], ax            ; 0x1ec0
    mov cx, word [cs:cseg_14b0 - IMAGE_BASE] ; 0x1ec3
    mov dx, word [cs:cseg_14b2 - IMAGE_BASE] ; 0x1ec8
    cmp word [bp - 4], cx            ; 0x1ecd
    jb short .forward4               ; 0x1ed0
    cmp word [bp - 2], dx            ; 0x1ed2
    jb short .forward4               ; 0x1ed5
    add cx, word [cs:cseg_14be - IMAGE_BASE] ; 0x1ed7
    dec cx                           ; 0x1edc
    add dx, word [cs:cseg_14c0 - IMAGE_BASE] ; 0x1edd
    dec dx                           ; 0x1ee2
    cmp cx, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x1ee3
    jb short .forward4               ; 0x1ee8
    cmp dx, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x1eea
    jae short .forward5              ; 0x1eef
.forward4:
    mov byte [cs:cseg_1d68 - IMAGE_BASE], 0 ; 0x1ef1
    jmp near .forward10              ; 0x1ef7
.forward5:
    mov byte [cs:cseg_1d68 - IMAGE_BASE], 1 ; 0x1efa
    mov cx, word [cs:cseg_14b0 - IMAGE_BASE] ; 0x1f00
    mov ax, cx                       ; 0x1f05
    cmp word [cs:mouse_drawn_x - IMAGE_BASE], cx ; 0x1f07
    jb short .forward6               ; 0x1f0c
    mov ax, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x1f0e
.forward6:
    mov word [bp - 6], ax            ; 0x1f12
    mov dx, word [cs:cseg_14b2 - IMAGE_BASE] ; 0x1f15
    mov bx, dx                       ; 0x1f1a
    cmp word [cs:mouse_drawn_y - IMAGE_BASE], dx ; 0x1f1c
    jb short .forward7               ; 0x1f21
    mov bx, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x1f23
.forward7:
    mov word [bp - 8], bx            ; 0x1f28
    sub ax, cx                       ; 0x1f2b
    sub bx, dx                       ; 0x1f2d
    mov word [bp - 0xa], ax          ; 0x1f2f
    mov word [bp - 0xc], bx          ; 0x1f32
    mov cx, word [cs:cseg_14be - IMAGE_BASE] ; 0x1f35
    mov dx, word [cs:cseg_14c0 - IMAGE_BASE] ; 0x1f3a
    sub cx, ax                       ; 0x1f3f
    mov word [bp - 0xe], cx          ; 0x1f41
    sub dx, bx                       ; 0x1f44
    mov word [bp - 0x10], dx         ; 0x1f46
    mov ax, word [bp - 6]            ; 0x1f49
    add ax, word [bp - 0xe]          ; 0x1f4c
    dec ax                           ; 0x1f4f
    cmp ax, word [bp - 4]            ; 0x1f50
    jb short .forward8               ; 0x1f53
    mov ax, word [bp - 4]            ; 0x1f55
    sub ax, word [bp - 6]            ; 0x1f58
    inc ax                           ; 0x1f5b
    mov word [bp - 0xe], ax          ; 0x1f5c
.forward8:
    mov ax, word [bp - 8]            ; 0x1f5f
    add ax, word [bp - 0x10]         ; 0x1f62
    dec ax                           ; 0x1f65
    cmp ax, word [bp - 2]            ; 0x1f66
    jb short .forward9               ; 0x1f69
    mov ax, word [bp - 2]            ; 0x1f6b
    sub ax, word [bp - 8]            ; 0x1f6e
    inc ax                           ; 0x1f71
    mov word [bp - 0x10], ax         ; 0x1f72
.forward9:
    mov ax, word [bp - 8]            ; 0x1f75
    sub ax, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x1f78
    mov bx, word [cs:mouse_drawn_width - IMAGE_BASE] ; 0x1f7d
    mul bx                           ; 0x1f82
    add ax, word [bp - 6]            ; 0x1f84
    sub ax, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x1f87
    add ax, word [cs:mouse_saved_background_offset - IMAGE_BASE] ; 0x1f8c
    mov si, ax                       ; 0x1f91
    mov ax, word [bp - 0xc]          ; 0x1f93
    mov bx, word [cs:cseg_14be - IMAGE_BASE] ; 0x1f96
    mul bx                           ; 0x1f9b
    add ax, word [bp - 0xa]          ; 0x1f9d
    add ax, word [cs:mouse_redraw_background_offset - IMAGE_BASE] ; 0x1fa0
    mov di, ax                       ; 0x1fa5
    mov ax, cs                       ; 0x1fa7
    mov ds, ax                       ; 0x1fa9
    mov es, ax                       ; 0x1fab
    mov cx, word [bp - 0x10]         ; 0x1fad
.back2:
    push cx                          ; 0x1fb0
    push si                          ; 0x1fb1
    push di                          ; 0x1fb2
    mov cx, word [bp - 0xe]          ; 0x1fb3
    rep movsb                        ; 0x1fb6
    pop di                           ; 0x1fb8
    add di, word [cs:cseg_14be - IMAGE_BASE] ; 0x1fb9
    pop si                           ; 0x1fbe
    add si, word [cs:mouse_drawn_width - IMAGE_BASE] ; 0x1fbf
    pop cx                           ; 0x1fc4
    loop .back2                      ; 0x1fc5
.forward10:
    mov ax, 0xa000                   ; 0x1fc7
    mov es, ax                       ; 0x1fca
    mov di, word [cs:cseg_14c2 - IMAGE_BASE] ; 0x1fcc
    mov ax, word [cs:mouse_image_segment - IMAGE_BASE] ; 0x1fd1
    mov ds, ax                       ; 0x1fd5
    mov si, word [cs:mouse_image_offset - IMAGE_BASE] ; 0x1fd7
    mov cx, word [cs:cseg_14c0 - IMAGE_BASE] ; 0x1fdc
    mov ax, ds                       ; 0x1fe1
    or ax, si                        ; 0x1fe3
    jne short .forward11             ; 0x1fe5
    mov si, 0x1e69                   ; 0x1fe7
    mov ax, cs                       ; 0x1fea
    mov ds, ax                       ; 0x1fec
.forward11:
    push di                          ; 0x1fee
    push si                          ; 0x1fef
.back3:
    push cx                          ; 0x1ff0
    push di                          ; 0x1ff1
    push si                          ; 0x1ff2
    mov cx, word [cs:cseg_14be - IMAGE_BASE] ; 0x1ff3
.back4:
    mov al, byte [si]                ; 0x1ff8
    cmp al, 0xff                     ; 0x1ffa
    je short .forward12              ; 0x1ffc
    mov byte [es:di], al             ; 0x1ffe
.forward12:
    inc si                           ; 0x2001
    inc di                           ; 0x2002
    loop .back4                      ; 0x2003
    pop si                           ; 0x2005
    add si, word [cs:mouse_image_stride - IMAGE_BASE] ; 0x2006
    pop di                           ; 0x200b
    add di, strict word 0x140        ; 0x200c
    pop cx                           ; 0x2010
    loop .back3                      ; 0x2011
    pop bx                           ; 0x2013
    pop di                           ; 0x2014
    mov ax, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x2015
    cmp ax, strict word 0xffff       ; 0x2019
    jne short .forward13             ; 0x201c
    jmp near .forward20              ; 0x201e
.forward13:
    mov si, word [cs:mouse_redraw_background_offset - IMAGE_BASE] ; 0x2021
    mov cx, word [cs:cseg_14c0 - IMAGE_BASE] ; 0x2026
.back5:
    push cx                          ; 0x202b
    push di                          ; 0x202c
    push si                          ; 0x202d
    push bx                          ; 0x202e
    mov cx, word [cs:cseg_14be - IMAGE_BASE] ; 0x202f
.back6:
    mov al, byte [bx]                ; 0x2034
    inc bx                           ; 0x2036
    cmp al, 0xff                     ; 0x2037
    jne short .forward14             ; 0x2039
    mov dl, byte [cs:si]             ; 0x203b
    mov byte [es:di], dl             ; 0x203e
.forward14:
    inc si                           ; 0x2041
    inc di                           ; 0x2042
    loop .back6                      ; 0x2043
    pop bx                           ; 0x2045
    add bx, word [cs:mouse_image_stride - IMAGE_BASE] ; 0x2046
    pop si                           ; 0x204b
    add si, word [cs:cseg_14be - IMAGE_BASE] ; 0x204c
    pop di                           ; 0x2051
    add di, strict word 0x140        ; 0x2052
    pop cx                           ; 0x2056
    loop .back5                      ; 0x2057
    mov ax, cs                       ; 0x2059
    mov es, ax                       ; 0x205b
    mov ds, ax                       ; 0x205d
    mov di, data_1dc4                ; 0x205f
    mov cx, 0x88                     ; 0x2062
    mov al, 0xff                     ; 0x2065
    rep stosb                        ; 0x2067
    mov ax, word [cs:mouse_drawn_width - IMAGE_BASE] ; 0x2069
    add ax, strict word 7            ; 0x206d
    mov cl, 3                        ; 0x2070
    shr ax, cl                       ; 0x2072
    mov word [bp - 2], ax            ; 0x2074
    cmp byte [cs:cseg_1d68 - IMAGE_BASE], 0 ; 0x2077
    je short .forward18              ; 0x207d
    mov ax, word [bp - 8]            ; 0x207f
    sub ax, word [cs:mouse_drawn_y - IMAGE_BASE] ; 0x2082
    mov bx, word [bp - 2]            ; 0x2087
    mul bx                           ; 0x208a
    mov di, ax                       ; 0x208c
    add di, data_1dc4                ; 0x208e
    mov ax, word [bp - 6]            ; 0x2092
    sub ax, word [cs:mouse_drawn_x - IMAGE_BASE] ; 0x2095
    mov bx, data_1e4c                ; 0x209a
.back7:
    cmp ax, strict word 8            ; 0x209d
    jb short .forward15              ; 0x20a0
    sub ax, strict word 8            ; 0x20a2
    inc di                           ; 0x20a5
    jmp short .back7                 ; 0x20a6
.forward15:
    mov cx, ax                       ; 0x20a8
    mov ah, 0xff                     ; 0x20aa
    shr ah, cl                       ; 0x20ac
    mov dx, word [bp - 0xe]          ; 0x20ae
    add dx, cx                       ; 0x20b1
.back8:
    cmp dx, byte 8                   ; 0x20b3
    jb short .forward16              ; 0x20b6
    not ah                           ; 0x20b8
    mov byte [bx], ah                ; 0x20ba
    inc bx                           ; 0x20bc
    mov ah, 0xff                     ; 0x20bd
    sub dx, byte 8                   ; 0x20bf
    je short .forward17              ; 0x20c2
    jmp short .back8                 ; 0x20c4
.forward16:
    mov al, 0xff                     ; 0x20c6
    mov cx, 8                        ; 0x20c8
    sub cx, dx                       ; 0x20cb
    shl al, cl                       ; 0x20cd
    and ah, al                       ; 0x20cf
    not ah                           ; 0x20d1
    mov byte [bx], ah                ; 0x20d3
    inc bx                           ; 0x20d5
.forward17:
    sub bx, data_1e4c                ; 0x20d6
    mov word [bp - 4], bx            ; 0x20da
    mov cx, word [bp - 0x10]         ; 0x20dd
.back9:
    push cx                          ; 0x20e0
    push di                          ; 0x20e1
    mov si, data_1e4c                ; 0x20e2
    mov cx, word [bp - 4]            ; 0x20e5
    rep movsb                        ; 0x20e8
    pop di                           ; 0x20ea
    add di, word [bp - 2]            ; 0x20eb
    pop cx                           ; 0x20ee
    loop .back9                      ; 0x20ef
.forward18:
    mov bx, data_1dc4                ; 0x20f1
    mov si, word [cs:mouse_saved_background_offset - IMAGE_BASE] ; 0x20f4
    mov di, word [cs:mouse_screen_offset - IMAGE_BASE] ; 0x20f9
    mov ax, 0xa000                   ; 0x20fe
    mov es, ax                       ; 0x2101
    mov cx, word [cs:mouse_drawn_height - IMAGE_BASE] ; 0x2103
.back10:
    push cx                          ; 0x2108
    push si                          ; 0x2109
    push bx                          ; 0x210a
    push di                          ; 0x210b
    mov cx, word [cs:mouse_drawn_width - IMAGE_BASE] ; 0x210c
.back11:
    mov ah, byte [bx]                ; 0x2111
    inc bx                           ; 0x2113
    mov al, 9                        ; 0x2114
.back12:
    dec al                           ; 0x2116
    je short .back11                 ; 0x2118
    shl ah, 1                        ; 0x211a
    jae short .forward19             ; 0x211c
    mov dl, byte [si]                ; 0x211e
    mov byte [es:di], dl             ; 0x2120
.forward19:
    inc di                           ; 0x2123
    inc si                           ; 0x2124
    loop .back12                     ; 0x2125
    pop di                           ; 0x2127
    add di, strict word 0x140        ; 0x2128
    pop bx                           ; 0x212c
    add bx, word [bp - 2]            ; 0x212d
    pop si                           ; 0x2130
    add si, word [cs:mouse_drawn_width - IMAGE_BASE] ; 0x2131
    pop cx                           ; 0x2136
    loop .back10                     ; 0x2137
.forward20:
    mov ax, word [cs:mouse_saved_background_offset - IMAGE_BASE] ; 0x2139
    mov bx, word [cs:mouse_redraw_background_offset - IMAGE_BASE] ; 0x213d
    mov word [cs:mouse_redraw_background_offset - IMAGE_BASE], ax ; 0x2142
    mov word [cs:mouse_saved_background_offset - IMAGE_BASE], bx ; 0x2146
    mov ax, word [cs:cseg_14b0 - IMAGE_BASE] ; 0x214b
    mov word [cs:mouse_drawn_x - IMAGE_BASE], ax ; 0x214f
    mov ax, word [cs:cseg_14b2 - IMAGE_BASE] ; 0x2153
    mov word [cs:mouse_drawn_y - IMAGE_BASE], ax ; 0x2157
    mov ax, word [cs:cseg_14c0 - IMAGE_BASE] ; 0x215b
    mov word [cs:mouse_drawn_height - IMAGE_BASE], ax ; 0x215f
    mov ax, word [cs:cseg_14be - IMAGE_BASE] ; 0x2163
    mov word [cs:mouse_drawn_width - IMAGE_BASE], ax ; 0x2167
    mov ax, word [cs:cseg_14c2 - IMAGE_BASE] ; 0x216b
    mov word [cs:mouse_screen_offset - IMAGE_BASE], ax ; 0x216f
    mov sp, bp                       ; 0x2173
    pop bp                           ; 0x2175
    xor al, al                       ; 0x2176
    mov byte [cs:cseg_1dd3 - IMAGE_BASE], al ; 0x2178
    retf                             ; 0x217c
