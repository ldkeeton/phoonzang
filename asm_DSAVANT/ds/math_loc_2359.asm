math_loc_2359:
    mov ax, 0xfffc                   ; 0x2359
    call loc_4652                    ; 0x235c
    mov word [bp - 0x0002], 0        ; 0x235f
    mov word [bp - 0x0004], 0        ; 0x2364
@..math_loc_2359.l1:
    mov bx, word [bp + 0x6]          ; 0x2369
    mov si, word [bp - 0x0002]       ; 0x236c
    cmp byte [bx + si], 0            ; 0x236f
    je short @..math_loc_2359.l4     ; 0x2372
    cmp word [bp - 0x0004], byte 0   ; 0x2374
    jne short @..math_loc_2359.l4    ; 0x2378
    mov al, byte [bx + si]           ; 0x237a
    mov bx, word [bp + 0x4]          ; 0x237c
    mov byte [bx + si], al           ; 0x237f
    mov bx, word [bp + 0x6]          ; 0x2381
    mov si, word [bp - 0x0002]       ; 0x2384
    mov al, byte [bx + si]           ; 0x2387
    cmp al, byte [bp + 0x8]          ; 0x2389
    jne short @..math_loc_2359.l2    ; 0x238c
    mov ax, 1                        ; 0x238e
    jmp short @..math_loc_2359.l3    ; 0x2391
@..math_loc_2359.l2:
    mov ax, 0                        ; 0x2393
@..math_loc_2359.l3:
    mov word [bp - 0x0004], ax       ; 0x2396
    inc word [bp - 0x0002]           ; 0x2399
    jmp short @..math_loc_2359.l1    ; 0x239c
@..math_loc_2359.l4:
    mov bx, word [bp + 0x4]          ; 0x239e
    mov si, word [bp - 0x0002]       ; 0x23a1
    mov byte [bx + si], 0            ; 0x23a4
    ret                              ; 0x23a7
