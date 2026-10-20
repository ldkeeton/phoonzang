; auto-generated
api_idx_005a_UJPS:
    mov ax, 0xffa6                   ; 0x9f4f
    call aztec_csav                  ; 0x9f52
    mov bx, word [bp + 0x4]          ; 0x9f55
    mov al, byte [bx + 0x1f]         ; 0x9f58
    sub ah, ah                       ; 0x9f5b
    mov word [bp - 0x000c], ax       ; 0x9f5d
    mov al, byte [bx + 0x20]         ; 0x9f60
    sub ah, ah                       ; 0x9f63
    mov word [bp - 0x000e], ax       ; 0x9f65
    push word [bss_8462]             ; 0x9f68
    push word [bss_8464]             ; 0x9f6c
    mov ax, bss_90e6                 ; 0x9f70
    push ax                          ; 0x9f73
    call loc_HJSG                    ; 0x9f74
    add sp, byte 6                   ; 0x9f77
    mov word [bp - 0x0004], 0        ; 0x9f7a
    mov word [bp - 0x0006], 0        ; 0x9f7f
    mov word [bp - 0x0012], 0xffff   ; 0x9f84
    cmp word [bss_8464], byte 0      ; 0x9f89
    je short @..api_idx_005a_UJPS.l1 ; 0x9f8e
    jmp near @..api_idx_005a_UJPS.l33 ; 0x9f90
@..api_idx_005a_UJPS.l1:
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
    imul word [bss_8462]             ; 0x9fb2
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
    call ds_app_file_MPPM            ; 0x9fdc
    add sp, byte 8                   ; 0x9fdf
    mov ax, 0x248                    ; 0x9fe2
    imul word [bss_8462]             ; 0x9fe5
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
    je short @..api_idx_005a_UJPS.l2 ; 0xa00c
    lea ax, word [bp - 0x005a]       ; 0xa00e
    push ax                          ; 0xa011
    mov ax, bss_9186                 ; 0xa012
    push ax                          ; 0xa015
    call aztec_strcpy                ; 0xa016
    add sp, byte 4                   ; 0xa019
    jmp short @..api_idx_005a_UJPS.l3 ; 0xa01c
@..api_idx_005a_UJPS.l2:
    mov ax, bss_9186                 ; 0xa01e
    push ax                          ; 0xa021
    mov al, byte [bp - 0x0021]       ; 0xa022
    sub ah, ah                       ; 0xa025
    add ax, 0x1770                   ; 0xa027
    push ax                          ; 0xa02a
    call ds_app_mem_TIMR             ; 0xa02b
    add sp, byte 4                   ; 0xa02e
@..api_idx_005a_UJPS.l3:
    mov ax, bss_9186                 ; 0xa031
    push ax                          ; 0xa034
    call api_idx_0002_GKQL           ; 0xa035
    pop cx                           ; 0xa038
    cmp word [bp - 0x0038], byte 0   ; 0xa039
    jne short @..api_idx_005a_UJPS.l4 ; 0xa03d
    jmp near @..api_idx_005a_UJPS.l25 ; 0xa03f
@..api_idx_005a_UJPS.l4:
    mov ax, word [bp - 0x0038]       ; 0xa042
    mov cx, 0x100                    ; 0xa045
    cwd                              ; 0xa048
    idiv cx                          ; 0xa049
    mov word [bp - 0x0004], ax       ; 0xa04b
    mov word [bp - 0x0006], dx       ; 0xa04e
    mov al, byte [bp - 0x0022]       ; 0xa051
    sub ah, ah                       ; 0xa054
    jmp near @..api_idx_005a_UJPS.l20 ; 0xa056
@..api_idx_005a_UJPS.l5:
    mov ax, bss_9136                 ; 0xa059
    push ax                          ; 0xa05c
    mov ax, 0xcf1                    ; 0xa05d
    push ax                          ; 0xa060
    call ds_app_mem_TIMR             ; 0xa061
    add sp, byte 4                   ; 0xa064
    jmp near @..api_idx_005a_UJPS.l24 ; 0xa067
