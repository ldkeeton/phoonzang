api_idx_0006_6:
    mov ax, 0xfffa                   ; 0x72bf
    db 0xe8, 0x46, 0x81 ; call 0xf40b
    mov ax, 3                        ; 0x72c5
    push ax                          ; 0x72c8
    call api_idx_0006                ; 0x72c9
    pop cx                           ; 0x72cc
    cmp word [dseg_830a], byte 0x0a  ; 0x72cd
    je short @..api_idx_0006_6.l1    ; 0x72d2
    mov ax, 3                        ; 0x72d4
    push ax                          ; 0x72d7
    call loc_0c96                    ; 0x72d8
    pop cx                           ; 0x72db
@..api_idx_0006_6.l1:
    mov ax, 1                        ; 0x72dc
    push ax                          ; 0x72df
    call 0xc12a                      ; 0x72e0
    pop cx                           ; 0x72e3
    mov ax, 2                        ; 0x72e4
    push ax                          ; 0x72e7
    db 0xe8, 0x3f, 0x4e ; call 0xc12a
    pop cx                           ; 0x72eb
    mov ax, 0xc                      ; 0x72ec
    push ax                          ; 0x72ef
    db 0xe8, 0x37, 0x4e ; call 0xc12a
    pop cx                           ; 0x72f3
    mov ax, 1                        ; 0x72f4
    push ax                          ; 0x72f7
    push word [dseg_8d0c]            ; 0x72f8
    push word [dseg_8d0a]            ; 0x72fc
    db 0xe8, 0x4c, 0x76 ; call 0xe94f
    add sp, byte 6                   ; 0x7303
    mov ax, 1                        ; 0x7306
    push ax                          ; 0x7309
    push word [dseg_8d10]            ; 0x730a
    push word [dseg_8d0e]            ; 0x730e
    db 0xe8, 0x3a, 0x76 ; call 0xe94f
    add sp, byte 6                   ; 0x7315
    cmp word [dseg_830a], byte 0x0a  ; 0x7318
    je short @..api_idx_0006_6.l2    ; 0x731d
    mov ax, 0xc6                     ; 0x731f
    push ax                          ; 0x7322
    mov ax, 0x109                    ; 0x7323
    push ax                          ; 0x7326
    mov ax, 0x92                     ; 0x7327
    push ax                          ; 0x732a
    mov ax, 0x37                     ; 0x732b
    push ax                          ; 0x732e
    call 0xbb33                      ; 0x732f
    add sp, byte 8                   ; 0x7332
@..api_idx_0006_6.l2:
    mov word [bp - 0x0002], 0        ; 0x7335
@..api_idx_0006_6.l3:
    mov ax, word [bp - 0x0002]       ; 0x733a
    shl ax, 1                        ; 0x733d
    mov bx, ax                       ; 0x733f
    push word [bx - 0x7b96]          ; 0x7341
    call 0xf5a1                      ; 0x7345
    pop cx                           ; 0x7348
    inc word [bp - 0x0002]           ; 0x7349
    mov ax, word [bp - 0x0002]       ; 0x734c
    cmp ax, strict word 0xc          ; 0x734f
    jl short @..api_idx_0006_6.l3    ; 0x7352
    mov word [bp - 0x0002], 0xf      ; 0x7354
@..api_idx_0006_6.l4:
    mov bx, word [bp - 0x0002]       ; 0x7359
    mov al, byte [bx + 0x5b48]       ; 0x735c
    sub ah, ah                       ; 0x7360
    cmp ax, 0xff                     ; 0x7362
    je short @..api_idx_0006_6.l5    ; 0x7365
    push bx                          ; 0x7367
    db 0xe8, 0xbf, 0x4d ; call 0xc12a
    pop cx                           ; 0x736b
