; auto-generated
api_idx_0010_GVMH:
    mov ax, 0xfff0                   ; 0x5050
    call aztec_csav                  ; 0x5053
    mov word [bp - 0x0010], 1        ; 0x5056
    mov word [bp - 0x000e], 1        ; 0x505b
    mov word [bp - 0x000c], 0xffff   ; 0x5060
    lea ax, word [bp - 0x0010]       ; 0x5065
    push ax                          ; 0x5068
    mov ax, 1                        ; 0x5069
    push ax                          ; 0x506c
    mov ax, 0xffff                   ; 0x506d
    push ax                          ; 0x5070
    mov ax, 1                        ; 0x5071
    push ax                          ; 0x5074
    mov ax, 2                        ; 0x5075
    push ax                          ; 0x5078
    mov ax, 1                        ; 0x5079
    push ax                          ; 0x507c
    mov ax, 0xc                      ; 0x507d
    push ax                          ; 0x5080
    mov ax, 0x6a                     ; 0x5081
    push ax                          ; 0x5084
    mov ax, 0xb                      ; 0x5085
    push ax                          ; 0x5088
    mov ax, 0x70                     ; 0x5089
    push ax                          ; 0x508c
    mov ax, 0x4a                     ; 0x508d
    push ax                          ; 0x5090
    mov ax, MSG_INVOKE_ITS_SPECIAL_POWER ; 0x5091
    push ax                          ; 0x5094
    mov ax, 0x162                    ; 0x5095
    push ax                          ; 0x5098
    call loc_UGOG                    ; 0x5099
    add sp, byte 0x1a                ; 0x509c
    mov word [bp - 0x0006], ax       ; 0x509f
    cmp word [bp - 0x0006], byte 0   ; 0x50a2
    je short @..api_idx_0010_GVMH.l1 ; 0x50a6
    jmp near @..api_idx_0010_GVMH.l18 ; 0x50a8
@..api_idx_0010_GVMH.l1:
    cmp word [bp + 0xa], byte 9      ; 0x50ab
    jge short @..api_idx_0010_GVMH.l3 ; 0x50af
    mov ax, word [bp + 0xa]          ; 0x50b1
    dec ax                           ; 0x50b4
    mov word [bp - 0x0004], ax       ; 0x50b5
    mov ax, 0x248                    ; 0x50b8
    imul word [bp + 0x4]             ; 0x50bb
    mov cx, ax                       ; 0x50be
    mov ax, word [bp - 0x0004]       ; 0x50c0
    add cx, ax                       ; 0x50c3
    mov bx, cx                       ; 0x50c5
    cmp byte [bx + party_records + pc_rec.stat], 0x14 ; 0x50c7
    jae short @..api_idx_0010_GVMH.l2 ; 0x50cc
    inc byte [bx + party_records + pc_rec.stat] ; 0x50ce
@..api_idx_0010_GVMH.l2:
    jmp near @..api_idx_0010_GVMH.l17 ; 0x50d2
@..api_idx_0010_GVMH.l3:
    mov ax, word [bp + 0xa]          ; 0x50d5
    jmp near @..api_idx_0010_GVMH.l16 ; 0x50d8
jumptable_532e_case_0:
    mov ax, 0x248                    ; 0x50db
    imul word [bp + 0x4]             ; 0x50de
    mov bx, ax                       ; 0x50e1
    cmp byte [bx + party_records + pc_rec.f_0243], 4 ; 0x50e3
    jae short @..api_idx_0010_GVMH.l4 ; 0x50e8
    mov byte [bx + party_records + pc_rec.f_0243], 4 ; 0x50ea
@..api_idx_0010_GVMH.l4:
    jmp near @..api_idx_0010_GVMH.l17 ; 0x50ef
jumptable_532e_case_1:
    mov ax, 0x248                    ; 0x50f2
    imul word [bp + 0x4]             ; 0x50f5
    mov bx, ax                       ; 0x50f8
    cmp byte [bx + party_records + pc_rec.f_0244], 4 ; 0x50fa
    jae short @..api_idx_0010_GVMH.l5 ; 0x50ff
    mov byte [bx + party_records + pc_rec.f_0244], 4 ; 0x5101
