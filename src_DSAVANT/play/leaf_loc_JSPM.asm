; auto-generated
leaf_loc_JSPM:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0f55
    mov al, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x0f58
@..leaf_loc_JSPM.l1:
    cmp al, byte [cs:bx + 2]         ; 0x0f5c
    jne short @..leaf_loc_JSPM.l2    ; 0x0f60
    jmp near loc_RUNQ                ; 0x0f62
@..leaf_loc_JSPM.l2:
    inc al                           ; 0x0f65
    add bx, byte 5                   ; 0x0f67
    cmp bx, opl_voice_count - IMAGE_BASE ; 0x0f6a
    jb short @..leaf_loc_JSPM.l1     ; 0x0f6e
    jmp near loc_NGKV                ; 0x0f70
loc_GLKJ:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0f73
    mov dx, 0                        ; 0x0f76
    mov byte [cs:cseg_0d4d - IMAGE_BASE], 0xff ; 0x0f79
    xor al, al                       ; 0x0f7f
loc_OIUN:
    cmp byte [cs:bx], 0              ; 0x0f81
    jne short loc_KRQV               ; 0x0f85
    cmp dx, word [cs:bx + 3]         ; 0x0f87
    ja short loc_KRQV                ; 0x0f8b
    mov dx, word [cs:bx + 3]         ; 0x0f8d
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x0f91
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x0f95
loc_KRQV:
    add bx, byte 5                   ; 0x0f9a
    inc al                           ; 0x0f9d
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x0f9f
    jb short loc_OIUN                ; 0x0fa4
    mov al, byte [cs:cseg_0d4d - IMAGE_BASE] ; 0x0fa6
    cmp al, 0xff                     ; 0x0faa
    je short loc_VJMI                ; 0x0fac
    mov bx, word [cs:cseg_0d4e - IMAGE_BASE] ; 0x0fae
    jmp near loc_VQRR                ; 0x0fb3
loc_VJMI:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x0fb6
    xor al, al                       ; 0x0fb9
    mov dx, 0                        ; 0x0fbb
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x0fbe
    mov ah, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x0fc3
    mov byte [cs:cseg_0d4d - IMAGE_BASE], 0xff ; 0x0fc8
loc_KQGN:
    cmp ah, byte [cs:bx + 2]         ; 0x0fce
    jne short loc_LGMV               ; 0x0fd2
    cmp dx, word [cs:bx + 3]         ; 0x0fd4
    ja short loc_LGMV                ; 0x0fd8
    mov dx, word [cs:bx + 3]         ; 0x0fda
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x0fde
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x0fe2
loc_LGMV:
    add bx, byte 5                   ; 0x0fe7
    inc al                           ; 0x0fea
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x0fec
    jb short loc_KQGN                ; 0x0ff1
    mov bx, word [cs:cseg_0d4e - IMAGE_BASE] ; 0x0ff3
    mov al, byte [cs:cseg_0d4d - IMAGE_BASE] ; 0x0ff8
    cmp al, 0xff                     ; 0x0ffc
    jne short loc_RUNQ               ; 0x0ffe
loc_NGKV:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x1000
    xor al, al                       ; 0x1003
    mov dx, 0                        ; 0x1005
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x1008
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x100c
    mov ah, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x1011
loc_ILTG:
    cmp dx, word [cs:bx + 3]         ; 0x1016
    ja short loc_JHLQ                ; 0x101a
    mov dx, word [cs:bx + 3]         ; 0x101c
    mov byte [cs:cseg_0d4d - IMAGE_BASE], al ; 0x1020
    mov word [cs:cseg_0d4e - IMAGE_BASE], bx ; 0x1024
loc_JHLQ:
    add bx, byte 5                   ; 0x1029
    inc al                           ; 0x102c
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x102e
    jb short loc_ILTG                ; 0x1033
    mov bx, word [cs:cseg_0d4e - IMAGE_BASE] ; 0x1035
    mov al, byte [cs:cseg_0d4d - IMAGE_BASE] ; 0x103a
loc_VQRR:
    mov byte [cs:cseg_0d40 - IMAGE_BASE], al ; 0x103e
    mov al, byte [cs:bx + 2]         ; 0x1042
    cmp al, byte [cs:cseg_0d3e - IMAGE_BASE] ; 0x1046
    je short loc_RUNQ                ; 0x104b
    call loc_IMHI                    ; 0x104d
loc_RUNQ:
    mov al, byte [cs:cseg_0d3f - IMAGE_BASE] ; 0x1050
    mov byte [cs:bx], al             ; 0x1054
    mov word [cs:bx + 3], 0          ; 0x1057
    mov al, byte [cs:cseg_0d3c - IMAGE_BASE] ; 0x105d
    mov byte [cs:bx + 1], al         ; 0x1061
    mov al, byte [cs:si]             ; 0x1065
    mov byte [cs:bx + 2], al         ; 0x1068
    call loc_ONLU                    ; 0x106c
    mov byte [cs:note_started - IMAGE_BASE], 1 ; 0x106f
    inc si                           ; 0x1075
    dec cx                           ; 0x1076
    je short loc_RUON                ; 0x1077
    jmp near loc_NPTG                ; 0x1079
loc_RUON:
    pop dx                           ; 0x107c
    pop si                           ; 0x107d
    jmp near loc_MRJU                ; 0x107e