@..api_idx_0006_6.l5:
    inc word [bp - 0x0002]           ; 0x736c
    mov ax, word [bp - 0x0002]       ; 0x736f
    cmp ax, strict word 0x12         ; 0x7372
    jl short @..api_idx_0006_6.l4    ; 0x7375
    mov ax, 0                        ; 0x7377
    push ax                          ; 0x737a
    mov ax, 0x12                     ; 0x737b
    push ax                          ; 0x737e
    mov ax, 0x843a                   ; 0x737f
    push ax                          ; 0x7382
    db 0xe8, 0x80, 0x7f ; call 0xf306
    add sp, byte 6                   ; 0x7386
    mov ax, 0                        ; 0x7389
    push ax                          ; 0x738c
    mov ax, 0x12                     ; 0x738d
    push ax                          ; 0x7390
    mov ax, 0x93dc                   ; 0x7391
    push ax                          ; 0x7394
    db 0xe8, 0x6e, 0x7f ; call 0xf306
    add sp, byte 6                   ; 0x7398
    cmp word [dseg_598e], byte 0xff  ; 0x739b
    je short @..api_idx_0006_6.l6    ; 0x73a0
    mov ax, 0x10                     ; 0x73a2
    push ax                          ; 0x73a5
    call 0xd6c6                      ; 0x73a6
    pop cx                           ; 0x73a9
    mov word [dseg_598e], 0xffff     ; 0x73aa
@..api_idx_0006_6.l6:
    mov ax, 0                        ; 0x73b0
    push ax                          ; 0x73b3
    mov ax, 1                        ; 0x73b4
    push ax                          ; 0x73b7
    push word [dseg_9066]            ; 0x73b8
    push word [dseg_9064]            ; 0x73bc
    db 0xe8, 0x7f, 0x75 ; call 0xe942
    add sp, byte 8                   ; 0x73c3
    mov ax, 0x90dc                   ; 0x73c6
    push ax                          ; 0x73c9
    mov ax, 0x8f                     ; 0x73ca
    push ax                          ; 0x73cd
    mov ax, 0xf7                     ; 0x73ce
    push ax                          ; 0x73d1
    mov ax, 0x21                     ; 0x73d2
    push ax                          ; 0x73d5
    mov ax, 0x48                     ; 0x73d6
    push ax                          ; 0x73d9
    db 0xe8, 0xa6, 0x4e ; call 0xc283
    add sp, byte 0x0a                ; 0x73dd
    mov word [dseg_9068], ax         ; 0x73e0
    mov word [dseg_906a], 1          ; 0x73e3
    mov ax, 0                        ; 0x73e9
    push ax                          ; 0x73ec
    mov ax, 1                        ; 0x73ed
    push ax                          ; 0x73f0
    push word [dseg_9062]            ; 0x73f1
    push word [dseg_9060]            ; 0x73f5
    db 0xe8, 0x46, 0x75 ; call 0xe942
    add sp, byte 8                   ; 0x73fc
    ret                              ; 0x73ff
loc_7400:
    mov ax, 0                        ; 0x7400
    db 0xe8, 0x05, 0x80 ; call 0xf40b
    mov word [dseg_9d6c], 3          ; 0x7406
    mov word [dseg_93d8], 0x8f       ; 0x740c
    mov word [dseg_9d62], 3          ; 0x7412
    call api_idx_001e                ; 0x7418
    call loc_6d9d                    ; 0x741b
    call api_idx_0086                ; 0x741e
    call loc_a441                    ; 0x7421
    call api_idx_0054                ; 0x7424
    call api_idx_009c                ; 0x7427
    call api_idx_0006_6              ; 0x742a
    ret                              ; 0x742d
loc_742e:
    mov ax, 0                        ; 0x742e
    db 0xe8, 0xd7, 0x7f ; call 0xf40b
    mov ax, word [dseg_598e]         ; 0x7434
    cmp ax, word [bp + 0x4]          ; 0x7437
    je short @..local.l85            ; 0x743a
    push word [bp + 0x4]             ; 0x743c
    db 0xe8, 0x68, 0x63 ; call 0xd7aa
    pop cx                           ; 0x7442
@..local.l85:
    mov word [dseg_93da], 0x10       ; 0x7443
    push word [dseg_93da]            ; 0x7449
    db 0xe8, 0x90, 0x43 ; call 0xb7e0
    pop cx                           ; 0x7450
    ret                              ; 0x7451
