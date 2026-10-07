dos_file_loc_4fb6:
    push bp                          ; 0x4fb6
    mov bp, sp                       ; 0x4fb7
    mov ah, 0x3f                     ; 0x4fb9
    jmp short loc_4fc2               ; 0x4fbb
dos_file_loc_4fbd:
    push bp                          ; 0x4fbd
    mov bp, sp                       ; 0x4fbe
    mov ah, 0x40                     ; 0x4fc0
loc_4fc2:
    mov bx, word [bp + 0x4]          ; 0x4fc2
    cmp byte [bx + 0xcdc], 0         ; 0x4fc5
    je short loc_4fda                ; 0x4fca
    pop bp                           ; 0x4fcc
    cmp ah, 0x3f                     ; 0x4fcd
    je short loc_4fd6                ; 0x4fd0
    jmp [data_0cf2]                  ; 0x4fd2
loc_4fd6:
    jmp [data_0cf0]                  ; 0x4fd6
loc_4fda:
    mov dx, word [bp + 0x6]          ; 0x4fda
    mov cx, word [bp + 0x8]          ; 0x4fdd
    int 0x21 ; DOS function dispatcher
    jae short loc_4fea               ; 0x4fe2
    mov word [data_0c72], ax         ; 0x4fe4
    mov ax, 0xffff                   ; 0x4fe7
loc_4fea:
    pop bp                           ; 0x4fea
    ret                              ; 0x4feb
