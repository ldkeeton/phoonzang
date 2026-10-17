; auto-generated
aztec_atol:
    push bp                          ; 0x2877
    mov bp, sp                       ; 0x2878
    add sp, byte 0xfc                ; 0x287a
    push di                          ; 0x287d
    push si                          ; 0x287e
    mov si, word [bp + 0x4]          ; 0x287f
@..aztec_atol.l1:
    cmp byte [si], 0x20              ; 0x2882
    je short @..aztec_atol.l2        ; 0x2885
    cmp byte [si], 9                 ; 0x2887
    jne short @..aztec_atol.l3       ; 0x288a
@..aztec_atol.l2:
    inc si                           ; 0x288c
    jmp short @..aztec_atol.l1       ; 0x288d
@..aztec_atol.l3:
    mov di, 0                        ; 0x288f
    cmp byte [si], 0x2d              ; 0x2892
    jne short @..aztec_atol.l4       ; 0x2895
    mov di, 1                        ; 0x2897
    inc si                           ; 0x289a
    jmp short @..aztec_atol.l5       ; 0x289b
@..aztec_atol.l4:
    cmp byte [si], 0x2b              ; 0x289d
    jne short @..aztec_atol.l5       ; 0x28a0
    inc si                           ; 0x28a2
@..aztec_atol.l5:
    mov word [bp - 0x0002], 0        ; 0x28a3
    mov word [bp - 0x0004], 0        ; 0x28a8
    jmp short @..aztec_atol.l7       ; 0x28ad
@..aztec_atol.l6:
    mov ax, word [bp - 0x0004]       ; 0x28af
    mov dx, word [bp - 0x0002]       ; 0x28b2
    push ax                          ; 0x28b5
    xchg dx, ax                      ; 0x28b6
    mov bx, 0xa                      ; 0x28b7
    mul bx                           ; 0x28ba
    mov cx, ax                       ; 0x28bc
    pop ax                           ; 0x28be
    mul bx                           ; 0x28bf
    add dx, cx                       ; 0x28c1
    push ax                          ; 0x28c3
    push dx                          ; 0x28c4
    mov bx, si                       ; 0x28c5
    inc si                           ; 0x28c7
    mov al, byte [bx]                ; 0x28c8
    cbw                              ; 0x28ca
    cwd                              ; 0x28cb
    mov cx, ax                       ; 0x28cc
    mov bx, dx                       ; 0x28ce
    pop dx                           ; 0x28d0
    pop ax                           ; 0x28d1
    add ax, cx                       ; 0x28d2
    adc dx, bx                       ; 0x28d4
    add ax, strict word 0xffd0       ; 0x28d6
    adc dx, byte 0xff                ; 0x28d9
    mov word [bp - 0x0002], dx       ; 0x28dc
    mov word [bp - 0x0004], ax       ; 0x28df
@..aztec_atol.l7:
    mov al, byte [si]                ; 0x28e2
    cbw                              ; 0x28e4
    mov bx, ax                       ; 0x28e5
    mov al, byte [bx + 0x2453]       ; 0x28e7
    cbw                              ; 0x28eb
    test ax, 4                       ; 0x28ec
    jne short @..aztec_atol.l6       ; 0x28ef
    mov ax, word [bp - 0x0004]       ; 0x28f1
    mov dx, word [bp - 0x0002]       ; 0x28f4
    test di, di                      ; 0x28f7
    je short @..aztec_atol.l8        ; 0x28f9
    neg dx                           ; 0x28fb
    neg ax                           ; 0x28fd
    sbb dx, byte 0                   ; 0x28ff
@..aztec_atol.l8:
    pop si                           ; 0x2902
    pop di                           ; 0x2903
    mov sp, bp                       ; 0x2904
    pop bp                           ; 0x2906
    ret                              ; 0x2907
