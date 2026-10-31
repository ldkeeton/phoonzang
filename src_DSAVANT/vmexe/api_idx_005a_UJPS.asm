; auto-generated
api_idx_005a_UJPS:
    mov ax, 0xffa6                   ; 0x9f4f
    call aztec_csav                  ; 0x9f52
    mov bx, word [bp + 4]            ; 0x9f55
    mov al, byte [bx + 0x1f]         ; 0x9f58
    sub ah, ah                       ; 0x9f5b
    mov word [bp - 0xc], ax          ; 0x9f5d
    mov al, byte [bx + 0x20]         ; 0x9f60
    sub ah, ah                       ; 0x9f63
    mov word [bp - 0xe], ax          ; 0x9f65
    push word [bss_8462]             ; 0x9f68
    push word [bss_8464]             ; 0x9f6c
    mov ax, bss_90e6                 ; 0x9f70
    push ax                          ; 0x9f73
    call loc_HJSG                    ; 0x9f74
    add sp, byte 6                   ; 0x9f77
    mov word [bp - 4], 0             ; 0x9f7a
    mov word [bp - 6], 0             ; 0x9f7f
    mov word [bp - 0x12], 0xffff     ; 0x9f84
    cmp word [bss_8464], byte 0      ; 0x9f89
    je short .forward1               ; 0x9f8e
    jmp near .forward28              ; 0x9f90
.forward1:
    mov bx, word [bp + 4]            ; 0x9f93
    mov ax, word [bx + 0xa]          ; 0x9f96
    mov cx, 0x100                    ; 0x9f99
    cwd                              ; 0x9f9c
    idiv cx                          ; 0x9f9d
    mov word [bp - 8], ax            ; 0x9f9f
    mov ax, word [bx + 0xa]          ; 0x9fa2
    cwd                              ; 0x9fa5
    idiv cx                          ; 0x9fa6
    mov word [bp - 0xa], dx          ; 0x9fa8
    mov ax, 0                        ; 0x9fab
    push ax                          ; 0x9fae
    mov ax, 0x248                    ; 0x9faf
    imul word [bss_8462]             ; 0x9fb2
    push ax                          ; 0x9fb6
    mov ax, 0x78                     ; 0x9fb7
    imul word [bp - 8]               ; 0x9fba
    mov cx, ax                       ; 0x9fbd
    pop ax                           ; 0x9fbf
    add ax, cx                       ; 0x9fc0
    push ax                          ; 0x9fc2
    mov ax, 0xc                      ; 0x9fc3
    imul word [bp - 0xa]             ; 0x9fc6
    mov cx, ax                       ; 0x9fc9
    pop ax                           ; 0x9fcb
    add ax, cx                       ; 0x9fcc
    mov bx, ax                       ; 0x9fce
    push word [bx + party_records + pc_rec.item_slots] ; 0x9fd0
    lea ax, word [bp - 0x5a]         ; 0x9fd4
    push ax                          ; 0x9fd7
    mov ax, 1                        ; 0x9fd8
    push ax                          ; 0x9fdb
    call data_record_io              ; 0x9fdc
    add sp, byte 8                   ; 0x9fdf
    mov ax, 0x248                    ; 0x9fe2
    imul word [bss_8462]             ; 0x9fe5
    push ax                          ; 0x9fe9
    mov ax, 0x78                     ; 0x9fea
    imul word [bp - 8]               ; 0x9fed
    mov cx, ax                       ; 0x9ff0
    pop ax                           ; 0x9ff2
    add ax, cx                       ; 0x9ff3
    push ax                          ; 0x9ff5
    mov ax, 0xc                      ; 0x9ff6
    imul word [bp - 0xa]             ; 0x9ff9
    mov cx, ax                       ; 0x9ffc
    pop ax                           ; 0x9ffe
    add ax, cx                       ; 0x9fff
    mov bx, ax                       ; 0xa001
    mov al, byte [bx + party_records + pc_rec.item_slots + 0x7] ; 0xa003
    sub ah, ah                       ; 0xa007
    test ax, 0x80                    ; 0xa009
    je short .forward2               ; 0xa00c
    lea ax, word [bp - 0x5a]         ; 0xa00e
    push ax                          ; 0xa011
    mov ax, bss_9186                 ; 0xa012
    push ax                          ; 0xa015
    call aztec_strcpy                ; 0xa016
    add sp, byte 4                   ; 0xa019
    jmp short .forward3              ; 0xa01c
