api_idx_005a:
    mov ax, 0xffa6                   ; 0x9f4f
    call ds_dispatch_f40b            ; 0x9f52
    mov bx, word [bp + 0x4]          ; 0x9f55
    mov al, byte [bx + 0x1f]         ; 0x9f58
    sub ah, ah                       ; 0x9f5b
    mov word [bp - 0x000c], ax       ; 0x9f5d
    mov al, byte [bx + 0x20]         ; 0x9f60
    sub ah, ah                       ; 0x9f63
    mov word [bp - 0x000e], ax       ; 0x9f65
    push word [data_8462]            ; 0x9f68
    push word [data_8464]            ; 0x9f6c
    mov ax, 0x90e6                   ; 0x9f70
    push ax                          ; 0x9f73
    call math_loc_15ab               ; 0x9f74
    add sp, byte 6                   ; 0x9f77
    mov word [bp - 0x0004], 0        ; 0x9f7a
    mov word [bp - 0x0006], 0        ; 0x9f7f
    mov word [bp - 0x0012], 0xffff   ; 0x9f84
    cmp word [data_8464], byte 0     ; 0x9f89
    je short @..api_idx_005a.l1      ; 0x9f8e
    jmp near @..api_idx_005a.l33     ; 0x9f90
@..api_idx_005a.l1:
    mov bx, word [bp + 0x4]          ; 0x9f93
    mov ax, word [bx + 0xa]          ; 0x9f96
    mov cx, 0x100                    ; 0x9f99
    cwd                              ; 0x9f9c
    idiv cx                          ; 0x9f9d
    mov word [bp - 0x0008], ax       ; 0x9f9f
    mov ax, word [bx + 0xa]          ; 0x9fa2
    cwd                              ; 0x9fa5
    idiv cx                          ; 0x9fa6
    mov word [bp - 0x000a], dx       ; 0x9fa8
    mov ax, 0                        ; 0x9fab
    push ax                          ; 0x9fae
    mov ax, 0x248                    ; 0x9faf
    imul word [data_8462]            ; 0x9fb2
    push ax                          ; 0x9fb6
    mov ax, 0x78                     ; 0x9fb7
    imul word [bp - 0x0008]          ; 0x9fba
    mov cx, ax                       ; 0x9fbd
    pop ax                           ; 0x9fbf
    add ax, cx                       ; 0x9fc0
    push ax                          ; 0x9fc2
    mov ax, 0xc                      ; 0x9fc3
    imul word [bp - 0x000a]          ; 0x9fc6
    mov cx, ax                       ; 0x9fc9
    pop ax                           ; 0x9fcb
    add ax, cx                       ; 0x9fcc
    mov bx, ax                       ; 0x9fce
    push word [bx + 0x5c34]          ; 0x9fd0
    lea ax, word [bp - 0x005a]       ; 0x9fd4
    push ax                          ; 0x9fd7
    mov ax, 1                        ; 0x9fd8
    push ax                          ; 0x9fdb
    call ds_dispatch_b63c            ; 0x9fdc
    add sp, byte 8                   ; 0x9fdf
    mov ax, 0x248                    ; 0x9fe2
    imul word [data_8462]            ; 0x9fe5
    push ax                          ; 0x9fe9
    mov ax, 0x78                     ; 0x9fea
    imul word [bp - 0x0008]          ; 0x9fed
    mov cx, ax                       ; 0x9ff0
    pop ax                           ; 0x9ff2
    add ax, cx                       ; 0x9ff3
    push ax                          ; 0x9ff5
    mov ax, 0xc                      ; 0x9ff6
    imul word [bp - 0x000a]          ; 0x9ff9
    mov cx, ax                       ; 0x9ffc
    pop ax                           ; 0x9ffe
    add ax, cx                       ; 0x9fff
    mov bx, ax                       ; 0xa001
    mov al, byte [bx + 0x5c3b]       ; 0xa003
    sub ah, ah                       ; 0xa007
    test ax, 0x80                    ; 0xa009
    je short @..api_idx_005a.l2      ; 0xa00c
    lea ax, word [bp - 0x005a]       ; 0xa00e
    push ax                          ; 0xa011
    mov ax, data_9186                ; 0xa012
    push ax                          ; 0xa015
    call ds_dispatch_f364            ; 0xa016
    add sp, byte 4                   ; 0xa019
    jmp short @..api_idx_005a.l3     ; 0xa01c
@..api_idx_005a.l2:
    mov ax, data_9186                ; 0xa01e
    push ax                          ; 0xa021
    mov al, byte [bp - 0x0021]       ; 0xa022
    sub ah, ah                       ; 0xa025
    add ax, 0x1770                   ; 0xa027
    push ax                          ; 0xa02a
    call ds_dispatch_b53b            ; 0xa02b
    add sp, byte 4                   ; 0xa02e
@..api_idx_005a.l3:
    mov ax, data_9186                ; 0xa031
    push ax                          ; 0xa034
    call api_idx_0002                ; 0xa035
    pop cx                           ; 0xa038
    cmp word [bp - 0x0038], byte 0   ; 0xa039
    jne short @..api_idx_005a.l4     ; 0xa03d
    jmp near @..api_idx_005a.l25     ; 0xa03f
@..api_idx_005a.l4:
    mov ax, word [bp - 0x0038]       ; 0xa042
    mov cx, 0x100                    ; 0xa045
    cwd                              ; 0xa048
    idiv cx                          ; 0xa049
    mov word [bp - 0x0004], ax       ; 0xa04b
    mov word [bp - 0x0006], dx       ; 0xa04e
    mov al, byte [bp - 0x0022]       ; 0xa051
    sub ah, ah                       ; 0xa054
    jmp near @..api_idx_005a.l20     ; 0xa056
