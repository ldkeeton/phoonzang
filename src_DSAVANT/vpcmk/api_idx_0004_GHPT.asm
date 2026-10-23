; auto-generated
api_idx_0004_GHPT:
    mov ax, 0xfffc                   ; 0x5087
    call aztec_csav                  ; 0x508a
    mov ax, 0x248                    ; 0x508d
    imul word [bp + 0x4]             ; 0x5090
    mov bx, ax                       ; 0x5093
    mov al, byte [bx + 0x5e2d]       ; 0x5095
    sub ah, ah                       ; 0x5099
    jmp near @..api_idx_0004_GHPT.l1 ; 0x509b
jumptable_5161_case_0:
    mov ax, dseg_93cc                ; 0x509e
    push ax                          ; 0x50a1
    mov ax, dseg_93bd                ; 0x50a2
    push ax                          ; 0x50a5
    push word [bp + 0x4]             ; 0x50a6
    call api_idx_0006_VJKJ           ; 0x50a9
    add sp, byte 6                   ; 0x50ac
    jmp near @..api_idx_0004_GHPT.l2 ; 0x50af
jumptable_5161_case_4:
    mov ax, dseg_93ea                ; 0x50b2
    push ax                          ; 0x50b5
    mov ax, dseg_93db                ; 0x50b6
    push ax                          ; 0x50b9
    push word [bp + 0x4]             ; 0x50ba
    call api_idx_0006_VJKJ           ; 0x50bd
    add sp, byte 6                   ; 0x50c0
    jmp near @..api_idx_0004_GHPT.l2 ; 0x50c3
jumptable_5161_case_10:
    mov ax, dseg_9408                ; 0x50c6
    push ax                          ; 0x50c9
    mov ax, dseg_93f9                ; 0x50ca
    push ax                          ; 0x50cd
    push word [bp + 0x4]             ; 0x50ce
    call api_idx_0006_VJKJ           ; 0x50d1
    add sp, byte 6                   ; 0x50d4
    jmp near @..api_idx_0004_GHPT.l2 ; 0x50d7
jumptable_5161_case_11:
    mov ax, dseg_9426                ; 0x50da
    push ax                          ; 0x50dd
    mov ax, dseg_9417                ; 0x50de
    push ax                          ; 0x50e1
    push word [bp + 0x4]             ; 0x50e2
    call api_idx_0006_VJKJ           ; 0x50e5
    add sp, byte 6                   ; 0x50e8
    jmp near @..api_idx_0004_GHPT.l2 ; 0x50eb
jumptable_5161_case_13:
    mov ax, dseg_9444                ; 0x50ee
    push ax                          ; 0x50f1
    mov ax, dseg_9435                ; 0x50f2
    push ax                          ; 0x50f5
    push word [bp + 0x4]             ; 0x50f6
    call api_idx_0006_VJKJ           ; 0x50f9
    add sp, byte 6                   ; 0x50fc
    jmp near @..api_idx_0004_GHPT.l2 ; 0x50ff
jumptable_5161_case_1:
    mov ax, dseg_9462                ; 0x5102
    push ax                          ; 0x5105
    mov ax, dseg_9453                ; 0x5106
    push ax                          ; 0x5109
    push word [bp + 0x4]             ; 0x510a
    call api_idx_0006_VJKJ           ; 0x510d
    add sp, byte 6                   ; 0x5110
    jmp short @..api_idx_0004_GHPT.l2 ; 0x5113
jumptable_5161_case_7:
    mov ax, dseg_9480                ; 0x5115
    push ax                          ; 0x5118
    mov ax, dseg_9471                ; 0x5119
    push ax                          ; 0x511c
    push word [bp + 0x4]             ; 0x511d
    call api_idx_0006_VJKJ           ; 0x5120
    add sp, byte 6                   ; 0x5123
    jmp short @..api_idx_0004_GHPT.l2 ; 0x5126
jumptable_5161_case_2:
    mov ax, dseg_949e                ; 0x5128
    push ax                          ; 0x512b
    mov ax, dseg_948f                ; 0x512c
    push ax                          ; 0x512f
    push word [bp + 0x4]             ; 0x5130
    call api_idx_0006_VJKJ           ; 0x5133
    add sp, byte 6                   ; 0x5136
    jmp short @..api_idx_0004_GHPT.l2 ; 0x5139