@..api_idx_005a_UJPS.l6:
    mov ax, bss_9136                 ; 0xa06a
    push ax                          ; 0xa06d
    mov ax, 0xcf2                    ; 0xa06e
    push ax                          ; 0xa071
    call ds_app_mem_TIMR             ; 0xa072
    add sp, byte 4                   ; 0xa075
    mov word [bp - 0x0012], 0x1b     ; 0xa078
    jmp near @..api_idx_005a_UJPS.l24 ; 0xa07d
@..api_idx_005a_UJPS.l7:
    mov ax, bss_9136                 ; 0xa080
    push ax                          ; 0xa083
    mov ax, 0xcf3                    ; 0xa084
    push ax                          ; 0xa087
    call ds_app_mem_TIMR             ; 0xa088
    add sp, byte 4                   ; 0xa08b
    jmp near @..api_idx_005a_UJPS.l24 ; 0xa08e
@..api_idx_005a_UJPS.l8:
    cmp word [bp - 0x0006], byte 0x61 ; 0xa091
    je short @..api_idx_005a_UJPS.l9 ; 0xa095
    cmp word [bp - 0x0006], byte 0x62 ; 0xa097
    jne short @..api_idx_005a_UJPS.l10 ; 0xa09b
@..api_idx_005a_UJPS.l9:
    mov ax, bss_9136                 ; 0xa09d
    push ax                          ; 0xa0a0
    mov ax, 0xcf6                    ; 0xa0a1
    push ax                          ; 0xa0a4
    call ds_app_mem_TIMR             ; 0xa0a5
    add sp, byte 4                   ; 0xa0a8
    jmp near @..api_idx_005a_UJPS.l19 ; 0xa0ab
@..api_idx_005a_UJPS.l10:
    cmp word [bp - 0x0004], byte 0   ; 0xa0ae
    je short @..api_idx_005a_UJPS.l11 ; 0xa0b2
    jmp near @..api_idx_005a_UJPS.l17 ; 0xa0b4
@..api_idx_005a_UJPS.l11:
    mov ax, 0x248                    ; 0xa0b7
    imul word [bss_8462]             ; 0xa0ba
    mov bx, ax                       ; 0xa0be
    cmp byte [bx + 0x5d79], 0        ; 0xa0c0
    jbe short @..api_idx_005a_UJPS.l14 ; 0xa0c5
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
    push word [bss_8462]             ; 0xa0f4
    call loc_SIKN                    ; 0xa0f8
    add sp, byte 6                   ; 0xa0fb
    cmp word [bp - 0x0004], byte 0   ; 0xa0fe
    jge short @..api_idx_005a_UJPS.l12 ; 0xa102
    mov word [bp - 0x0004], 0        ; 0xa104
@..api_idx_005a_UJPS.l12:
    cmp word [bp - 0x0004], byte 6   ; 0xa109
    jle short @..api_idx_005a_UJPS.l13 ; 0xa10d
    mov word [bp - 0x0004], 6        ; 0xa10f
@..api_idx_005a_UJPS.l13:
    cmp word [bp - 0x0004], byte 0   ; 0xa114
    jle short @..api_idx_005a_UJPS.l14 ; 0xa118
    mov ax, 0x64                     ; 0xa11a
    push ax                          ; 0xa11d
    call ds_app_PUNN                 ; 0xa11e
    pop cx                           ; 0xa121
    push ax                          ; 0xa122
    mov ax, 0xa                      ; 0xa123
    imul word [bp - 0x0004]          ; 0xa126
    mov cx, ax                       ; 0xa129
    pop ax                           ; 0xa12b
    cmp ax, cx                       ; 0xa12c
    jge short @..api_idx_005a_UJPS.l14 ; 0xa12e
    dec word [bp - 0x0004]           ; 0xa130
    jmp short @..api_idx_005a_UJPS.l13 ; 0xa133
@..api_idx_005a_UJPS.l14:
    cmp word [bp - 0x0004], byte 0   ; 0xa135
    jne short @..api_idx_005a_UJPS.l15 ; 0xa139
    mov ax, bss_9136                 ; 0xa13b
    push ax                          ; 0xa13e
    mov ax, 0xce9                    ; 0xa13f
    push ax                          ; 0xa142
    call ds_app_mem_TIMR             ; 0xa143
    add sp, byte 4                   ; 0xa146
    jmp short @..api_idx_005a_UJPS.l16 ; 0xa149
