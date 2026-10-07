leaf_loc_0949:
    cmp byte [cs:data_0228], 1       ; 0x0949
    jne short @..leaf_loc_0949.l1    ; 0x094f
    mov cx, word [cs:data_1bd9]      ; 0x0951
    and cx, strict word 0xfffc       ; 0x0956
    mov dx, word [cs:data_1bdb]      ; 0x095a
    cmp word [bp + 0x10], cx         ; 0x095f
    jb short @..leaf_loc_0949.l1     ; 0x0962
    cmp word [bp + 0x12], dx         ; 0x0964
    jb short @..leaf_loc_0949.l1     ; 0x0967
    add cx, word [cs:data_1be1]      ; 0x0969
    add cx, word [cs:data_1be1]      ; 0x096e
    add cx, word [cs:data_1be1]      ; 0x0973
    add cx, word [cs:data_1be1]      ; 0x0978
    dec cx                           ; 0x097d
    add dx, word [cs:data_1be3]      ; 0x097e
    dec dx                           ; 0x0983
    cmp cx, word [bp + 0xc]          ; 0x0984
    jb short @..leaf_loc_0949.l1     ; 0x0987
    cmp dx, word [bp + 0xe]          ; 0x0989
    jae short @..leaf_loc_0949.l2    ; 0x098c
@..leaf_loc_0949.l1:
    mov byte [cs:data_0a48], 0       ; 0x098e
    jmp near @..leaf_loc_0949.l16    ; 0x0994
@..leaf_loc_0949.l2:
    mov byte [cs:data_0a48], 1       ; 0x0997
    mov cx, word [cs:data_1bd9]      ; 0x099d
    and cx, strict word 0xfffc       ; 0x09a2
    mov ax, cx                       ; 0x09a6
    cmp word [bp + 0xc], cx          ; 0x09a8
    jb short @..leaf_loc_0949.l3     ; 0x09ab
    mov ax, word [bp + 0xc]          ; 0x09ad
@..leaf_loc_0949.l3:
    mov word [bp - 0x0006], ax       ; 0x09b0
    mov dx, word [cs:data_1bdb]      ; 0x09b3
    mov bx, dx                       ; 0x09b8
    cmp word [bp + 0xe], dx          ; 0x09ba
    jb short @..leaf_loc_0949.l4     ; 0x09bd
    mov bx, word [bp + 0xe]          ; 0x09bf
@..leaf_loc_0949.l4:
    mov word [bp - 0x0008], bx       ; 0x09c2
    sub ax, cx                       ; 0x09c5
    sub bx, dx                       ; 0x09c7
    mov word [bp - 0x000a], ax       ; 0x09c9
    mov word [bp - 0x000c], bx       ; 0x09cc
    mov cx, word [cs:data_1be1]      ; 0x09cf
    shl cx, 1                        ; 0x09d4
    shl cx, 1                        ; 0x09d6
    mov dx, word [cs:data_1be3]      ; 0x09d8
    sub cx, ax                       ; 0x09dd
    mov word [bp - 0x000e], cx       ; 0x09df
    sub dx, bx                       ; 0x09e2
    mov word [bp - 0x0010], dx       ; 0x09e4
    mov ax, word [bp - 0x0006]       ; 0x09e7
    add ax, word [bp - 0x000e]       ; 0x09ea
    dec ax                           ; 0x09ed
    cmp ax, word [bp + 0x10]         ; 0x09ee
    jb short @..leaf_loc_0949.l5     ; 0x09f1
    mov ax, word [bp + 0x10]         ; 0x09f3
    sub ax, word [bp - 0x0006]       ; 0x09f6
    inc ax                           ; 0x09f9
    mov word [bp - 0x000e], ax       ; 0x09fa
@..leaf_loc_0949.l5:
    mov ax, word [bp - 0x0008]       ; 0x09fd
    add ax, word [bp - 0x0010]       ; 0x0a00
    dec ax                           ; 0x0a03
    cmp ax, word [bp + 0x12]         ; 0x0a04
    jb short @..leaf_loc_0949.l6     ; 0x0a07
    mov ax, word [bp + 0x12]         ; 0x0a09
    sub ax, word [bp - 0x0008]       ; 0x0a0c
    inc ax                           ; 0x0a0f
    mov word [bp - 0x0010], ax       ; 0x0a10
@..leaf_loc_0949.l6:
    mov ax, word [bp - 0x0008]       ; 0x0a13
    mov bx, 0x140                    ; 0x0a16
    mul bx                           ; 0x0a19
    add ax, word [bp - 0x0006]       ; 0x0a1b
    mov si, ax                       ; 0x0a1e
    mov ax, word [bp - 0x000c]       ; 0x0a20
    mov bx, word [cs:data_1be1]      ; 0x0a23
    mul bx                           ; 0x0a28
    mov bx, word [bp - 0x000a]       ; 0x0a2a
    shr bx, 1                        ; 0x0a2d
    shr bx, 1                        ; 0x0a2f
    add ax, bx                       ; 0x0a31
    add ax, word [cs:data_1bd5]      ; 0x0a33
    mov di, ax                       ; 0x0a38
    mov bx, word [bp - 0x000a]       ; 0x0a3a
    and bx, 3                        ; 0x0a3d
    shl bx, 1                        ; 0x0a41
    mov cx, 6                        ; 0x0a43
    sub cx, bx                       ; 0x0a46
    mov word [bp - 0x0020], cx       ; 0x0a48
    mov dx, 3                        ; 0x0a4b
    shl dx, cl                       ; 0x0a4e
    not dl                           ; 0x0a50
    mov byte [bp - 0x0022], dl       ; 0x0a52
    mov ax, word [cs:data_01e5]      ; 0x0a55
    mov ds, ax                       ; 0x0a59
    mov ax, cs                       ; 0x0a5b
    mov es, ax                       ; 0x0a5d
    mov cx, word [bp - 0x0010]       ; 0x0a5f
