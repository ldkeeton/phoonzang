; auto-generated
learn_location_rumor:
    mov ax, 0xfffe                   ; 0x98cc
    call aztec_csav                  ; 0x98cf
    mov ax, 0x26                     ; 0x98d2
    imul word [bp + 4]               ; 0x98d5
    mov bx, ax                       ; 0x98d8
    mov al, byte [bx + slot_records + slot_record.destination] ; 0x98da
    sub ah, ah                       ; 0x98de
    mov word [bp - 2], ax            ; 0x98e0
    shl ax, 1                        ; 0x98e3
    shl ax, 1                        ; 0x98e5
    mov bx, ax                       ; 0x98e7
    cmp byte [bx + location_records + location_record.rumored_map], 0xff ; 0x98e9
    je short .return1                ; 0x98ee
    mov ax, 4                        ; 0x98f0
    push ax                          ; 0x98f3
    call random_below                ; 0x98f4
    pop cx                           ; 0x98f7
    test ax, ax                      ; 0x98f8
    jne short .return1               ; 0x98fa
    mov ax, 1                        ; 0x98fc
    push ax                          ; 0x98ff
    mov ax, word [bp - 2]            ; 0x9900
    shl ax, 1                        ; 0x9903
    shl ax, 1                        ; 0x9905
    mov bx, ax                       ; 0x9907
    mov al, byte [bx + location_records + location_record.rumored_map] ; 0x9909
    cbw                              ; 0x990d
    push ax                          ; 0x990e
    mov ax, 0x26                     ; 0x990f
    imul word [bp + 4]               ; 0x9912
    add ax, slot_records + slot_record.known_maps ; 0x9915
    push ax                          ; 0x9918
    call set_bitmap_bit              ; 0x9919
    add sp, byte 6                   ; 0x991c
.return1:
    ret                              ; 0x991f
