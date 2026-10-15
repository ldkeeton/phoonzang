; auto-generated
loc_OOOS:
    mov ax, 0                        ; 0x46b8
    call aztec_csav                  ; 0x46bb
    mov ax, 1                        ; 0x46be
    push ax                          ; 0x46c1
    mov ax, word [bp + 0x8]          ; 0x46c2
    add ax, strict word 6            ; 0x46c5
    push ax                          ; 0x46c8
    mov ax, word [bp + 0x6]          ; 0x46c9
    add ax, strict word 0xe          ; 0x46cc
    push ax                          ; 0x46cf
    push word [bp + 0x8]             ; 0x46d0
    push word [bp + 0x6]             ; 0x46d3
    call thunk_7                     ; 0x46d6
    add sp, byte 0x0a                ; 0x46d9
    mov ax, word [bp + 0x8]          ; 0x46dc
    inc ax                           ; 0x46df
    push ax                          ; 0x46e0
    mov ax, word [bp + 0x6]          ; 0x46e1
    inc ax                           ; 0x46e4
    inc ax                           ; 0x46e5
    push ax                          ; 0x46e6
    call thunk                       ; 0x46e7
    add sp, byte 4                   ; 0x46ea
    mov ax, 1                        ; 0x46ed
    push ax                          ; 0x46f0
    mov ax, 0                        ; 0x46f1
    push ax                          ; 0x46f4
    call thunk_3                     ; 0x46f5
    add sp, byte 4                   ; 0x46f8
    mov ax, 0                        ; 0x46fb
    push ax                          ; 0x46fe
    mov ax, 2                        ; 0x46ff
    push ax                          ; 0x4702
    push word [bp + 0x4]             ; 0x4703
    call ds_app_SHMQ                 ; 0x4706
    add sp, byte 6                   ; 0x4709
    mov ax, word [bp + 0x8]          ; 0x470c
    add ax, strict word 6            ; 0x470f
    push ax                          ; 0x4712
    mov ax, word [bp + 0x6]          ; 0x4713
    add ax, strict word 0xe          ; 0x4716
    push ax                          ; 0x4719
    push word [bp + 0x8]             ; 0x471a
    push word [bp + 0x6]             ; 0x471d
    call thunk_4                     ; 0x4720
    add sp, byte 8                   ; 0x4723
    ret                              ; 0x4726
