; auto-generated
run_roaming_npc_turns:
    mov ax, 0xffce                   ; 0xab9b
    call aztec_csav                  ; 0xab9e
    mov ax, 0                        ; 0xaba1
    push ax                          ; 0xaba4
    mov ax, 0x1e4                    ; 0xaba5
    push ax                          ; 0xaba8
    mov ax, slot_pair_processed      ; 0xaba9
    push ax                          ; 0xabac
    call aztec_setmem                ; 0xabad
    add sp, byte 6                   ; 0xabb0
    mov ax, 0                        ; 0xabb3
    push ax                          ; 0xabb6
    mov ax, 0x2c                     ; 0xabb7
    push ax                          ; 0xabba
    lea ax, word [bp - 0x32]         ; 0xabbb
    push ax                          ; 0xabbe
    call aztec_setmem                ; 0xabbf
    add sp, byte 6                   ; 0xabc2
    mov word [bp - 4], 0             ; 0xabc5
.back1:
    mov ax, word [bp - 4]            ; 0xabca
    shl ax, 1                        ; 0xabcd
    shl ax, 1                        ; 0xabcf
    mov bx, ax                       ; 0xabd1
    mov al, byte [bx + location_records + location_record.game_state] ; 0xabd3
    cbw                              ; 0xabd7
    cmp ax, word [game_state_arg]    ; 0xabd8
    jne short .forward1              ; 0xabdc
    mov al, byte [bp - 4]            ; 0xabde
    mov byte [slot_records + slot_record_size*21 + slot_record.destination], al ; 0xabe1
    mov byte [slot_records + slot_record_size*21 + slot_record.location], al ; 0xabe4
.forward1:
    inc word [bp - 4]                ; 0xabe7
    mov ax, word [bp - 4]            ; 0xabea
    cmp ax, strict word 0x1a         ; 0xabed
    jl short .back1                  ; 0xabf0
    mov word [bp - 6], 0             ; 0xabf2
.back2:
    mov ax, 0x16                     ; 0xabf7
    push ax                          ; 0xabfa
    call random_below                ; 0xabfb
    pop cx                           ; 0xabfe
    mov word [bp - 2], ax            ; 0xabff
    mov ax, word [bp - 2]            ; 0xac02
    shl ax, 1                        ; 0xac05
    mov bx, ax                       ; 0xac07
    add bx, bp                       ; 0xac09
    cmp word [bx - 0x32], byte 0     ; 0xac0b
    jne short .back2                 ; 0xac0f
    mov ax, word [bp - 2]            ; 0xac11
    shl ax, 1                        ; 0xac14
    mov bx, ax                       ; 0xac16
    add bx, bp                       ; 0xac18
    mov word [bx - 0x32], 1          ; 0xac1a
    push word [bp - 2]               ; 0xac1f
    call dispatch_slot_action        ; 0xac22
    pop cx                           ; 0xac25
    inc word [bp - 6]                ; 0xac26
    cmp word [bp - 6], byte 0x16     ; 0xac29
    jl short .back2                  ; 0xac2d
    ret                              ; 0xac2f
