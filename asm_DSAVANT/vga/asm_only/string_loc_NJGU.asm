; auto-generated
; asm only
string_loc_NJGU:
    push bp                          ; 0x0728
    mov bp, sp                       ; 0x0729
    sub sp, byte 8                   ; 0x072b
    push es                          ; 0x072e
    push ds                          ; 0x072f
    push di                          ; 0x0730
    mov ax, word [cs:cseg_01e5 - IMAGE_BASE] ; 0x0731
    mov es, ax                       ; 0x0735
    mov ds, ax                       ; 0x0737
    mov ax, word [bp + 0xe]          ; 0x0739
    mov bx, 0x140                    ; 0x073c
    mul bx                           ; 0x073f
    add ax, word [bp + 0xc]          ; 0x0741
    mov word [bp - 0x0002], ax       ; 0x0744
    mov ax, word [bp + 0x12]         ; 0x0747
    sub ax, word [bp + 0xe]          ; 0x074a
    inc ax                           ; 0x074d
    mov word [bp - 0x0004], ax       ; 0x074e
    mov ax, word [bp + 0x10]         ; 0x0751
    sub ax, word [bp + 0xc]          ; 0x0754
    inc ax                           ; 0x0757
    mov word [bp - 0x0006], ax       ; 0x0758
@..string_loc_NJGU.l1:
    mov di, word [bp - 0x0002]       ; 0x075b
    mov si, di                       ; 0x075e
    add word [bp - 0x0002], strict word 0x140 ; 0x0760
    mov cx, word [bp - 0x0006]       ; 0x0765
@..string_loc_NJGU.l2:
    lodsb                            ; 0x0768
    not al                           ; 0x0769
    stosb                            ; 0x076b
    loop @..string_loc_NJGU.l2       ; 0x076c
    dec word [bp - 0x0004]           ; 0x076e
    jne short @..string_loc_NJGU.l1  ; 0x0771
    pop di                           ; 0x0773
    pop ds                           ; 0x0774
    pop es                           ; 0x0775
    mov sp, bp                       ; 0x0776
    pop bp                           ; 0x0778
    ret                              ; 0x0779
