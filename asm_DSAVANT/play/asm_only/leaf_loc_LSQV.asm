; auto-generated
; asm only
leaf_loc_LSQV:
    mov bl, byte [cs:cseg_0a7d - IMAGE_BASE] ; 0x077b
    shl bl, 1                        ; 0x0780
    xor bh, bh                       ; 0x0782
    jmp [cs:bx + 0x889]              ; 0x0784
    xchg bx, ax                      ; 0x0789
    or byte [bp + si + 0x7], bl      ; 0x078a
    fisttp dword [bx + si]           ; 0x078d
    fisttp dword [bx + si]           ; 0x078f
    pop dx                           ; 0x0791
    pop es                           ; 0x0792
    mov ah, 0                        ; 0x0793
    mov al, byte [bp + 0x12]         ; 0x0795
    cmp al, 0x49                     ; 0x0798
    jb short loc_07a2                ; 0x079a
    sub al, 0x49                     ; 0x079c
    shr al, 1                        ; 0x079e
    mov ah, al                       ; 0x07a0
loc_07a2:
    mov byte [cs:data_0b93], ah      ; 0x07a2
    mov bx, 0x1a3a                   ; 0x07a7
    xor cl, cl                       ; 0x07aa
    mov al, byte [bp + 0x12]         ; 0x07ac
    mov byte [cs:data_0b92], al      ; 0x07af
loc_07b3:
    mov al, byte [bp + 0x12]         ; 0x07b3
    mul cl                           ; 0x07b6
    sub ah, byte [cs:data_0b93]      ; 0x07b8
    js short loc_07ce                ; 0x07bd
    cmp ah, byte [cs:data_0b92]      ; 0x07bf
    jb short loc_07d0                ; 0x07c4
    mov ah, byte [cs:data_0b92]      ; 0x07c6
    jmp near loc_07d0                ; 0x07cb
loc_07ce:
    mov ah, 0                        ; 0x07ce
loc_07d0:
    inc ah                           ; 0x07d0
    mov byte [cs:bx], ah             ; 0x07d2
    inc bx                           ; 0x07d5
    inc cl                           ; 0x07d6
    jne short loc_07b3               ; 0x07d8
    ret                              ; 0x07da
    mov bx, 0x1a3a                   ; 0x07db
    xor cl, cl                       ; 0x07de
    mov al, byte [bp + 0x12]         ; 0x07e0
    mov dl, al                       ; 0x07e3
    shr al, 1                        ; 0x07e5
    shr al, 1                        ; 0x07e7
loc_07e9:
    mov al, dl                       ; 0x07e9
    mul cl                           ; 0x07eb
    mov byte [cs:bx], ah             ; 0x07ed
    inc bx                           ; 0x07f0
    inc cl                           ; 0x07f1
    jne short loc_07e9               ; 0x07f3
    ret                              ; 0x07f5
    push bx                          ; 0x07f6
    push dx                          ; 0x07f7
    xor bh, bh                       ; 0x07f8
    mov bl, ah                       ; 0x07fa
    mov byte [cs:bx + 0x1529], al    ; 0x07fc
    mov dx, 0x388                    ; 0x0801
    xchg ah, al                      ; 0x0804
    pushf                            ; 0x0806
    cli                              ; 0x0807
    call loc_0821                    ; 0x0808
    out dx, al                       ; 0x080b
    call loc_0831                    ; 0x080c
    inc dx                           ; 0x080f
    xchg ah, al                      ; 0x0810
    out dx, al                       ; 0x0812
    call loc_0821                    ; 0x0813
    dec dx                           ; 0x0816
    mov al, 0x40                     ; 0x0817
    out dx, al                       ; 0x0819
    call loc_0821                    ; 0x081a
    popf                             ; 0x081d
    pop dx                           ; 0x081e
    pop bx                           ; 0x081f
    ret                              ; 0x0820
loc_0821:
    push ax                          ; 0x0821
    push cx                          ; 0x0822
    push dx                          ; 0x0823
    mov dx, 0x388                    ; 0x0824
    mov cx, 0x17                     ; 0x0827
loc_082a:
    in al, dx                        ; 0x082a
    loop loc_082a                    ; 0x082b
    pop dx                           ; 0x082d
    pop cx                           ; 0x082e
    pop ax                           ; 0x082f
    ret                              ; 0x0830
loc_0831:
    push ax                          ; 0x0831
    push cx                          ; 0x0832
    push dx                          ; 0x0833
    mov dx, 0x388                    ; 0x0834
    mov cx, 4                        ; 0x0837
loc_083a:
    in al, dx                        ; 0x083a
    loop loc_083a                    ; 0x083b
    pop dx                           ; 0x083d
    pop cx                           ; 0x083e
    pop ax                           ; 0x083f
    ret                              ; 0x0840
    mov al, byte [di]                ; 0x0841
    cs xlatb                         ; 0x0843
    out dx, al                       ; 0x0845
    add ah, 0x80                     ; 0x0846
    adc di, byte 0                   ; 0x0849
    jb short loc_0863                ; 0x084c
    dec si                           ; 0x084e
    je short loc_0856                ; 0x084f
    mov al, 0x20                     ; 0x0851
    out 0x20, al                     ; 0x0853
    iret                             ; 0x0855
loc_0856:
    call loc_0af6                    ; 0x0856
    mov si, word [cs:data_0b81]      ; 0x0859
    mov al, 0x20                     ; 0x085e
    out 0x20, al                     ; 0x0860
    iret                             ; 0x0862
loc_0863:
    call loc_09d4                    ; 0x0863
    mov al, 0x20                     ; 0x0866
    out 0x20, al                     ; 0x0868
    iret                             ; 0x086a
    jmp near loc_121d                ; 0x086b