@..api_idx_0010_GVMH.l5:
    jmp near @..api_idx_0010_GVMH.l17 ; 0x5106
jumptable_532e_case_2:
    mov ax, 0x248                    ; 0x5109
    imul word [bp + 0x4]             ; 0x510c
    mov bx, ax                       ; 0x510f
    mov byte [bx + party_records + pc_rec.state], 0 ; 0x5111
    mov word [bp - 0x0004], 0        ; 0x5116
@..api_idx_0010_GVMH.l6:
    mov ax, 0x248                    ; 0x511b
    imul word [bp + 0x4]             ; 0x511e
    add ax, word [bp - 0x0004]       ; 0x5121
    mov bx, ax                       ; 0x5124
    mov byte [bx + party_records + pc_rec.status], 0 ; 0x5126
    inc word [bp - 0x0004]           ; 0x512b
    mov ax, word [bp - 0x0004]       ; 0x512e
    cmp ax, strict word 0xa          ; 0x5131
    jl short @..api_idx_0010_GVMH.l6 ; 0x5134
    mov ax, 0x248                    ; 0x5136
    imul word [bp + 0x4]             ; 0x5139
    mov bx, ax                       ; 0x513c
    mov ax, word [bx + party_records + pc_rec.pair_a + 0x2] ; 0x513e
    mov word [bx + party_records + pc_rec.pair_a], ax ; 0x5142
    mov ax, word [bx + party_records + pc_rec.pair_b + 0x2] ; 0x5146
    mov word [bx + party_records + pc_rec.pair_b], ax ; 0x514a
jumptable_532e_case_3:
    cmp word [bp + 0xa], byte 0x0b   ; 0x514e
    je short @..api_idx_0010_GVMH.l10 ; 0x5152
    mov ax, 0x248                    ; 0x5154
    imul word [bp + 0x4]             ; 0x5157
    mov bx, ax                       ; 0x515a
    mov ax, word [bx + party_records + pc_rec.f_0008] ; 0x515c
    mov dx, word [bx + party_records + pc_rec.f_000a] ; 0x5160
    mov cx, 0x16d                    ; 0x5164
    mov bx, 0                        ; 0x5167
    call aztec_ldv                   ; 0x516a
    cmp dx, byte 0                   ; 0x516d
    jl short @..api_idx_0010_GVMH.l7 ; 0x5170
    jne short @..api_idx_0010_GVMH.l8 ; 0x5172
    cmp ax, strict word 0x12         ; 0x5174
    ja short @..api_idx_0010_GVMH.l8 ; 0x5177
@..api_idx_0010_GVMH.l7:
    jmp short @..api_idx_0010_GVMH.l9 ; 0x5179
@..api_idx_0010_GVMH.l8:
    mov ax, 0x248                    ; 0x517b
    imul word [bp + 0x4]             ; 0x517e
    mov bx, ax                       ; 0x5181
    add word [bx + party_records + pc_rec.f_0008], strict word 0xfe92 ; 0x5183
    adc word [bx + party_records + pc_rec.f_000a], byte 0xff ; 0x5189
@..api_idx_0010_GVMH.l9:
    mov ax, 0x248                    ; 0x518e
    imul word [bp + 0x4]             ; 0x5191
    mov bx, ax                       ; 0x5194
    cmp byte [bx + party_records + pc_rec.stat + 0x3], 0x12 ; 0x5196
    jae short @..api_idx_0010_GVMH.l10 ; 0x519b
    inc byte [bx + party_records + pc_rec.stat + 0x3] ; 0x519d
@..api_idx_0010_GVMH.l10:
    jmp near @..api_idx_0010_GVMH.l17 ; 0x51a1
