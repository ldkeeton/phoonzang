; auto-generated
load_font_file:
    push bp                          ; 0x3860
    mov bp, sp                       ; 0x3861
    cld                              ; 0x3863
    sub sp, byte 8                   ; 0x3864
    push si                          ; 0x3867
    push di                          ; 0x3868
    push ds                          ; 0x3869
    push es                          ; 0x386a
    mov ax, ds                       ; 0x386b
    mov es, ax                       ; 0x386d
    mov bx, word [cs:font_header_seg - IMAGE_BASE] ; 0x386f
    mov ds, bx                       ; 0x3874
    xor dx, dx                       ; 0x3876
    mov bx, word [bp + 4]            ; 0x3878
    mov cx, 0x10                     ; 0x387b
    mov ah, 0x3f                     ; 0x387e
    int 0x21 ; DOS read file (handle)
    jae short .forward1              ; 0x3882
    jmp near .forward5               ; 0x3884
.forward1:
    xor bx, bx                       ; 0x3887
    mov ax, word [bx + 0xa]          ; 0x3889
    xor cx, cx                       ; 0x388c
    mov cl, byte [bx + 5]            ; 0x388e
    mul cx                           ; 0x3891
    mov word [bp - 8], ax            ; 0x3893
    add ax, file_param_word          ; 0x3896
    mov word [bp - 2], ax            ; 0x3899
    mov word [bp - 4], ax            ; 0x389c
    mov al, byte [bx + 2]            ; 0x389f
    or al, al                        ; 0x38a2
    jne short .forward2              ; 0x38a4
    mov dl, byte [bx + 6]            ; 0x38a6
    test dl, 2                       ; 0x38a9
    je short .forward2               ; 0x38ac
    mov ax, word [bx + 0xe]          ; 0x38ae
    xor ch, ch                       ; 0x38b1
    mov cl, byte [bx + 5]            ; 0x38b3
    mul cx                           ; 0x38b6
    add word [bp - 4], ax            ; 0x38b8
    mov dl, byte [bx + 6]            ; 0x38bb
    test dl, 4                       ; 0x38be
    je short .forward2               ; 0x38c1
    add word [bp - 2], ax            ; 0x38c3
.forward2:
    mov dx, word [bp - 4]            ; 0x38c6
    add dx, byte 0xf                 ; 0x38c9
    mov cl, 4                        ; 0x38cc
    shr dx, cl                       ; 0x38ce
    mov bx, dx                       ; 0x38d0
    mov ah, 0x48                     ; 0x38d2
    int 0x21 ; DOS allocate memory
    jae short .forward3              ; 0x38d6
    jmp near font_memory_error       ; 0x38d8
.forward3:
    mov bx, font_seg_table - IMAGE_BASE ; 0x38db
    mov cx, word [bp + 6]            ; 0x38de
    shl cx, 1                        ; 0x38e1
    add bx, cx                       ; 0x38e3
    mov word [cs:bx], ax             ; 0x38e5
    mov es, ax                       ; 0x38e8
    xor di, di                       ; 0x38ea
    xor si, si                       ; 0x38ec
    mov cx, 0x10                     ; 0x38ee
    rep movsb                        ; 0x38f1
    mov ds, ax                       ; 0x38f3
    mov dx, 0x10                     ; 0x38f5
    mov bx, word [bp + 4]            ; 0x38f8
    mov cx, word [bp - 2]            ; 0x38fb
    sub cx, dx                       ; 0x38fe
    mov ah, 0x3f                     ; 0x3900
    int 0x21 ; DOS read file (handle)
    jb short .forward5               ; 0x3904
    xor bx, bx                       ; 0x3906
    mov al, byte [bx + 6]            ; 0x3908
    and al, 6                        ; 0x390b
    cmp al, 2                        ; 0x390d
    jne short .forward4              ; 0x390f
    mov al, byte [bx + 2]            ; 0x3911
    or al, al                        ; 0x3914
    jne short .forward4              ; 0x3916
    mov ax, ds                       ; 0x3918
    mov es, ax                       ; 0x391a
    mov di, word [bx + 0xc]          ; 0x391c
    mov si, 0x110                    ; 0x391f
    mov cx, word [bp - 8]            ; 0x3922
    rep movsb                        ; 0x3925
.forward4:
    pop es                           ; 0x3927
    pop ds                           ; 0x3928
    pop di                           ; 0x3929
    pop si                           ; 0x392a
    mov sp, bp                       ; 0x392b
    pop bp                           ; 0x392d
    ret                              ; 0x392e
.forward5:
    mov ax, cs                       ; 0x392f
    mov ds, ax                       ; 0x3931
    mov dx, font_io_error_msg - IMAGE_BASE ; 0x3933
font_io_error_exit:
    mov ah, 9                        ; 0x3936
    int 0x21 ; DOS string output
    mov ax, 0x4c01                   ; 0x393a
    int 0x21 ; DOS function dispatcher