.forward2:
    mov ax, bss_9186                 ; 0xa01e
    push ax                          ; 0xa021
    mov al, byte [bp - 0x21]         ; 0xa022
    sub ah, ah                       ; 0xa025
    add ax, MSG_DAGGER_6000          ; 0xa027
    push ax                          ; 0xa02a
    call load_message_string         ; 0xa02b
    add sp, byte 4                   ; 0xa02e
.forward3:
    mov ax, bss_9186                 ; 0xa031
    push ax                          ; 0xa034
    call replace_slashes_with_spaces ; 0xa035
    pop cx                           ; 0xa038
    cmp word [bp - 0x38], byte 0     ; 0xa039
    jne short .forward4              ; 0xa03d
    jmp near .forward20              ; 0xa03f
.forward4:
    mov ax, word [bp - 0x38]         ; 0xa042
    mov cx, 0x100                    ; 0xa045
    cwd                              ; 0xa048
    idiv cx                          ; 0xa049
    mov word [bp - 4], ax            ; 0xa04b
    mov word [bp - 6], dx            ; 0xa04e
    mov al, byte [bp - 0x22]         ; 0xa051
    sub ah, ah                       ; 0xa054
    jmp near .forward15              ; 0xa056
.back1:
    mov ax, bss_9136                 ; 0xa059
    push ax                          ; 0xa05c
    mov ax, MSG_USES                 ; 0xa05d
    push ax                          ; 0xa060
    call load_message_string         ; 0xa061
    add sp, byte 4                   ; 0xa064
    jmp near .forward19              ; 0xa067
.back2:
    mov ax, bss_9136                 ; 0xa06a
    push ax                          ; 0xa06d
    mov ax, MSG_INCANTS              ; 0xa06e
    push ax                          ; 0xa071
    call load_message_string         ; 0xa072
    add sp, byte 4                   ; 0xa075
    mov word [bp - 0x12], 0x1b       ; 0xa078
    jmp near .forward19              ; 0xa07d
.back3:
    mov ax, bss_9136                 ; 0xa080
    push ax                          ; 0xa083
    mov ax, MSG_TOSSES               ; 0xa084
    push ax                          ; 0xa087
    call load_message_string         ; 0xa088
    add sp, byte 4                   ; 0xa08b
    jmp near .forward19              ; 0xa08e
.back4:
    cmp word [bp - 6], byte 0x61     ; 0xa091
    je short .forward5               ; 0xa095
    cmp word [bp - 6], byte 0x62     ; 0xa097
    jne short .forward6              ; 0xa09b
.forward5:
    mov ax, bss_9136                 ; 0xa09d
    push ax                          ; 0xa0a0
    mov ax, MSG_CONSUMES             ; 0xa0a1
    push ax                          ; 0xa0a4
    call load_message_string         ; 0xa0a5
    add sp, byte 4                   ; 0xa0a8
    jmp near .forward14              ; 0xa0ab
.forward6:
    cmp word [bp - 4], byte 0        ; 0xa0ae
    je short .forward7               ; 0xa0b2
    jmp near .forward12              ; 0xa0b4
.forward7:
    mov ax, 0x248                    ; 0xa0b7
    imul word [bss_8462]             ; 0xa0ba
    mov bx, ax                       ; 0xa0be
    cmp byte [bx + party_records + pc_rec.skills + 0xd], 0 ; 0xa0c0
    jbe short .forward9              ; 0xa0c5
    mov al, byte [bx + party_records + pc_rec.skills + 0xd] ; 0xa0c7
    sub ah, ah                       ; 0xa0cb
    mov cx, 0xf                      ; 0xa0cd
    cwd                              ; 0xa0d0
    idiv cx                          ; 0xa0d1
    inc ax                           ; 0xa0d3
    inc ax                           ; 0xa0d4
    push ax                          ; 0xa0d5
    mov ax, 6                        ; 0xa0d6
    imul word [bp - 6]               ; 0xa0d9
    mov bx, ax                       ; 0xa0dc
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0xa0de
    sub ah, ah                       ; 0xa0e2
    mov cx, ax                       ; 0xa0e4
    pop ax                           ; 0xa0e6
    sub ax, cx                       ; 0xa0e7
    mov word [bp - 4], ax            ; 0xa0e9
    mov ax, 1                        ; 0xa0ec
    push ax                          ; 0xa0ef
    mov ax, 0xd                      ; 0xa0f0
    push ax                          ; 0xa0f3
    push word [bss_8462]             ; 0xa0f4
    call try_raise_member_skill      ; 0xa0f8
    add sp, byte 6                   ; 0xa0fb
    cmp word [bp - 4], byte 0        ; 0xa0fe
    jge short .forward8              ; 0xa102
    mov word [bp - 4], 0             ; 0xa104
