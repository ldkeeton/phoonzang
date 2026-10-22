; auto-generated
api_idx_000c_NRPK:
    mov ax, 0xfff4                   ; 0x7911
    call aztec_csav                  ; 0x7914
    mov ax, 0xc                      ; 0x7917
    imul word [bp + 0x4]             ; 0x791a
    mov si, ax                       ; 0x791d
    add ax, sound_slot_info          ; 0x791f
    mov si, ax                       ; 0x7922
    lea di, word [bp - 0x000c]       ; 0x7924
    mov cx, ds                       ; 0x7927
    mov es, cx                       ; 0x7929
    mov cx, 6                        ; 0x792b
    rep movsw                        ; 0x792e
    mov ax, word [bp + 0x6]          ; 0x7930
    push ax                          ; 0x7933
    mov ax, 0xc                      ; 0x7934
    imul word [bp + 0x4]             ; 0x7937
    mov bx, ax                       ; 0x793a
    pop ax                           ; 0x793c
    add word [bx + 0x557e], ax       ; 0x793d
    push word [bp + 0x4]             ; 0x7941
    call play_sound_effect           ; 0x7944
    pop cx                           ; 0x7947
    lea si, word [bp - 0x000c]       ; 0x7948
    mov ax, 0xc                      ; 0x794b
    imul word [bp + 0x4]             ; 0x794e
    mov di, ax                       ; 0x7951
    add ax, sound_slot_info          ; 0x7953
    mov di, ax                       ; 0x7956
    mov cx, ds                       ; 0x7958
    mov es, cx                       ; 0x795a
    mov cx, 6                        ; 0x795c
    rep movsw                        ; 0x795f
    ret                              ; 0x7961
