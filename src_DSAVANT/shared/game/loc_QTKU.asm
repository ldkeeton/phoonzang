; auto-generated
loc_QTKU:
    mov ax, 0
    call aztec_csav
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    cmp byte [bx + party_records + pc_rec.state], 3
    jae short @..loc_QTKU.l1
    mov al, byte [bx + party_records + pc_rec.gender]
    sub ah, ah
    add ax, strict word 8
    push ax
    call play_sound_effect
    pop cx
@..loc_QTKU.l1:
    mov ax, 0x248
    imul word [bp + 4]
    mov bx, ax
    mov byte [bx + party_records + pc_rec.state], 3
    mov word [bx + party_records + pc_rec.pair_a], 0
    mov word [bx + party_records + pc_rec.pair_b], 0
    cmp word [bp + 6], byte 0
    jle short @..loc_QTKU.l2
    mov ax, 1
    push ax
    push word [bp + 4]
    call draw_party_member_panel
    add sp, byte 4
    cmp word [bp + 6], byte 1
    jle short @..loc_QTKU.l2
    mov ax, 8
    push ax
    call wait_for_hotspot_timeout
    pop cx
@..loc_QTKU.l2:
    ret