.forward8:
    cmp word [bp - 4], byte 6        ; 0xa109
    jle short .back5                 ; 0xa10d
    mov word [bp - 4], 6             ; 0xa10f
.back5:
    cmp word [bp - 4], byte 0        ; 0xa114
    jle short .forward9              ; 0xa118
    mov ax, 0x64                     ; 0xa11a
    push ax                          ; 0xa11d
    call random_below                ; 0xa11e
    pop cx                           ; 0xa121
    push ax                          ; 0xa122
    mov ax, 0xa                      ; 0xa123
    imul word [bp - 4]               ; 0xa126
    mov cx, ax                       ; 0xa129
    pop ax                           ; 0xa12b
    cmp ax, cx                       ; 0xa12c
    jge short .forward9              ; 0xa12e
    dec word [bp - 4]                ; 0xa130
    jmp short .back5                 ; 0xa133
.forward9:
    cmp word [bp - 4], byte 0        ; 0xa135
    jne short .forward10             ; 0xa139
    mov ax, bss_9136                 ; 0xa13b
    push ax                          ; 0xa13e
    mov ax, MSG_ABUSES               ; 0xa13f
    push ax                          ; 0xa142
    call load_message_string         ; 0xa143
    add sp, byte 4                   ; 0xa146
    jmp short .forward11             ; 0xa149
.forward10:
    mov ax, bss_9136                 ; 0xa14b
    push ax                          ; 0xa14e
    mov ax, MSG_PLAYS                ; 0xa14f
    push ax                          ; 0xa152
    call load_message_string         ; 0xa153
    add sp, byte 4                   ; 0xa156
    push word [bp - 4]               ; 0xa159
    call random_below                ; 0xa15c
    pop cx                           ; 0xa15f
    add ax, word [bp - 4]            ; 0xa160
    inc ax                           ; 0xa163
    push ax                          ; 0xa164
    push word [bp + 4]               ; 0xa165
    call loc_TGJH                    ; 0xa168
    add sp, byte 4                   ; 0xa16b
.forward11:
    jmp short .forward14             ; 0xa16e
.forward12:
    mov ax, 0x248                    ; 0xa170
    imul word [bss_8462]             ; 0xa173
    push ax                          ; 0xa177
    mov ax, 0x78                     ; 0xa178
    imul word [bp - 8]               ; 0xa17b
    mov cx, ax                       ; 0xa17e
    pop ax                           ; 0xa180
    add ax, cx                       ; 0xa181
    push ax                          ; 0xa183
    mov ax, 0xc                      ; 0xa184
    imul word [bp - 0xa]             ; 0xa187
    mov cx, ax                       ; 0xa18a
    pop ax                           ; 0xa18c
    add ax, cx                       ; 0xa18d
    mov bx, ax                       ; 0xa18f
    cmp word [bx + party_records + pc_rec.item_slots], strict word 0x1d4 ; 0xa191
    jne short .forward13             ; 0xa197
    mov ax, bss_9136                 ; 0xa199
    push ax                          ; 0xa19c
    mov ax, MSG_TOSSES               ; 0xa19d
    push ax                          ; 0xa1a0
    call load_message_string         ; 0xa1a1
    add sp, byte 4                   ; 0xa1a4
    jmp short .forward14             ; 0xa1a7
.forward13:
    mov ax, bss_9136                 ; 0xa1a9
    push ax                          ; 0xa1ac
    mov ax, MSG_INVOKES_3312         ; 0xa1ad
    push ax                          ; 0xa1b0
    call load_message_string         ; 0xa1b1
    add sp, byte 4                   ; 0xa1b4
    mov word [bp - 0x12], 0x18       ; 0xa1b7
.forward14:
    jmp short .forward19             ; 0xa1bc
.forward15:
    cmp ax, strict word 0xc          ; 0xa1be
    jne short .forward16             ; 0xa1c1
    jmp near .back1                  ; 0xa1c3
.forward16:
    cmp ax, strict word 0xd          ; 0xa1c6
    jne short .forward17             ; 0xa1c9
    jmp near .back2                  ; 0xa1cb
.forward17:
    cmp ax, strict word 0x10         ; 0xa1ce
    jne short .forward18             ; 0xa1d1
    jmp near .back3                  ; 0xa1d3