@..leaf_loc_0949.l7:
    push cx                          ; 0x0a62
    push si                          ; 0x0a63
    push di                          ; 0x0a64
    mov ax, word [bp - 0x0020]       ; 0x0a65
    mov word [bp - 0x001c], ax       ; 0x0a68
    mov ax, word [bp - 0x0022]       ; 0x0a6b
    mov word [bp - 0x001e], ax       ; 0x0a6e
    mov cx, word [bp - 0x000e]       ; 0x0a71
@..leaf_loc_0949.l8:
    push cx                          ; 0x0a74
    mov bx, dos_mem_loc_33b3         ; 0x0a75
    mov ah, byte [bp - 0x001c]       ; 0x0a78
    lodsb                            ; 0x0a7b
    call leaf_loc_3252               ; 0x0a7c
    mov bl, byte [bp - 0x001e]       ; 0x0a7f
    and byte [es:di], bl             ; 0x0a82
    or byte [es:di], dl              ; 0x0a85
    and byte [es:di + 0x120], bl     ; 0x0a88
    or byte [es:di + 0x120], dh      ; 0x0a8d
    and byte [es:di + 0x240], bl     ; 0x0a92
    or byte [es:di + 0x240], al      ; 0x0a97
    and byte [es:di + 0x360], bl     ; 0x0a9c
    or byte [es:di + 0x360], ah      ; 0x0aa1
    shr byte [bp - 0x001e], 1        ; 0x0aa6
    shr byte [bp - 0x001e], 1        ; 0x0aa9
    or byte [bp - 0x001e], 0xc0      ; 0x0aac
    sub byte [bp - 0x001c], 2        ; 0x0ab0
    jae short @..leaf_loc_0949.l9    ; 0x0ab4
    inc di                           ; 0x0ab6
    mov byte [bp - 0x001c], 6        ; 0x0ab7
    mov byte [bp - 0x001e], 0x3f     ; 0x0abb
@..leaf_loc_0949.l9:
    pop cx                           ; 0x0abf
    loop @..leaf_loc_0949.l8         ; 0x0ac0
    pop di                           ; 0x0ac2
    add di, word [cs:data_1be1]      ; 0x0ac3
    pop si                           ; 0x0ac8
    add si, strict word 0x140        ; 0x0ac9
    pop cx                           ; 0x0acd
    loop @..leaf_loc_0949.l7         ; 0x0ace
    mov cx, word [cs:data_1bd9]      ; 0x0ad0
    mov ax, cx                       ; 0x0ad5
    cmp word [bp + 0xc], cx          ; 0x0ad7
    jb short @..leaf_loc_0949.l10    ; 0x0ada
    mov ax, word [bp + 0xc]          ; 0x0adc
@..leaf_loc_0949.l10:
    mov word [bp - 0x0006], ax       ; 0x0adf
    mov ax, word [bp - 0x000a]       ; 0x0ae2
    mov cx, word [cs:data_1bdd]      ; 0x0ae5
    sub cx, ax                       ; 0x0aea
    mov word [bp - 0x000e], cx       ; 0x0aec
    mov ax, word [bp - 0x0006]       ; 0x0aef
    add ax, word [bp - 0x000e]       ; 0x0af2
    dec ax                           ; 0x0af5
    cmp ax, word [bp + 0x10]         ; 0x0af6
    jb short @..leaf_loc_0949.l11    ; 0x0af9
    mov ax, word [bp + 0x10]         ; 0x0afb
    sub ax, word [bp - 0x0006]       ; 0x0afe
    inc ax                           ; 0x0b01
    mov word [bp - 0x000e], ax       ; 0x0b02
@..leaf_loc_0949.l11:
    mov ax, cs                       ; 0x0b05
    mov es, ax                       ; 0x0b07
    mov ax, word [cs:data_01e5]      ; 0x0b09
    mov ds, ax                       ; 0x0b0d
    mov ax, word [cs:data_1bdb]      ; 0x0b0f
    mov bx, 0x140                    ; 0x0b13
    mul bx                           ; 0x0b16
    add ax, word [cs:data_1bd9]      ; 0x0b18
    mov si, ax                       ; 0x0b1d
    mov di, word [cs:data_1bd7]      ; 0x0b1f
    mov cx, word [cs:data_1be3]      ; 0x0b24
@..leaf_loc_0949.l12:
    push cx                          ; 0x0b29
    push si                          ; 0x0b2a
    mov cx, word [cs:data_1bdd]      ; 0x0b2b
    rep movsb                        ; 0x0b30
    pop si                           ; 0x0b32
    add si, strict word 0x140        ; 0x0b33
    pop cx                           ; 0x0b37
    loop @..leaf_loc_0949.l12        ; 0x0b38
    mov ax, word [cs:data_01e5]      ; 0x0b3a
    mov es, ax                       ; 0x0b3e
    mov ax, word [cs:data_1bdb]      ; 0x0b40
    mov bx, 0x140                    ; 0x0b44
    mul bx                           ; 0x0b47
