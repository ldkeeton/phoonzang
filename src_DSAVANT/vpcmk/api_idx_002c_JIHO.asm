; auto-generated
api_idx_002c_JIHO:
    mov ax, 0xffd4                   ; 0x6738
    call aztec_csav                  ; 0x673b
    push word [bp + 0x4]             ; 0x673e
    mov ax, 0                        ; 0x6741
    push ax                          ; 0x6744
    call loc_TUUJ                    ; 0x6745
    add sp, byte 4                   ; 0x6748
    mov word [bp - 0x002c], 1        ; 0x674b
    mov word [bp - 0x002a], 1        ; 0x6750
    mov word [bp - 0x0028], 0xffff   ; 0x6755
    lea ax, word [bp - 0x002c]       ; 0x675a
    push ax                          ; 0x675d
    mov ax, 0                        ; 0x675e
    push ax                          ; 0x6761
    mov ax, 0xffff                   ; 0x6762
    push ax                          ; 0x6765
    mov ax, 1                        ; 0x6766
    push ax                          ; 0x6769
    mov ax, 2                        ; 0x676a
    push ax                          ; 0x676d
    mov ax, 1                        ; 0x676e
    push ax                          ; 0x6771
    mov ax, 0xc                      ; 0x6772
    push ax                          ; 0x6775
    mov ax, 0x6a                     ; 0x6776
    push ax                          ; 0x6779
    mov ax, 0xb                      ; 0x677a
    push ax                          ; 0x677d
    mov ax, 0xb4                     ; 0x677e
    push ax                          ; 0x6781
    mov ax, 0x4a                     ; 0x6782
    push ax                          ; 0x6785
    mov ax, 0x464                    ; 0x6786
    push ax                          ; 0x6789
    mov ax, 0x465                    ; 0x678a
    push ax                          ; 0x678d
    call loc_TRPK                    ; 0x678e
    add sp, byte 0x1a                ; 0x6791
    mov word [bp - 0x0002], ax       ; 0x6794
    cmp word [bp - 0x0002], byte 0   ; 0x6797
    jne short @..api_idx_002c_JIHO.l1 ; 0x679b
    mov bx, word [bp + 0x4]          ; 0x679d
    mov byte [bx - 0x6f8a], 0        ; 0x67a0
    mov ax, 0                        ; 0x67a5
    push ax                          ; 0x67a8
    call gfx_entry_47                ; 0x67a9
    pop cx                           ; 0x67ac
    mov ax, 2                        ; 0x67ad
    push ax                          ; 0x67b0
    mov ax, 0                        ; 0x67b1
    push ax                          ; 0x67b4
    mov ax, dseg_9501                ; 0x67b5
    push ax                          ; 0x67b8
    call ds_app_string_UUHT          ; 0x67b9
    add sp, byte 4                   ; 0x67bc
    push ax                          ; 0x67bf
    call aztec_open                  ; 0x67c0
    add sp, byte 4                   ; 0x67c3
    mov word [bp - 0x0004], ax       ; 0x67c6
    mov ax, 0x18                     ; 0x67c9
    push ax                          ; 0x67cc
    mov ax, bss_906e                 ; 0x67cd
    push ax                          ; 0x67d0
    push word [bp - 0x0004]          ; 0x67d1
    call aztec_write                 ; 0x67d4
    add sp, byte 6                   ; 0x67d7
    push word [bp - 0x0004]          ; 0x67da
    call aztec_close                 ; 0x67dd
    pop cx                           ; 0x67e0
@..api_idx_002c_JIHO.l1:
    ret                              ; 0x67e1