.forward18:
    jmp near .back4                  ; 0xa1d6
.forward19:
    push word [bp - 0xa]             ; 0xa1d9
    push word [bp - 8]               ; 0xa1dc
    push word [bss_8462]             ; 0xa1df
    call api_idx_000e_PTNT           ; 0xa1e3
    add sp, byte 6                   ; 0xa1e6
    jmp short .forward23             ; 0xa1e9
.forward20:
    cmp byte [bp - 0x22], 2          ; 0xa1eb
    je short .forward21              ; 0xa1ef
    cmp byte [bp - 0x22], 4          ; 0xa1f1
    jne short .forward22             ; 0xa1f5
.forward21:
    mov ax, bss_9136                 ; 0xa1f7
    push ax                          ; 0xa1fa
    mov ax, MSG_FUMBLES_3317         ; 0xa1fb
    push ax                          ; 0xa1fe
    call load_message_string         ; 0xa1ff
    add sp, byte 4                   ; 0xa202
    jmp short .forward23             ; 0xa205
.forward22:
    mov ax, bss_9136                 ; 0xa207
    push ax                          ; 0xa20a
    mov ax, MSG_FUMBLES_3316         ; 0xa20b
    push ax                          ; 0xa20e
    call load_message_string         ; 0xa20f
    add sp, byte 4                   ; 0xa212
.forward23:
    cmp word [character_record_index], strict word 0xe1 ; 0xa215
    jne short .forward24             ; 0xa21b
    cmp byte [bp - 0x1b], 0x58       ; 0xa21d
    jne short .forward24             ; 0xa221
    mov word [e1_event_flag], 1      ; 0xa223
    mov ax, bss_9136                 ; 0xa229
    push ax                          ; 0xa22c
    mov ax, MSG_INVOKES_3312         ; 0xa22d
    push ax                          ; 0xa230
    call load_message_string         ; 0xa231
    add sp, byte 4                   ; 0xa234
    mov word [bp - 6], 0x64          ; 0xa237
    mov word [bp - 4], 6             ; 0xa23c
    mov ax, 0x248                    ; 0xa241
    imul word [bss_8462]             ; 0xa244
    push ax                          ; 0xa248
    mov ax, 0x78                     ; 0xa249
    imul word [bp - 8]               ; 0xa24c
    mov cx, ax                       ; 0xa24f
    pop ax                           ; 0xa251
    add ax, cx                       ; 0xa252
    push ax                          ; 0xa254
    mov ax, 0xc                      ; 0xa255
    imul word [bp - 0xa]             ; 0xa258
    mov cx, ax                       ; 0xa25b
    pop ax                           ; 0xa25d
    add ax, cx                       ; 0xa25e
    mov bx, ax                       ; 0xa260
    mov byte [bx + party_records + pc_rec.item_slots + 0x6], 1 ; 0xa262
    push word [bp - 0xa]             ; 0xa267
    push word [bp - 8]               ; 0xa26a
    push word [bss_8462]             ; 0xa26d
    call api_idx_000e_PTNT           ; 0xa271
    add sp, byte 6                   ; 0xa274
.forward24:
    mov ax, 0x248                    ; 0xa277
    imul word [bss_8462]             ; 0xa27a
    push ax                          ; 0xa27e
    mov ax, 0x78                     ; 0xa27f
    imul word [bp - 8]               ; 0xa282
    mov cx, ax                       ; 0xa285
    pop ax                           ; 0xa287
    add ax, cx                       ; 0xa288
    push ax                          ; 0xa28a
    mov ax, 0xc                      ; 0xa28b
    imul word [bp - 0xa]             ; 0xa28e
    mov cx, ax                       ; 0xa291
    pop ax                           ; 0xa293
    add ax, cx                       ; 0xa294
    mov bx, ax                       ; 0xa296
    cmp word [bx + party_records + pc_rec.item_slots], strict word 0x218 ; 0xa298
    jne short .forward27             ; 0xa29e
    mov ax, word [bp - 0xc]          ; 0xa2a0
    shl ax, 1                        ; 0xa2a3
    mov bx, ax                       ; 0xa2a5
    mov bx, word [bx + party_char]   ; 0xa2a7
    mov al, byte [bx + member_rec.kind] ; 0xa2ab
    sub ah, ah                       ; 0xa2af
    cmp ax, 0xe9                     ; 0xa2b1
    jne short .forward26             ; 0xa2b4
    mov ax, word [bp - 0xc]          ; 0xa2b6
    shl ax, 1                        ; 0xa2b9
    mov bx, ax                       ; 0xa2bb
    mov bx, word [bx + party_char_ext] ; 0xa2bd
    mov al, byte [bx + member_ext.f_00a5] ; 0xa2c1
    sub ah, ah                       ; 0xa2c5
    add ax, strict word 0xfff1       ; 0xa2c7
    mov word [bp - 0x10], ax         ; 0xa2ca
    cmp ax, strict word 0            ; 0xa2cd
    jge short .forward25             ; 0xa2d0
    mov word [bp - 0x10], 0          ; 0xa2d2
