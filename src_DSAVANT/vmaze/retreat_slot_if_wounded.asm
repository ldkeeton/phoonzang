; auto-generated
retreat_slot_if_wounded:
    mov ax, 0                        ; 0x94a6
    call aztec_csav                  ; 0x94a9
    mov ax, 3                        ; 0x94ac
    push ax                          ; 0x94af
    call random_below                ; 0x94b0
    pop cx                           ; 0x94b3
    test ax, ax                      ; 0x94b4
    je short .forward1               ; 0x94b6
    mov ax, 0x26                     ; 0x94b8
    imul word [bp + 4]               ; 0x94bb
    mov bx, ax                       ; 0x94be
    mov al, byte [bx + slot_records + slot_record.health] ; 0x94c0
    cbw                              ; 0x94c4
    push ax                          ; 0x94c5
    mov al, byte [bx + slot_records + slot_record.max_health] ; 0x94c6
    cbw                              ; 0x94ca
    mov cx, 2                        ; 0x94cb
    cwd                              ; 0x94ce
    idiv cx                          ; 0x94cf
    mov cx, ax                       ; 0x94d1
    pop ax                           ; 0x94d3
    cmp ax, cx                       ; 0x94d4
    jge short .forward1              ; 0x94d6
    mov al, byte [bx + slot_records + slot_record.home_location] ; 0x94d8
    mov byte [bx + slot_records + slot_record.destination], al ; 0x94dc
    push word [bp + 4]               ; 0x94e0
    call refresh_slot_state          ; 0x94e3
    pop cx                           ; 0x94e6
    mov ax, 1                        ; 0x94e7
    ret                              ; 0x94ea
.forward1:
    mov ax, 0                        ; 0x94eb
    ret                              ; 0x94ee
