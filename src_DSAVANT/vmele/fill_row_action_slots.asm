; auto-generated
fill_row_action_slots:
    mov ax, 0xfff4                   ; 0x29c5
    call aztec_csav                  ; 0x29c8
    mov word [bp - 2], 0             ; 0x29cb
    jmp near .forward13              ; 0x29d0
.back1:
    mov word [bp - 6], 0             ; 0x29d3
.back2:
    mov ax, 6                        ; 0x29d8
    imul word [bp - 2]               ; 0x29db
    mov cx, word [bp - 6]            ; 0x29de
    shl cx, 1                        ; 0x29e1
    add ax, cx                       ; 0x29e3
    mov bx, ax                       ; 0x29e5
    mov word [bx + cell_action_marks], 0 ; 0x29e7
    mov bx, cx                       ; 0x29ed
    add bx, bp                       ; 0x29ef
    mov word [bx - 0xc], 0           ; 0x29f1
    inc word [bp - 6]                ; 0x29f6
    mov ax, word [bp - 6]            ; 0x29f9
    cmp ax, strict word 3            ; 0x29fc
    jl short .back2                  ; 0x29ff
    mov word [bp - 6], 0             ; 0x2a01
.back3:
    mov ax, 3                        ; 0x2a06
    push ax                          ; 0x2a09
    call random_below                ; 0x2a0a
    pop cx                           ; 0x2a0d
    mov word [bp - 4], ax            ; 0x2a0e
    mov ax, word [bp - 4]            ; 0x2a11
    shl ax, 1                        ; 0x2a14
    mov bx, ax                       ; 0x2a16
    add bx, bp                       ; 0x2a18
    cmp word [bx - 0xc], byte 1      ; 0x2a1a
    je short .back3                  ; 0x2a1e
    cmp word [bp - 0xc], byte 0      ; 0x2a20
    jne short .forward2              ; 0x2a24
    cmp word [npc_melee], byte 1     ; 0x2a26
    je short .forward1               ; 0x2a2b
    cmp word [bp - 2], byte 0        ; 0x2a2d
    jne short .forward2              ; 0x2a31
.forward1:
    mov word [bp - 4], 0             ; 0x2a33
.forward2:
    mov ax, word [bp - 4]            ; 0x2a38
    shl ax, 1                        ; 0x2a3b
    mov bx, ax                       ; 0x2a3d
    add bx, bp                       ; 0x2a3f
    mov word [bx - 0xc], 1           ; 0x2a41
    mov ax, 6                        ; 0x2a46
    imul word [bp - 2]               ; 0x2a49
    mov cx, ax                       ; 0x2a4c
    mov ax, word [bp - 4]            ; 0x2a4e
    shl ax, 1                        ; 0x2a51
    add cx, ax                       ; 0x2a53
    mov bx, cx                       ; 0x2a55
    cmp word [bx + cell_slot_ref], byte 0 ; 0x2a57
    je short .forward3               ; 0x2a5c
    jmp near .forward11              ; 0x2a5e
.forward3:
    mov ax, word [bp - 2]            ; 0x2a61
    jmp near .forward9               ; 0x2a64
.back4:
    push word [bp - 4]               ; 0x2a67
    push word [bp - 2]               ; 0x2a6a
    mov ax, 1                        ; 0x2a6d
    push ax                          ; 0x2a70
    call claim_cell_for_member       ; 0x2a71
    add sp, byte 6                   ; 0x2a74
    jmp near .forward11              ; 0x2a77
.back5:
    cmp word [party_member_count], byte 1 ; 0x2a7a
    jne short .forward4              ; 0x2a7f
    push word [bp - 4]               ; 0x2a81
    push word [bp - 2]               ; 0x2a84
    mov ax, 1                        ; 0x2a87
    push ax                          ; 0x2a8a
    call claim_cell_for_member       ; 0x2a8b
    add sp, byte 6                   ; 0x2a8e
    jmp short .forward5              ; 0x2a91
.forward4:
    push word [bp - 4]               ; 0x2a93
    push word [bp - 2]               ; 0x2a96
    mov ax, 2                        ; 0x2a99
    push ax                          ; 0x2a9c
    call claim_cell_for_member       ; 0x2a9d
    add sp, byte 6                   ; 0x2aa0
.forward5:
    jmp short .forward11             ; 0x2aa3
.back6:
    cmp word [party_member_count], byte 1 ; 0x2aa5
    jne short .forward6              ; 0x2aaa
    push word [bp - 4]               ; 0x2aac
    push word [bp - 2]               ; 0x2aaf
    mov ax, 1                        ; 0x2ab2
    push ax                          ; 0x2ab5
    call claim_cell_for_member       ; 0x2ab6
    add sp, byte 6                   ; 0x2ab9
    jmp short .forward8              ; 0x2abc
.forward6:
    cmp word [party_member_count], byte 2 ; 0x2abe
    jne short .forward7              ; 0x2ac3
    push word [bp - 4]               ; 0x2ac5
    push word [bp - 2]               ; 0x2ac8
    mov ax, 2                        ; 0x2acb
    push ax                          ; 0x2ace
    call claim_cell_for_member       ; 0x2acf
    add sp, byte 6                   ; 0x2ad2
    jmp short .forward8              ; 0x2ad5
.forward7:
    push word [bp - 4]               ; 0x2ad7
    push word [bp - 2]               ; 0x2ada
    mov ax, 3                        ; 0x2add
    push ax                          ; 0x2ae0
    call claim_cell_for_member       ; 0x2ae1
    add sp, byte 6                   ; 0x2ae4
.forward8:
    jmp short .forward11             ; 0x2ae7
.forward9:
    cmp ax, strict word 0            ; 0x2ae9
    jne short .forward10             ; 0x2aec
    jmp near .back4                  ; 0x2aee
.forward10:
    cmp ax, strict word 1            ; 0x2af1
    je short .back5                  ; 0x2af4
    cmp ax, strict word 2            ; 0x2af6
    je short .back6                  ; 0x2af9
.forward11:
    inc word [bp - 6]                ; 0x2afb
    mov ax, word [bp - 6]            ; 0x2afe
    cmp ax, strict word 3            ; 0x2b01
    jge short .forward12             ; 0x2b04
    jmp near .back3                  ; 0x2b06
.forward12:
    inc word [bp - 2]                ; 0x2b09
.forward13:
    mov ax, word [bp - 2]            ; 0x2b0c
    cmp ax, word [row_limit]         ; 0x2b0f
    jg short .return1                ; 0x2b13
    jmp near .back1                  ; 0x2b15
.return1:
    ret                              ; 0x2b18