.forward25:
    mov al, byte [bp - 0x10]         ; 0xa2d7
    mov byte [bx + 0xa5], al         ; 0xa2da
.forward26:
    mov word [bp - 0x12], 0x1b       ; 0xa2de
    mov ax, bss_9136                 ; 0xa2e3
    push ax                          ; 0xa2e6
    mov ax, MSG_INCANTS              ; 0xa2e7
    push ax                          ; 0xa2ea
    call load_message_string         ; 0xa2eb
    add sp, byte 4                   ; 0xa2ee
.forward27:
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
    add sp, byte 0xe                 ; 0xa30d
    jmp short .forward28             ; 0xa310
.forward28:
    cmp word [bp - 4], byte 0        ; 0xa312
    jne short .forward29             ; 0xa316
    jmp near .forward40              ; 0xa318
.forward29:
    mov word [bss_91d8], 0           ; 0xa31b
    mov word [bss_91da], 0           ; 0xa321
    mov ax, 6                        ; 0xa327
    imul word [bp - 6]               ; 0xa32a
    mov bx, ax                       ; 0xa32d
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0xa32f
    sub ah, ah                       ; 0xa333
    mov cx, 0xa                      ; 0xa335
    imul cx                          ; 0xa338
    push ax                          ; 0xa33a
    mov ax, 5                        ; 0xa33b
    imul word [bp - 4]               ; 0xa33e
    mov cx, ax                       ; 0xa341
    pop ax                           ; 0xa343
    add ax, cx                       ; 0xa344
    push ax                          ; 0xa346
    call random_below                ; 0xa347
    pop cx                           ; 0xa34a
    add ax, strict word 0xfff6       ; 0xa34b
    mov word [bp - 0x10], ax         ; 0xa34e
    cmp word [bss_8464], byte 0      ; 0xa351
    jne short .forward32             ; 0xa356
    cmp word [bp - 0x12], byte -1    ; 0xa358
    je short .forward31              ; 0xa35c
    mov ax, 3                        ; 0xa35e
    push ax                          ; 0xa361
    push word [bp - 0x12]            ; 0xa362
    push word [bss_8462]             ; 0xa365
    call try_raise_member_skill      ; 0xa369
    add sp, byte 6                   ; 0xa36c
    mov ax, 0x248                    ; 0xa36f
    imul word [bss_8462]             ; 0xa372
    add ax, word [bp - 0x12]         ; 0xa376
    mov bx, ax                       ; 0xa379
    mov al, byte [bx + party_records + pc_rec.skills] ; 0xa37b
    sub ah, ah                       ; 0xa37f
    cmp ax, word [bp - 0x10]         ; 0xa381
    jge short .forward31             ; 0xa384
    cmp byte [startup_aux_option_a], 1 ; 0xa386
    je short .forward30              ; 0xa38b
    mov ax, 0x24                     ; 0xa38d
    push ax                          ; 0xa390
    call random_below                ; 0xa391
    pop cx                           ; 0xa394
    push ax                          ; 0xa395
    mov ax, 0x248                    ; 0xa396
    imul word [bss_8462]             ; 0xa399
    mov bx, ax                       ; 0xa39d
    mov al, byte [bx + party_records + pc_rec.stat + 0x7] ; 0xa39f
    sub ah, ah                       ; 0xa3a3
    mov cx, ax                       ; 0xa3a5
    add ax, strict word 0x12         ; 0xa3a7
    mov cx, ax                       ; 0xa3aa
    pop ax                           ; 0xa3ac
    cmp ax, cx                       ; 0xa3ad
    jle short .forward30             ; 0xa3af
    mov word [bss_91d8], 1           ; 0xa3b1
    jmp short .forward31             ; 0xa3b7
.forward30:
    mov word [bss_91da], 1           ; 0xa3b9
.forward31:
    jmp short .forward34             ; 0xa3bf