jumptable_5161_case_12:
    mov ax, dseg_94bc                ; 0x513b
    push ax                          ; 0x513e
    mov ax, dseg_94ad                ; 0x513f
    push ax                          ; 0x5142
    push word [bp + 0x4]             ; 0x5143
    call api_idx_0006_VJKJ           ; 0x5146
    add sp, byte 6                   ; 0x5149
    jmp short @..api_idx_0004_GHPT.l2 ; 0x514c
jumptable_5161_case_3:
    mov ax, dseg_94da                ; 0x514e
    push ax                          ; 0x5151
    mov ax, dseg_94cb                ; 0x5152
    push ax                          ; 0x5155
    push word [bp + 0x4]             ; 0x5156
    call api_idx_0006_VJKJ           ; 0x5159
    add sp, byte 6                   ; 0x515c
    jmp short @..api_idx_0004_GHPT.l2 ; 0x515f
jumptable_5161:
    dw jumptable_5161_case_0 - IMAGE_BASE + __zres_end ; 0x5161
    dw jumptable_5161_case_1 - IMAGE_BASE + __zres_end ; 0x5163
    dw jumptable_5161_case_2 - IMAGE_BASE + __zres_end ; 0x5165
    dw jumptable_5161_case_3 - IMAGE_BASE + __zres_end ; 0x5167
    dw jumptable_5161_case_4 - IMAGE_BASE + __zres_end ; 0x5169
    dw jumptable_5161_case_1 - IMAGE_BASE + __zres_end ; 0x516b
    dw jumptable_5161_case_3 - IMAGE_BASE + __zres_end ; 0x516d
    dw jumptable_5161_case_7 - IMAGE_BASE + __zres_end ; 0x516f
    dw jumptable_5161_case_4 - IMAGE_BASE + __zres_end ; 0x5171
    dw jumptable_5161_case_2 - IMAGE_BASE + __zres_end ; 0x5173
    dw jumptable_5161_case_10 - IMAGE_BASE + __zres_end ; 0x5175
    dw jumptable_5161_case_11 - IMAGE_BASE + __zres_end ; 0x5177
    dw jumptable_5161_case_12 - IMAGE_BASE + __zres_end ; 0x5179
    dw jumptable_5161_case_13 - IMAGE_BASE + __zres_end ; 0x517b
@..api_idx_0004_GHPT.l1:
    cmp ax, strict word 0xe          ; 0x517d
    jae short @..api_idx_0004_GHPT.l2 ; 0x5180
    xchg bx, ax                      ; 0x5182
    shl bx, 1                        ; 0x5183
    jmp [cs:bx + jumptable_5161 - IMAGE_BASE + __zres_end] ; 0x5185
@..api_idx_0004_GHPT.l2:
    mov ax, 0x248                    ; 0x518a
    imul word [bp + 0x4]             ; 0x518d
    mov bx, ax                       ; 0x5190
    mov al, byte [bx + 0x5e2b]       ; 0x5192
    sub ah, ah                       ; 0x5196
    jmp near @..api_idx_0004_GHPT.l3 ; 0x5198
jumptable_5339_case_0:
    mov ax, 0x14                     ; 0x519b
    push ax                          ; 0x519e
    mov ax, 0xb                      ; 0x519f
    push ax                          ; 0x51a2
    mov ax, 0                        ; 0x51a3
    push ax                          ; 0x51a6
    push word [bp + 0x4]             ; 0x51a7
    call loc_NJOH                    ; 0x51aa
    add sp, byte 8                   ; 0x51ad
    jmp near @..api_idx_0004_GHPT.l4 ; 0x51b0
jumptable_5339_case_2:
    mov ax, 0x248                    ; 0x51b3
    imul word [bp + 0x4]             ; 0x51b6
    mov bx, ax                       ; 0x51b9
    mov al, byte [bx + 0x5d67]       ; 0x51bb
    sub ah, ah                       ; 0x51bf
    mov cx, 5                        ; 0x51c1
    cwd                              ; 0x51c4
    idiv cx                          ; 0x51c5
    imul cx                          ; 0x51c7
    push ax                          ; 0x51c9
    mov ax, 6                        ; 0x51ca
    push ax                          ; 0x51cd
    mov ax, 0                        ; 0x51ce
    push ax                          ; 0x51d1
    push word [bp + 0x4]             ; 0x51d2
    call loc_NJOH                    ; 0x51d5
    add sp, byte 8                   ; 0x51d8
