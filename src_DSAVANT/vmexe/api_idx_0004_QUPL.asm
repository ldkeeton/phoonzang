; auto-generated
api_idx_0004_QUPL:
    mov ax, 0xfffc                   ; 0x1a5f
    call aztec_csav                  ; 0x1a62
    mov word [bss_90e4], 1           ; 0x1a65
    call flush_keyboard              ; 0x1a6b
    mov ax, word [bp + 4]            ; 0x1a6e
    cwd                              ; 0x1a71
    les bx, word [tick_counter_ptr]  ; 0x1a72
    mov cx, word [es:bx]             ; 0x1a76
    mov bx, word [es:bx + 2]         ; 0x1a79
    add ax, cx                       ; 0x1a7d
    adc dx, bx                       ; 0x1a7f
    mov word [bp - 2], dx            ; 0x1a81
    mov word [bp - 4], ax            ; 0x1a84
.back1:
    les bx, word [tick_counter_ptr]  ; 0x1a87
    mov ax, word [es:bx]             ; 0x1a8b
    mov dx, word [es:bx + 2]         ; 0x1a8e
    cmp dx, word [bp - 2]            ; 0x1a92
    jg short .forward1               ; 0x1a95
    jne short .forward2              ; 0x1a97
    cmp ax, word [bp - 4]            ; 0x1a99
    jb short .forward2               ; 0x1a9c
.forward1:
    jmp short .return1               ; 0x1a9e
.forward2:
    call poll_fullscreen_hotspot     ; 0x1aa0
    test ax, ax                      ; 0x1aa3
    je short .forward3               ; 0x1aa5
    ret                              ; 0x1aa7
.forward3:
    mov ax, 1                        ; 0x1aa8
    push ax                          ; 0x1aab
    call poll_filtered_key           ; 0x1aac
    pop cx                           ; 0x1aaf
    test ax, ax                      ; 0x1ab0
    je short .forward4               ; 0x1ab2
    mov ax, 1                        ; 0x1ab4
    push ax                          ; 0x1ab7
    call get_filtered_key            ; 0x1ab8
    pop cx                           ; 0x1abb
    cmp al, 0xd                      ; 0x1abc
    jne short .forward4              ; 0x1abe
    ret                              ; 0x1ac0
.forward4:
    call api_idx_0006_GMTP           ; 0x1ac1
    jmp short .back1                 ; 0x1ac4
.return1:
    ret                              ; 0x1ac6
