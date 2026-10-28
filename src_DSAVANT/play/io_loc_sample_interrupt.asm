; auto-generated
io_loc_sample_interrupt:
    cli                              ; 0x0870
    push ax                          ; 0x0871
    push ds                          ; 0x0872
    push dx                          ; 0x0873
    push bx                          ; 0x0874
loc_GILG:
    mov al, byte [cs:sample_position - IMAGE_BASE] ; 0x0875
    cmp al, byte [cs:sample_limit - IMAGE_BASE] ; 0x0879
    je short loc_MTMG                ; 0x087e
    inc byte [cs:sample_position - IMAGE_BASE] ; 0x0880
    mov dx, 0x389                    ; 0x0885
    mov bx, sample_count_table - IMAGE_BASE ; 0x0888
    cs xlatb                         ; 0x088b
    out dx, al                       ; 0x088d
    dec word [cs:tick_divider - IMAGE_BASE] ; 0x088e
    je short loc_GHVG                ; 0x0893
    mov al, 0x20                     ; 0x0895
    out 0x20, al                     ; 0x0897
    pop bx                           ; 0x0899
    pop dx                           ; 0x089a
    pop ds                           ; 0x089b
    pop ax                           ; 0x089c
    iret                             ; 0x089d
loc_MTMG:
    mov byte [cs:cseg_08ae - IMAGE_BASE], 0 ; 0x089e
    mov al, 0x20                     ; 0x08a4
    out 0x20, al                     ; 0x08a6
    pop bx                           ; 0x08a8
    pop dx                           ; 0x08a9
    pop ds                           ; 0x08aa
    pop ax                           ; 0x08ab
    iret                             ; 0x08ac
    db 0xb0
cseg_08ae:
    db 0x00
io_loc_sample_device_tick:
    cli                              ; 0x08af
    push ax                          ; 0x08b0
    push ds                          ; 0x08b1
    push dx                          ; 0x08b2
    push bx                          ; 0x08b3
    cmp byte [cs:cseg_08ae - IMAGE_BASE], 0 ; 0x08b4
    js short loc_GILG                ; 0x08ba
    jne short .forward2              ; 0x08bc
__zinsn_08be:
    mov ax, 0                        ; 0x08be
    mov ds, ax                       ; 0x08c1
__zinsn_08c3:
    mov al, byte [0]                 ; 0x08c3
    mov dx, 0x389                    ; 0x08c6
    mov bx, sample_count_table - IMAGE_BASE ; 0x08c9
    cs xlatb                         ; 0x08cc
    out dx, al                       ; 0x08ce
__zinsn_08cf:
    add byte [cs:sample_step_fraction - IMAGE_BASE], 0x80 ; 0x08cf
    adc word [cs:sample_stream_offset - IMAGE_BASE], byte 0 ; 0x08d5
    jb short io_loc_sample_device_tick.forward1 ; 0x08db
    dec word [cs:tick_divider - IMAGE_BASE] ; 0x08dd
    je short loc_GHVG                ; 0x08e2
    mov al, 0x20                     ; 0x08e4
    out 0x20, al                     ; 0x08e6
    pop bx                           ; 0x08e8
    pop dx                           ; 0x08e9
    pop ds                           ; 0x08ea
    pop ax                           ; 0x08eb
    iret                             ; 0x08ec
loc_GHVG:
    call music_player_tick           ; 0x08ed
    mov dx, 0x388                    ; 0x08f0
    mov al, 0x40                     ; 0x08f3
    out dx, al                       ; 0x08f5
    mov al, 0x20                     ; 0x08f6
    out 0x20, al                     ; 0x08f8
    pop bx                           ; 0x08fa
    pop dx                           ; 0x08fb
    pop ds                           ; 0x08fc
    pop ax                           ; 0x08fd
    iret                             ; 0x08fe
io_loc_sample_device_tick.forward1:
    mov bx, word [cs:sample_stream_offset - IMAGE_BASE] ; 0x08ff
    dec bx                           ; 0x0904
    mov al, byte [bx]                ; 0x0905
    mov byte [cs:sample_position - IMAGE_BASE], al ; 0x0907
    mov byte [cs:cseg_08ae - IMAGE_BASE], 1 ; 0x090b
    mov al, 0x20                     ; 0x0911
    out 0x20, al                     ; 0x0913
    pop bx                           ; 0x0915
    pop dx                           ; 0x0916
    pop ds                           ; 0x0917
    pop ax                           ; 0x0918
    iret                             ; 0x0919
    db 0xfa, 0x50, 0x1e, 0x52, 0x53
