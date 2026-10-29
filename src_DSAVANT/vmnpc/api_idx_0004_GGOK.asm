; auto-generated
api_idx_0004_GGOK:
    mov ax, 0xfffc                   ; 0x3a96
    call aztec_csav                  ; 0x3a99
    mov ax, 0                        ; 0x3a9c
    push ax                          ; 0x3a9f
    call redraw_area_set             ; 0x3aa0
    pop cx                           ; 0x3aa3
    call loc_UTQS                    ; 0x3aa4
    mov ax, 1                        ; 0x3aa7
    push ax                          ; 0x3aaa
    push ax                          ; 0x3aab
    mov ax, MSG_CAST                 ; 0x3aac
    push ax                          ; 0x3aaf
    push word [bp + 4]               ; 0x3ab0
    call api_idx_0044_QRMH           ; 0x3ab3
    add sp, byte 8                   ; 0x3ab6
    test ax, ax                      ; 0x3ab9
    je short .forward1               ; 0x3abb
    jmp near .return1                ; 0x3abd
.forward1:
    mov ax, word [spell_dialog_result] ; 0x3ac0
    mov cx, 0x100                    ; 0x3ac3
    cwd                              ; 0x3ac6
    idiv cx                          ; 0x3ac7
    mov word [bp - 4], ax            ; 0x3ac9
    mov word [bp - 2], dx            ; 0x3acc
    mov ax, 6                        ; 0x3acf
    imul dx                          ; 0x3ad2
    mov bx, ax                       ; 0x3ad4
    cmp byte [bx + spell_table + spell_table_rec.f_0004], 1 ; 0x3ad6
    jne short .forward2              ; 0x3adb
    call pick_party_member           ; 0x3add
    mov word [bss_9650], ax          ; 0x3ae0
    cmp ax, strict word 0xffff       ; 0x3ae3
    jne short .forward2              ; 0x3ae6
    mov word [bp - 2], 0xffff        ; 0x3ae8
.forward2:
    cmp word [bp - 2], byte 0        ; 0x3aed
    jge short .forward3              ; 0x3af1
    jmp near .return1                ; 0x3af3
.forward3:
    mov ax, 6                        ; 0x3af6
    imul word [bp - 2]               ; 0x3af9
    mov bx, ax                       ; 0x3afc
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x3afe
    sub ah, ah                       ; 0x3b02
    imul word [bp - 4]               ; 0x3b04
    push ax                          ; 0x3b07
    mov ax, 0x248                    ; 0x3b08
    imul word [bp + 4]               ; 0x3b0b
    mov cx, ax                       ; 0x3b0e
    mov al, byte [bx + spell_table]  ; 0x3b10
    sub ah, ah                       ; 0x3b14
    mov dx, ax                       ; 0x3b16
    shl ax, 1                        ; 0x3b18
    shl ax, 1                        ; 0x3b1a
    mov dx, ax                       ; 0x3b1c
    add cx, ax                       ; 0x3b1e
    mov bx, cx                       ; 0x3b20
    pop ax                           ; 0x3b22
    sub word [bx + party_records + pc_rec.realm_points], ax ; 0x3b23
    push word [bss_9650]             ; 0x3b27
    push word [bp - 4]               ; 0x3b2b
    push word [bp - 2]               ; 0x3b2e
    push word [bp + 4]               ; 0x3b31
    call api_idx_0008_HUTJ           ; 0x3b34
    add sp, byte 8                   ; 0x3b37
    push word [bp - 4]               ; 0x3b3a
    call random_below                ; 0x3b3d
    pop cx                           ; 0x3b40
    push ax                          ; 0x3b41
    mov ax, 6                        ; 0x3b42
    imul word [bp - 2]               ; 0x3b45
    mov bx, ax                       ; 0x3b48
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x3b4a
    sub ah, ah                       ; 0x3b4e
    mov cx, ax                       ; 0x3b50
    pop ax                           ; 0x3b52
    add ax, cx                       ; 0x3b53
    add ax, word [bp - 4]            ; 0x3b55
    push ax                          ; 0x3b58
    mov ax, 0x248                    ; 0x3b59
    imul word [bp + 4]               ; 0x3b5c
    mov bx, ax                       ; 0x3b5f
    pop ax                           ; 0x3b61
    sub word [bx + party_records + pc_rec.pair_b], ax ; 0x3b62
    cmp word [bx + party_records + pc_rec.pair_b], byte 0 ; 0x3b66
    jge short .forward4              ; 0x3b6b
    mov word [bx + party_records + pc_rec.pair_b], 0 ; 0x3b6d
    mov ax, 6                        ; 0x3b73
    push ax                          ; 0x3b76
    call random_below                ; 0x3b77
    pop cx                           ; 0x3b7a
    add ax, strict word 6            ; 0x3b7b
    push ax                          ; 0x3b7e
    mov ax, 0x248                    ; 0x3b7f
    imul word [bp + 4]               ; 0x3b82
    mov bx, ax                       ; 0x3b85
    pop ax                           ; 0x3b87
    mov byte [bx + party_records + pc_rec.status + 0x2], al ; 0x3b88
.forward4:
    mov ax, 1                        ; 0x3b8c
    push ax                          ; 0x3b8f
    push word [bp + 4]               ; 0x3b90
    call draw_party_member_panel     ; 0x3b93
    add sp, byte 4                   ; 0x3b96
.return1:
    ret                              ; 0x3b99