@..api_idx_005a_UJPS.l15:
    mov ax, bss_9136                 ; 0xa14b
    push ax                          ; 0xa14e
    mov ax, 0xce8                    ; 0xa14f
    push ax                          ; 0xa152
    call ds_app_mem_TIMR             ; 0xa153
    add sp, byte 4                   ; 0xa156
    push word [bp - 0x0004]          ; 0xa159
    call ds_app_PUNN                 ; 0xa15c
    pop cx                           ; 0xa15f
    add ax, word [bp - 0x0004]       ; 0xa160
    inc ax                           ; 0xa163
    push ax                          ; 0xa164
    push word [bp + 0x4]             ; 0xa165
    call loc_TGJH                    ; 0xa168
    add sp, byte 4                   ; 0xa16b
@..api_idx_005a_UJPS.l16:
    jmp short @..api_idx_005a_UJPS.l19 ; 0xa16e
@..api_idx_005a_UJPS.l17:
    mov ax, 0x248                    ; 0xa170
    imul word [bss_8462]             ; 0xa173
    push ax                          ; 0xa177
    mov ax, 0x78                     ; 0xa178
    imul word [bp - 0x0008]          ; 0xa17b
    mov cx, ax                       ; 0xa17e
    pop ax                           ; 0xa180
    add ax, cx                       ; 0xa181
    push ax                          ; 0xa183
    mov ax, 0xc                      ; 0xa184
    imul word [bp - 0x000a]          ; 0xa187
    mov cx, ax                       ; 0xa18a
    pop ax                           ; 0xa18c
    add ax, cx                       ; 0xa18d
    mov bx, ax                       ; 0xa18f
    cmp word [bx + 0x5c34], strict word 0x1d4 ; 0xa191
    jne short @..api_idx_005a_UJPS.l18 ; 0xa197
    mov ax, bss_9136                 ; 0xa199
    push ax                          ; 0xa19c
    mov ax, 0xcf3                    ; 0xa19d
    push ax                          ; 0xa1a0
    call ds_app_mem_TIMR             ; 0xa1a1
    add sp, byte 4                   ; 0xa1a4
    jmp short @..api_idx_005a_UJPS.l19 ; 0xa1a7
@..api_idx_005a_UJPS.l18:
    mov ax, bss_9136                 ; 0xa1a9
    push ax                          ; 0xa1ac
    mov ax, 0xcf0                    ; 0xa1ad
    push ax                          ; 0xa1b0
    call ds_app_mem_TIMR             ; 0xa1b1
    add sp, byte 4                   ; 0xa1b4
    mov word [bp - 0x0012], 0x18     ; 0xa1b7
@..api_idx_005a_UJPS.l19:
    jmp short @..api_idx_005a_UJPS.l24 ; 0xa1bc
@..api_idx_005a_UJPS.l20:
    cmp ax, strict word 0xc          ; 0xa1be
    jne short @..api_idx_005a_UJPS.l21 ; 0xa1c1
    jmp near @..api_idx_005a_UJPS.l5 ; 0xa1c3
@..api_idx_005a_UJPS.l21:
    cmp ax, strict word 0xd          ; 0xa1c6
    jne short @..api_idx_005a_UJPS.l22 ; 0xa1c9
    jmp near @..api_idx_005a_UJPS.l6 ; 0xa1cb
@..api_idx_005a_UJPS.l22:
    cmp ax, strict word 0x10         ; 0xa1ce
    jne short @..api_idx_005a_UJPS.l23 ; 0xa1d1
    jmp near @..api_idx_005a_UJPS.l7 ; 0xa1d3
@..api_idx_005a_UJPS.l23:
    jmp near @..api_idx_005a_UJPS.l8 ; 0xa1d6