io_loc_sample_device_tick.forward2:
    mov al, byte [cs:sample_position - IMAGE_BASE] ; 0x091f
    cmp al, 0                        ; 0x0923
    je short io_loc_sample_device_tick.forward3 ; 0x0925
    dec byte [cs:sample_position - IMAGE_BASE] ; 0x0927
    mov dx, 0x389                    ; 0x092c
    mov bx, sample_count_table - IMAGE_BASE ; 0x092f
    cs xlatb                         ; 0x0932
    out dx, al                       ; 0x0934
    dec word [cs:tick_divider - IMAGE_BASE] ; 0x0935
    je short loc_GHVG                ; 0x093a
    mov al, 0x20                     ; 0x093c
    out 0x20, al                     ; 0x093e
    pop bx                           ; 0x0940
    pop dx                           ; 0x0941
    pop ds                           ; 0x0942
    pop ax                           ; 0x0943
    iret                             ; 0x0944
io_loc_sample_device_tick.forward3:
    mov byte [cs:sample_position - IMAGE_BASE], 0 ; 0x0945
    mov al, 0x3f                     ; 0x094b
    mov dx, 0x388                    ; 0x094d
    out dx, al                       ; 0x0950
    call sound_stop_and_restore_timer ; 0x0951
    mov al, 0x20                     ; 0x0954
    out 0x20, al                     ; 0x0956
    pop bx                           ; 0x0958
    pop dx                           ; 0x0959
    pop ds                           ; 0x095a
    pop ax                           ; 0x095b
    iret                             ; 0x095c
io_loc_port_sample_tick.back1:
    call music_player_tick           ; 0x095d
    mov al, 0x20                     ; 0x0960
    out 0x20, al                     ; 0x0962
    pop bx                           ; 0x0964
    pop dx                           ; 0x0965
    pop ds                           ; 0x0966
    pop ax                           ; 0x0967
    iret                             ; 0x0968
io_loc_port_sample_tick.back2:
    call sound_stop_and_restore_timer ; 0x0969
    mov al, 0x20                     ; 0x096c
    out 0x20, al                     ; 0x096e
    pop bx                           ; 0x0970
    pop dx                           ; 0x0971
    pop ds                           ; 0x0972
    pop ax                           ; 0x0973
    iret                             ; 0x0974
sample_fraction_tick:
    mov al, byte [di]                ; 0x0975
    cs xlatb                         ; 0x0977
    out dx, al                       ; 0x0979
__zinsn_097a:
    add ah, 0x80                     ; 0x097a
    adc di, byte 0                   ; 0x097d
    jb short sample_fraction_tick.forward2 ; 0x0980
    dec si                           ; 0x0982
    je short sample_fraction_tick.forward1 ; 0x0983
    mov al, 0x20                     ; 0x0985
    out 0x20, al                     ; 0x0987
    iret                             ; 0x0989
sample_fraction_tick.forward1:
    call music_player_tick           ; 0x098a
    mov si, word [cs:tick_divider - IMAGE_BASE] ; 0x098d
    mov al, 0x20                     ; 0x0992
    out 0x20, al                     ; 0x0994
    iret                             ; 0x0996
sample_fraction_tick.forward2:
    call sound_stop_and_restore_timer ; 0x0997
    mov al, 0x20                     ; 0x099a
    out 0x20, al                     ; 0x099c
    iret                             ; 0x099e
io_loc_port_sample_tick:
    push ax                          ; 0x099f
    push ds                          ; 0x09a0
    push dx                          ; 0x09a1
    push bx                          ; 0x09a2
__zinsn_09a3:
    mov ax, 0                        ; 0x09a3
    mov ds, ax                       ; 0x09a6
__zinsn_09a8:
    mov al, byte [0]                 ; 0x09a8
    mov dx, word [cs:sample_output_port - IMAGE_BASE] ; 0x09ab
    mov bx, sample_count_table - IMAGE_BASE ; 0x09b0
    cs xlatb                         ; 0x09b3
    out dx, al                       ; 0x09b5
__zinsn_09b6:
    add byte [cs:sample_step_fraction - IMAGE_BASE], 0x80 ; 0x09b6
    adc word [cs:sample_stream_offset_alt - IMAGE_BASE], byte 0 ; 0x09bc
    jb short io_loc_port_sample_tick.back2 ; 0x09c2
    dec word [cs:tick_divider - IMAGE_BASE] ; 0x09c4
    je short io_loc_port_sample_tick.back1 ; 0x09c9
    mov al, 0x20                     ; 0x09cb
    out 0x20, al                     ; 0x09cd
    pop bx                           ; 0x09cf
    pop dx                           ; 0x09d0
    pop ds                           ; 0x09d1
    pop ax                           ; 0x09d2
    iret                             ; 0x09d3
