; auto-generated
api_idx_0002_JOQL:
    mov ax, 0xfffe                   ; 0xa2e7
    call aztec_csav                  ; 0xa2ea
    mov word [bp - 2], 0             ; 0xa2ed
.back1:
    mov ax, bss_95a8                 ; 0xa2f2
    push ax                          ; 0xa2f5
    push word [bp + 4]               ; 0xa2f6
    call load_message_string         ; 0xa2f9
    add sp, byte 4                   ; 0xa2fc
    cmp word [message_not_found], byte 0 ; 0xa2ff
    jne short .forward1              ; 0xa304
    mov al, byte [bss_95a8]          ; 0xa306
    sub ah, ah                       ; 0xa309
    add ax, strict word 0xffe0       ; 0xa30b
    push ax                          ; 0xa30e
    mov ax, 0x14                     ; 0xa30f
    imul word [bp - 2]               ; 0xa312
    mov bx, ax                       ; 0xa315
    pop ax                           ; 0xa317
    mov word [bx + bss_9e86], ax     ; 0xa318
    mov ax, bss_95a9                 ; 0xa31c
    push ax                          ; 0xa31f
    add bx, bss_9e88                 ; 0xa320
    mov ax, bx                       ; 0xa324
    push ax                          ; 0xa326
    call aztec_strcpy                ; 0xa327
    add sp, byte 4                   ; 0xa32a
    add word [bp + 4], byte 5        ; 0xa32d
    inc word [bp - 2]                ; 0xa331
.forward1:
    cmp word [message_not_found], byte 0 ; 0xa334
    je short .back1                  ; 0xa339
    mov ax, word [bp - 2]            ; 0xa33b
    mov word [bss_b046], ax          ; 0xa33e
.back2:
    mov ax, bss_95a8                 ; 0xa341
    push ax                          ; 0xa344
    push word [bp + 6]               ; 0xa345
    call load_message_string         ; 0xa348
    add sp, byte 4                   ; 0xa34b
    cmp word [message_not_found], byte 0 ; 0xa34e
    jne short .forward2              ; 0xa353
    mov al, byte [bss_95a8]          ; 0xa355
    sub ah, ah                       ; 0xa358
    add ax, strict word 0xffe0       ; 0xa35a
    push ax                          ; 0xa35d
    mov ax, 0x14                     ; 0xa35e
    imul word [bp - 2]               ; 0xa361
    mov bx, ax                       ; 0xa364
    pop ax                           ; 0xa366
    mov word [bx + bss_9e86], ax     ; 0xa367
    mov ax, bss_95a9                 ; 0xa36b
    push ax                          ; 0xa36e
    add bx, bss_9e88                 ; 0xa36f
    mov ax, bx                       ; 0xa373
    push ax                          ; 0xa375
    call aztec_strcpy                ; 0xa376
    add sp, byte 4                   ; 0xa379
    add word [bp + 6], byte 5        ; 0xa37c
    inc word [bp - 2]                ; 0xa380
.forward2:
    cmp word [message_not_found], byte 0 ; 0xa383
    je short .back2                  ; 0xa388
    mov ax, word [bp - 2]            ; 0xa38a
    mov word [bss_a656], ax          ; 0xa38d
    ret                              ; 0xa390
