; auto-generated
pit_sample_interrupt:
    push ax                          ; 0x18e4
    push ds                          ; 0x18e5
    push bx                          ; 0x18e6
__zinsn_18e7:
    mov ax, 0                        ; 0x18e7
    mov ds, ax                       ; 0x18ea
    mov ax, 0x20b0                   ; 0x18ec
    out 0x43, al                     ; 0x18ef
__zinsn_18f1:
    mov al, byte [0x0000]            ; 0x18f1
    mov bx, sample_count_table - IMAGE_BASE ; 0x18f4
    cs xlatb                         ; 0x18f7
    out 0x42, al                     ; 0x18f9
    xor al, al                       ; 0x18fb
    out 0x42, al                     ; 0x18fd
__zinsn_18ff:
    add byte [cs:sample_step_fraction - IMAGE_BASE], 0x80 ; 0x18ff
    adc word [cs:pit_sample_interrupt + 0xe - IMAGE_BASE], byte 0 ; 0x1905
    jb short @..pit_sample_interrupt.l2 ; 0x190b
    dec word [cs:tick_divider - IMAGE_BASE] ; 0x190d
    je short @..pit_sample_interrupt.l1 ; 0x1912
    mov al, ah                       ; 0x1914
    out 0x20, al                     ; 0x1916
    pop bx                           ; 0x1918
    pop ds                           ; 0x1919
    pop ax                           ; 0x191a
    iret                             ; 0x191b
@..pit_sample_interrupt.l1:
    mov al, ah                       ; 0x191c
    out 0x20, al                     ; 0x191e
    pop bx                           ; 0x1920
    pop ds                           ; 0x1921
    pop ax                           ; 0x1922
    sti                              ; 0x1923
    call music_player_tick           ; 0x1924
    iret                             ; 0x1927
@..pit_sample_interrupt.l2:
    call sound_stop_and_restore_timer ; 0x1928
    mov al, byte [cs:saved_pic_mask - IMAGE_BASE] ; 0x192b
    out 0x21, al                     ; 0x192f
    mov al, 0x20                     ; 0x1931
    out 0x20, al                     ; 0x1933
    pop bx                           ; 0x1935
    pop ds                           ; 0x1936
    pop ax                           ; 0x1937
    iret                             ; 0x1938