@..api_idx_005a_UJPS.l24:
    push word [bp - 0x000a]          ; 0xa1d9
    push word [bp - 0x0008]          ; 0xa1dc
    push word [bss_8462]             ; 0xa1df
    call api_idx_000e_PTNT           ; 0xa1e3
    add sp, byte 6                   ; 0xa1e6
    jmp short @..api_idx_005a_UJPS.l28 ; 0xa1e9
@..api_idx_005a_UJPS.l25:
    cmp byte [bp - 0x0022], 2        ; 0xa1eb
    je short @..api_idx_005a_UJPS.l26 ; 0xa1ef
    cmp byte [bp - 0x0022], 4        ; 0xa1f1
    jne short @..api_idx_005a_UJPS.l27 ; 0xa1f5
@..api_idx_005a_UJPS.l26:
    mov ax, bss_9136                 ; 0xa1f7
    push ax                          ; 0xa1fa
    mov ax, 0xcf5                    ; 0xa1fb
    push ax                          ; 0xa1fe
    call ds_app_mem_TIMR             ; 0xa1ff
    add sp, byte 4                   ; 0xa202
    jmp short @..api_idx_005a_UJPS.l28 ; 0xa205
@..api_idx_005a_UJPS.l27:
    mov ax, bss_9136                 ; 0xa207
    push ax                          ; 0xa20a
    mov ax, 0xcf4                    ; 0xa20b
    push ax                          ; 0xa20e
    call ds_app_mem_TIMR             ; 0xa20f
    add sp, byte 4                   ; 0xa212
@..api_idx_005a_UJPS.l28:
    cmp word [bss_0e36], strict word 0xe1 ; 0xa215
    jne short @..api_idx_005a_UJPS.l29 ; 0xa21b
    cmp byte [bp - 0x001b], 0x58     ; 0xa21d
    jne short @..api_idx_005a_UJPS.l29 ; 0xa221
    mov word [bss_8458], 1           ; 0xa223
    mov ax, bss_9136                 ; 0xa229
    push ax                          ; 0xa22c
    mov ax, 0xcf0                    ; 0xa22d
    push ax                          ; 0xa230
    call ds_app_mem_TIMR             ; 0xa231
    add sp, byte 4                   ; 0xa234
    mov word [bp - 0x0006], 0x64     ; 0xa237
    mov word [bp - 0x0004], 6        ; 0xa23c
    mov ax, 0x248                    ; 0xa241
    imul word [bss_8462]             ; 0xa244
    push ax                          ; 0xa248
    mov ax, 0x78                     ; 0xa249
    imul word [bp - 0x0008]          ; 0xa24c
    mov cx, ax                       ; 0xa24f
    pop ax                           ; 0xa251
    add ax, cx                       ; 0xa252
    push ax                          ; 0xa254
    mov ax, 0xc                      ; 0xa255
    imul word [bp - 0x000a]          ; 0xa258
    mov cx, ax                       ; 0xa25b
    pop ax                           ; 0xa25d
    add ax, cx                       ; 0xa25e
    mov bx, ax                       ; 0xa260
    mov byte [bx + 0x5c3a], 1        ; 0xa262
    push word [bp - 0x000a]          ; 0xa267
    push word [bp - 0x0008]          ; 0xa26a
    push word [bss_8462]             ; 0xa26d
    call api_idx_000e_PTNT           ; 0xa271
    add sp, byte 6                   ; 0xa274
