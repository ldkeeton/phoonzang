; auto-generated
; asm only
bios_video_loc_NHNV:
    push bp                          ; 0x277f
    mov bp, sp                       ; 0x2780
    push ds                          ; 0x2782
    push es                          ; 0x2783
    push si                          ; 0x2784
    push di                          ; 0x2785
    mov ax, ds                       ; 0x2786
    mov es, ax                       ; 0x2788
    mov ax, word [bp + 0xe]          ; 0x278a
    cmp ax, strict word 0xffff       ; 0x278d
    jne short @..bios_video_loc_NHNV.l1 ; 0x2790
    les di, word [cs:cseg_00f7 - IMAGE_BASE] ; 0x2792
    mov ax, word [bp + 0xc]          ; 0x2797
    mov bx, ax                       ; 0x279a
    shl ax, 1                        ; 0x279c
    add bx, ax                       ; 0x279e
    mov al, byte [es:bx + di]        ; 0x27a0
    mov dh, al                       ; 0x27a3
    mov al, byte [es:bx + di + 0x1]  ; 0x27a5
    mov ch, al                       ; 0x27a9
    mov al, byte [es:bx + di + 0x2]  ; 0x27ab
    mov cl, al                       ; 0x27af
    jmp short @..bios_video_loc_NHNV.l2 ; 0x27b1
@..bios_video_loc_NHNV.l1:
    mov cx, word [bp + 0x12]         ; 0x27b3
    mov bx, word [bp + 0x10]         ; 0x27b6
    mov ch, bl                       ; 0x27b9
    mov bx, word [bp + 0xe]          ; 0x27bb
    mov dh, bl                       ; 0x27be
@..bios_video_loc_NHNV.l2:
    mov bx, word [bp + 0xc]          ; 0x27c0
    mov ax, 0x1010                   ; 0x27c3
    int 0x10 ; BIOS video
    pop di                           ; 0x27c8
    pop si                           ; 0x27c9
    pop es                           ; 0x27ca
    pop ds                           ; 0x27cb
    mov sp, bp                       ; 0x27cc
    pop bp                           ; 0x27ce
    ret                              ; 0x27cf
