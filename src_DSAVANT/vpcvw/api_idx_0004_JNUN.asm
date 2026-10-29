; auto-generated
api_idx_0004_JNUN:
    mov ax, 0xfffc                   ; 0x3974
    call aztec_csav                  ; 0x3977
    push word [bp + 6]               ; 0x397a
    push word [bp + 6]               ; 0x397d
    mov ax, MSG_SPELLS_2033          ; 0x3980
    cmp word [bp + 6], byte 0        ; 0x3983
    je short .forward1               ; 0x3987
    mov ax, MSG_CAST                 ; 0x3989
.forward1:
    push ax                          ; 0x398c
    push word [bp + 4]               ; 0x398d
    call api_idx_0050_HVVP           ; 0x3990
    add sp, byte 8                   ; 0x3993
    test ax, ax                      ; 0x3996
    je short .forward2               ; 0x3998
    jmp near .return1                ; 0x399a
.forward2:
    mov ax, word [spell_dialog_result] ; 0x399d
    mov cx, 0x100                    ; 0x39a0
    cwd                              ; 0x39a3
    idiv cx                          ; 0x39a4
    mov word [bp - 4], ax            ; 0x39a6
    mov word [bp - 2], dx            ; 0x39a9
    mov ax, 6                        ; 0x39ac
    imul dx                          ; 0x39af
    mov bx, ax                       ; 0x39b1
    cmp byte [bx + spell_table + spell_table_rec.f_0004], 1 ; 0x39b3
    jne short .forward3              ; 0x39b8
    call api_idx_0012_GQSK           ; 0x39ba
    mov word [bss_9564], ax          ; 0x39bd
    cmp ax, strict word 0xffff       ; 0x39c0
    jne short .forward3              ; 0x39c3
    mov word [bp - 2], 0xffff        ; 0x39c5
.forward3:
    cmp word [bp - 2], byte 0        ; 0x39ca
    jge short .forward4              ; 0x39ce
    jmp near .return1                ; 0x39d0
.forward4:
    mov ax, 6                        ; 0x39d3
    imul word [bp - 2]               ; 0x39d6
    mov bx, ax                       ; 0x39d9
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x39db
    sub ah, ah                       ; 0x39df
    imul word [bp - 4]               ; 0x39e1
    push ax                          ; 0x39e4
    mov ax, 0x248                    ; 0x39e5
    imul word [bp + 4]               ; 0x39e8
    mov cx, ax                       ; 0x39eb
    mov al, byte [bx + spell_table]  ; 0x39ed
    sub ah, ah                       ; 0x39f1
    mov dx, ax                       ; 0x39f3
    shl ax, 1                        ; 0x39f5
    shl ax, 1                        ; 0x39f7
    mov dx, ax                       ; 0x39f9
    add cx, ax                       ; 0x39fb
    mov bx, cx                       ; 0x39fd
    pop ax                           ; 0x39ff
    sub word [bx + party_records + pc_rec.realm_points], ax ; 0x3a00
    push word [bp - 4]               ; 0x3a04
    call random_below                ; 0x3a07
    pop cx                           ; 0x3a0a
    push ax                          ; 0x3a0b
    mov ax, 6                        ; 0x3a0c
    imul word [bp - 2]               ; 0x3a0f
    mov bx, ax                       ; 0x3a12
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x3a14
    sub ah, ah                       ; 0x3a18
    mov cx, ax                       ; 0x3a1a
    pop ax                           ; 0x3a1c
    add ax, cx                       ; 0x3a1d
    add ax, word [bp - 4]            ; 0x3a1f
    push ax                          ; 0x3a22
    mov ax, 0x248                    ; 0x3a23
    imul word [bp + 4]               ; 0x3a26
    mov bx, ax                       ; 0x3a29
    pop ax                           ; 0x3a2b
    sub word [bx + party_records + pc_rec.pair_b], ax ; 0x3a2c
    cmp word [bx + party_records + pc_rec.pair_b], byte 0 ; 0x3a30
    jge short .forward5              ; 0x3a35
    mov word [bx + party_records + pc_rec.pair_b], 0 ; 0x3a37
    mov ax, 6                        ; 0x3a3d
    push ax                          ; 0x3a40
    call random_below                ; 0x3a41
    pop cx                           ; 0x3a44
    add ax, strict word 6            ; 0x3a45
    push ax                          ; 0x3a48
    mov ax, 0x248                    ; 0x3a49
    imul word [bp + 4]               ; 0x3a4c
    mov bx, ax                       ; 0x3a4f
    pop ax                           ; 0x3a51
    mov byte [bx + party_records + pc_rec.status + 0x2], al ; 0x3a52
.forward5:
    push word [bss_9564]             ; 0x3a56
    push word [bp - 4]               ; 0x3a5a
    push word [bp - 2]               ; 0x3a5d
    push word [bp + 4]               ; 0x3a60
    call api_idx_0008_SJVU           ; 0x3a63
    add sp, byte 8                   ; 0x3a66
.return1:
    ret                              ; 0x3a69
