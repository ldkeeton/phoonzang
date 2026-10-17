; auto-generated
loc_186a:
    sub ax, strict word 5            ; 0x186a
    cmp ax, strict word 6            ; 0x186d
    jae short loc_187a               ; 0x1870
    xchg bx, ax                      ; 0x1872
    shl bx, 1                        ; 0x1873
    jmp [cs:bx + 0x68a5]             ; 0x1875
loc_187a:
    cmp word [bp + 0x8], byte 0x0d   ; 0x187a
    jne short loc_1884               ; 0x187e
    mov ax, 0x12                     ; 0x1880
    ret                              ; 0x1883
loc_1884:
    cmp word [bp + 0x4], byte 1      ; 0x1884
    jne short loc_18ee               ; 0x1888
    mov ax, word [bp + 0x8]          ; 0x188a
    jmp short loc_18e1               ; 0x188d