.forward32:
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
    cmp ax, word [bp - 0x10]         ; 0xa3de
    jge short .forward34             ; 0xa3e1
    cmp byte [startup_aux_option_a], 2 ; 0xa3e3
    je short .forward33              ; 0xa3e8
    mov ax, 7                        ; 0xa3ea
    push ax                          ; 0xa3ed
    call random_below                ; 0xa3ee
    pop cx                           ; 0xa3f1
    test ax, ax                      ; 0xa3f2
    jne short .forward33             ; 0xa3f4
    mov word [bss_91d8], 1           ; 0xa3f6
    jmp short .forward34             ; 0xa3fc
.forward33:
    mov word [bss_91da], 1           ; 0xa3fe
.forward34:
    cmp word [bss_91d8], byte 1      ; 0xa404
    jne short .forward35             ; 0xa409
    mov ax, 6                        ; 0xa40b
    imul word [bp - 6]               ; 0xa40e
    mov bx, ax                       ; 0xa411
    mov al, byte [bx + spell_table + spell_table_rec.f_0003] ; 0xa413
    sub ah, ah                       ; 0xa417
    test ax, 2                       ; 0xa419
    jne short .forward35             ; 0xa41c
    mov word [bss_91d8], 0           ; 0xa41e
    mov word [bss_91da], 1           ; 0xa424
.forward35:
    cmp word [bss_91da], byte 1      ; 0xa42a
    jne short .forward36             ; 0xa42f
    mov ax, 6                        ; 0xa431
    imul word [bp - 6]               ; 0xa434
    mov bx, ax                       ; 0xa437
    mov al, byte [bx + spell_table + spell_table_rec.f_0003] ; 0xa439
    sub ah, ah                       ; 0xa43d
    test ax, 1                       ; 0xa43f
    jne short .forward36             ; 0xa442
    mov word [bss_91da], 0           ; 0xa444
.forward36:
    cmp word [bss_91da], byte 1      ; 0xa44a
    jne short .forward37             ; 0xa44f
    mov ax, 4                        ; 0xa451
    push ax                          ; 0xa454
    call api_idx_0004_QUPL           ; 0xa455
    pop cx                           ; 0xa458
    mov ax, 2                        ; 0xa459
    push ax                          ; 0xa45c
    mov ax, 0x41                     ; 0xa45d
    push ax                          ; 0xa460
    mov ax, MSG_FIZZLE_3201          ; 0xa461
    push ax                          ; 0xa464
    call api_idx_0050_PLNP           ; 0xa465
    add sp, byte 6                   ; 0xa468
    push word [startup_option]       ; 0xa46b
    call api_idx_0004_QUPL           ; 0xa46f
    pop cx                           ; 0xa472
    jmp short .forward39             ; 0xa473
.forward37:
    cmp word [bss_91d8], byte 1      ; 0xa475
    jne short .forward38             ; 0xa47a
    mov ax, 4                        ; 0xa47c
    push ax                          ; 0xa47f
    call api_idx_0004_QUPL           ; 0xa480
    pop cx                           ; 0xa483
    mov ax, 2                        ; 0xa484
    push ax                          ; 0xa487
    mov ax, 0x16                     ; 0xa488
    push ax                          ; 0xa48b
    mov ax, MSG_BACKFIRE             ; 0xa48c
    push ax                          ; 0xa48f
    call api_idx_0050_PLNP           ; 0xa490
    add sp, byte 6                   ; 0xa493
    push word [startup_option]       ; 0xa496
    call api_idx_0004_QUPL           ; 0xa49a
    pop cx                           ; 0xa49d
    mov al, byte [bss_8464]          ; 0xa49e
    mov bx, word [bp + 4]            ; 0xa4a1
    mov byte [bx + 0x1f], al         ; 0xa4a4
    mov al, byte [bss_8462]          ; 0xa4a7
    mov bx, word [bp + 4]            ; 0xa4aa
    mov byte [bx + 0x20], al         ; 0xa4ad
.forward38:
    push word [bp - 4]               ; 0xa4b0
    push word [bp - 6]               ; 0xa4b3
    push word [bp + 4]               ; 0xa4b6
    call api_idx_000e_KPGJ           ; 0xa4b9
    add sp, byte 6                   ; 0xa4bc
.forward39:
    jmp short .return1               ; 0xa4bf
.forward40:
    push word [startup_option]       ; 0xa4c1
    call api_idx_0004_QUPL           ; 0xa4c5
    pop cx                           ; 0xa4c8
.return1:
    ret                              ; 0xa4c9
