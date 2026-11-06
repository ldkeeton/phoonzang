; auto-generated
select_npc_item_to_buy:
    mov ax, 0xfffa                   ; 0x573e
    call aztec_csav                  ; 0x5741
    call wait_for_npc_screen_animation ; 0x5744
    mov word [bp - 6], 0             ; 0x5747
.back1:
    push word [bp - 6]               ; 0x574c
    push word [npc_item_list_count]  ; 0x574f
    mov ax, 1                        ; 0x5753
    push ax                          ; 0x5756
    push ax                          ; 0x5757
    mov ax, MSG_GP_1577              ; 0x5758
    push ax                          ; 0x575b
    push word [bp + 4]               ; 0x575c
    call npc_item_selection_dialog   ; 0x575f
    add sp, byte 0xc                 ; 0x5762
    mov word [bp - 2], ax            ; 0x5765
    mov ax, word [dialog_selection]  ; 0x5768
    mov word [bp - 4], ax            ; 0x576b
    cmp word [bp - 2], byte 1        ; 0x576e
    jne short .forward2              ; 0x5772
    cmp ax, strict word 0xffff       ; 0x5774
    je short .forward2               ; 0x5777
    push ax                          ; 0x5779
    push word [bp + 4]               ; 0x577a
    call buy_npc_item                ; 0x577d
    add sp, byte 4                   ; 0x5780
    test ax, ax                      ; 0x5783
    je short .forward1               ; 0x5785
    call refresh_npc_screen          ; 0x5787
    mov ax, 1                        ; 0x578a
    ret                              ; 0x578d
.forward1:
    mov ax, word [bp - 4]            ; 0x578e
    sub ax, word [npc_item_scroll_top] ; 0x5791
    mov word [bp - 6], ax            ; 0x5795
.forward2:
    mov word [npc_area_bottom], 0x8d ; 0x5798
    call wait_for_npc_screen_animation ; 0x579e
    mov word [npc_area_bottom], 0x8f ; 0x57a1
    cmp word [bp - 2], byte 2        ; 0x57a7
    je short .forward3               ; 0x57ab
    cmp word [npc_item_list_count], byte 0 ; 0x57ad
    jg short .back1                  ; 0x57b2
.forward3:
    call refresh_npc_screen          ; 0x57b4
    mov ax, 0                        ; 0x57b7
    ret                              ; 0x57ba
