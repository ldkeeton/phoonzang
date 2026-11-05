; auto-generated
handle_member_action_menu:
    mov ax, 0xffe8                   ; 0x9740
    call aztec_csav                  ; 0x9743
.back1:
    mov word [bp - 2], 0             ; 0x9746
.back2:
    mov ax, word [bp - 2]            ; 0x974b
    shl ax, 1                        ; 0x974e
    mov bx, ax                       ; 0x9750
    add bx, bp                       ; 0x9752
    mov word [bx - 0x18], 1          ; 0x9754
    inc word [bp - 2]                ; 0x9759
    mov ax, word [bp - 2]            ; 0x975c
    cmp ax, strict word 4            ; 0x975f
    jle short .back2                 ; 0x9762
    mov word [bp - 0x12], 0          ; 0x9764
    mov word [bp - 0xe], 0xffff      ; 0x9769
    lea ax, word [bp - 0x18]         ; 0x976e
    push ax                          ; 0x9771
    mov ax, 0                        ; 0x9772
    push ax                          ; 0x9775
    mov ax, 0xffff                   ; 0x9776
    push ax                          ; 0x9779
    mov ax, 1                        ; 0x977a
    push ax                          ; 0x977d
    mov ax, 6                        ; 0x977e
    push ax                          ; 0x9781
    mov ax, 1                        ; 0x9782
    push ax                          ; 0x9785
    mov ax, 0xc                      ; 0x9786
    push ax                          ; 0x9789
    mov ax, 0x46                     ; 0x978a
    push ax                          ; 0x978d
    mov ax, 0xb                      ; 0x978e
    push ax                          ; 0x9791
    mov ax, 0xbc                     ; 0x9792
    push ax                          ; 0x9795
    mov ax, 4                        ; 0x9796
    push ax                          ; 0x9799
    mov ax, 0                        ; 0x979a
    push ax                          ; 0x979d
    mov ax, 0x474                    ; 0x979e
    push ax                          ; 0x97a1
    call select_grid_text_option     ; 0x97a2
    add sp, byte 0x1a                ; 0x97a5
    mov word [bp - 4], ax            ; 0x97a8
    jmp short .forward1              ; 0x97ab
.back3:
    push word [bp + 4]               ; 0x97ad
    call rename_party_member         ; 0x97b0
    pop cx                           ; 0x97b3
    jmp short .forward2              ; 0x97b4
.back4:
    push word [bp + 4]               ; 0x97b6
    call choose_member_portrait      ; 0x97b9
    pop cx                           ; 0x97bc
    jmp short .forward2              ; 0x97bd
.back5:
    push word [bp + 4]               ; 0x97bf
    call change_character_profession ; 0x97c2
    pop cx                           ; 0x97c5
    jmp short .forward2              ; 0x97c6
.forward1:
    cmp ax, strict word 0            ; 0x97c8
    je short .back3                  ; 0x97cb
    cmp ax, strict word 1            ; 0x97cd
    je short .back4                  ; 0x97d0
    cmp ax, strict word 2            ; 0x97d2
    je short .back5                  ; 0x97d5
.forward2:
    mov ax, 0                        ; 0x97d7
    push ax                          ; 0x97da
    push word [bp + 4]               ; 0x97db
    call refresh_member_inventory_panel ; 0x97de
    add sp, byte 4                   ; 0x97e1
    cmp word [bp - 4], byte 4        ; 0x97e4
    je short .return1                ; 0x97e8
    jmp near .back1                  ; 0x97ea
.return1:
    ret                              ; 0x97ed