jumptable_5339_case_3:
    mov ax, 0x248                    ; 0x51db
    imul word [bp + 0x4]             ; 0x51de
    mov bx, ax                       ; 0x51e1
    mov al, byte [bx + 0x5d67]       ; 0x51e3
    sub ah, ah                       ; 0x51e7
    mov cx, 5                        ; 0x51e9
    cwd                              ; 0x51ec
    idiv cx                          ; 0x51ed
    imul cx                          ; 0x51ef
    push ax                          ; 0x51f1
    mov ax, 0xc                      ; 0x51f2
    push ax                          ; 0x51f5
    mov ax, 0                        ; 0x51f6
    push ax                          ; 0x51f9
    push word [bp + 0x4]             ; 0x51fa
    call loc_NJOH                    ; 0x51fd
    add sp, byte 8                   ; 0x5200
    jmp near @..api_idx_0004_GHPT.l4 ; 0x5203
jumptable_5339_case_1:
    mov ax, 0x14                     ; 0x5206
    push ax                          ; 0x5209
    mov ax, 9                        ; 0x520a
    push ax                          ; 0x520d
    mov ax, 0                        ; 0x520e
    push ax                          ; 0x5211
    push word [bp + 0x4]             ; 0x5212
    call loc_NJOH                    ; 0x5215
    add sp, byte 8                   ; 0x5218
    jmp near @..api_idx_0004_GHPT.l4 ; 0x521b
jumptable_5339_case_5:
    mov ax, 0x19                     ; 0x521e
    push ax                          ; 0x5221
    mov ax, 0xc                      ; 0x5222
    push ax                          ; 0x5225
    mov ax, 0                        ; 0x5226
    push ax                          ; 0x5229
    push word [bp + 0x4]             ; 0x522a
    call loc_NJOH                    ; 0x522d
    add sp, byte 8                   ; 0x5230
    mov ax, 0x19                     ; 0x5233
    push ax                          ; 0x5236
    mov ax, 4                        ; 0x5237
    push ax                          ; 0x523a
    mov ax, 0                        ; 0x523b
    push ax                          ; 0x523e
    push word [bp + 0x4]             ; 0x523f
    call loc_NJOH                    ; 0x5242
    add sp, byte 8                   ; 0x5245
    mov ax, 0x19                     ; 0x5248
    push ax                          ; 0x524b
    mov ax, 7                        ; 0x524c
    push ax                          ; 0x524f
    mov ax, 0                        ; 0x5250
    push ax                          ; 0x5253
    push word [bp + 0x4]             ; 0x5254
    call loc_NJOH                    ; 0x5257
    add sp, byte 8                   ; 0x525a
    mov ax, 0x19                     ; 0x525d
    push ax                          ; 0x5260
    mov ax, 0xa                      ; 0x5261
    push ax                          ; 0x5264
    mov ax, 0                        ; 0x5265
    push ax                          ; 0x5268
    push word [bp + 0x4]             ; 0x5269
    call loc_NJOH                    ; 0x526c
    add sp, byte 8                   ; 0x526f
    mov ax, 0x19                     ; 0x5272
    push ax                          ; 0x5275
    mov ax, 0xb                      ; 0x5276
    push ax                          ; 0x5279
    mov ax, 0                        ; 0x527a
    push ax                          ; 0x527d
    push word [bp + 0x4]             ; 0x527e
    call loc_NJOH                    ; 0x5281
    add sp, byte 8                   ; 0x5284
    jmp near @..api_idx_0004_GHPT.l4 ; 0x5287
