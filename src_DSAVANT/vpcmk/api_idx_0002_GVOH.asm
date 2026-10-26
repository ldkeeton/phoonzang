; auto-generated
api_idx_0002_GVOH:
    mov ax, 0xfffe                   ; 0x56b0
    call aztec_csav                  ; 0x56b3
    mov ax, word [bp + 6]            ; 0x56b6
    shl ax, 1                        ; 0x56b9
    mov bx, ax                       ; 0x56bb
    mov ax, word [bx + slot_value]   ; 0x56bd
    cwd                              ; 0x56c1
    idiv word [bp + 8]               ; 0x56c2
    push ax                          ; 0x56c5
    mov ax, 0x248                    ; 0x56c6
    imul word [bp + 4]               ; 0x56c9
    mov bx, ax                       ; 0x56cc
    mov ax, word [bx + party_records + pc_rec.power_cap] ; 0x56ce
    dec ax                           ; 0x56d2
    mov cx, 2                        ; 0x56d3
    cwd                              ; 0x56d6
    idiv cx                          ; 0x56d7
    mov cx, ax                       ; 0x56d9
    pop ax                           ; 0x56db
    sub ax, cx                       ; 0x56dc
    mov word [bp - 2], ax            ; 0x56de
    cmp ax, strict word 0            ; 0x56e1
    jge short .forward1              ; 0x56e4
    mov word [bp - 2], 0             ; 0x56e6
.forward1:
    mov ax, word [bp + 6]            ; 0x56eb
    shl ax, 1                        ; 0x56ee
    mov bx, ax                       ; 0x56f0
    mov ax, word [bx + slot_value]   ; 0x56f2
    cmp ax, word [bp - 2]            ; 0x56f6
    jge short .forward2              ; 0x56f9
    mov word [bp - 2], ax            ; 0x56fb
.forward2:
    mov ax, word [bp - 2]            ; 0x56fe
    sub word [bx + slot_value], ax   ; 0x5701
    ret                              ; 0x5705
