strlen_3:
    push bp                          ; 0x4574
    mov bp, sp                       ; 0x4575
    mov dx, 0x7fff                   ; 0x4577
    jmp short loc_4582               ; 0x457a
string_loc_457c:
    push bp                          ; 0x457c
    mov bp, sp                       ; 0x457d
    mov dx, word [bp + 0x8]          ; 0x457f
loc_4582:
    cld                              ; 0x4582
    push si                          ; 0x4583
    push di                          ; 0x4584
    mov di, ds                       ; 0x4585
    mov es, di                       ; 0x4587
    mov di, word [bp + 0x4]          ; 0x4589
    sub ax, ax                       ; 0x458c
    mov cx, 0x7fff                   ; 0x458e
    repne scasb                      ; 0x4591
    dec di                           ; 0x4593
    mov si, word [bp + 0x6]          ; 0x4594
    mov cx, dx                       ; 0x4597
loc_4599:
    lodsb                            ; 0x4599
    stosb                            ; 0x459a
    test al, al                      ; 0x459b
    loopne loc_4599                  ; 0x459d
    je short loc_45a4                ; 0x459f
    sub al, al                       ; 0x45a1
    stosb                            ; 0x45a3
loc_45a4:
    pop di                           ; 0x45a4
    pop si                           ; 0x45a5
    mov ax, word [bp + 0x4]          ; 0x45a6
    pop bp                           ; 0x45a9
    ret                              ; 0x45aa
