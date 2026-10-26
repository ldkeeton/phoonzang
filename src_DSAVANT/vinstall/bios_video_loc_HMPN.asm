; auto-generated
bios_video_loc_HMPN:
    push bp                          ; 0x25d3
    mov bp, sp                       ; 0x25d4
    push di                          ; 0x25d6
    push si                          ; 0x25d7
    mov bx, word [bp + 4]            ; 0x25d8
@..bios_video_loc_HMPN.l1:
    mov al, byte [bx]                ; 0x25db
    or al, al                        ; 0x25dd
    je short @..bios_video_loc_HMPN.l4 ; 0x25df
    push bx                          ; 0x25e1
    cmp al, 0xa                      ; 0x25e2
    jne short @..bios_video_loc_HMPN.l2 ; 0x25e4
    mov ah, 3                        ; 0x25e6
    mov bh, 0                        ; 0x25e8
    int 0x10 ; BIOS video: get cursor position
    mov dl, 0                        ; 0x25ec
    inc dh                           ; 0x25ee
    mov ah, 3                        ; 0x25f0
    mov bh, 0                        ; 0x25f2
    mov ah, 2                        ; 0x25f4
    int 0x10 ; BIOS video: set cursor position
    jmp short @..bios_video_loc_HMPN.l3 ; 0x25f8
@..bios_video_loc_HMPN.l2:
    mov ah, 9                        ; 0x25fa
    mov bl, byte [bss_2645]          ; 0x25fc
    mov bh, 0                        ; 0x2600
    mov cx, 1                        ; 0x2602
    int 0x10 ; BIOS video: write char/attribute
    mov ah, 3                        ; 0x2607
    mov bh, 0                        ; 0x2609
    int 0x10 ; BIOS video: get cursor position
    inc dl                           ; 0x260d
    mov ah, 3                        ; 0x260f
    mov bh, 0                        ; 0x2611
    mov ah, 2                        ; 0x2613
    int 0x10 ; BIOS video: set cursor position
@..bios_video_loc_HMPN.l3:
    pop bx                           ; 0x2617
    inc bx                           ; 0x2618
    jmp short @..bios_video_loc_HMPN.l1 ; 0x2619
@..bios_video_loc_HMPN.l4:
    pop si                           ; 0x261b
    pop di                           ; 0x261c
    mov sp, bp                       ; 0x261d
    pop bp                           ; 0x261f
    ret                              ; 0x2620