jumptable_5339_case_6:
    mov ax, 0x19                     ; 0x528a
    push ax                          ; 0x528d
    mov ax, 0xa                      ; 0x528e
    push ax                          ; 0x5291
    mov ax, 0                        ; 0x5292
    push ax                          ; 0x5295
    push word [bp + 0x4]             ; 0x5296
    call loc_NJOH                    ; 0x5299
    add sp, byte 8                   ; 0x529c
    mov ax, 0xa                      ; 0x529f
    push ax                          ; 0x52a2
    mov ax, 8                        ; 0x52a3
    push ax                          ; 0x52a6
    mov ax, 0                        ; 0x52a7
    push ax                          ; 0x52aa
    push word [bp + 0x4]             ; 0x52ab
    call loc_NJOH                    ; 0x52ae
    add sp, byte 8                   ; 0x52b1
    mov ax, 0xffec                   ; 0x52b4
    push ax                          ; 0x52b7
    mov ax, 3                        ; 0x52b8
    push ax                          ; 0x52bb
    mov ax, 0                        ; 0x52bc
    push ax                          ; 0x52bf
    push word [bp + 0x4]             ; 0x52c0
    call loc_NJOH                    ; 0x52c3
    add sp, byte 8                   ; 0x52c6
    jmp near @..api_idx_0004_GHPT.l4 ; 0x52c9
jumptable_5339_case_8:
    mov ax, 0xf                      ; 0x52cc
    push ax                          ; 0x52cf
    mov ax, 7                        ; 0x52d0
    push ax                          ; 0x52d3
    mov ax, 0                        ; 0x52d4
    push ax                          ; 0x52d7
    push word [bp + 0x4]             ; 0x52d8
    call loc_NJOH                    ; 0x52db
    add sp, byte 8                   ; 0x52de
    mov ax, 0x14                     ; 0x52e1
    push ax                          ; 0x52e4
    mov ax, 4                        ; 0x52e5
    push ax                          ; 0x52e8
    mov ax, 0                        ; 0x52e9
    push ax                          ; 0x52ec
    push word [bp + 0x4]             ; 0x52ed
    call loc_NJOH                    ; 0x52f0
    add sp, byte 8                   ; 0x52f3
jumptable_5339_case_9:
    mov ax, 0x14                     ; 0x52f6
    push ax                          ; 0x52f9
    mov ax, 3                        ; 0x52fa
    push ax                          ; 0x52fd
    mov ax, 0                        ; 0x52fe
    push ax                          ; 0x5301
    push word [bp + 0x4]             ; 0x5302
    call loc_NJOH                    ; 0x5305
    add sp, byte 8                   ; 0x5308
    jmp short @..api_idx_0004_GHPT.l4 ; 0x530b
jumptable_5339_case_10:
    mov ax, 0x19                     ; 0x530d
    push ax                          ; 0x5310
    mov ax, 0xc                      ; 0x5311
    push ax                          ; 0x5314
    mov ax, 0                        ; 0x5315
    push ax                          ; 0x5318
    push word [bp + 0x4]             ; 0x5319
    call loc_NJOH                    ; 0x531c
    add sp, byte 8                   ; 0x531f
    mov ax, 0xf                      ; 0x5322
    push ax                          ; 0x5325
    mov ax, 3                        ; 0x5326
    push ax                          ; 0x5329
    mov ax, 0                        ; 0x532a
    push ax                          ; 0x532d
    push word [bp + 0x4]             ; 0x532e
    call loc_NJOH                    ; 0x5331
    add sp, byte 8                   ; 0x5334
    jmp short @..api_idx_0004_GHPT.l4 ; 0x5337
jumptable_5339:
    dw jumptable_5339_case_0 - IMAGE_BASE + __zres_end ; 0x5339
    dw jumptable_5339_case_1 - IMAGE_BASE + __zres_end ; 0x533b
    dw jumptable_5339_case_2 - IMAGE_BASE + __zres_end ; 0x533d
    dw jumptable_5339_case_3 - IMAGE_BASE + __zres_end ; 0x533f
    dw jumptable_5339_case_2 - IMAGE_BASE + __zres_end ; 0x5341
    dw jumptable_5339_case_5 - IMAGE_BASE + __zres_end ; 0x5343
    dw jumptable_5339_case_6 - IMAGE_BASE + __zres_end ; 0x5345
    dw jumptable_5339_case_6 - IMAGE_BASE + __zres_end ; 0x5347
    dw jumptable_5339_case_8 - IMAGE_BASE + __zres_end ; 0x5349
    dw jumptable_5339_case_9 - IMAGE_BASE + __zres_end ; 0x534b
    dw jumptable_5339_case_10 - IMAGE_BASE + __zres_end ; 0x534d
