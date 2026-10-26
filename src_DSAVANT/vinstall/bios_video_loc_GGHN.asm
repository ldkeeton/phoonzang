; auto-generated
bios_video_loc_GGHN:
    mov ah, 0xf                      ; 0x247a
    int 0x10 ; BIOS video: get video mode
    mov byte [cs:cseg_2479 - IMAGE_BASE], al ; 0x247e
    mov ax, 0                        ; 0x2482
    push ds                          ; 0x2485
    mov ds, ax                       ; 0x2486
    mov bx, 0x487                    ; 0x2488
    mov al, byte [bx]                ; 0x248b
    pop ds                           ; 0x248d
    or al, al                        ; 0x248e
    je short @..bios_video_loc_GGHN.l1 ; 0x2490
    jmp near @..bios_video_loc_GGHN.l6 ; 0x2492
@..bios_video_loc_GGHN.l1:
    cmp byte [cs:cseg_2479 - IMAGE_BASE], 7 ; 0x2495
    jne short @..bios_video_loc_GGHN.l2 ; 0x249b
    mov dx, 0x3d4                    ; 0x249d
    mov al, 0xf                      ; 0x24a0
    out dx, al                       ; 0x24a2
    inc dx                           ; 0x24a3
    in al, dx                        ; 0x24a4
    xchg al, ah                      ; 0x24a5
    mov al, 0x64                     ; 0x24a7
    out dx, al                       ; 0x24a9
    nop                              ; 0x24aa
    nop                              ; 0x24ab
    nop                              ; 0x24ac
    in al, dx                        ; 0x24ad
    cmp al, 0x64                     ; 0x24ae
    jne short @..bios_video_loc_GGHN.l3 ; 0x24b0
    xchg al, ah                      ; 0x24b2
    out dx, al                       ; 0x24b4
@..bios_video_loc_GGHN.l2:
    mov word [bp - 2], 4             ; 0x24b5
    ret                              ; 0x24ba
@..bios_video_loc_GGHN.l3:
    mov dx, 0x3ba                    ; 0x24bb
    in al, dx                        ; 0x24be
    and al, 0x80                     ; 0x24bf
    xchg al, ah                      ; 0x24c1
    mov cx, 0x1388                   ; 0x24c3
@..bios_video_loc_GGHN.l4:
    in al, dx                        ; 0x24c6
    and al, 0x80                     ; 0x24c7
    cmp al, ah                       ; 0x24c9
    jne short @..bios_video_loc_GGHN.l5 ; 0x24cb
    loop @..bios_video_loc_GGHN.l4   ; 0x24cd
    mov word [bp - 2], 0             ; 0x24cf
    ret                              ; 0x24d4
@..bios_video_loc_GGHN.l5:
    mov word [bp - 2], 8             ; 0x24d5
    ret                              ; 0x24da
@..bios_video_loc_GGHN.l6:
    mov word [bp - 2], 6             ; 0x24db
    xor bx, bx                       ; 0x24e0
    mov ax, 0x1a00                   ; 0x24e2
    int 0x10 ; BIOS video
    cmp bl, 7                        ; 0x24e7
    je short @..bios_video_loc_GGHN.l7 ; 0x24ea
    cmp bh, 7                        ; 0x24ec
    je short @..bios_video_loc_GGHN.l7 ; 0x24ef
    cmp bl, 8                        ; 0x24f1
    je short @..bios_video_loc_GGHN.l7 ; 0x24f4
    cmp bh, 8                        ; 0x24f6
    jne short @..bios_video_loc_GGHN.l8 ; 0x24f9
@..bios_video_loc_GGHN.l7:
    or word [bp - 2], 1              ; 0x24fb
@..bios_video_loc_GGHN.l8:
    ret                              ; 0x2500
