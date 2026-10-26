; auto-generated
copy_through_char: ; Aztec csav frame=0x0004
    mov ax, 0xfffc                   ; 0x2359
    call aztec_csav                  ; 0x235c
    mov word [bp - 2], 0             ; 0x235f
    mov word [bp - 4], 0             ; 0x2364
.back1:
    mov bx, word [bp + 6]            ; 0x2369
    mov si, word [bp - 2]            ; 0x236c
    cmp byte [bx + si], 0            ; 0x236f
    je short .forward3               ; 0x2372
    cmp word [bp - 4], byte 0        ; 0x2374
    jne short .forward3              ; 0x2378
    mov al, byte [bx + si]           ; 0x237a
    mov bx, word [bp + 4]            ; 0x237c
    mov byte [bx + si], al           ; 0x237f
    mov bx, word [bp + 6]            ; 0x2381
    mov si, word [bp - 2]            ; 0x2384
    mov al, byte [bx + si]           ; 0x2387
    cmp al, byte [bp + 8]            ; 0x2389
    jne short .forward1              ; 0x238c
    mov ax, 1                        ; 0x238e
    jmp short .forward2              ; 0x2391
.forward1:
    mov ax, 0                        ; 0x2393
.forward2:
    mov word [bp - 4], ax            ; 0x2396
    inc word [bp - 2]                ; 0x2399
    jmp short .back1                 ; 0x239c
.forward3:
    mov bx, word [bp + 4]            ; 0x239e
    mov si, word [bp - 2]            ; 0x23a1
    mov byte [bx + si], 0            ; 0x23a4
    ret                              ; 0x23a7