@..api_idx_0004_GHPT.l3:
    cmp ax, strict word 0xb          ; 0x534f
    jae short @..api_idx_0004_GHPT.l4 ; 0x5352
    xchg bx, ax                      ; 0x5354
    shl bx, 1                        ; 0x5355
    jmp [cs:bx + jumptable_5339 - IMAGE_BASE + __zres_end] ; 0x5357
@..api_idx_0004_GHPT.l4:
    mov ax, 0x248                    ; 0x535c
    imul word [bp + 0x4]             ; 0x535f
    mov bx, ax                       ; 0x5362
    cmp byte [bx + 0x5d67], 0xf      ; 0x5364
    jbe short @..api_idx_0004_GHPT.l5 ; 0x5369
    mov ax, 5                        ; 0x536b
    push ax                          ; 0x536e
    mov ax, 6                        ; 0x536f
    push ax                          ; 0x5372
    mov ax, 0                        ; 0x5373
    push ax                          ; 0x5376
    push word [bp + 0x4]             ; 0x5377
    call loc_NJOH                    ; 0x537a
    add sp, byte 8                   ; 0x537d
    mov ax, 5                        ; 0x5380
    push ax                          ; 0x5383
    mov ax, 0xb                      ; 0x5384
    push ax                          ; 0x5387
    mov ax, 0                        ; 0x5388
    push ax                          ; 0x538b
    push word [bp + 0x4]             ; 0x538c
    call loc_NJOH                    ; 0x538f
    add sp, byte 8                   ; 0x5392
@..api_idx_0004_GHPT.l5:
    mov ax, 0x248                    ; 0x5395
    imul word [bp + 0x4]             ; 0x5398
    mov bx, ax                       ; 0x539b
    cmp byte [bx + 0x5d65], 0xf      ; 0x539d
    jbe short @..api_idx_0004_GHPT.l6 ; 0x53a2
    mov ax, 5                        ; 0x53a4
    push ax                          ; 0x53a7
    mov ax, 9                        ; 0x53a8
    push ax                          ; 0x53ab
    mov ax, 0                        ; 0x53ac
    push ax                          ; 0x53af
    push word [bp + 0x4]             ; 0x53b0
    call loc_NJOH                    ; 0x53b3
    add sp, byte 8                   ; 0x53b6
@..api_idx_0004_GHPT.l6:
    mov ax, 0x248                    ; 0x53b9
    imul word [bp + 0x4]             ; 0x53bc
    mov bx, ax                       ; 0x53bf
    cmp byte [bx + 0x5d69], 0xf      ; 0x53c1
    jbe short @..api_idx_0004_GHPT.l7 ; 0x53c6
    mov ax, 5                        ; 0x53c8
    push ax                          ; 0x53cb
    mov ax, 7                        ; 0x53cc
    push ax                          ; 0x53cf
    mov ax, 0                        ; 0x53d0
    push ax                          ; 0x53d3
    push word [bp + 0x4]             ; 0x53d4
    call loc_NJOH                    ; 0x53d7
    add sp, byte 8                   ; 0x53da
    mov ax, 5                        ; 0x53dd
    push ax                          ; 0x53e0
    mov ax, 4                        ; 0x53e1
    push ax                          ; 0x53e4
    mov ax, 0                        ; 0x53e5
    push ax                          ; 0x53e8
    push word [bp + 0x4]             ; 0x53e9
    call loc_NJOH                    ; 0x53ec
    add sp, byte 8                   ; 0x53ef
@..api_idx_0004_GHPT.l7:
    mov word [bp - 0x0004], 0        ; 0x53f2
@..api_idx_0004_GHPT.l8:
    mov ax, 0x248                    ; 0x53f7
    imul word [bp + 0x4]             ; 0x53fa
    add ax, word [bp - 0x0004]       ; 0x53fd
    mov bx, ax                       ; 0x5400
    mov al, byte [bx + 0x5d8e]       ; 0x5402
    mov byte [bx + 0x5d9c], al       ; 0x5406
    inc word [bp - 0x0004]           ; 0x540a
    mov ax, word [bp - 0x0004]       ; 0x540d
    cmp ax, strict word 0xe          ; 0x5410
    jl short @..api_idx_0004_GHPT.l8 ; 0x5413
    mov ax, 0x248                    ; 0x5415
    imul word [bp + 0x4]             ; 0x5418
    mov bx, ax                       ; 0x541b
    mov al, byte [bx + 0x5e2d]       ; 0x541d
    sub ah, ah                       ; 0x5421
    jmp short @..api_idx_0004_GHPT.l9 ; 0x5423
