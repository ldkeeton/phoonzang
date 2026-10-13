; auto-generated
leaf_loc_2ec0:
    cmp word [bp + 0x4], byte 4      ; 0x2ec0
    jl short @..leaf_loc_2ec0.l34    ; 0x2ec4
    jmp near loc_30f3                ; 0x2ec6
@..leaf_loc_2ec0.l34:
    cmp word [bp + 0x8], byte 1      ; 0x2ec9
    je short @..leaf_loc_2ec0.l35    ; 0x2ecd
    cmp word [bp + 0x8], byte 3      ; 0x2ecf
    jne short @..leaf_loc_2ec0.l36   ; 0x2ed3
@..leaf_loc_2ec0.l35:
    mov ax, 0                        ; 0x2ed5
    jmp short @..leaf_loc_2ec0.l37   ; 0x2ed8
@..leaf_loc_2ec0.l36:
    mov ax, 1                        ; 0x2eda
@..leaf_loc_2ec0.l37:
    mov word [bp - 0x0012], ax       ; 0x2edd
    mov ax, 0                        ; 0x2ee0
    cmp word [bp + 0x8], byte 2      ; 0x2ee3
    jle short @..leaf_loc_2ec0.l38   ; 0x2ee7
    mov ax, 1                        ; 0x2ee9
@..leaf_loc_2ec0.l38:
    mov word [bp - 0x0006], ax       ; 0x2eec
    mov word [bp - 0x000c], 0xffff   ; 0x2eef
    mov ax, word [bp + 0x6]          ; 0x2ef4
    jmp near @..leaf_loc_2ec0.l39    ; 0x2ef7
