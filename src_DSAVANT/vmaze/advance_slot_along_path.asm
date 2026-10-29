; auto-generated
advance_slot_along_path:
    mov ax, 0xfffe                   ; 0xa7b2
    call aztec_csav                  ; 0xa7b5
    mov ax, 0x26                     ; 0xa7b8
    imul word [bp + 4]               ; 0xa7bb
    mov bx, ax                       ; 0xa7be
    cmp byte [bx + slot_records + slot_record.activity], 3 ; 0xa7c0
    jne short .forward1              ; 0xa7c5
    mov ax, 3                        ; 0xa7c7
    push ax                          ; 0xa7ca
    mov ax, 2                        ; 0xa7cb
    push ax                          ; 0xa7ce
    push word [bp + 4]               ; 0xa7cf
    call heal_slot_health            ; 0xa7d2
    add sp, byte 6                   ; 0xa7d5
    test ax, ax                      ; 0xa7d8
    je short .forward1               ; 0xa7da
    ret                              ; 0xa7dc
.forward1:
    mov ax, 0x26                     ; 0xa7dd
    imul word [bp + 4]               ; 0xa7e0
    mov bx, ax                       ; 0xa7e3
    cmp byte [bx + slot_records + slot_record.activity], 5 ; 0xa7e5
    je short .forward2               ; 0xa7ea
    jmp near .forward6               ; 0xa7ec
.forward2:
    cmp byte [bx + slot_records + slot_record.path_step], 0 ; 0xa7ef
    jge short .forward5              ; 0xa7f4
    mov al, byte [bx + slot_records + slot_record.target] ; 0xa7f6
    sub ah, ah                       ; 0xa7fa
    mov cx, 0x26                     ; 0xa7fc
    imul cx                          ; 0xa7ff
    mov bx, ax                       ; 0xa801
    mov al, byte [bx + slot_records + slot_record.destination] ; 0xa803
    push ax                          ; 0xa807
    mov ax, cx                       ; 0xa808
    imul word [bp + 4]               ; 0xa80a
    mov bx, ax                       ; 0xa80d
    pop ax                           ; 0xa80f
    cmp al, byte [bx + slot_records + slot_record.location] ; 0xa810
    je short .forward4               ; 0xa814
    mov byte [bx + slot_records + slot_record.destination], al ; 0xa816
    push word [bp + 4]               ; 0xa81a
    call refresh_slot_state          ; 0xa81d
    pop cx                           ; 0xa820
    mov ax, 0x26                     ; 0xa821
    imul word [bp + 4]               ; 0xa824
    mov bx, ax                       ; 0xa827
    cmp byte [bx + slot_records + slot_record.activity], 0 ; 0xa829
    jne short .forward3              ; 0xa82e
    push word [bp + 4]               ; 0xa830
    call api_idx_003a_SOVP           ; 0xa833
    pop cx                           ; 0xa836
    ret                              ; 0xa837
.forward3:
    mov ax, 0x26                     ; 0xa838
    imul word [bp + 4]               ; 0xa83b
    mov bx, ax                       ; 0xa83e
    mov byte [bx + slot_records + slot_record.activity], 5 ; 0xa840
    jmp short .forward5              ; 0xa845
.forward4:
    mov ax, 0x10                     ; 0xa847
    push ax                          ; 0xa84a
    call random_below                ; 0xa84b
    pop cx                           ; 0xa84e
    push ax                          ; 0xa84f
    mov ax, 0x26                     ; 0xa850
    imul word [bp + 4]               ; 0xa853
    mov bx, ax                       ; 0xa856
    pop ax                           ; 0xa858
    mov byte [bx + slot_records + slot_record.turn_count], al ; 0xa859
.forward5:
    mov ax, 0x26                     ; 0xa85d
    imul word [bp + 4]               ; 0xa860
    mov bx, ax                       ; 0xa863
    cmp byte [bx + slot_records + slot_record.target], 0x15 ; 0xa865
    je short .forward6               ; 0xa86a
    mov al, byte [bx + slot_records + slot_record.target] ; 0xa86c
    sub ah, ah                       ; 0xa870
    mov cx, 0x26                     ; 0xa872
    imul cx                          ; 0xa875
    mov bx, ax                       ; 0xa877
    cmp byte [bx + slot_records + slot_record.health], 0 ; 0xa879
    jg short .forward6               ; 0xa87e
    mov ax, cx                       ; 0xa880
    imul word [bp + 4]               ; 0xa882
    mov bx, ax                       ; 0xa885
    mov byte [bx + slot_records + slot_record.activity], 3 ; 0xa887
.forward6:
    mov ax, 0x26                     ; 0xa88c
    imul word [bp + 4]               ; 0xa88f
    mov bx, ax                       ; 0xa892
    cmp byte [bx + slot_records + slot_record.activity], 7 ; 0xa894
    je short .forward8               ; 0xa899
    push word [bp + 6]               ; 0xa89b
    push word [bp + 4]               ; 0xa89e
    call api_idx_0008_OMPR           ; 0xa8a1
    add sp, byte 4                   ; 0xa8a4
    mov ax, 0x26                     ; 0xa8a7
    imul word [bp + 4]               ; 0xa8aa
    mov bx, ax                       ; 0xa8ad
    mov al, byte [bx + slot_records + slot_record.activity] ; 0xa8af
    cmp al, 3                        ; 0xa8b3
    je short .forward7               ; 0xa8b5
    cmp al, 7                        ; 0xa8b7
    je short .forward7               ; 0xa8b9
    cmp al, 5                        ; 0xa8bb
    jne short .return1               ; 0xa8bd
