; auto-generated
; asm only
loc_059b:
    mov al, 0x34                     ; 0x059b
    out 0x43, al                     ; 0x059d
    mov ax, 0x48                     ; 0x059f
    out 0x40, al                     ; 0x05a2
    call leaf_loc_STGJ               ; 0x05a4
    mov al, ah                       ; 0x05a7
    out 0x40, al                     ; 0x05a9
    mov al, 0xfe                     ; 0x05ab
    out 0x21, al                     ; 0x05ad
    mov ax, es                       ; 0x05af
    mov ds, ax                       ; 0x05b1
    mov cx, 0x20b0                   ; 0x05b3
    mov bx, 0x1a3a                   ; 0x05b6
    mov dx, 0x42                     ; 0x05b9
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 1 ; 0x05bc
    jne short loc_05c7               ; 0x05c2
    mov dx, 0x389                    ; 0x05c4
loc_05c7:
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 3 ; 0x05c7
    je short loc_05d7                ; 0x05cd
    cmp byte [cs:cseg_0a7d - IMAGE_BASE], 2 ; 0x05cf
    jne short loc_05dc               ; 0x05d5
loc_05d7:
    mov dx, word [cs:cseg_0a8d - IMAGE_BASE] ; 0x05d7
loc_05dc:
    mov si, word [cs:cseg_0a81 - IMAGE_BASE] ; 0x05dc
    sti                              ; 0x05e1
loc_05e2:
    sti                              ; 0x05e2
    test byte [cs:cseg_0a94 - IMAGE_BASE], 0xff ; 0x05e3
    je short loc_05e2                ; 0x05e9
    cmp byte [cs:cseg_0a9a - IMAGE_BASE], 0 ; 0x05eb
    je short loc_0608                ; 0x05f1
    mov al, 0x34                     ; 0x05f3
    out 0x43, al                     ; 0x05f5
    mov ax, word [cs:cseg_0aa6 - IMAGE_BASE] ; 0x05f7
    mov bl, 0x48                     ; 0x05fb
    mul bl                           ; 0x05fd
    out 0x40, al                     ; 0x05ff
    call leaf_loc_STGJ               ; 0x0601
    mov al, ah                       ; 0x0604
    out 0x40, al                     ; 0x0606
loc_0608:
    mov al, byte [cs:cseg_0a8f - IMAGE_BASE] ; 0x0608
    out 0x21, al                     ; 0x060c
    jmp short io_loc_HMTR            ; 0x060e
