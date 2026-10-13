; auto-generated
api_idx_0002_14:
    mov ax, 0xfffe                   ; 0xa2e7
    call aztec_csav                  ; 0xa2ea
    mov word [bp - 0x0002], 0        ; 0xa2ed
@..api_idx_0002_14.l1:
    mov ax, 0x95a8                   ; 0xa2f2
    push ax                          ; 0xa2f5
    push word [bp + 0x4]             ; 0xa2f6
    call ds_app_mem_0782             ; 0xa2f9
    add sp, byte 4                   ; 0xa2fc
    cmp word [bss_5216], byte 0      ; 0xa2ff
    jne short @..api_idx_0002_14.l2  ; 0xa304
    mov al, byte [bss_95a8]          ; 0xa306
    sub ah, ah                       ; 0xa309
    add ax, strict word 0xffe0       ; 0xa30b
    push ax                          ; 0xa30e
    mov ax, 0x14                     ; 0xa30f
    imul word [bp - 0x0002]          ; 0xa312
    mov bx, ax                       ; 0xa315
    pop ax                           ; 0xa317
    mov word [bx - 0x617a], ax       ; 0xa318
    mov ax, 0x95a9                   ; 0xa31c
    push ax                          ; 0xa31f
    add bx, strict word 0x9e88       ; 0xa320
    mov ax, bx                       ; 0xa324
    push ax                          ; 0xa326
    call aztec_strcpy                ; 0xa327
    add sp, byte 4                   ; 0xa32a
    add word [bp + 0x4], byte 5      ; 0xa32d
    inc word [bp - 0x0002]           ; 0xa331
@..api_idx_0002_14.l2:
    cmp word [bss_5216], byte 0      ; 0xa334
    je short @..api_idx_0002_14.l1   ; 0xa339
    mov ax, word [bp - 0x0002]       ; 0xa33b
    mov word [bss_b046], ax          ; 0xa33e
@..api_idx_0002_14.l3:
    mov ax, 0x95a8                   ; 0xa341
    push ax                          ; 0xa344
    push word [bp + 0x6]             ; 0xa345
    call ds_app_mem_0782             ; 0xa348
    add sp, byte 4                   ; 0xa34b
    cmp word [bss_5216], byte 0      ; 0xa34e
    jne short @..api_idx_0002_14.l4  ; 0xa353
    mov al, byte [bss_95a8]          ; 0xa355
    sub ah, ah                       ; 0xa358
    add ax, strict word 0xffe0       ; 0xa35a
    push ax                          ; 0xa35d
    mov ax, 0x14                     ; 0xa35e
    imul word [bp - 0x0002]          ; 0xa361
    mov bx, ax                       ; 0xa364
    pop ax                           ; 0xa366
    mov word [bx - 0x617a], ax       ; 0xa367
    mov ax, 0x95a9                   ; 0xa36b
    push ax                          ; 0xa36e
    add bx, strict word 0x9e88       ; 0xa36f
    mov ax, bx                       ; 0xa373
    push ax                          ; 0xa375
    call aztec_strcpy                ; 0xa376
    add sp, byte 4                   ; 0xa379
    add word [bp + 0x6], byte 5      ; 0xa37c
    inc word [bp - 0x0002]           ; 0xa380
@..api_idx_0002_14.l4:
    cmp word [bss_5216], byte 0      ; 0xa383
    je short @..api_idx_0002_14.l3   ; 0xa388
    mov ax, word [bp - 0x0002]       ; 0xa38a
    mov word [bss_a656], ax          ; 0xa38d
    ret                              ; 0xa390
