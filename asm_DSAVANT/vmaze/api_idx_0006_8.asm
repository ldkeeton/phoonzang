api_idx_0006_8:
    mov ax, 0xfffa                   ; 0x920f
    call ds_dispatch_f40b            ; 0x9212
    mov ax, 0                        ; 0x9215
    push ax                          ; 0x9218
    mov ax, 0x14                     ; 0x9219
    push ax                          ; 0x921c
    mov ax, 0x9bd2                   ; 0x921d
    push ax                          ; 0x9220
    call ds_dispatch_f306            ; 0x9221
    add sp, byte 6                   ; 0x9224
    mov word [bp - 0x0002], 0        ; 0x9227
@..api_idx_0006_8.l1:
    mov ax, 6                        ; 0x922c
    imul word [bp - 0x0002]          ; 0x922f
    mov bx, ax                       ; 0x9232
    cmp byte [bx - 0x7b57], 0xff     ; 0x9234
    je short @..api_idx_0006_8.l2    ; 0x9239
    mov ax, word [bp - 0x0002]       ; 0x923b
    add ax, strict word 0xc          ; 0x923e
    push ax                          ; 0x9241
    mov ax, 0x26                     ; 0x9242
    imul word [bp + 0x4]             ; 0x9245
    add ax, 0x850a                   ; 0x9248
    push ax                          ; 0x924b
    call ds_dispatch_ec74            ; 0x924c
    add sp, byte 4                   ; 0x924f
    test ax, ax                      ; 0x9252
    je short @..api_idx_0006_8.l2    ; 0x9254
    mov ax, 6                        ; 0x9256
    imul word [bp - 0x0002]          ; 0x9259
    mov bx, ax                       ; 0x925c
    mov al, byte [bx - 0x7b57]       ; 0x925e
    cbw                              ; 0x9262
    shl ax, 1                        ; 0x9263
    mov bx, ax                       ; 0x9265
    mov word [bx - 0x642e], 1        ; 0x9267
@..api_idx_0006_8.l2:
    inc word [bp - 0x0002]           ; 0x926d
    mov ax, word [bp - 0x0002]       ; 0x9270
    cmp ax, strict word 0xb          ; 0x9273
    jl short @..api_idx_0006_8.l1    ; 0x9276
    mov ax, api_idx_0002             ; 0x9278
    push ax                          ; 0x927b
    mov ax, 0x26                     ; 0x927c
    imul word [bp + 0x4]             ; 0x927f
    add ax, 0x8506                   ; 0x9282
    push ax                          ; 0x9285
    call ds_dispatch_ec74            ; 0x9286
    add sp, byte 4                   ; 0x9289
    test ax, ax                      ; 0x928c
    je short @..api_idx_0006_8.l3    ; 0x928e
    mov word [data_9bdc], 1          ; 0x9290
@..api_idx_0006_8.l3:
    mov byte [data_8aac], 6          ; 0x9296
    mov ax, 0xd                      ; 0x929b
    push ax                          ; 0x929e
    mov ax, 0x26                     ; 0x929f
    imul word [bp + 0x4]             ; 0x92a2
    add ax, 0x8506                   ; 0x92a5
    push ax                          ; 0x92a8
    call ds_dispatch_ec74            ; 0x92a9
    add sp, byte 4                   ; 0x92ac
    test ax, ax                      ; 0x92af
    je short @..api_idx_0006_8.l4    ; 0x92b1
    mov word [data_9bde], 1          ; 0x92b3
@..api_idx_0006_8.l4:
    mov word [bp - 0x0006], 1        ; 0x92b9
    mov word [bp - 0x0002], 0        ; 0x92be
@..api_idx_0006_8.l5:
    mov ax, word [bp - 0x0002]       ; 0x92c3
    shl ax, 1                        ; 0x92c6
    shl ax, 1                        ; 0x92c8
    mov bx, ax                       ; 0x92ca
    mov al, byte [bx - 0x7592]       ; 0x92cc
    sub ah, ah                       ; 0x92d0
    cmp ax, word [bp + 0x8]          ; 0x92d2
    je short @..api_idx_0006_8.l6    ; 0x92d5
    mov al, byte [bx - 0x7591]       ; 0x92d7
    sub ah, ah                       ; 0x92db
    cmp ax, word [bp + 0x8]          ; 0x92dd
    jne short @..api_idx_0006_8.l8   ; 0x92e0
@..api_idx_0006_8.l6:
    cmp byte [bx - 0x7590], 0xff     ; 0x92e2
    je short @..api_idx_0006_8.l7    ; 0x92e7
    mov al, byte [bx - 0x7590]       ; 0x92e9
    cbw                              ; 0x92ed
    shl ax, 1                        ; 0x92ee
    mov bx, ax                       ; 0x92f0
    cmp word [bx - 0x642e], byte 1   ; 0x92f2
    jne short @..api_idx_0006_8.l8   ; 0x92f7
@..api_idx_0006_8.l7:
    mov word [bp - 0x0006], 0        ; 0x92f9
@..api_idx_0006_8.l8:
    inc word [bp - 0x0002]           ; 0x92fe
    mov ax, word [bp - 0x0002]       ; 0x9301
    cmp ax, strict word 0x20         ; 0x9304
    jl short @..api_idx_0006_8.l5    ; 0x9307
    cmp word [bp - 0x0006], byte 0   ; 0x9309
    je short @..api_idx_0006_8.l9    ; 0x930d
    mov ax, 0                        ; 0x930f
    ret                              ; 0x9312