jumptable_547c_case_0:
    mov ax, 3                        ; 0x5425
    push ax                          ; 0x5428
    mov ax, 6                        ; 0x5429
    push ax                          ; 0x542c
    mov ax, 5                        ; 0x542d
    push ax                          ; 0x5430
    mov ax, 7                        ; 0x5431
    push ax                          ; 0x5434
    mov ax, 4                        ; 0x5435
    push ax                          ; 0x5438
    push word [bp + 0x4]             ; 0x5439
    call api_idx_0002_KQIK           ; 0x543c
    add sp, byte 0x0c                ; 0x543f
    jmp short @..api_idx_0004_GHPT.l10 ; 0x5442
jumptable_547c_case_1:
    mov ax, 7                        ; 0x5444
    push ax                          ; 0x5447
    push ax                          ; 0x5448
    mov ax, 0xc                      ; 0x5449
    push ax                          ; 0x544c
    push ax                          ; 0x544d
    mov ax, 2                        ; 0x544e
    push ax                          ; 0x5451
    push word [bp + 0x4]             ; 0x5452
    call api_idx_0002_KQIK           ; 0x5455
    add sp, byte 0x0c                ; 0x5458
    jmp short @..api_idx_0004_GHPT.l10 ; 0x545b
jumptable_547c_case_2:
    mov ax, 5                        ; 0x545d
    push ax                          ; 0x5460
    mov ax, 7                        ; 0x5461
    push ax                          ; 0x5464
    mov ax, 8                        ; 0x5465
    push ax                          ; 0x5468
    mov ax, 0xa                      ; 0x5469
    push ax                          ; 0x546c
    mov ax, 3                        ; 0x546d
    push ax                          ; 0x5470
    push word [bp + 0x4]             ; 0x5471
    call api_idx_0002_KQIK           ; 0x5474
    add sp, byte 0x0c                ; 0x5477
    jmp short @..api_idx_0004_GHPT.l10 ; 0x547a
jumptable_547c:
    dw jumptable_547c_case_0 - IMAGE_BASE + __zres_end ; 0x547c
    dw jumptable_547c_case_1 - IMAGE_BASE + __zres_end ; 0x547e
    dw jumptable_547c_case_2 - IMAGE_BASE + __zres_end ; 0x5480
    dw jumptable_547c_case_2 - IMAGE_BASE + __zres_end ; 0x5482
    dw jumptable_547c_case_0 - IMAGE_BASE + __zres_end ; 0x5484
    dw jumptable_547c_case_1 - IMAGE_BASE + __zres_end ; 0x5486
    dw jumptable_547c_case_2 - IMAGE_BASE + __zres_end ; 0x5488
    dw jumptable_547c_case_1 - IMAGE_BASE + __zres_end ; 0x548a
    dw jumptable_547c_case_0 - IMAGE_BASE + __zres_end ; 0x548c
    dw jumptable_547c_case_1 - IMAGE_BASE + __zres_end ; 0x548e
    dw jumptable_547c_case_0 - IMAGE_BASE + __zres_end ; 0x5490
    dw jumptable_547c_case_0 - IMAGE_BASE + __zres_end ; 0x5492
    dw jumptable_547c_case_0 - IMAGE_BASE + __zres_end ; 0x5494
    dw jumptable_547c_case_0 - IMAGE_BASE + __zres_end ; 0x5496
@..api_idx_0004_GHPT.l9:
    cmp ax, strict word 0xe          ; 0x5498
    jae short @..api_idx_0004_GHPT.l10 ; 0x549b
    xchg bx, ax                      ; 0x549d
    shl bx, 1                        ; 0x549e
    jmp [cs:bx + jumptable_547c - IMAGE_BASE + __zres_end] ; 0x54a0
@..api_idx_0004_GHPT.l10:
    mov word [bp - 0x0002], 0        ; 0x54a5
