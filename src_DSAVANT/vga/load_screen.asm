; auto-generated
load_screen:
    push bp                          ; 0x08d2
    mov bp, sp                       ; 0x08d3
    push ds                          ; 0x08d5
    push es                          ; 0x08d6
    push si                          ; 0x08d7
    push di                          ; 0x08d8
    mov ax, ds                       ; 0x08d9
    mov es, ax                       ; 0x08db
    mov ax, word [bp + 0xe]          ; 0x08dd
    cmp ax, strict word 2            ; 0x08e0
    je short @..load_screen.l2       ; 0x08e3
    cmp ax, strict word 1            ; 0x08e5
    je short @..load_screen.l1       ; 0x08e8
    jmp near @..load_screen.l4       ; 0x08ea
@..load_screen.l1:
    mov ax, word [bp + 0xc]          ; 0x08ed
    shl ax, 1                        ; 0x08f0
    mov bx, data_0251                ; 0x08f2
    add bx, ax                       ; 0x08f5
    mov ax, word [cs:bx]             ; 0x08f7
    dec ax                           ; 0x08fa
    mov cl, 2                        ; 0x08fb
    shl ax, cl                       ; 0x08fd
    mov bx, maze_blocks - IMAGE_BASE ; 0x08ff
    add bx, ax                       ; 0x0902
    mov ax, word [cs:bx]             ; 0x0904
    mov bx, word [cs:maze_mem_seg - IMAGE_BASE] ; 0x0907
    add bx, ax                       ; 0x090c
    mov ds, bx                       ; 0x090e
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE] ; 0x0910
    mov es, ax                       ; 0x0914
    xor di, di                       ; 0x0916
    xor si, si                       ; 0x0918
    mov cx, 0xfa00                   ; 0x091a
    rep movsb                        ; 0x091d
    jmp short @..load_screen.l5      ; 0x091f
@..load_screen.l2:
    mov ax, word [bp + 0xc]          ; 0x0921
    shl ax, 1                        ; 0x0924
    mov bx, cseg_01d7 - IMAGE_BASE   ; 0x0926
    add bx, ax                       ; 0x0929
    mov ax, word [cs:bx]             ; 0x092b
    dec ax                           ; 0x092e
    mov cl, 2                        ; 0x092f
    shl ax, cl                       ; 0x0931
    mov bx, ems_blocks - IMAGE_BASE  ; 0x0933
    add bx, ax                       ; 0x0936
    mov si, word [cs:bx]             ; 0x0938
    mov ax, si                       ; 0x093b
    mov cl, 0xa                      ; 0x093d
    shr ax, cl                       ; 0x093f
    mov word [cs:ems_cur_page - IMAGE_BASE], ax ; 0x0941
    call ems_map_pages               ; 0x0945
    and si, strict word 0x3ff        ; 0x0948
    mov cl, 4                        ; 0x094c
    shl si, cl                       ; 0x094e
    mov bx, word [cs:ems_frame_seg - IMAGE_BASE] ; 0x0950
    mov ds, bx                       ; 0x0955
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE] ; 0x0957
    mov es, ax                       ; 0x095b
    xor di, di                       ; 0x095d
    mov cx, 3                        ; 0x095f
@..load_screen.l3:
    push cx                          ; 0x0962
    mov cx, 0x4000                   ; 0x0963
    rep movsb                        ; 0x0966
    and si, strict word 0x3fff       ; 0x0968
    inc word [cs:ems_cur_page - IMAGE_BASE] ; 0x096c
    mov ax, word [cs:ems_cur_page - IMAGE_BASE] ; 0x0971
    call ems_map_pages               ; 0x0975
    pop cx                           ; 0x0978
    loop @..load_screen.l3           ; 0x0979
    mov cx, 0x3a00                   ; 0x097b
    rep movsb                        ; 0x097e
    jmp short @..load_screen.l5      ; 0x0980
@..load_screen.l4:
    mov ax, word [cs:screen_buf_seg - IMAGE_BASE] ; 0x0982
    mov ds, ax                       ; 0x0986
    xor dx, dx                       ; 0x0988
    mov bx, word [bp + 0xc]          ; 0x098a
    mov cx, 0xfa00                   ; 0x098d
    mov ah, 0x3f                     ; 0x0990
    int 0x21 ; DOS read file (handle)
@..load_screen.l5:
    pop di                           ; 0x0994
    pop si                           ; 0x0995
    pop es                           ; 0x0996
    pop ds                           ; 0x0997
    mov sp, bp                       ; 0x0998
    pop bp                           ; 0x099a
    ret                              ; 0x099b
