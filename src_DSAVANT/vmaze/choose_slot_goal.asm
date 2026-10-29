; auto-generated
choose_slot_goal:
    mov ax, 0xfffc                   ; 0x96ce
    call aztec_csav                  ; 0x96d1
    mov ax, 0x26                     ; 0x96d4
    imul word [bp + 4]               ; 0x96d7
    mov bx, ax                       ; 0x96da
    mov al, byte [bx + slot_records + slot_record.destination] ; 0x96dc
    sub ah, ah                       ; 0x96e0
    push ax                          ; 0x96e2
    push word [bp + 4]               ; 0x96e3
    call slot_is_at_location         ; 0x96e6
    add sp, byte 4                   ; 0x96e9
    test ax, ax                      ; 0x96ec
    je short .forward1               ; 0x96ee
    mov ax, 0x26                     ; 0x96f0
    imul word [bp + 4]               ; 0x96f3
    mov bx, ax                       ; 0x96f6
    mov al, byte [bx + slot_records + slot_record.destination] ; 0x96f8
    sub ah, ah                       ; 0x96fc
    push ax                          ; 0x96fe
    add bx, slot_records + slot_record.visited_locations ; 0x96ff
    mov ax, bx                       ; 0x9703
    push ax                          ; 0x9705
    call test_bit                    ; 0x9706
    add sp, byte 4                   ; 0x9709
    test ax, ax                      ; 0x970c
    jne short .forward1              ; 0x970e
    mov ax, 0x26                     ; 0x9710
    imul word [bp + 4]               ; 0x9713
    mov bx, ax                       ; 0x9716
    mov al, byte [bx + slot_records + slot_record.destination] ; 0x9718
    sub ah, ah                       ; 0x971c
    push ax                          ; 0x971e
    mov ax, 6                        ; 0x971f
    push ax                          ; 0x9722
    mov al, byte [bx + slot_records + slot_record.destination] ; 0x9723
    sub ah, ah                       ; 0x9727
    push ax                          ; 0x9729
    push word [bp + 4]               ; 0x972a
    call log_slot_event              ; 0x972d
    add sp, byte 8                   ; 0x9730
    mov ax, 0x26                     ; 0x9733
    imul word [bp + 4]               ; 0x9736
    mov bx, ax                       ; 0x9739
    mov byte [bx + slot_records + slot_record.activity], 2 ; 0x973b
    mov byte [bx + slot_records + slot_record.map_piece], 0 ; 0x9740
    ret                              ; 0x9745
.forward1:
    push word [bp + 4]               ; 0x9746
    call retreat_slot_if_wounded     ; 0x9749
    pop cx                           ; 0x974c
    test ax, ax                      ; 0x974d
    je short .forward2               ; 0x974f
    ret                              ; 0x9751
.forward2:
    mov word [bp - 2], 0             ; 0x9752
.back1:
    push word [bp - 2]               ; 0x9757
    mov ax, 0x26                     ; 0x975a
    imul word [bp + 4]               ; 0x975d
    add ax, slot_records + slot_record.map_history ; 0x9760
    push ax                          ; 0x9763
    call test_bit                    ; 0x9764
    add sp, byte 4                   ; 0x9767
    test ax, ax                      ; 0x976a
    je short .forward5               ; 0x976c
    mov ax, word [bp - 2]            ; 0x976e
    add ax, strict word 0xc          ; 0x9771
    push ax                          ; 0x9774
    mov ax, 0x26                     ; 0x9775
    imul word [bp + 4]               ; 0x9778
    add ax, slot_records + slot_record.map_history ; 0x977b
    push ax                          ; 0x977e
    call test_bit                    ; 0x977f
    add sp, byte 4                   ; 0x9782
    test ax, ax                      ; 0x9785
    jne short .forward4              ; 0x9787
    mov ax, 6                        ; 0x9789
    imul word [bp - 2]               ; 0x978c
    mov bx, ax                       ; 0x978f
    mov al, byte [bx + quest_maps + quest_map.site_location] ; 0x9791
    sub ah, ah                       ; 0x9795
    mov word [bp - 4], ax            ; 0x9797
    push ax                          ; 0x979a
    push word [bp + 4]               ; 0x979b
    call slot_is_at_location         ; 0x979e
    add sp, byte 4                   ; 0x97a1
    test ax, ax                      ; 0x97a4
    je short .forward3               ; 0x97a6
    mov al, byte [bp - 2]            ; 0x97a8
    push ax                          ; 0x97ab
    mov ax, 0x26                     ; 0x97ac
    imul word [bp + 4]               ; 0x97af
    mov bx, ax                       ; 0x97b2
    pop ax                           ; 0x97b4
    mov byte [bx + slot_records + slot_record.target], al ; 0x97b5
    mov byte [bx + slot_records + slot_record.activity], 4 ; 0x97b9
    mov byte [bx + slot_records + slot_record.map_piece], 0 ; 0x97be
    ret                              ; 0x97c3
