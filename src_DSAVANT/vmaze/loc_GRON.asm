; auto-generated
loc_GRON:
    mov ax, 0                        ; 0x6ac7
    call aztec_csav                  ; 0x6aca
    cmp word [bp + 4], byte 0        ; 0x6acd
    jle short @..loc_GRON.l3         ; 0x6ad1
    mov ax, word [bp + 4]            ; 0x6ad3
    cmp ax, strict word 5            ; 0x6ad6
    jl short @..loc_GRON.l1          ; 0x6ad9
    cmp ax, strict word 8            ; 0x6adb
    je short @..loc_GRON.l1          ; 0x6ade
    cmp ax, strict word 9            ; 0x6ae0
    jne short @..loc_GRON.l2         ; 0x6ae3
@..loc_GRON.l1:
    push ax                          ; 0x6ae5
    call play_sound_effect           ; 0x6ae6
    pop cx                           ; 0x6ae9
    jmp short @..loc_GRON.l3         ; 0x6aea
@..loc_GRON.l2:
    push word [bp + 4]               ; 0x6aec
    call ensure_sound_loaded         ; 0x6aef
    pop cx                           ; 0x6af2
    mov ax, 0x10                     ; 0x6af3
    push ax                          ; 0x6af6
    call play_sound_effect           ; 0x6af7
    pop cx                           ; 0x6afa
    mov ax, 0x10                     ; 0x6afb
    push ax                          ; 0x6afe
    call wait_and_free_sound         ; 0x6aff
    pop cx                           ; 0x6b02
    mov word [loaded_sound_id], 0xffff ; 0x6b03
@..loc_GRON.l3:
    ret                              ; 0x6b09
