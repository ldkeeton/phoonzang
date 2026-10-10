leaf_loc_077b:
    mov bl, byte [cs:data_0b7d]      ; 0x077b
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
    db 0x8a, 0xe0 ; mov ah, al
    mov byte [cs:data_0b93], ah      ; 0x07a2
    mov bx, 0x1a3a                   ; 0x07a7
    db 0x32, 0xc9 ; xor cl, cl
    mov al, byte [bp + 0x12]         ; 0x07ac
    mov byte [cs:data_0b92], al      ; 0x07af
    mov al, byte [bp + 0x12]         ; 0x07b3
    mul cl                           ; 0x07b6
    sub ah, byte [cs:data_0b93]      ; 0x07b8
    js short loc_07ce                ; 0x07bd
    cmp ah, byte [cs:data_0b92]      ; 0x07bf
    jb short loc_07d0                ; 0x07c4
    mov ah, byte [cs:data_0b92]      ; 0x07c6
    jmp near loc_07d0                ; 0x07cb
    mov ah, 0                        ; 0x07ce
    inc ah                           ; 0x07d0
    mov byte [cs:bx], ah             ; 0x07d2
    inc bx                           ; 0x07d5
    inc cl                           ; 0x07d6
    jne short loc_07b3               ; 0x07d8
    ret                              ; 0x07da
    mov bx, 0x1a3a                   ; 0x07db
    db 0x32, 0xc9 ; xor cl, cl
    mov al, byte [bp + 0x12]         ; 0x07e0
    db 0x8a, 0xd0 ; mov dl, al
    shr al, 1                        ; 0x07e5
    shr al, 1                        ; 0x07e7
    db 0x8a, 0xc2 ; mov al, dl
    mul cl                           ; 0x07eb
    mov byte [cs:bx], ah             ; 0x07ed
    inc bx                           ; 0x07f0
    inc cl                           ; 0x07f1
    jne short loc_07e9               ; 0x07f3
    ret                              ; 0x07f5
    push bx                          ; 0x07f6
    push dx                          ; 0x07f7
    db 0x32, 0xff ; xor bh, bh
    db 0x8a, 0xdc ; mov bl, ah
    mov byte [cs:bx + 0x1529], al    ; 0x07fc
    mov dx, 0x388                    ; 0x0801
    db 0x86, 0xc4 ; xchg ah, al
    pushf                            ; 0x0806
    cli                              ; 0x0807
    call loc_0821                    ; 0x0808
    out dx, al                       ; 0x080b
    call loc_0831                    ; 0x080c
    inc dx                           ; 0x080f
    db 0x86, 0xc4 ; xchg ah, al
    out dx, al                       ; 0x0812
    db 0xe8, 0x0b, 0x00 ; call loc_0821
    dec dx                           ; 0x0816
    mov al, 0x40                     ; 0x0817
    out dx, al                       ; 0x0819
    db 0xe8, 0x04, 0x00 ; call loc_0821
    popf                             ; 0x081d
    pop dx                           ; 0x081e
    pop bx                           ; 0x081f
    ret                              ; 0x0820
    push ax                          ; 0x0821
    push cx                          ; 0x0822
    push dx                          ; 0x0823
    mov dx, 0x388                    ; 0x0824
    mov cx, 0x17                     ; 0x0827
    in al, dx                        ; 0x082a
    loop loc_082a                    ; 0x082b
    pop dx                           ; 0x082d
    pop cx                           ; 0x082e
    pop ax                           ; 0x082f
    ret                              ; 0x0830
    push ax                          ; 0x0831
    push cx                          ; 0x0832
    push dx                          ; 0x0833
    mov dx, 0x388                    ; 0x0834
    mov cx, 4                        ; 0x0837
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
    call loc_0af6                    ; 0x0856
    mov si, word [cs:data_0b81]      ; 0x0859
    mov al, 0x20                     ; 0x085e
    out 0x20, al                     ; 0x0860
    iret                             ; 0x0862
    call data_09d4                   ; 0x0863
    mov al, 0x20                     ; 0x0866
    out 0x20, al                     ; 0x0868
    iret                             ; 0x086a
    jmp near loc_121d                ; 0x086b
    db 0x00, 0x00
    cli                              ; 0x0870
    push ax                          ; 0x0871
    push ds                          ; 0x0872
    push dx                          ; 0x0873
    push bx                          ; 0x0874
    mov al, byte [cs:data_096e]      ; 0x0875
    cmp al, byte [cs:data_096f]      ; 0x0879
    je short loc_089e                ; 0x087e
    inc byte [cs:data_096e]          ; 0x0880
    mov dx, 0x389                    ; 0x0885
    mov bx, 0x1a3a                   ; 0x0888
    cs xlatb                         ; 0x088b
    out dx, al                       ; 0x088d
    dec word [cs:data_0b81]          ; 0x088e
    je short loc_08ed                ; 0x0893
    mov al, 0x20                     ; 0x0895
    out 0x20, al                     ; 0x0897
    pop bx                           ; 0x0899
    pop dx                           ; 0x089a
    pop ds                           ; 0x089b
    pop ax                           ; 0x089c
    iret                             ; 0x089d
    mov byte [cs:data_09ae], 0       ; 0x089e
    mov al, 0x20                     ; 0x08a4
    out 0x20, al                     ; 0x08a6
    pop bx                           ; 0x08a8
    pop dx                           ; 0x08a9
    pop ds                           ; 0x08aa
    pop ax                           ; 0x08ab
    iret                             ; 0x08ac
    mov al, 0                        ; 0x08ad
    cli                              ; 0x08af
    push ax                          ; 0x08b0
    push ds                          ; 0x08b1
    push dx                          ; 0x08b2
    push bx                          ; 0x08b3
    cmp byte [cs:data_09ae], 0       ; 0x08b4
    js short loc_0875                ; 0x08ba
    jne short loc_091f               ; 0x08bc
    mov ax, 0                        ; 0x08be
    mov ds, ax                       ; 0x08c1
    mov al, byte [loc_0000]          ; 0x08c3
    mov dx, 0x389                    ; 0x08c6
    mov bx, 0x1a3a                   ; 0x08c9
    cs xlatb                         ; 0x08cc
    out dx, al                       ; 0x08ce
    add byte [cs:data_0b95], 0x80    ; 0x08cf
    db 0x2e, 0x83, 0x16, 0xc4, 0x09, 0x00 ; adc word [cs:data_09c4], 0
    jb short loc_08ff                ; 0x08db
    dec word [cs:data_0b81]          ; 0x08dd
    je short loc_08ed                ; 0x08e2
    mov al, 0x20                     ; 0x08e4
    out 0x20, al                     ; 0x08e6
    pop bx                           ; 0x08e8
    pop dx                           ; 0x08e9
    pop ds                           ; 0x08ea
    pop ax                           ; 0x08eb
    iret                             ; 0x08ec
    call loc_0af6                    ; 0x08ed
    mov dx, 0x388                    ; 0x08f0
    mov al, 0x40                     ; 0x08f3
    out dx, al                       ; 0x08f5
    mov al, 0x20                     ; 0x08f6
    out 0x20, al                     ; 0x08f8
    pop bx                           ; 0x08fa
    pop dx                           ; 0x08fb
    pop ds                           ; 0x08fc
    pop ax                           ; 0x08fd
    iret                             ; 0x08fe
    mov bx, word [cs:data_09c4]      ; 0x08ff
    dec bx                           ; 0x0904
    mov al, byte [bx]                ; 0x0905
    mov byte [cs:data_096e], al      ; 0x0907
    mov byte [cs:data_09ae], 1       ; 0x090b
    mov al, 0x20                     ; 0x0911
    out 0x20, al                     ; 0x0913
    pop bx                           ; 0x0915
    pop dx                           ; 0x0916
    pop ds                           ; 0x0917
    pop ax                           ; 0x0918
    iret                             ; 0x0919
    cli                              ; 0x091a
    push ax                          ; 0x091b
    push ds                          ; 0x091c
    push dx                          ; 0x091d
    push bx                          ; 0x091e
    mov al, byte [cs:data_096e]      ; 0x091f
    cmp al, 0                        ; 0x0923
    je short loc_0945                ; 0x0925
    dec byte [cs:data_096e]          ; 0x0927
    mov dx, 0x389                    ; 0x092c
    mov bx, 0x1a3a                   ; 0x092f
    cs xlatb                         ; 0x0932
    out dx, al                       ; 0x0934
    dec word [cs:data_0b81]          ; 0x0935
    db 0x74, 0xb1 ; je short loc_08ed
    mov al, 0x20                     ; 0x093c
    out 0x20, al                     ; 0x093e
    pop bx                           ; 0x0940
    pop dx                           ; 0x0941
    pop ds                           ; 0x0942
    pop ax                           ; 0x0943
    iret                             ; 0x0944
    mov byte [cs:data_096e], 0       ; 0x0945
    mov al, 0x3f                     ; 0x094b
    mov dx, 0x388                    ; 0x094d
    out dx, al                       ; 0x0950
    call data_09d4                   ; 0x0951
    mov al, 0x20                     ; 0x0954
    out 0x20, al                     ; 0x0956
    pop bx                           ; 0x0958
    pop dx                           ; 0x0959
    pop ds                           ; 0x095a
    pop ax                           ; 0x095b
    iret                             ; 0x095c
    db 0xe8, 0x96, 0x01 ; call loc_0af6
    mov al, 0x20                     ; 0x0960
    out 0x20, al                     ; 0x0962
    pop bx                           ; 0x0964
    pop dx                           ; 0x0965
    pop ds                           ; 0x0966
    pop ax                           ; 0x0967
    iret                             ; 0x0968
    call data_09d4                   ; 0x0969
    mov al, 0x20                     ; 0x096c
    out 0x20, al                     ; 0x096e
    pop bx                           ; 0x0970
    pop dx                           ; 0x0971
    pop ds                           ; 0x0972
    pop ax                           ; 0x0973
    iret                             ; 0x0974
    mov al, byte [di]                ; 0x0975
    cs xlatb                         ; 0x0977
    out dx, al                       ; 0x0979
    add ah, 0x80                     ; 0x097a
    adc di, byte 0                   ; 0x097d
    jb short loc_0997                ; 0x0980
    dec si                           ; 0x0982
    je short loc_098a                ; 0x0983
    mov al, 0x20                     ; 0x0985
    out 0x20, al                     ; 0x0987
    iret                             ; 0x0989
    db 0xe8, 0x69, 0x01 ; call loc_0af6
    mov si, word [cs:data_0b81]      ; 0x098d
    mov al, 0x20                     ; 0x0992
    out 0x20, al                     ; 0x0994
    iret                             ; 0x0996
    call data_09d4                   ; 0x0997
    mov al, 0x20                     ; 0x099a
    out 0x20, al                     ; 0x099c
    iret                             ; 0x099e
    push ax                          ; 0x099f
    push ds                          ; 0x09a0
    push dx                          ; 0x09a1
    push bx                          ; 0x09a2
    mov ax, 0                        ; 0x09a3
    mov ds, ax                       ; 0x09a6
    mov al, byte [loc_0000]          ; 0x09a8
    mov dx, word [cs:data_0b8d]      ; 0x09ab
    mov bx, 0x1a3a                   ; 0x09b0
    cs xlatb                         ; 0x09b3
    out dx, al                       ; 0x09b5
    add byte [cs:data_0b95], 0x80    ; 0x09b6
    db 0x2e, 0x83, 0x16, 0xa9, 0x0a, 0x00 ; adc word [cs:data_0aa9], 0
    jb short loc_0969                ; 0x09c2
    dec word [cs:data_0b81]          ; 0x09c4
    je short loc_095d                ; 0x09c9
    mov al, 0x20                     ; 0x09cb
    out 0x20, al                     ; 0x09cd
    pop bx                           ; 0x09cf
    pop dx                           ; 0x09d0
    pop ds                           ; 0x09d1
    pop ax                           ; 0x09d2
    iret                             ; 0x09d3
    push dx                          ; 0x09d4
    in al, 0x61                      ; 0x09d5
    and al, strlen                   ; 0x09d7
    out 0x61, al                     ; 0x09d9
    mov byte [cs:data_0b94], 0xff    ; 0x09db
    mov ax, word [cs:data_0ba6]      ; 0x09e1
    mov bl, 0x48                     ; 0x09e5
    mul bl                           ; 0x09e7
    db 0x8b, 0xd8 ; mov bx, ax
    mov ax, cs                       ; 0x09eb
    mov ds, ax                       ; 0x09ed
    mov dx, 0xbb4                    ; 0x09ef
    cmp byte [cs:data_0b9a], 0       ; 0x09f2
    jne short loc_0a13               ; 0x09f8
    mov al, byte [cs:data_0b8f]      ; 0x09fa
    out 0x21, al                     ; 0x09fe
    mov bx, 0                        ; 0x0a00
    mov ds, word [cs:data_0c12]      ; 0x0a03
    mov dx, word [cs:data_0c10]      ; 0x0a08
    mov byte [cs:data_0421], 0       ; 0x0a0d
    call string_loc_0a2a             ; 0x0a13
    mov al, 0x36                     ; 0x0a16
    out 0x43, al                     ; 0x0a18
    call leaf_loc_0610               ; 0x0a1a
    db 0x8b, 0xc3 ; mov ax, bx
    out 0x40, al                     ; 0x0a1f
    call leaf_loc_0610               ; 0x0a21
    db 0x8a, 0xc4 ; mov al, ah
    out 0x40, al                     ; 0x0a26
    pop dx                           ; 0x0a28
    ret                              ; 0x0a29
