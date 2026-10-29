; auto-generated
loc_QUJT:
    mov ax, 0                        ; 0x2553
    call aztec_csav                  ; 0x2556
    mov ax, word [bp + 6]            ; 0x2559
    jmp short .forward1              ; 0x255c
.back1:
    mov ax, 0xa                      ; 0x255e
    push ax                          ; 0x2561
    push word [bp + 8]               ; 0x2562
    mov ax, 0                        ; 0x2565
    push ax                          ; 0x2568
    push word [bp + 4]               ; 0x2569
    call api_idx_0004_PUIS           ; 0x256c
    add sp, byte 8                   ; 0x256f
    mov word [bp + 8], ax            ; 0x2572
    jmp short .forward2              ; 0x2575
.back2:
    mov ax, 0xa                      ; 0x2577
    push ax                          ; 0x257a
    push word [bp + 8]               ; 0x257b
    mov ax, 1                        ; 0x257e
    push ax                          ; 0x2581
    push word [bp + 4]               ; 0x2582
    call api_idx_0004_PUIS           ; 0x2585
    add sp, byte 8                   ; 0x2588
    mov word [bp + 8], ax            ; 0x258b
    jmp short .forward2              ; 0x258e
.back3:
    mov ax, 0xa                      ; 0x2590
    push ax                          ; 0x2593
    push word [bp + 8]               ; 0x2594
    mov ax, 3                        ; 0x2597
    push ax                          ; 0x259a
    push word [bp + 4]               ; 0x259b
    call api_idx_0004_PUIS           ; 0x259e
    add sp, byte 8                   ; 0x25a1
    mov word [bp + 8], ax            ; 0x25a4
    jmp short .forward2              ; 0x25a7
.forward1:
    cmp ax, strict word 1            ; 0x25a9
    je short .back1                  ; 0x25ac
    cmp ax, strict word 3            ; 0x25ae
    je short .back2                  ; 0x25b1
    cmp ax, strict word 5            ; 0x25b3
    je short .back3                  ; 0x25b6
.forward2:
    mov ax, 0xa                      ; 0x25b8
    push ax                          ; 0x25bb
    push word [bp + 8]               ; 0x25bc
    mov ax, 4                        ; 0x25bf
    push ax                          ; 0x25c2
    push word [bp + 4]               ; 0x25c3
    call api_idx_0004_PUIS           ; 0x25c6
    add sp, byte 8                   ; 0x25c9
    mov word [bp + 8], ax            ; 0x25cc
    ret                              ; 0x25cf
