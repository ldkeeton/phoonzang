; auto-generated
find_picture_slot:
    mov ax, 0xfffc                   ; 0x03b9
    call aztec_csav                  ; 0x03bc
    mov word [bp - 4], 0xffff        ; 0x03bf
    mov word [bp - 2], 0xf           ; 0x03c4
.back1:
    mov bx, word [bp - 2]            ; 0x03c9
    mov al, byte [bx + picture_slot_number] ; 0x03cc
    sub ah, ah                       ; 0x03d0
    cmp ax, word [bp + 4]            ; 0x03d2
    jne short .forward1              ; 0x03d5
    mov byte [bx + picture_slot_used], 1 ; 0x03d7
    mov ax, bx                       ; 0x03dc
    ret                              ; 0x03de
.forward1:
    cmp byte [bx + picture_slot_used], 0 ; 0x03df
    jne short .forward2              ; 0x03e4
    mov word [bp - 4], bx            ; 0x03e6
.forward2:
    inc word [bp - 2]                ; 0x03e9
    mov ax, word [bp - 2]            ; 0x03ec
    cmp ax, strict word 0x12         ; 0x03ef
    jl short .back1                  ; 0x03f2
    cmp word [bp - 4], byte -1       ; 0x03f4
    je short .forward4               ; 0x03f8
    mov bx, word [bp - 4]            ; 0x03fa
    mov al, byte [bx + picture_slot_number] ; 0x03fd
    sub ah, ah                       ; 0x0401
    cmp ax, 0xff                     ; 0x0403
    je short .forward3               ; 0x0406
    push bx                          ; 0x0408
    call free_picture_slot           ; 0x0409
    pop cx                           ; 0x040c
.forward3:
    push word [bp - 4]               ; 0x040d
    push word [bp + 4]               ; 0x0410
    call load_monster_picture        ; 0x0413
    add sp, byte 4                   ; 0x0416
.forward4:
    mov ax, word [bp - 4]            ; 0x0419
    ret                              ; 0x041c