jumptable_532e_case_4:
    mov ax, 5                        ; 0x51a4
    push ax                          ; 0x51a7
    call random_below                ; 0x51a8
    pop cx                           ; 0x51ab
    inc ax                           ; 0x51ac
    inc ax                           ; 0x51ad
    mov word [bp - 0x0004], ax       ; 0x51ae
    push ax                          ; 0x51b1
    mov ax, 0x248                    ; 0x51b2
    imul word [bp + 0x4]             ; 0x51b5
    mov bx, ax                       ; 0x51b8
    pop ax                           ; 0x51ba
    add word [bx + party_records + pc_rec.pair_a + 0x2], ax ; 0x51bb
    add word [bx + party_records + pc_rec.pair_a], ax ; 0x51bf
    jmp near @..api_idx_0010_GVMH.l17 ; 0x51c3
jumptable_532e_case_5:
    mov word [bp - 0x0004], 0        ; 0x51c6
@..api_idx_0010_GVMH.l11:
    mov ax, 0x248                    ; 0x51cb
    imul word [bp + 0x4]             ; 0x51ce
    mov cx, word [bp - 0x0004]       ; 0x51d1
    shl cx, 1                        ; 0x51d4
    shl cx, 1                        ; 0x51d6
    add ax, cx                       ; 0x51d8
    mov bx, ax                       ; 0x51da
    mov ax, word [bx + party_records + pc_rec.realm_points + 0x2] ; 0x51dc
    mov word [bx + party_records + pc_rec.realm_points], ax ; 0x51e0
    inc word [bp - 0x0004]           ; 0x51e4
    mov ax, word [bp - 0x0004]       ; 0x51e7
    cmp ax, strict word 6            ; 0x51ea
    jl short @..api_idx_0010_GVMH.l11 ; 0x51ed
    jmp near @..api_idx_0010_GVMH.l17 ; 0x51ef
jumptable_532e_case_6:
    mov ax, 0x248                    ; 0x51f2
    imul word [bp + 0x4]             ; 0x51f5
    mov bx, ax                       ; 0x51f8
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0x12 ; 0x51fa
    jae short @..api_idx_0010_GVMH.l12 ; 0x51ff
    mov byte [bx + party_records + pc_rec.stat + 0x4], 0x12 ; 0x5201
@..api_idx_0010_GVMH.l12:
    cmp byte [bx + party_records + pc_rec.stat + 0x5], 0x12 ; 0x5206
    jae short @..api_idx_0010_GVMH.l13 ; 0x520b
    mov byte [bx + party_records + pc_rec.stat + 0x5], 0x12 ; 0x520d
@..api_idx_0010_GVMH.l13:
    mov ax, 5                        ; 0x5212
    push ax                          ; 0x5215
    mov ax, 0xa                      ; 0x5216
    push ax                          ; 0x5219
    mov ax, 0x21                     ; 0x521a
    push ax                          ; 0x521d
    push word [bp + 0x4]             ; 0x521e
    call api_idx_0002_TJIU           ; 0x5221
    add sp, byte 8                   ; 0x5224
    jmp near @..api_idx_0010_GVMH.l17 ; 0x5227
jumptable_532e_case_7:
    mov word [bp - 0x0002], 0        ; 0x522a
@..api_idx_0010_GVMH.l14:
    mov ax, 0x248                    ; 0x522f
    imul word [bp + 0x4]             ; 0x5232
    mov bx, ax                       ; 0x5235
    cmp byte [bx + party_records + pc_rec.stat + 0x7], 0 ; 0x5237
    jbe short @..api_idx_0010_GVMH.l15 ; 0x523c
    cmp word [bp - 0x0002], byte 0   ; 0x523e
    jne short @..api_idx_0010_GVMH.l15 ; 0x5242
    dec byte [bx + party_records + pc_rec.stat + 0x7] ; 0x5244
    mov ax, 3                        ; 0x5248
    push ax                          ; 0x524b
    call random_below                ; 0x524c
    pop cx                           ; 0x524f
    mov word [bp - 0x0002], ax       ; 0x5250
    jmp short @..api_idx_0010_GVMH.l14 ; 0x5253
