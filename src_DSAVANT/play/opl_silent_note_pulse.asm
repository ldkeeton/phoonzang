; auto-generated
opl_silent_note_pulse:
    pushf                            ; 0x06ec
    cli                              ; 0x06ed
    mov al, 0x36                     ; 0x06ee
    out 0x43, al                     ; 0x06f0
    xor ax, ax                       ; 0x06f2
    out 0x40, al                     ; 0x06f4
    out 0x40, al                     ; 0x06f6
    mov ax, 0x2021                   ; 0x06f8
    call opl_write                   ; 0x06fb
    mov ax, 0x60f0                   ; 0x06fe
    call opl_write                   ; 0x0701
    mov ax, 0x80f0                   ; 0x0704
    call opl_write                   ; 0x0707
    mov ax, 0xc001                   ; 0x070a
    call opl_write                   ; 0x070d
    mov ax, 0xe000                   ; 0x0710
    call opl_write                   ; 0x0713
    mov ax, 0x433f                   ; 0x0716
    call opl_write                   ; 0x0719
    mov ax, 0xb000                   ; 0x071c
    call opl_write                   ; 0x071f
    mov ax, 0xa000                   ; 0x0722
    call opl_write                   ; 0x0725
    mov bx, 0x28f                    ; 0x0728
    mov ah, 0xa0                     ; 0x072b
    mov al, bl                       ; 0x072d
    call opl_write                   ; 0x072f
    mov ax, 0xb02c                   ; 0x0732
    add al, bh                       ; 0x0735
    call opl_write                   ; 0x0737
    cli                              ; 0x073a
    mov al, 0                        ; 0x073b
    out 0x43, al                     ; 0x073d
    in al, 0x40                      ; 0x073f
    mov bl, al                       ; 0x0741
    in al, 0x40                      ; 0x0743
    mov bh, al                       ; 0x0745
.back1:
    mov al, 0                        ; 0x0747
    out 0x43, al                     ; 0x0749
    in al, 0x40                      ; 0x074b
    mov cl, al                       ; 0x074d
    in al, 0x40                      ; 0x074f
    mov ch, al                       ; 0x0751
    neg cx                           ; 0x0753
    add cx, bx                       ; 0x0755
    cmp cx, strict word 0x952        ; 0x0757
    jb short .back1                  ; 0x075b
    mov ax, 0xb020                   ; 0x075d
    call opl_write                   ; 0x0760
    mov ax, 0xa000                   ; 0x0763
    call opl_write                   ; 0x0766
    mov dx, 0x388                    ; 0x0769
    mov al, 0x40                     ; 0x076c
    out dx, al                       ; 0x076e
    call opl_delay_short             ; 0x076f
    mov al, 0x3f                     ; 0x0772
    inc dx                           ; 0x0774
    out dx, al                       ; 0x0775
    call opl_delay_long              ; 0x0776
    popf                             ; 0x0779
    ret                              ; 0x077a
