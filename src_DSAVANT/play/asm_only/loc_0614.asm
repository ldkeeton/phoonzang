; auto-generated
; asm only
loc_0614:
    cmp byte [cs:cseg_0321 - IMAGE_BASE], 0 ; 0x0614
    jne short loc_061f               ; 0x061a
    jmp near jumptable_035e_case_0   ; 0x061c
loc_061f:
    cld                              ; 0x061f
    cli                              ; 0x0620
    xor ax, ax                       ; 0x0621
    mov es, ax                       ; 0x0623
    mov di, 0x20                     ; 0x0625
    mov ax, word [cs:cseg_0b10 - IMAGE_BASE] ; 0x0628
    stosw                            ; 0x062c
    mov ax, word [cs:cseg_0b12 - IMAGE_BASE] ; 0x062d
    stosw                            ; 0x0631
    mov byte [cs:cseg_0321 - IMAGE_BASE], 0 ; 0x0632
    call io_loc_TVNV                 ; 0x0638
    mov al, 0x36                     ; 0x063b
    out 0x43, al                     ; 0x063d
    call leaf_loc_STGJ               ; 0x063f
    mov ax, 0                        ; 0x0642
    out 0x40, al                     ; 0x0645
    call leaf_loc_STGJ               ; 0x0647
    mov al, ah                       ; 0x064a
    out 0x40, al                     ; 0x064c
    mov al, byte [cs:cseg_0a8f - IMAGE_BASE] ; 0x064e
    out 0x21, al                     ; 0x0652
    sti                              ; 0x0654
    jmp near jumptable_035e_case_0   ; 0x0655
cseg_0658:
    db 0x00, 0x00
jumptable_0789_case_1:
    push di                          ; 0x065a
    push si                          ; 0x065b
    mov di, cseg_193a - IMAGE_BASE   ; 0x065c
    mov si, cseg_1a3a - IMAGE_BASE   ; 0x065f
    xor bh, bh                       ; 0x0662
    mov bl, byte [bp + 0x12]         ; 0x0664
    mov cx, bx                       ; 0x0667
    add cx, bx                       ; 0x0669
    mov ax, 0x80                     ; 0x066b
    mul cx                           ; 0x066e
    mov al, ah                       ; 0x0670
    mov ah, dl                       ; 0x0672
    cmp ax, 0x80                     ; 0x0674
    jb short @..loc_065a.l1          ; 0x0677
    mov ax, 0x80                     ; 0x0679
@..loc_065a.l1:
    mov word [cs:cseg_0658 - IMAGE_BASE], ax ; 0x067c
    mov bx, 0                        ; 0x0680
@..loc_065a.l2:
    mov ax, 0x7f                     ; 0x0683
    sub ax, bx                       ; 0x0686
    mul cx                           ; 0x0688
    mov al, ah                       ; 0x068a
    mov ah, dl                       ; 0x068c
    cmp ax, 0x80                     ; 0x068e
    jb short @..loc_065a.l3          ; 0x0691
    mov ax, 0x7f                     ; 0x0693
@..loc_065a.l3:
    neg ax                           ; 0x0696
    add ax, word [cs:cseg_0658 - IMAGE_BASE] ; 0x0698
    dec ax                           ; 0x069d
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 4 ; 0x069e
    mov si, ax                       ; 0x06a4
    mov al, byte [cs:si + cseg_1a3a - IMAGE_BASE] ; 0x06a6
    mov byte [cs:bx + cseg_193a - IMAGE_BASE], al ; 0x06ab
    inc bx                           ; 0x06b0
    cmp bx, strict word 0x80         ; 0x06b1
    jb short @..loc_065a.l2          ; 0x06b5
    mov bx, 0                        ; 0x06b7
@..loc_065a.l4:
    mov ax, bx                       ; 0x06ba
    mul cx                           ; 0x06bc
    mov al, ah                       ; 0x06be
    mov ah, dl                       ; 0x06c0
    cmp ax, 0x80                     ; 0x06c2
    jb short @..loc_065a.l5          ; 0x06c5
    mov ax, 0x7f                     ; 0x06c7
@..loc_065a.l5:
    add ax, word [cs:cseg_0658 - IMAGE_BASE] ; 0x06ca
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 4 ; 0x06cf
    mov si, ax                       ; 0x06d5
    mov al, byte [cs:si + cseg_1a3a - IMAGE_BASE] ; 0x06d7
    mov byte [cs:bx + cseg_19ba - IMAGE_BASE], al ; 0x06dc
    inc bx                           ; 0x06e1
    cmp bx, strict word 0x80         ; 0x06e2
    jb short @..loc_065a.l4          ; 0x06e6
    pop si                           ; 0x06e8
    pop di                           ; 0x06e9
    ret                              ; 0x06ea
    db 0x00