@..api_idx_0010_GVMH.l15:
    jmp near @..api_idx_0010_GVMH.l17 ; 0x5255
jumptable_532e_case_31:
    mov ax, 4                        ; 0x5258
    push ax                          ; 0x525b
    mov ax, 3                        ; 0x525c
    push ax                          ; 0x525f
    mov ax, 0x16                     ; 0x5260
    push ax                          ; 0x5263
    push word [bp + 0x4]             ; 0x5264
    call api_idx_0002_TJIU           ; 0x5267
    add sp, byte 8                   ; 0x526a
    jmp near @..api_idx_0010_GVMH.l17 ; 0x526d
jumptable_532e_case_32:
    mov ax, 5                        ; 0x5270
    push ax                          ; 0x5273
    mov ax, 4                        ; 0x5274
    push ax                          ; 0x5277
    mov ax, 0xa                      ; 0x5278
    push ax                          ; 0x527b
    push word [bp + 0x4]             ; 0x527c
    call api_idx_0002_TJIU           ; 0x527f
    add sp, byte 8                   ; 0x5282
    jmp near @..api_idx_0010_GVMH.l17 ; 0x5285
jumptable_532e_case_33:
    mov ax, 4                        ; 0x5288
    push ax                          ; 0x528b
    mov ax, 3                        ; 0x528c
    push ax                          ; 0x528f
    mov ax, 0x13                     ; 0x5290
    push ax                          ; 0x5293
    push word [bp + 0x4]             ; 0x5294
    call api_idx_0002_TJIU           ; 0x5297
    add sp, byte 8                   ; 0x529a
    jmp near @..api_idx_0010_GVMH.l17 ; 0x529d
jumptable_532e_case_34:
    mov ax, 3                        ; 0x52a0
    push ax                          ; 0x52a3
    mov ax, 2                        ; 0x52a4
    push ax                          ; 0x52a7
    mov ax, 0x18                     ; 0x52a8
    push ax                          ; 0x52ab
    push word [bp + 0x4]             ; 0x52ac
    call api_idx_0002_TJIU           ; 0x52af
    add sp, byte 8                   ; 0x52b2
    jmp near @..api_idx_0010_GVMH.l17 ; 0x52b5
jumptable_532e_case_35:
    mov ax, 4                        ; 0x52b8
    push ax                          ; 0x52bb
    mov ax, 3                        ; 0x52bc
    push ax                          ; 0x52bf
    mov ax, 0xf                      ; 0x52c0
    push ax                          ; 0x52c3
    push word [bp + 0x4]             ; 0x52c4
    call api_idx_0002_TJIU           ; 0x52c7
    add sp, byte 8                   ; 0x52ca
    jmp near @..api_idx_0010_GVMH.l17 ; 0x52cd
jumptable_532e_case_36:
    mov ax, 4                        ; 0x52d0
    push ax                          ; 0x52d3
    mov ax, 3                        ; 0x52d4
    push ax                          ; 0x52d7
    mov ax, 0x10                     ; 0x52d8
    push ax                          ; 0x52db
    push word [bp + 0x4]             ; 0x52dc
    call api_idx_0002_TJIU           ; 0x52df
    add sp, byte 8                   ; 0x52e2
    jmp near @..api_idx_0010_GVMH.l17 ; 0x52e5
jumptable_532e_case_37:
    mov ax, 5                        ; 0x52e8
    push ax                          ; 0x52eb
    mov ax, 4                        ; 0x52ec
    push ax                          ; 0x52ef
    mov ax, 0xc                      ; 0x52f0
    push ax                          ; 0x52f3
    push word [bp + 0x4]             ; 0x52f4
    call api_idx_0002_TJIU           ; 0x52f7
    add sp, byte 8                   ; 0x52fa
    jmp near @..api_idx_0010_GVMH.l17 ; 0x52fd