@..api_idx_005a_UJPS.l29:
    mov ax, 0x248                    ; 0xa277
    imul word [bss_8462]             ; 0xa27a
    push ax                          ; 0xa27e
    mov ax, 0x78                     ; 0xa27f
    imul word [bp - 0x0008]          ; 0xa282
    mov cx, ax                       ; 0xa285
    pop ax                           ; 0xa287
    add ax, cx                       ; 0xa288
    push ax                          ; 0xa28a
    mov ax, 0xc                      ; 0xa28b
    imul word [bp - 0x000a]          ; 0xa28e
    mov cx, ax                       ; 0xa291
    pop ax                           ; 0xa293
    add ax, cx                       ; 0xa294
    mov bx, ax                       ; 0xa296
    cmp word [bx + 0x5c34], strict word 0x218 ; 0xa298
    jne short @..api_idx_005a_UJPS.l32 ; 0xa29e
    mov ax, word [bp - 0x000c]       ; 0xa2a0
    shl ax, 1                        ; 0xa2a3
    mov bx, ax                       ; 0xa2a5
    mov bx, word [bx + party_char]   ; 0xa2a7
    mov al, byte [bx + 0x19e]        ; 0xa2ab
    sub ah, ah                       ; 0xa2af
    cmp ax, 0xe9                     ; 0xa2b1
    jne short @..api_idx_005a_UJPS.l31 ; 0xa2b4
    mov ax, word [bp - 0x000c]       ; 0xa2b6
    shl ax, 1                        ; 0xa2b9
    mov bx, ax                       ; 0xa2bb
    mov bx, word [bx + party_char_ext] ; 0xa2bd
    mov al, byte [bx + 0xa5]         ; 0xa2c1
    sub ah, ah                       ; 0xa2c5
    add ax, strict word 0xfff1       ; 0xa2c7
    mov word [bp - 0x0010], ax       ; 0xa2ca
    cmp ax, strict word 0            ; 0xa2cd
    jge short @..api_idx_005a_UJPS.l30 ; 0xa2d0
    mov word [bp - 0x0010], 0        ; 0xa2d2
@..api_idx_005a_UJPS.l30:
    mov al, byte [bp - 0x0010]       ; 0xa2d7
    mov byte [bx + 0xa5], al         ; 0xa2da
@..api_idx_005a_UJPS.l31:
    mov word [bp - 0x0012], 0x1b     ; 0xa2de
    mov ax, bss_9136                 ; 0xa2e3
    push ax                          ; 0xa2e6
    mov ax, 0xcf2                    ; 0xa2e7
    push ax                          ; 0xa2ea
    call ds_app_mem_TIMR             ; 0xa2eb
    add sp, byte 4                   ; 0xa2ee
@..api_idx_005a_UJPS.l32:
    mov ax, 0x43                     ; 0xa2f1
    push ax                          ; 0xa2f4
    push ax                          ; 0xa2f5
    mov ax, 1                        ; 0xa2f6
    push ax                          ; 0xa2f9
    mov ax, bss_9186                 ; 0xa2fa
    push ax                          ; 0xa2fd
    mov ax, bss_9136                 ; 0xa2fe
    push ax                          ; 0xa301
    mov ax, bss_90e6                 ; 0xa302
    push ax                          ; 0xa305
    mov ax, 0                        ; 0xa306
    push ax                          ; 0xa309
    call api_idx_0004_QSNR           ; 0xa30a
    add sp, byte 0x0e                ; 0xa30d
    jmp short @..api_idx_005a_UJPS.l33 ; 0xa310
@..api_idx_005a_UJPS.l33:
    cmp word [bp - 0x0004], byte 0   ; 0xa312
    jne short @..api_idx_005a_UJPS.l34 ; 0xa316
    jmp near @..api_idx_005a_UJPS.l45 ; 0xa318
