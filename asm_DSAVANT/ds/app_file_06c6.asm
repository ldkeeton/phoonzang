app_file_06c6: ; Aztec csav frame=0x0002
    mov ax, 0xfffe                   ; 0x06c6
    call aztec_csav                  ; 0x06c9
    mov word [bp - 0x0002], 0        ; 0x06cc
@..app_file_06c6.l1:
    mov ax, word [bp - 0x0002]       ; 0x06d1
    shl ax, 1                        ; 0x06d4
    mov bx, ax                       ; 0x06d6
    mov ax, word [bx + 0x3e0a]       ; 0x06d8
    cmp ax, word [bp + 0x4]          ; 0x06dc
    jne short @..app_file_06c6.l2    ; 0x06df
    mov ax, 0x400                    ; 0x06e1
    push ax                          ; 0x06e4
    mov ax, 0x3e12                   ; 0x06e5
    push ax                          ; 0x06e8
    mov ax, word [bp - 0x0002]       ; 0x06e9
    mov cx, 0xa                      ; 0x06ec
    shl ax, cl                       ; 0x06ef
    add ax, 0x4212                   ; 0x06f1
    push ax                          ; 0x06f4
    call aztec_movmem                ; 0x06f5
    add sp, byte 6                   ; 0x06f8
    mov ax, word [bp + 0x4]          ; 0x06fb
    mov word [data_5212], ax         ; 0x06fe
    ret                              ; 0x0701
@..app_file_06c6.l2:
    inc word [bp - 0x0002]           ; 0x0702
    mov ax, word [bp - 0x0002]       ; 0x0705
    cmp ax, strict word 4            ; 0x0708
    jl short @..app_file_06c6.l1     ; 0x070b
    mov ax, 0                        ; 0x070d
    push ax                          ; 0x0710
    call loc_415b                    ; 0x0711
    pop cx                           ; 0x0714
    mov ax, 0                        ; 0x0715
    push ax                          ; 0x0718
    mov ax, word [bp + 0x4]          ; 0x0719
    cwd                              ; 0x071c
    mov cx, 0xa                      ; 0x071d
@..app_file_06c6.l3:
    shl ax, 1                        ; 0x0720
    rcl dx, 1                        ; 0x0722
    loop @..app_file_06c6.l3         ; 0x0724
    push dx                          ; 0x0726
    push ax                          ; 0x0727
    push word [data_0e24]            ; 0x0728
    call aztec_lseek                 ; 0x072c
    add sp, byte 8                   ; 0x072f
    mov ax, 0x400                    ; 0x0732
    push ax                          ; 0x0735
    mov ax, 0x3e12                   ; 0x0736
    push ax                          ; 0x0739
    push word [data_0e24]            ; 0x073a
    call leaf_loc_4fb6               ; 0x073e
    add sp, byte 6                   ; 0x0741
    mov ax, word [bp + 0x4]          ; 0x0744
    mov word [data_5212], ax         ; 0x0747
    mov ax, 0x400                    ; 0x074a
    push ax                          ; 0x074d
    mov ax, word [data_5214]         ; 0x074e
    mov cx, 0xa                      ; 0x0751
    shl ax, cl                       ; 0x0754
    add ax, 0x4212                   ; 0x0756
    push ax                          ; 0x0759
    mov ax, 0x3e12                   ; 0x075a
    push ax                          ; 0x075d
    call aztec_movmem                ; 0x075e
    add sp, byte 6                   ; 0x0761
    mov ax, word [bp + 0x4]          ; 0x0764
    mov cx, word [data_5214]         ; 0x0767
    shl cx, 1                        ; 0x076b
    mov bx, cx                       ; 0x076d
    mov word [bx + 0x3e0a], ax       ; 0x076f
    mov ax, word [data_5214]         ; 0x0773
    inc ax                           ; 0x0776
    mov cx, 4                        ; 0x0777
    cwd                              ; 0x077a
    idiv cx                          ; 0x077b
    mov word [data_5214], dx         ; 0x077d
    ret                              ; 0x0781