.forward3:
    mov al, byte [bp - 4]            ; 0x97c4
    push ax                          ; 0x97c7
    mov ax, 0x26                     ; 0x97c8
    imul word [bp + 4]               ; 0x97cb
    mov bx, ax                       ; 0x97ce
    pop ax                           ; 0x97d0
    mov byte [bx + slot_records + slot_record.destination], al ; 0x97d1
    push word [bp + 4]               ; 0x97d5
    call travel_to_destination       ; 0x97d8
    pop cx                           ; 0x97db
    ret                              ; 0x97dc
.forward4:
    jmp near .forward10              ; 0x97dd
.forward5:
    push word [bp - 2]               ; 0x97e0
    mov ax, 0x26                     ; 0x97e3
    imul word [bp + 4]               ; 0x97e6
    add ax, slot_records + slot_record.known_maps ; 0x97e9
    push ax                          ; 0x97ec
    call test_bit                    ; 0x97ed
    add sp, byte 4                   ; 0x97f0
    test ax, ax                      ; 0x97f3
    jne short .forward6              ; 0x97f5
    jmp near .forward9               ; 0x97f7
.forward6:
    mov ax, 6                        ; 0x97fa
    imul word [bp - 2]               ; 0x97fd
    mov bx, ax                       ; 0x9800
    cmp byte [bx + quest_maps + quest_map.status], 1 ; 0x9802
    jne short .forward7              ; 0x9807
    mov al, byte [bx + quest_maps]   ; 0x9809
    push ax                          ; 0x980d
    mov ax, 0x26                     ; 0x980e
    imul word [bp + 4]               ; 0x9811
    mov bx, ax                       ; 0x9814
    pop ax                           ; 0x9816
    mov byte [bx + slot_records + slot_record.destination], al ; 0x9817
    push word [bp + 4]               ; 0x981b
    call travel_to_destination       ; 0x981e
    pop cx                           ; 0x9821
    jmp near .return1                ; 0x9822
.forward7:
    mov ax, 6                        ; 0x9825
    imul word [bp - 2]               ; 0x9828
    mov bx, ax                       ; 0x982b
    cmp byte [bx + quest_maps + quest_map.status], 0 ; 0x982d
    jne short .return1               ; 0x9832
    mov al, byte [bx + quest_maps]   ; 0x9834
    sub ah, ah                       ; 0x9838
    mov cx, 0x26                     ; 0x983a
    imul cx                          ; 0x983d
    mov bx, ax                       ; 0x983f
    mov al, byte [bx + slot_records + slot_record.destination] ; 0x9841
    push ax                          ; 0x9845
    mov ax, word [bp + 4]            ; 0x9846
    imul cx                          ; 0x9849
    mov bx, ax                       ; 0x984b
    pop ax                           ; 0x984d
    mov byte [bx + slot_records + slot_record.destination], al ; 0x984e
    mov ax, 6                        ; 0x9852
    imul word [bp - 2]               ; 0x9855
    mov bx, ax                       ; 0x9858
    mov al, byte [bx + quest_maps]   ; 0x985a
    push ax                          ; 0x985e
    mov ax, word [bp + 4]            ; 0x985f
    imul cx                          ; 0x9862
    mov bx, ax                       ; 0x9864
    pop ax                           ; 0x9866
    mov byte [bx + slot_records + slot_record.target], al ; 0x9867
    push word [bp + 4]               ; 0x986b
    call travel_to_destination       ; 0x986e
    pop cx                           ; 0x9871
    mov ax, 0x26                     ; 0x9872
    imul word [bp + 4]               ; 0x9875
    mov bx, ax                       ; 0x9878
    cmp byte [bx + slot_records + slot_record.activity], 0 ; 0x987a
    jne short .forward8              ; 0x987f
    push word [bp + 4]               ; 0x9881
    call choose_random_destination   ; 0x9884
    pop cx                           ; 0x9887
    ret                              ; 0x9888
.forward8:
    mov ax, 0x26                     ; 0x9889
    imul word [bp + 4]               ; 0x988c
    mov bx, ax                       ; 0x988f
    mov byte [bx + slot_records + slot_record.activity], 5 ; 0x9891
    mov al, byte [bx + slot_records + slot_record.target] ; 0x9896
    sub ah, ah                       ; 0x989a
    push ax                          ; 0x989c
    mov ax, 0xa                      ; 0x989d
    push ax                          ; 0x98a0
    push word [bp - 2]               ; 0x98a1
    push word [bp + 4]               ; 0x98a4
    call log_slot_event              ; 0x98a7
    add sp, byte 8                   ; 0x98aa
.return1:
    ret                              ; 0x98ad
.forward9:
    push word [bp + 4]               ; 0x98ae
    call choose_random_destination   ; 0x98b1
    pop cx                           ; 0x98b4
    ret                              ; 0x98b5
.forward10:
    inc word [bp - 2]                ; 0x98b6
    mov ax, word [bp - 2]            ; 0x98b9
    cmp ax, strict word 0xb          ; 0x98bc
    jge short .forward11             ; 0x98bf
    jmp near .back1                  ; 0x98c1
.forward11:
    push word [bp + 4]               ; 0x98c4
    call choose_random_destination   ; 0x98c7
    pop cx                           ; 0x98ca
    ret                              ; 0x98cb