@..api_idx_005a_UJPS.l34:
    mov word [bss_91d8], 0           ; 0xa31b
    mov word [bss_91da], 0           ; 0xa321
    mov ax, 6                        ; 0xa327
    imul word [bp - 0x0006]          ; 0xa32a
    mov bx, ax                       ; 0xa32d
    mov al, byte [bx + 0x621]        ; 0xa32f
    sub ah, ah                       ; 0xa333
    mov cx, 0xa                      ; 0xa335
    imul cx                          ; 0xa338
    push ax                          ; 0xa33a
    mov ax, 5                        ; 0xa33b
    imul word [bp - 0x0004]          ; 0xa33e
    mov cx, ax                       ; 0xa341
    pop ax                           ; 0xa343
    add ax, cx                       ; 0xa344
    push ax                          ; 0xa346
    call ds_app_PUNN                 ; 0xa347
    pop cx                           ; 0xa34a
    add ax, strict word 0xfff6       ; 0xa34b
    mov word [bp - 0x0010], ax       ; 0xa34e
    cmp word [bss_8464], byte 0      ; 0xa351
    jne short @..api_idx_005a_UJPS.l37 ; 0xa356
    cmp word [bp - 0x0012], byte 0xff ; 0xa358
    je short @..api_idx_005a_UJPS.l36 ; 0xa35c
    mov ax, 3                        ; 0xa35e
    push ax                          ; 0xa361
    push word [bp - 0x0012]          ; 0xa362
    push word [bss_8462]             ; 0xa365
    call loc_SIKN                    ; 0xa369
    add sp, byte 6                   ; 0xa36c
    mov ax, 0x248                    ; 0xa36f
    imul word [bss_8462]             ; 0xa372
    add ax, word [bp - 0x0012]       ; 0xa376
    mov bx, ax                       ; 0xa379
    mov al, byte [bx + 0x5d6c]       ; 0xa37b
    sub ah, ah                       ; 0xa37f
    cmp ax, word [bp - 0x0010]       ; 0xa381
    jge short @..api_idx_005a_UJPS.l36 ; 0xa384
    cmp byte [bss_5988], 1           ; 0xa386
    je short @..api_idx_005a_UJPS.l35 ; 0xa38b
    mov ax, 0x24                     ; 0xa38d
    push ax                          ; 0xa390
    call ds_app_PUNN                 ; 0xa391
    pop cx                           ; 0xa394
    push ax                          ; 0xa395
    mov ax, 0x248                    ; 0xa396
    imul word [bss_8462]             ; 0xa399
    mov bx, ax                       ; 0xa39d
    mov al, byte [bx + 0x5d6b]       ; 0xa39f
    sub ah, ah                       ; 0xa3a3
    mov cx, ax                       ; 0xa3a5
    add ax, strict word 0x12         ; 0xa3a7
    mov cx, ax                       ; 0xa3aa
    pop ax                           ; 0xa3ac
    cmp ax, cx                       ; 0xa3ad
    jle short @..api_idx_005a_UJPS.l35 ; 0xa3af
    mov word [bss_91d8], 1           ; 0xa3b1
    jmp short @..api_idx_005a_UJPS.l36 ; 0xa3b7
@..api_idx_005a_UJPS.l35:
    mov word [bss_91da], 1           ; 0xa3b9
@..api_idx_005a_UJPS.l36:
    jmp short @..api_idx_005a_UJPS.l39 ; 0xa3bf
@..api_idx_005a_UJPS.l37:
    mov ax, 0x2c                     ; 0xa3c1
    imul word [bss_8462]             ; 0xa3c4
    mov si, ax                       ; 0xa3c8
    mov ax, word [bss_8464]          ; 0xa3ca
    shl ax, 1                        ; 0xa3cd
    mov bx, ax                       ; 0xa3cf
    mov bx, word [bx + party_char]   ; 0xa3d1
    mov ax, word [bx + si]           ; 0xa3d5
    mov cx, 5                        ; 0xa3d7
    imul cx                          ; 0xa3da
    dec ax                           ; 0xa3dc
    dec ax                           ; 0xa3dd
    cmp ax, word [bp - 0x0010]       ; 0xa3de
    jge short @..api_idx_005a_UJPS.l39 ; 0xa3e1
    cmp byte [bss_5988], 2           ; 0xa3e3
    je short @..api_idx_005a_UJPS.l38 ; 0xa3e8
    mov ax, 7                        ; 0xa3ea
    push ax                          ; 0xa3ed
    call ds_app_PUNN                 ; 0xa3ee
    pop cx                           ; 0xa3f1
    test ax, ax                      ; 0xa3f2
    jne short @..api_idx_005a_UJPS.l38 ; 0xa3f4
    mov word [bss_91d8], 1           ; 0xa3f6
    jmp short @..api_idx_005a_UJPS.l39 ; 0xa3fc
@..api_idx_005a_UJPS.l38:
    mov word [bss_91da], 1           ; 0xa3fe
