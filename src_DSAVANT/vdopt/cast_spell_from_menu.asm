; auto-generated
cast_spell_from_menu:
    mov ax, 0xfffc                   ; 0x45dd
    call aztec_csav                  ; 0x45e0
    mov word [party_redraw_mode], 5  ; 0x45e3
    mov ax, 1                        ; 0x45e9
    push ax                          ; 0x45ec
    push ax                          ; 0x45ed
    mov ax, MSG_CAST                 ; 0x45ee
    push ax                          ; 0x45f1
    push word [bp + 0x4]             ; 0x45f2
    call pick_spell_dialog           ; 0x45f5
    add sp, byte 8                   ; 0x45f8
    test ax, ax                      ; 0x45fb
    je short @..cast_spell_from_menu.l1 ; 0x45fd
    jmp near @..cast_spell_from_menu.l4 ; 0x45ff
@..cast_spell_from_menu.l1:
    mov ax, word [spell_dialog_result] ; 0x4602
    mov cx, 0x100                    ; 0x4605
    cwd                              ; 0x4608
    idiv cx                          ; 0x4609
    mov word [bp - 0x0004], ax       ; 0x460b
    mov word [bp - 0x0002], dx       ; 0x460e
    mov ax, 6                        ; 0x4611
    imul dx                          ; 0x4614
    mov bx, ax                       ; 0x4616
    cmp byte [bx + spell_table + spell_table_rec.f_0004], 1 ; 0x4618
    jne short @..cast_spell_from_menu.l2 ; 0x461d
    call pick_party_member           ; 0x461f
    mov word [spell_target], ax      ; 0x4622
    cmp ax, strict word 0xffff       ; 0x4625
    jne short @..cast_spell_from_menu.l2 ; 0x4628
@..cast_spell_from_menu.l2:
    cmp word [bp - 0x0002], byte 0   ; 0x462a
    jge short @..cast_spell_from_menu.l3 ; 0x462e
    jmp near @..cast_spell_from_menu.l4 ; 0x4630
@..cast_spell_from_menu.l3:
    mov ax, 6                        ; 0x4633
    imul word [bp - 0x0002]          ; 0x4636
    mov bx, ax                       ; 0x4639
    mov al, byte [bx + spell_table + spell_table_rec.f_0002] ; 0x463b
    sub ah, ah                       ; 0x463f
    imul word [bp - 0x0004]          ; 0x4641
    push ax                          ; 0x4644
    mov ax, 0x248                    ; 0x4645
    imul word [bp + 0x4]             ; 0x4648
    mov cx, ax                       ; 0x464b
    mov al, byte [bx + spell_table]  ; 0x464d
    sub ah, ah                       ; 0x4651
    mov dx, ax                       ; 0x4653
    shl ax, 1                        ; 0x4655
    shl ax, 1                        ; 0x4657
    mov dx, ax                       ; 0x4659
    add cx, ax                       ; 0x465b
    mov bx, cx                       ; 0x465d
    pop ax                           ; 0x465f
    sub word [bx + party_records + pc_rec.realm_points], ax ; 0x4660
    push word [spell_target]         ; 0x4664
    push word [bp - 0x0004]          ; 0x4668
    push word [bp - 0x0002]          ; 0x466b
    push word [bp + 0x4]             ; 0x466e
    call apply_spell_effect          ; 0x4671
    add sp, byte 8                   ; 0x4674
    push word [bp - 0x0004]          ; 0x4677
    call random_below                ; 0x467a
    pop cx                           ; 0x467d
    push ax                          ; 0x467e
    mov ax, 6                        ; 0x467f
    imul word [bp - 0x0002]          ; 0x4682
    mov bx, ax                       ; 0x4685
    mov al, byte [bx + spell_table + spell_table_rec.f_0001] ; 0x4687
    sub ah, ah                       ; 0x468b
    mov cx, ax                       ; 0x468d
    pop ax                           ; 0x468f
    add ax, cx                       ; 0x4690
    add ax, word [bp - 0x0004]       ; 0x4692
    push ax                          ; 0x4695
    mov ax, 0x248                    ; 0x4696
    imul word [bp + 0x4]             ; 0x4699
    mov bx, ax                       ; 0x469c
    pop ax                           ; 0x469e
    sub word [bx + party_records + pc_rec.pair_b], ax ; 0x469f
    cmp word [bx + party_records + pc_rec.pair_b], byte 0 ; 0x46a3
    jge short @..cast_spell_from_menu.l4 ; 0x46a8
    mov word [bx + party_records + pc_rec.pair_b], 0 ; 0x46aa
    mov ax, 6                        ; 0x46b0
    push ax                          ; 0x46b3
    call random_below                ; 0x46b4
    pop cx                           ; 0x46b7
    add ax, strict word 6            ; 0x46b8
    push ax                          ; 0x46bb
    mov ax, 0x248                    ; 0x46bc
    imul word [bp + 0x4]             ; 0x46bf
    mov bx, ax                       ; 0x46c2
    pop ax                           ; 0x46c4
    mov byte [bx + party_records + pc_rec.status + 0x2], al ; 0x46c5
@..cast_spell_from_menu.l4:
    cmp word [pending_event], byte 0 ; 0x46c9
    jle short @..cast_spell_from_menu.l5 ; 0x46ce
    push word [pending_event]        ; 0x46d0
    call show_event_message          ; 0x46d4
    pop cx                           ; 0x46d7
@..cast_spell_from_menu.l5:
    ret                              ; 0x46d8
