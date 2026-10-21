; auto-generated
cache_screen:
    push bp                          ; 0x3f73
    mov bp, sp                       ; 0x3f74
    sub sp, byte 0x14                ; 0x3f76
    push es                          ; 0x3f79
    push ds                          ; 0x3f7a
    push di                          ; 0x3f7b
    push si                          ; 0x3f7c
    mov ax, ds                       ; 0x3f7d
    mov es, ax                       ; 0x3f7f
    mov ax, word [bp + 0xc]          ; 0x3f81
    test ah, 0x80                    ; 0x3f84
    je short @..cache_screen.l1      ; 0x3f87
    dec word [cs:cseg_028f - IMAGE_BASE] ; 0x3f89
    mov ax, word [bp + 0xe]          ; 0x3f8e
    shl ax, 1                        ; 0x3f91
    mov bx, data_02d7                ; 0x3f93
    add bx, ax                       ; 0x3f96
    mov ax, word [cs:bx]             ; 0x3f98
    mov word [cs:bx], 0              ; 0x3f9b
    call leaf_loc_MIUO               ; 0x3fa0
    call loc_KLNH                    ; 0x3fa3
    jmp near @..cache_screen.l8      ; 0x3fa6
@..cache_screen.l1:
    mov word [bp - 0x0002], ax       ; 0x3fa9
    mov ax, word [bp + 0x10]         ; 0x3fac
    or ax, ax                        ; 0x3faf
    je short @..cache_screen.l2      ; 0x3fb1
    mov ax, word [bp + 0xe]          ; 0x3fb3
    mov word [bp - 0x0004], ax       ; 0x3fb6
    call dos_file_loc_MUHV           ; 0x3fb9
    jmp near @..cache_screen.l8      ; 0x3fbc
@..cache_screen.l2:
    mov ax, word [bp + 0xe]          ; 0x3fbf
    shl ax, 1                        ; 0x3fc2
    mov bx, data_02d7                ; 0x3fc4
    add bx, ax                       ; 0x3fc7
    mov ax, word [cs:bx]             ; 0x3fc9
    or ax, ax                        ; 0x3fcc
    je short @..cache_screen.l3      ; 0x3fce
    jmp near @..cache_screen.l9      ; 0x3fd0
@..cache_screen.l3:
    inc word [cs:cseg_028f - IMAGE_BASE] ; 0x3fd3
    mov ax, word [cs:cseg_028f - IMAGE_BASE] ; 0x3fd8
    mov word [cs:bx], ax             ; 0x3fdc
    dec ax                           ; 0x3fdf
    mov cl, 2                        ; 0x3fe0
    shl ax, cl                       ; 0x3fe2
    mov bx, cseg_01eb - IMAGE_BASE   ; 0x3fe4
    add bx, ax                       ; 0x3fe7
    mov word [bp - 0x0002], bx       ; 0x3fe9
    mov ax, word [cs:cseg_0291 - IMAGE_BASE] ; 0x3fec
    mov word [cs:bx], ax             ; 0x3ff0
    mov ax, 0xfa0                    ; 0x3ff3
    mov word [cs:bx + 0x2], ax       ; 0x3ff6
    mov di, word [cs:cseg_0291 - IMAGE_BASE] ; 0x3ffa
    add word [cs:cseg_0291 - IMAGE_BASE], ax ; 0x3fff
    mov ax, word [cs:cseg_0291 - IMAGE_BASE] ; 0x4004
    cmp ax, word [cs:cseg_00ff - IMAGE_BASE] ; 0x4008
    jbe short @..cache_screen.l4     ; 0x400d
    jmp near loc_40cb                ; 0x400f
@..cache_screen.l4:
    mov ax, 0xfa00                   ; 0x4012
    mov word [bp - 0x0006], ax       ; 0x4015
    mov ax, di                       ; 0x4018
    mov cl, 0xa                      ; 0x401a
    shr ax, cl                       ; 0x401c
    mov word [cs:cseg_3b8e - IMAGE_BASE], ax ; 0x401e
    call leaf_loc_HLGJ               ; 0x4022
    and di, strict word 0x3ff        ; 0x4025
    mov cl, 4                        ; 0x4029
    shl di, cl                       ; 0x402b
@..cache_screen.l5:
    mov dx, di                       ; 0x402d
    test dx, 0xc000                  ; 0x402f
    je short @..cache_screen.l6      ; 0x4033
    sub di, strict word 0x4000       ; 0x4035
    inc word [cs:cseg_3b8e - IMAGE_BASE] ; 0x4039
    mov ax, word [cs:cseg_3b8e - IMAGE_BASE] ; 0x403e
    call leaf_loc_HLGJ               ; 0x4042
@..cache_screen.l6:
    mov ax, word [bp - 0x0006]       ; 0x4045
    or ax, ax                        ; 0x4048
    je short @..cache_screen.l8      ; 0x404a
    mov cx, 0x1000                   ; 0x404c
    cmp ax, cx                       ; 0x404f
    jae short @..cache_screen.l7     ; 0x4051
    mov cx, ax                       ; 0x4053
@..cache_screen.l7:
    sub ax, cx                       ; 0x4055
    mov word [bp - 0x0006], ax       ; 0x4057
    mov ax, word [cs:cseg_0103 - IMAGE_BASE] ; 0x405a
    mov es, ax                       ; 0x405e
    mov ax, word [cs:cseg_00e9 - IMAGE_BASE] ; 0x4060
    mov ds, ax                       ; 0x4064
    mov dx, 0                        ; 0x4066
    mov bx, word [bp + 0xc]          ; 0x4069
    mov ah, 0x3f                     ; 0x406c
    push cx                          ; 0x406e
    int 0x21 ; DOS read file (handle)
    pop cx                           ; 0x4071
    mov si, 0                        ; 0x4072
    rep movsb                        ; 0x4075
    jmp short @..cache_screen.l5     ; 0x4077
@..cache_screen.l8:
    pop si                           ; 0x4079
    pop di                           ; 0x407a
    pop ds                           ; 0x407b
    pop es                           ; 0x407c
    mov sp, bp                       ; 0x407d
    pop bp                           ; 0x407f
    ret                              ; 0x4080
@..cache_screen.l9:
    mov ax, cs                       ; 0x4081
    mov ds, ax                       ; 0x4083
    mov dx, cseg_4091 - IMAGE_BASE   ; 0x4085
