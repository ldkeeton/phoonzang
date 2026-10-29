; auto-generated
play_sound_effect:
    mov ax, 0xfffa                   ; 0x0a27
    call aztec_csav                  ; 0x0a2a
    mov ax, 0xc                      ; 0x0a2d
    imul word [bp + 4]               ; 0x0a30
    mov bx, ax                       ; 0x0a33
    mov al, byte [bx + sound_slot_info + sound_slot_info_rec.f_000a] ; 0x0a35
    sub ah, ah                       ; 0x0a39
    mov word [bp - 4], ax            ; 0x0a3b
    mov ax, word [bp + 4]            ; 0x0a3e
    mov word [bp - 2], ax            ; 0x0a41
    cmp word [bx + sound_slot_info + sound_slot_info_rec.f_0006], byte 0 ; 0x0a44
    jne short .forward1              ; 0x0a49
    cmp word [bx + sound_slot_info + sound_slot_info_rec.pad_0000 + 0x4], byte 0 ; 0x0a4b
.forward1:
    jne short .forward2              ; 0x0a50
    mov ax, word [bx + sound_slot_info] ; 0x0a52
    mov word [bp - 2], ax            ; 0x0a56
.forward2:
    cmp byte [sound_device_setting], 0 ; 0x0a59
    jbe short .forward3              ; 0x0a5e
    mov ax, word [bp - 4]            ; 0x0a60
    shl ax, 1                        ; 0x0a63
    mov word [bp - 4], ax            ; 0x0a65
    cmp ax, 0xff                     ; 0x0a68
    jle short .forward3              ; 0x0a6b
    mov word [bp - 4], 0xff          ; 0x0a6d
.forward3:
    mov word [bp - 6], 0             ; 0x0a72
    cmp word [bp + 4], byte 0x10     ; 0x0a77
    jne short .forward4              ; 0x0a7b
    cmp word [loaded_sound_id], byte 0x1e ; 0x0a7d
    jl short .forward4               ; 0x0a82
    mov word [bp - 6], 1             ; 0x0a84
    jmp short .forward6              ; 0x0a89
.forward4:
    mov ax, word [bp + 4]            ; 0x0a8b
    cmp ax, strict word 0xe          ; 0x0a8e
    je short .forward5               ; 0x0a91
    cmp ax, strict word 0xf          ; 0x0a93
    jne short .forward6              ; 0x0a96
.forward5:
    mov word [bp - 6], 2             ; 0x0a98
.forward6:
    mov bx, word [bp - 6]            ; 0x0a9d
    mov al, byte [bx + bss_597c]     ; 0x0aa0
    sub ah, ah                       ; 0x0aa4
    imul word [bp - 4]               ; 0x0aa6
    mov cx, 0xa                      ; 0x0aa9
    cwd                              ; 0x0aac
    idiv cx                          ; 0x0aad
    mov word [bp - 4], ax            ; 0x0aaf
    cmp ax, strict word 0            ; 0x0ab2
    jle short .return1               ; 0x0ab5
    mov ax, 0xc                      ; 0x0ab7
    imul word [bp + 4]               ; 0x0aba
    mov bx, ax                       ; 0x0abd
    mov al, byte [bx + sound_slot_info + sound_slot_info_rec.f_000b] ; 0x0abf
    sub ah, ah                       ; 0x0ac3
    push ax                          ; 0x0ac5
    push word [bp - 4]               ; 0x0ac6
    push word [bx + sound_slot_info + sound_slot_info_rec.f_0008] ; 0x0ac9
    push word [bp - 2]               ; 0x0acd
    call call_play_sound             ; 0x0ad0
    add sp, byte 8                   ; 0x0ad3
.return1:
    ret                              ; 0x0ad6
