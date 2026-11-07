; auto-generated
normalize_input_key:
    push bp                          ; 0x06a6
    mov bp, sp                       ; 0x06a7
    add sp, byte -2                  ; 0x06a9
    cmp word [bp + 4], byte 0        ; 0x06ac
    jne short .forward2              ; 0x06b0
    call dos_con_in_noecho           ; 0x06b2
    mov word [bp - 2], ax            ; 0x06b5
    jmp short .forward1              ; 0x06b8
.back1:
    mov ax, 8                        ; 0x06ba
.back2:
    mov sp, bp                       ; 0x06bd
    pop bp                           ; 0x06bf
    ret                              ; 0x06c0
.back3:
    mov ax, 9                        ; 0x06c1
    jmp short .back2                 ; 0x06c4
.back4:
    mov ax, 0xa                      ; 0x06c6
    jmp short .back2                 ; 0x06c9
.back5:
    mov ax, 0xb                      ; 0x06cb
    jmp short .back2                 ; 0x06ce
.forward1:
    cmp ax, strict word 0x48         ; 0x06d0
    je short .back3                  ; 0x06d3
    cmp ax, strict word 0x4b         ; 0x06d5
    je short .back1                  ; 0x06d8
    cmp ax, strict word 0x4d         ; 0x06da
    je short .back4                  ; 0x06dd
    cmp ax, strict word 0x50         ; 0x06df
    je short .back5                  ; 0x06e2
    jmp short .forward3              ; 0x06e4
.forward2:
    push word [bp + 4]               ; 0x06e6
    call toupper               ; 0x06e9
    pop cx                           ; 0x06ec
    jmp short .back2                 ; 0x06ed
.forward3:
    jmp short .back2                 ; 0x06ef