jumptable_532e_case_38:
    mov ax, 5                        ; 0x5300
    push ax                          ; 0x5303
    mov ax, 4                        ; 0x5304
    push ax                          ; 0x5307
    mov ax, 0xb                      ; 0x5308
    push ax                          ; 0x530b
    push word [bp + 0x4]             ; 0x530c
    call api_idx_0002_TJIU           ; 0x530f
    add sp, byte 8                   ; 0x5312
    jmp short @..api_idx_0010_GVMH.l17 ; 0x5315
jumptable_532e_case_39:
    mov ax, 4                        ; 0x5317
    push ax                          ; 0x531a
    mov ax, 3                        ; 0x531b
    push ax                          ; 0x531e
    mov ax, 0x15                     ; 0x531f
    push ax                          ; 0x5322
    push word [bp + 0x4]             ; 0x5323
    call api_idx_0002_TJIU           ; 0x5326
    add sp, byte 8                   ; 0x5329
    jmp short @..api_idx_0010_GVMH.l17 ; 0x532c
jumptable_532e:
    dw jumptable_532e_case_0 - IMAGE_BASE + __zres_end ; 0x532e
    dw jumptable_532e_case_1 - IMAGE_BASE + __zres_end ; 0x5330
    dw jumptable_532e_case_2 - IMAGE_BASE + __zres_end ; 0x5332
    dw jumptable_532e_case_3 - IMAGE_BASE + __zres_end ; 0x5334
    dw jumptable_532e_case_4 - IMAGE_BASE + __zres_end ; 0x5336
    dw jumptable_532e_case_5 - IMAGE_BASE + __zres_end ; 0x5338
    dw jumptable_532e_case_6 - IMAGE_BASE + __zres_end ; 0x533a
    dw jumptable_532e_case_7 - IMAGE_BASE + __zres_end ; 0x533c
    dw jumptable_532e_case_2 - IMAGE_BASE + __zres_end ; 0x533e
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5340
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5342
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5344
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5346
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5348
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x534a
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x534c
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x534e
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5350
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5352
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5354
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5356
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5358
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x535a
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x535c
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x535e
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5360
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5362
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5364
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5366
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x5368
    dw jumptable_532e_case_9 - IMAGE_BASE + __zres_end ; 0x536a
    dw jumptable_532e_case_31 - IMAGE_BASE + __zres_end ; 0x536c
    dw jumptable_532e_case_32 - IMAGE_BASE + __zres_end ; 0x536e
    dw jumptable_532e_case_33 - IMAGE_BASE + __zres_end ; 0x5370
    dw jumptable_532e_case_34 - IMAGE_BASE + __zres_end ; 0x5372
    dw jumptable_532e_case_35 - IMAGE_BASE + __zres_end ; 0x5374
    dw jumptable_532e_case_36 - IMAGE_BASE + __zres_end ; 0x5376
    dw jumptable_532e_case_37 - IMAGE_BASE + __zres_end ; 0x5378
    dw jumptable_532e_case_38 - IMAGE_BASE + __zres_end ; 0x537a
    dw jumptable_532e_case_39 - IMAGE_BASE + __zres_end ; 0x537c
@..api_idx_0010_GVMH.l16:
    sub ax, strict word 9            ; 0x537e
    cmp ax, strict word 0x28         ; 0x5381
    jae short @..api_idx_0010_GVMH.l17 ; 0x5384
    xchg bx, ax                      ; 0x5386
    shl bx, 1                        ; 0x5387
    jmp [cs:bx + jumptable_532e - IMAGE_BASE + __zres_end] ; 0x5389
jumptable_532e_case_9:
@..api_idx_0010_GVMH.l17:
    push word [bp + 0x8]             ; 0x538e
    push word [bp + 0x6]             ; 0x5391
    push word [bp + 0x4]             ; 0x5394
    call ds_app_UTUH                 ; 0x5397
    add sp, byte 6                   ; 0x539a
@..api_idx_0010_GVMH.l18:
    ret                              ; 0x539d
