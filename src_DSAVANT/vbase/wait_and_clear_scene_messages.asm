; auto-generated
wait_and_clear_scene_messages:
    mov ax, 0xfffc                   ; 0x6cd0
    call aztec_csav                  ; 0x6cd3
    call loc_QSOL                    ; 0x6cd6
    les bx, word [tick_counter_ptr]  ; 0x6cd9
    mov ax, word [es:bx]             ; 0x6cdd
    mov dx, word [es:bx + 2]         ; 0x6ce0
    add ax, 0x10e                    ; 0x6ce4
    adc dx, byte 0                   ; 0x6ce7
    mov word [bp - 2], dx            ; 0x6cea
    mov word [bp - 4], ax            ; 0x6ced
.back1:
    call poll_fullscreen_hotspot     ; 0x6cf0
    test ax, ax                      ; 0x6cf3
    jne short .forward3              ; 0x6cf5
    les bx, word [tick_counter_ptr]  ; 0x6cf7
    mov ax, word [es:bx]             ; 0x6cfb
    mov dx, word [es:bx + 2]         ; 0x6cfe
    cmp dx, word [bp - 2]            ; 0x6d02
    jg short .forward1               ; 0x6d05
    jne short .forward2              ; 0x6d07
    cmp ax, word [bp - 4]            ; 0x6d09
    jb short .forward2               ; 0x6d0c
.forward1:
    jmp short .forward3              ; 0x6d0e
.forward2:
    call loc_TJHG                    ; 0x6d10
    jmp short .back1                 ; 0x6d13
.forward3:
    call clear_scene_message_area    ; 0x6d15
    mov word [scene_message_row], 0  ; 0x6d18
    ret                              ; 0x6d1e
