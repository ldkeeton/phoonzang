; auto-generated
api_idx_0008:
    mov ax, 0xfff8                   ; 0x0764
    call aztec_csav                  ; 0x0767
    mov ax, 0x98                     ; 0x076a
    push ax                          ; 0x076d
    mov ax, 0x13f                    ; 0x076e
    push ax                          ; 0x0771
    mov ax, 0x92                     ; 0x0772
    push ax                          ; 0x0775
    mov ax, 0                        ; 0x0776
    push ax                          ; 0x0779
    call thunk_4                     ; 0x077a
    add sp, byte 8                   ; 0x077d
    push word [bp + 0x4]             ; 0x0780
    call aztec_strlen                ; 0x0783
    pop cx                           ; 0x0786
    mov cx, 6                        ; 0x0787
    imul cx                          ; 0x078a
    mov cx, 2                        ; 0x078c
    cwd                              ; 0x078f
    idiv cx                          ; 0x0790
    mov cx, ax                       ; 0x0792
    mov ax, 0xa1                     ; 0x0794
    sub ax, cx                       ; 0x0797
    mov word [bp - 0x0002], ax       ; 0x0799
    push word [bp + 0x4]             ; 0x079c
    call aztec_strlen                ; 0x079f
    pop cx                           ; 0x07a2
    mov cx, 6                        ; 0x07a3
    imul cx                          ; 0x07a6
    mov cx, ax                       ; 0x07a8
    mov ax, word [bp - 0x0002]       ; 0x07aa
    add cx, ax                       ; 0x07ad
    mov word [bp - 0x0004], cx       ; 0x07af
    mov ax, 0x98                     ; 0x07b2
    push ax                          ; 0x07b5
    push cx                          ; 0x07b6
    mov ax, 0x92                     ; 0x07b7
    push ax                          ; 0x07ba
    push word [bp - 0x0002]          ; 0x07bb
    call thunk_10                    ; 0x07be
    add sp, byte 8                   ; 0x07c1
    mov word [bp - 0x0006], dx       ; 0x07c4
    mov word [bp - 0x0008], ax       ; 0x07c7
    mov ax, 0                        ; 0x07ca
    push ax                          ; 0x07cd
    mov ax, 0x16                     ; 0x07ce
    push ax                          ; 0x07d1
    call thunk_3                     ; 0x07d2
    add sp, byte 4                   ; 0x07d5
    mov ax, 0x92                     ; 0x07d8
    push ax                          ; 0x07db
    push word [bp - 0x0002]          ; 0x07dc
    call thunk                       ; 0x07df
    add sp, byte 4                   ; 0x07e2
    mov ax, 0                        ; 0x07e5
    push ax                          ; 0x07e8
    push word [bp + 0x4]             ; 0x07e9
    call ds_string_loc_3a95          ; 0x07ec
    add sp, byte 4                   ; 0x07ef
    mov ax, 0x98                     ; 0x07f2
    push ax                          ; 0x07f5
    push word [bp - 0x0004]          ; 0x07f6
    mov ax, 0x92                     ; 0x07f9
    push ax                          ; 0x07fc
    push word [bp - 0x0002]          ; 0x07fd
    call thunk_4                     ; 0x0800
    add sp, byte 8                   ; 0x0803
    mov ax, 1                        ; 0x0806
    push ax                          ; 0x0809
    push word [bp - 0x0006]          ; 0x080a
    push word [bp - 0x0008]          ; 0x080d
    call thunk_13                    ; 0x0810
    add sp, byte 6                   ; 0x0813
    call bios_kbd_check              ; 0x0816
    ret                              ; 0x0819
