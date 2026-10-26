; auto-generated
setup_party_pictures:
    mov ax, 0xfffc                   ; 0x17ad
    call aztec_csav                  ; 0x17b0
    mov word [bp - 4], 0xf           ; 0x17b3
.back1:
    mov bx, word [bp - 4]            ; 0x17b8
    mov byte [bx + picture_slot_used], 0 ; 0x17bb
    inc word [bp - 4]                ; 0x17c0
    mov ax, word [bp - 4]            ; 0x17c3
    cmp ax, strict word 0x12         ; 0x17c6
    jl short .back1                  ; 0x17c9
    mov word [bp - 2], 1             ; 0x17cb
    jmp short .forward1              ; 0x17d0
.back2:
    mov ax, word [bp - 2]            ; 0x17d2
    shl ax, 1                        ; 0x17d5
    mov bx, ax                       ; 0x17d7
    mov bx, word [bx + party_char_ext] ; 0x17d9
    mov al, byte [bx + member_ext.kind] ; 0x17dd
    sub ah, ah                       ; 0x17e1
    push ax                          ; 0x17e3
    call find_picture_slot           ; 0x17e4
    pop cx                           ; 0x17e7
    mov cx, word [bp - 2]            ; 0x17e8
    shl cx, 1                        ; 0x17eb
    mov bx, cx                       ; 0x17ed
    mov bx, word [bx + party_char]   ; 0x17ef
    mov byte [bx + member_rec.slot], al ; 0x17f3
    inc word [bp - 2]                ; 0x17f7
.forward1:
    mov ax, word [bp - 2]            ; 0x17fa
    cmp ax, word [party_member_count] ; 0x17fd
    jle short .back2                 ; 0x1801
    mov word [bp - 4], 0xf           ; 0x1803
.back3:
    mov bx, word [bp - 4]            ; 0x1808
    mov al, byte [bx + picture_slot_number] ; 0x180b
    sub ah, ah                       ; 0x180f
    cmp ax, 0xff                     ; 0x1811
    je short .forward2               ; 0x1814
    cmp byte [bx + picture_slot_used], 0 ; 0x1816
    jne short .forward2              ; 0x181b
    push bx                          ; 0x181d
    call free_picture_slot           ; 0x181e
    pop cx                           ; 0x1821
.forward2:
    inc word [bp - 4]                ; 0x1822
    mov ax, word [bp - 4]            ; 0x1825
    cmp ax, strict word 0x12         ; 0x1828
    jl short .back3                  ; 0x182b
    mov bx, word [party_member_ext_1] ; 0x182d
    cmp byte [bx + party_member_ext_1_rec.f_00d8], 0 ; 0x1831
    jbe short .return1               ; 0x1836
    mov al, byte [bx + 0xd8]         ; 0x1838
    sub ah, ah                       ; 0x183c
    push ax                          ; 0x183e
    call ensure_sound_loaded         ; 0x183f
    pop cx                           ; 0x1842
.return1:
    ret                              ; 0x1843
