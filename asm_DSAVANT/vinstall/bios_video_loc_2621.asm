bios_video_loc_2621:
    push bp                          ; 0x2621
    mov bp, sp                       ; 0x2622
    push di                          ; 0x2624
    push si                          ; 0x2625
    mov bx, word [bp + 0x4]          ; 0x2626
@..bios_video_loc_2621.l1:
    mov al, byte [bx]                ; 0x2629
    or al, al                        ; 0x262b
    je short @..bios_video_loc_2621.l4 ; 0x262d
    push bx                          ; 0x262f
    cmp al, 0xa                      ; 0x2630
    jne short @..bios_video_loc_2621.l2 ; 0x2632
    mov ah, 3                        ; 0x2634
    mov bh, 0                        ; 0x2636
    int 0x10 ; BIOS video: get cursor position
    mov dl, 0                        ; 0x263a
    inc dh                           ; 0x263c
    mov ah, 3                        ; 0x263e
    mov bh, 0                        ; 0x2640
    mov ah, data_0002                ; 0x2642
    int 0x10 ; BIOS video: set cursor position
    jmp short @..bios_video_loc_2621.l3 ; 0x2646
@..bios_video_loc_2621.l2:
    mov ah, 9                        ; 0x2648
    mov bl, byte [data_2644]         ; 0x264a
    mov bh, 0                        ; 0x264e
    mov cx, 1                        ; 0x2650
    int 0x10 ; BIOS video: write char/attribute
    mov ah, 3                        ; 0x2655
    mov bh, 0                        ; 0x2657
    int 0x10 ; BIOS video: get cursor position
    inc dl                           ; 0x265b
    mov ah, 3                        ; 0x265d
    mov bh, 0                        ; 0x265f
    mov ah, data_0002                ; 0x2661
    int 0x10 ; BIOS video: set cursor position
@..bios_video_loc_2621.l3:
    pop bx                           ; 0x2665
    inc bx                           ; 0x2666
    jmp short @..bios_video_loc_2621.l1 ; 0x2667
@..bios_video_loc_2621.l4:
    pop si                           ; 0x2669
    pop di                           ; 0x266a
    mov sp, bp                       ; 0x266b
    pop bp                           ; 0x266d
    ret                              ; 0x266e