@..api_idx_0004_GHPT.l11:
    push word [bp - 0x0002]          ; 0x54aa
    push word [bp + 0x4]             ; 0x54ad
    call reset_page_record           ; 0x54b0
    add sp, byte 4                   ; 0x54b3
    inc word [bp - 0x0002]           ; 0x54b6
    mov ax, word [bp - 0x0002]       ; 0x54b9
    cmp ax, strict word 2            ; 0x54bc
    jl short @..api_idx_0004_GHPT.l11 ; 0x54bf
    mov ax, 0x248                    ; 0x54c1
    imul word [bp + 0x4]             ; 0x54c4
    mov bx, ax                       ; 0x54c7
    mov byte [bx + 0x5daa], 0xa      ; 0x54c9
    mov al, byte [bx + 0x5daa]       ; 0x54ce
    cbw                              ; 0x54d2
    mov cx, 0                        ; 0x54d3
    cmp byte [bx + 0x5d69], 0xf      ; 0x54d6
    jbe short @..api_idx_0004_GHPT.l12 ; 0x54db
    mov cx, 1                        ; 0x54dd
@..api_idx_0004_GHPT.l12:
    sub ax, cx                       ; 0x54e0
    mov byte [bx + 0x5daa], al       ; 0x54e2
    cbw                              ; 0x54e6
    mov cx, 0                        ; 0x54e7
    cmp byte [bx + 0x5d69], 0x11     ; 0x54ea
    jbe short @..api_idx_0004_GHPT.l13 ; 0x54ef
    mov cx, 1                        ; 0x54f1
@..api_idx_0004_GHPT.l13:
    sub ax, cx                       ; 0x54f4
    mov byte [bx + 0x5daa], al       ; 0x54f6
    mov al, byte [bx + 0x5daa]       ; 0x54fa
    cbw                              ; 0x54fe
    mov cx, 0                        ; 0x54ff
    cmp byte [bx + 0x5e2b], 5        ; 0x5502
    jne short @..api_idx_0004_GHPT.l14 ; 0x5507
    mov cx, 2                        ; 0x5509
@..api_idx_0004_GHPT.l14:
    sub ax, cx                       ; 0x550c
    mov byte [bx + 0x5daa], al       ; 0x550e
    cmp byte [bx + 0x5e2d], 0xd      ; 0x5512
    je short @..api_idx_0004_GHPT.l15 ; 0x5517
    cmp byte [bx + 0x5e2d], 0xc      ; 0x5519
    jne short @..api_idx_0004_GHPT.l17 ; 0x551e
@..api_idx_0004_GHPT.l15:
    mov ax, 0xa                      ; 0x5520
    cmp word [bx + pc_spell_power_cap], byte 0x14 ; 0x5523
    jg short @..api_idx_0004_GHPT.l16 ; 0x5528
    mov ax, word [bx + pc_spell_power_cap] ; 0x552a
    mov cx, 2                        ; 0x552e
    cwd                              ; 0x5531
    idiv cx                          ; 0x5532
@..api_idx_0004_GHPT.l16:
    mov word [bp - 0x0002], ax       ; 0x5534
    mov al, byte [bx + 0x5d7d]       ; 0x5537
    sub ah, ah                       ; 0x553b
    mov cx, 0xa                      ; 0x553d
    cwd                              ; 0x5540
    idiv cx                          ; 0x5541
    add word [bp - 0x0002], ax       ; 0x5543
    mov al, byte [bx + 0x5daa]       ; 0x5546
    cbw                              ; 0x554a
    sub ax, word [bp - 0x0002]       ; 0x554b
    mov byte [bx + 0x5daa], al       ; 0x554e
@..api_idx_0004_GHPT.l17:
    mov byte [bx + 0x5dab], 0        ; 0x5552
    mov byte [bx + 0x5dac], 0        ; 0x5557
    mov word [bp - 0x0002], 3        ; 0x555c
@..api_idx_0004_GHPT.l18:
    mov ax, 0x248                    ; 0x5561
    imul word [bp + 0x4]             ; 0x5564
    mov bx, ax                       ; 0x5567
    mov al, byte [bx + 0x5daa]       ; 0x5569
    add bx, word [bp - 0x0002]       ; 0x556d
    mov byte [bx + 0x5daa], al       ; 0x5570
    inc word [bp - 0x0002]           ; 0x5574
    mov ax, word [bp - 0x0002]       ; 0x5577
    cmp ax, strict word 8            ; 0x557a
    jl short @..api_idx_0004_GHPT.l18 ; 0x557d
    ret                              ; 0x557f