.forward7:
    cmp byte [bx + slot_records + slot_record.health], 0 ; 0xa8bf
    jg short .forward8               ; 0xa8c4
.return1:
    ret                              ; 0xa8c6
.forward8:
    mov ax, 0x26                     ; 0xa8c7
    imul word [bp + 4]               ; 0xa8ca
    mov bx, ax                       ; 0xa8cd
    cmp byte [bx + slot_records + slot_record.path_step], 0 ; 0xa8cf
    jge short .forward9              ; 0xa8d4
    cmp byte [bx + slot_records + slot_record.activity], 5 ; 0xa8d6
    je short .return2                ; 0xa8db
    push word [bp + 4]               ; 0xa8dd
    call api_idx_003a_SOVP           ; 0xa8e0
    pop cx                           ; 0xa8e3
.return2:
    ret                              ; 0xa8e4
.forward9:
    mov ax, 0x26                     ; 0xa8e5
    imul word [bp + 4]               ; 0xa8e8
    push ax                          ; 0xa8eb
    mov ax, 0x26                     ; 0xa8ec
    imul word [bp + 4]               ; 0xa8ef
    mov bx, ax                       ; 0xa8f2
    mov al, byte [bx + slot_records + slot_record.path_step] ; 0xa8f4
    cbw                              ; 0xa8f8
    mov cx, ax                       ; 0xa8f9
    pop ax                           ; 0xa8fb
    add ax, cx                       ; 0xa8fc
    mov bx, ax                       ; 0xa8fe
    mov al, byte [bx + slot_records + slot_record.path] ; 0xa900
    sub ah, ah                       ; 0xa904
    mov word [bp - 2], ax            ; 0xa906
    mov ax, 0x26                     ; 0xa909
    imul word [bp + 4]               ; 0xa90c
    mov bx, ax                       ; 0xa90f
    inc byte [bx + slot_records + slot_record.turn_count] ; 0xa911
    mov ax, word [bp - 2]            ; 0xa915
    shl ax, 1                        ; 0xa918
    shl ax, 1                        ; 0xa91a
    mov si, ax                       ; 0xa91c
    mov al, byte [si + loaded_four_byte_records + loaded_four_byte_records_rec.f_0003] ; 0xa91e
    cmp al, byte [bx + slot_records + slot_record.turn_count] ; 0xa922
    jbe short .forward10             ; 0xa926
    jmp near .return3                ; 0xa928
.forward10:
    mov byte [bx + slot_records + slot_record.turn_count], 0 ; 0xa92b
    mov al, byte [bx + slot_records + slot_record.location] ; 0xa930
    cmp al, byte [si + loaded_four_byte_records] ; 0xa934
    jne short .forward11             ; 0xa938
    mov al, byte [si + loaded_four_byte_records + loaded_four_byte_records_rec.f_0001] ; 0xa93a
    mov byte [bx + slot_records + slot_record.location], al ; 0xa93e
    jmp short .forward12             ; 0xa942
.forward11:
    mov al, byte [bx + slot_records + slot_record.location] ; 0xa944
    cmp al, byte [si + loaded_four_byte_records + loaded_four_byte_records_rec.f_0001] ; 0xa948
    jne short .forward12             ; 0xa94c
    mov al, byte [si + loaded_four_byte_records] ; 0xa94e
    mov byte [bx + slot_records + slot_record.location], al ; 0xa952
.forward12:
    cmp byte [bx + slot_records + slot_record.activity], 7 ; 0xa956
    jne short .forward13             ; 0xa95b
    mov byte [bx + slot_records + slot_record.activity], 3 ; 0xa95d
.forward13:
    dec byte [bx + slot_records + slot_record.path_step] ; 0xa962
    jge short .return3               ; 0xa966
    cmp byte [bx + slot_records + slot_record.activity], 3 ; 0xa968
    jne short .return3               ; 0xa96d
    mov byte [bx + slot_records + slot_record.activity], 0 ; 0xa96f
    mov al, byte [bx + slot_records + slot_record.location] ; 0xa974
    cmp al, byte [bx + slot_records + slot_record.destination] ; 0xa978
    jne short .return3               ; 0xa97c
    mov byte [bx + slot_records + slot_record.activity], 2 ; 0xa97e
    mov byte [bx + slot_records + slot_record.turn_count], 0 ; 0xa983
    mov al, byte [bx + slot_records + slot_record.destination] ; 0xa988
    sub ah, ah                       ; 0xa98c
    push ax                          ; 0xa98e
    mov ax, 6                        ; 0xa98f
    push ax                          ; 0xa992
    mov al, byte [bx + slot_records + slot_record.destination] ; 0xa993
    sub ah, ah                       ; 0xa997
    push ax                          ; 0xa999
    push word [bp + 4]               ; 0xa99a
    call find_or_add_loaded_record   ; 0xa99d
    add sp, byte 8                   ; 0xa9a0
.return3:
    ret                              ; 0xa9a3
