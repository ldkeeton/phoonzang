; auto-generated
play_sound_effect: ; Aztec csav frame=0x0006
    mov ax, 0xfffa                   ; 0x0a27
    call aztec_csav                  ; 0x0a2a
    mov ax, 0xc                      ; 0x0a2d
    imul word [bp + 0x4]             ; 0x0a30
    mov bx, ax                       ; 0x0a33
    mov al, byte [bx + 0x5580]       ; 0x0a35
    sub ah, ah                       ; 0x0a39
    mov word [bp - 0x0004], ax       ; 0x0a3b
    mov ax, word [bp + 0x4]          ; 0x0a3e
    mov word [bp - 0x0002], ax       ; 0x0a41
    cmp word [bx + 0x557c], byte 0   ; 0x0a44
    jne short @..play_sound_effect.l1 ; 0x0a49
    cmp word [bx + 0x557a], byte 0   ; 0x0a4b
@..play_sound_effect.l1:
    jne short @..play_sound_effect.l2 ; 0x0a50
    mov ax, word [bx + sound_slot_info] ; 0x0a52
    mov word [bp - 0x0002], ax       ; 0x0a56
@..play_sound_effect.l2:
    cmp byte [bss_5984], 0           ; 0x0a59
    jbe short @..play_sound_effect.l3 ; 0x0a5e
    mov ax, word [bp - 0x0004]       ; 0x0a60
    shl ax, 1                        ; 0x0a63
    mov word [bp - 0x0004], ax       ; 0x0a65
    cmp ax, 0xff                     ; 0x0a68
    jle short @..play_sound_effect.l3 ; 0x0a6b
    mov word [bp - 0x0004], 0xff     ; 0x0a6d
@..play_sound_effect.l3:
    mov word [bp - 0x0006], 0        ; 0x0a72
    cmp word [bp + 0x4], byte 0x10   ; 0x0a77
    jne short @..play_sound_effect.l4 ; 0x0a7b
    cmp word [loaded_sound_id], byte 0x1e ; 0x0a7d
    jl short @..play_sound_effect.l4 ; 0x0a82
    mov word [bp - 0x0006], 1        ; 0x0a84
    jmp short @..play_sound_effect.l6 ; 0x0a89
@..play_sound_effect.l4:
    mov ax, word [bp + 0x4]          ; 0x0a8b
    cmp ax, strict word 0xe          ; 0x0a8e
    je short @..play_sound_effect.l5 ; 0x0a91
    cmp ax, strict word 0xf          ; 0x0a93
    jne short @..play_sound_effect.l6 ; 0x0a96
@..play_sound_effect.l5:
    mov word [bp - 0x0006], 2        ; 0x0a98
@..play_sound_effect.l6:
    mov bx, word [bp - 0x0006]       ; 0x0a9d
    mov al, byte [bx + bss_597c]     ; 0x0aa0
    sub ah, ah                       ; 0x0aa4
    imul word [bp - 0x0004]          ; 0x0aa6
    mov cx, 0xa                      ; 0x0aa9
    cwd                              ; 0x0aac
    idiv cx                          ; 0x0aad
    mov word [bp - 0x0004], ax       ; 0x0aaf
    cmp ax, strict word 0            ; 0x0ab2
    jle short @..play_sound_effect.l7 ; 0x0ab5
    mov ax, 0xc                      ; 0x0ab7
    imul word [bp + 0x4]             ; 0x0aba
    mov bx, ax                       ; 0x0abd
    mov al, byte [bx + 0x5581]       ; 0x0abf
    sub ah, ah                       ; 0x0ac3
    push ax                          ; 0x0ac5
    push word [bp - 0x0004]          ; 0x0ac6
    push word [bx + 0x557e]          ; 0x0ac9
    push word [bp - 0x0002]          ; 0x0acd
    call gfx_play_sound              ; 0x0ad0
    add sp, byte 8                   ; 0x0ad3
@..play_sound_effect.l7:
    ret                              ; 0x0ad6
