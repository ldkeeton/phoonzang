; auto-generated
ds_app_file_TSNH: ; Aztec csav frame=0x0018
    mov ax, 0xffe8                   ; 0x2863
    call aztec_csav                  ; 0x2866
    mov ax, 0                        ; 0x2869
    push ax                          ; 0x286c
    call gfx_wait_sound              ; 0x286d
    pop cx                           ; 0x2870
    mov bx, word [bp + 0x6]          ; 0x2871
    mov al, byte [bx + 0x5b48]       ; 0x2874
    sub ah, ah                       ; 0x2878
    cmp ax, word [bp + 0x4]          ; 0x287a
    jne short @..ds_app_file_TSNH.l1 ; 0x287d
    jmp near @..ds_app_file_TSNH.l3  ; 0x287f
@..ds_app_file_TSNH.l1:
    mov ax, 0                        ; 0x2882
    push ax                          ; 0x2885
    push word [bp + 0x4]             ; 0x2886
    mov ax, 0x15e                    ; 0x2889
    imul bx                          ; 0x288c
    add ax, slot_rec_first           ; 0x288e
    push ax                          ; 0x2891
    mov ax, 8                        ; 0x2892
    push ax                          ; 0x2895
    call data_record_io              ; 0x2896
    add sp, byte 8                   ; 0x2899
    mov ax, dseg_0bcd                ; 0x289c
    push ax                          ; 0x289f
    lea ax, word [bp - 0x0018]       ; 0x28a0
    push ax                          ; 0x28a3
    call aztec_strcpy                ; 0x28a4
    add sp, byte 4                   ; 0x28a7
    mov ax, word [bp + 0x4]          ; 0x28aa
    mov cx, 0xa                      ; 0x28ad
    cwd                              ; 0x28b0
    idiv cx                          ; 0x28b1
    add ax, strict word 0x30         ; 0x28b3
    mov byte [bp - 0x0015], al       ; 0x28b6
    add dx, byte 0x30                ; 0x28b9
    mov ax, dx                       ; 0x28bc
    mov byte [bp - 0x0014], al       ; 0x28be
    mov ax, 0                        ; 0x28c1
    push ax                          ; 0x28c4
    mov ax, 1                        ; 0x28c5
    push ax                          ; 0x28c8
    lea ax, word [bp - 0x0018]       ; 0x28c9
    push ax                          ; 0x28cc
    call data_file_path              ; 0x28cd
    add sp, byte 4                   ; 0x28d0
    push ax                          ; 0x28d3
    call aztec_open                  ; 0x28d4
    add sp, byte 4                   ; 0x28d7
    mov word [bp - 0x0004], ax       ; 0x28da
    cmp ax, strict word 0xffff       ; 0x28dd
    jne short @..ds_app_file_TSNH.l2 ; 0x28e0
    mov ax, 0x12                     ; 0x28e2
    push ax                          ; 0x28e5
    call release_and_exit            ; 0x28e6
    pop cx                           ; 0x28e9
@..ds_app_file_TSNH.l2:
    push word [bp + 0x6]             ; 0x28ea
    push word [bp - 0x0004]          ; 0x28ed
    call gfx_load_picture            ; 0x28f0
    add sp, byte 4                   ; 0x28f3
    push word [bp - 0x0004]          ; 0x28f6
    call aztec_close                 ; 0x28f9
    pop cx                           ; 0x28fc
    mov al, byte [bp + 0x4]          ; 0x28fd
    mov bx, word [bp + 0x6]          ; 0x2900
    mov byte [bx + 0x5b48], al       ; 0x2903
    mov byte [bx + 0x5b5a], 1        ; 0x2907
@..ds_app_file_TSNH.l3:
    ret                              ; 0x290c
