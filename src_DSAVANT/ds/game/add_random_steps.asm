; auto-generated
add_random_steps: ; Aztec csav frame=0x0002
    mov ax, 0xfffe                   ; 0x2305
    call aztec_csav                  ; 0x2308
    mov ax, word [bp + 4]            ; 0x230b
    mov word [bp - 2], ax            ; 0x230e
.back1:
    cmp byte [bp + 6], 0             ; 0x2311
    jbe short .forward1              ; 0x2315
    mov al, byte [bp + 7]            ; 0x2317
    sub ah, ah                       ; 0x231a
    push ax                          ; 0x231c
    call random_below                ; 0x231d
    pop cx                           ; 0x2320
    add ax, word [bp - 2]            ; 0x2321
    inc ax                           ; 0x2324
    mov word [bp - 2], ax            ; 0x2325
    dec byte [bp + 6]                ; 0x2328
    jmp short .back1                 ; 0x232b
.forward1:
    mov ax, word [bp - 2]            ; 0x232d
    ret                              ; 0x2330