@..api_idx_005a.l5:
    mov ax, data_9136                ; 0xa059
    push ax                          ; 0xa05c
    mov ax, 0xcf1                    ; 0xa05d
    push ax                          ; 0xa060
    call ds_dispatch_b53b            ; 0xa061
    add sp, byte 4                   ; 0xa064
    jmp near @..api_idx_005a.l24     ; 0xa067
@..api_idx_005a.l6:
    mov ax, data_9136                ; 0xa06a
    push ax                          ; 0xa06d
    mov ax, 0xcf2                    ; 0xa06e
    push ax                          ; 0xa071
    call ds_dispatch_b53b            ; 0xa072
    add sp, byte 4                   ; 0xa075
    mov word [bp - 0x0012], 0x1b     ; 0xa078
    jmp near @..api_idx_005a.l24     ; 0xa07d
@..api_idx_005a.l7:
    mov ax, data_9136                ; 0xa080
    push ax                          ; 0xa083
    mov ax, 0xcf3                    ; 0xa084
    push ax                          ; 0xa087
    call ds_dispatch_b53b            ; 0xa088
    add sp, byte 4                   ; 0xa08b
    jmp near @..api_idx_005a.l24     ; 0xa08e
@..api_idx_005a.l8:
    cmp word [bp - 0x0006], byte 0x61 ; 0xa091
    je short @..api_idx_005a.l9      ; 0xa095
    cmp word [bp - 0x0006], byte 0x62 ; 0xa097
    jne short @..api_idx_005a.l10    ; 0xa09b
@..api_idx_005a.l9:
    mov ax, data_9136                ; 0xa09d
    push ax                          ; 0xa0a0
    mov ax, 0xcf6                    ; 0xa0a1
    push ax                          ; 0xa0a4
    call ds_dispatch_b53b            ; 0xa0a5
    add sp, byte 4                   ; 0xa0a8
    jmp near @..api_idx_005a.l19     ; 0xa0ab
@..api_idx_005a.l10:
    cmp word [bp - 0x0004], byte 0   ; 0xa0ae
    je short @..api_idx_005a.l11     ; 0xa0b2
    jmp near @..api_idx_005a.l17     ; 0xa0b4
@..api_idx_005a.l11:
    mov ax, 0x248                    ; 0xa0b7
    imul word [data_8462]            ; 0xa0ba
    mov bx, ax                       ; 0xa0be
    cmp byte [bx + 0x5d79], 0        ; 0xa0c0
    jbe short @..api_idx_005a.l14    ; 0xa0c5
    mov al, byte [bx + 0x5d79]       ; 0xa0c7
    sub ah, ah                       ; 0xa0cb
    mov cx, 0xf                      ; 0xa0cd
    cwd                              ; 0xa0d0
    idiv cx                          ; 0xa0d1
    inc ax                           ; 0xa0d3
    inc ax                           ; 0xa0d4
    push ax                          ; 0xa0d5
    mov ax, 6                        ; 0xa0d6
    imul word [bp - 0x0006]          ; 0xa0d9
    mov bx, ax                       ; 0xa0dc
    mov al, byte [bx + 0x621]        ; 0xa0de
    sub ah, ah                       ; 0xa0e2
    mov cx, ax                       ; 0xa0e4
    pop ax                           ; 0xa0e6
    sub ax, cx                       ; 0xa0e7
    mov word [bp - 0x0004], ax       ; 0xa0e9
    mov ax, 1                        ; 0xa0ec
    push ax                          ; 0xa0ef
    mov ax, 0xd                      ; 0xa0f0
    push ax                          ; 0xa0f3
    push word [data_8462]            ; 0xa0f4
    call math_loc_1bf4               ; 0xa0f8
    add sp, byte 6                   ; 0xa0fb
    cmp word [bp - 0x0004], byte 0   ; 0xa0fe
    jge short @..api_idx_005a.l12    ; 0xa102
    mov word [bp - 0x0004], 0        ; 0xa104
@..api_idx_005a.l12:
    cmp word [bp - 0x0004], byte 6   ; 0xa109
    jle short @..api_idx_005a.l13    ; 0xa10d
    mov word [bp - 0x0004], 6        ; 0xa10f
@..api_idx_005a.l13:
    cmp word [bp - 0x0004], byte 0   ; 0xa114
    jle short @..api_idx_005a.l14    ; 0xa118
    mov ax, 0x64                     ; 0xa11a
    push ax                          ; 0xa11d
    call ds_dispatch_b7a9            ; 0xa11e
    pop cx                           ; 0xa121
    push ax                          ; 0xa122
    mov ax, 0xa                      ; 0xa123
    imul word [bp - 0x0004]          ; 0xa126
    mov cx, ax                       ; 0xa129
    pop ax                           ; 0xa12b
    cmp ax, cx                       ; 0xa12c
    jge short @..api_idx_005a.l14    ; 0xa12e
    dec word [bp - 0x0004]           ; 0xa130
    jmp short @..api_idx_005a.l13    ; 0xa133
@..api_idx_005a.l14:
    cmp word [bp - 0x0004], byte 0   ; 0xa135
    jne short @..api_idx_005a.l15    ; 0xa139
    mov ax, data_9136                ; 0xa13b
    push ax                          ; 0xa13e
    mov ax, 0xce9                    ; 0xa13f
    push ax                          ; 0xa142
    call ds_dispatch_b53b            ; 0xa143
    add sp, byte 4                   ; 0xa146
    jmp short @..api_idx_005a.l16    ; 0xa149
@..api_idx_005a.l15:
    mov ax, data_9136                ; 0xa14b
    push ax                          ; 0xa14e