@..api_idx_005a_UJPS.l39:
    cmp word [bss_91d8], byte 1      ; 0xa404
    jne short @..api_idx_005a_UJPS.l40 ; 0xa409
    mov ax, 6                        ; 0xa40b
    imul word [bp - 0x0006]          ; 0xa40e
    mov bx, ax                       ; 0xa411
    mov al, byte [bx + 0x623]        ; 0xa413
    sub ah, ah                       ; 0xa417
    test ax, 2                       ; 0xa419
    jne short @..api_idx_005a_UJPS.l40 ; 0xa41c
    mov word [bss_91d8], 0           ; 0xa41e
    mov word [bss_91da], 1           ; 0xa424
@..api_idx_005a_UJPS.l40:
    cmp word [bss_91da], byte 1      ; 0xa42a
    jne short @..api_idx_005a_UJPS.l41 ; 0xa42f
    mov ax, 6                        ; 0xa431
    imul word [bp - 0x0006]          ; 0xa434
    mov bx, ax                       ; 0xa437
    mov al, byte [bx + 0x623]        ; 0xa439
    sub ah, ah                       ; 0xa43d
    test ax, 1                       ; 0xa43f
    jne short @..api_idx_005a_UJPS.l41 ; 0xa442
    mov word [bss_91da], 0           ; 0xa444
@..api_idx_005a_UJPS.l41:
    cmp word [bss_91da], byte 1      ; 0xa44a
    jne short @..api_idx_005a_UJPS.l42 ; 0xa44f
    mov ax, 4                        ; 0xa451
    push ax                          ; 0xa454
    call api_idx_0004_QUPL           ; 0xa455
    pop cx                           ; 0xa458
    mov ax, 2                        ; 0xa459
    push ax                          ; 0xa45c
    mov ax, 0x41                     ; 0xa45d
    push ax                          ; 0xa460
    mov ax, 0xc81                    ; 0xa461
    push ax                          ; 0xa464
    call api_idx_0050_PLNP           ; 0xa465
    add sp, byte 6                   ; 0xa468
    push word [bss_9058]             ; 0xa46b
    call api_idx_0004_QUPL           ; 0xa46f
    pop cx                           ; 0xa472
    jmp short @..api_idx_005a_UJPS.l44 ; 0xa473
@..api_idx_005a_UJPS.l42:
    cmp word [bss_91d8], byte 1      ; 0xa475
    jne short @..api_idx_005a_UJPS.l43 ; 0xa47a
    mov ax, 4                        ; 0xa47c
    push ax                          ; 0xa47f
    call api_idx_0004_QUPL           ; 0xa480
    pop cx                           ; 0xa483
    mov ax, 2                        ; 0xa484
    push ax                          ; 0xa487
    mov ax, 0x16                     ; 0xa488
    push ax                          ; 0xa48b
    mov ax, 0xc82                    ; 0xa48c
    push ax                          ; 0xa48f
    call api_idx_0050_PLNP           ; 0xa490
    add sp, byte 6                   ; 0xa493
    push word [bss_9058]             ; 0xa496
    call api_idx_0004_QUPL           ; 0xa49a
    pop cx                           ; 0xa49d
    mov al, byte [bss_8464]          ; 0xa49e
    mov bx, word [bp + 0x4]          ; 0xa4a1
    mov byte [bx + 0x1f], al         ; 0xa4a4
    mov al, byte [bss_8462]          ; 0xa4a7
    mov bx, word [bp + 0x4]          ; 0xa4aa
    mov byte [bx + 0x20], al         ; 0xa4ad
@..api_idx_005a_UJPS.l43:
    push word [bp - 0x0004]          ; 0xa4b0
    push word [bp - 0x0006]          ; 0xa4b3
    push word [bp + 0x4]             ; 0xa4b6
    call api_idx_000e_ORJG           ; 0xa4b9
    add sp, byte 6                   ; 0xa4bc
@..api_idx_005a_UJPS.l44:
    jmp short @..api_idx_005a_UJPS.l46 ; 0xa4bf
@..api_idx_005a_UJPS.l45:
    push word [bss_9058]             ; 0xa4c1
    call api_idx_0004_QUPL           ; 0xa4c5
    pop cx                           ; 0xa4c8
@..api_idx_005a_UJPS.l46:
    ret                              ; 0xa4c9
