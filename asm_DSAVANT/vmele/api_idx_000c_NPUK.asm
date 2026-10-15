; auto-generated
api_idx_000c_NPUK:
    mov ax, 0xfff4                   ; 0x29c5
    call aztec_csav                  ; 0x29c8
    mov word [bp - 0x0002], 0        ; 0x29cb
    jmp near @..api_idx_000c_NPUK.l19 ; 0x29d0
@..api_idx_000c_NPUK.l1:
    mov word [bp - 0x0006], 0        ; 0x29d3
@..api_idx_000c_NPUK.l2:
    mov ax, 6                        ; 0x29d8
    imul word [bp - 0x0002]          ; 0x29db
    mov cx, word [bp - 0x0006]       ; 0x29de
    shl cx, 1                        ; 0x29e1
    add ax, cx                       ; 0x29e3
    mov bx, ax                       ; 0x29e5
    mov word [bx - 0x6f42], 0        ; 0x29e7
    mov bx, cx                       ; 0x29ed
    add bx, bp                       ; 0x29ef
    mov word [bx - 0x000c], 0        ; 0x29f1
    inc word [bp - 0x0006]           ; 0x29f6
    mov ax, word [bp - 0x0006]       ; 0x29f9
    cmp ax, strict word 3            ; 0x29fc
    jl short @..api_idx_000c_NPUK.l2 ; 0x29ff
    mov word [bp - 0x0006], 0        ; 0x2a01
@..api_idx_000c_NPUK.l3:
    mov ax, 3                        ; 0x2a06
    push ax                          ; 0x2a09
    call ds_app_GGUI                 ; 0x2a0a
    pop cx                           ; 0x2a0d
    mov word [bp - 0x0004], ax       ; 0x2a0e
    mov ax, word [bp - 0x0004]       ; 0x2a11
    shl ax, 1                        ; 0x2a14
    mov bx, ax                       ; 0x2a16
    add bx, bp                       ; 0x2a18
    cmp word [bx - 0x000c], byte 1   ; 0x2a1a
    je short @..api_idx_000c_NPUK.l3 ; 0x2a1e
    cmp word [bp - 0x000c], byte 0   ; 0x2a20
    jne short @..api_idx_000c_NPUK.l5 ; 0x2a24
    cmp word [bss_90ba], byte 1      ; 0x2a26
    je short @..api_idx_000c_NPUK.l4 ; 0x2a2b
    cmp word [bp - 0x0002], byte 0   ; 0x2a2d
    jne short @..api_idx_000c_NPUK.l5 ; 0x2a31
@..api_idx_000c_NPUK.l4:
    mov word [bp - 0x0004], 0        ; 0x2a33
@..api_idx_000c_NPUK.l5:
    mov ax, word [bp - 0x0004]       ; 0x2a38
    shl ax, 1                        ; 0x2a3b
    mov bx, ax                       ; 0x2a3d
    add bx, bp                       ; 0x2a3f
    mov word [bx - 0x000c], 1        ; 0x2a41
    mov ax, 6                        ; 0x2a46
    imul word [bp - 0x0002]          ; 0x2a49
    mov cx, ax                       ; 0x2a4c
    mov ax, word [bp - 0x0004]       ; 0x2a4e
    shl ax, 1                        ; 0x2a51
    add cx, ax                       ; 0x2a53
    mov bx, cx                       ; 0x2a55
    cmp word [bx - 0x7bc6], byte 0   ; 0x2a57
    je short @..api_idx_000c_NPUK.l6 ; 0x2a5c
    jmp near @..api_idx_000c_NPUK.l17 ; 0x2a5e
@..api_idx_000c_NPUK.l6:
    mov ax, word [bp - 0x0002]       ; 0x2a61
    jmp near @..api_idx_000c_NPUK.l15 ; 0x2a64
@..api_idx_000c_NPUK.l7:
    push word [bp - 0x0004]          ; 0x2a67
    push word [bp - 0x0002]          ; 0x2a6a
    mov ax, 1                        ; 0x2a6d
    push ax                          ; 0x2a70
    call loc_JROU                    ; 0x2a71
    add sp, byte 6                   ; 0x2a74
    jmp near @..api_idx_000c_NPUK.l17 ; 0x2a77
@..api_idx_000c_NPUK.l8:
    cmp word [bss_8466], byte 1      ; 0x2a7a
    jne short @..api_idx_000c_NPUK.l9 ; 0x2a7f
    push word [bp - 0x0004]          ; 0x2a81
    push word [bp - 0x0002]          ; 0x2a84
    mov ax, 1                        ; 0x2a87
    push ax                          ; 0x2a8a
    call loc_JROU                    ; 0x2a8b
    add sp, byte 6                   ; 0x2a8e
    jmp short @..api_idx_000c_NPUK.l10 ; 0x2a91
@..api_idx_000c_NPUK.l9:
    push word [bp - 0x0004]          ; 0x2a93
    push word [bp - 0x0002]          ; 0x2a96
    mov ax, 2                        ; 0x2a99
    push ax                          ; 0x2a9c
    call loc_JROU                    ; 0x2a9d
    add sp, byte 6                   ; 0x2aa0
@..api_idx_000c_NPUK.l10:
    jmp short @..api_idx_000c_NPUK.l17 ; 0x2aa3
@..api_idx_000c_NPUK.l11:
    cmp word [bss_8466], byte 1      ; 0x2aa5
    jne short @..api_idx_000c_NPUK.l12 ; 0x2aaa
    push word [bp - 0x0004]          ; 0x2aac
    push word [bp - 0x0002]          ; 0x2aaf
    mov ax, 1                        ; 0x2ab2
    push ax                          ; 0x2ab5
    call loc_JROU                    ; 0x2ab6
    add sp, byte 6                   ; 0x2ab9
    jmp short @..api_idx_000c_NPUK.l14 ; 0x2abc
@..api_idx_000c_NPUK.l12:
    cmp word [bss_8466], byte 2      ; 0x2abe
    jne short @..api_idx_000c_NPUK.l13 ; 0x2ac3
    push word [bp - 0x0004]          ; 0x2ac5
    push word [bp - 0x0002]          ; 0x2ac8
    mov ax, 2                        ; 0x2acb
    push ax                          ; 0x2ace
    call loc_JROU                    ; 0x2acf
    add sp, byte 6                   ; 0x2ad2
    jmp short @..api_idx_000c_NPUK.l14 ; 0x2ad5
@..api_idx_000c_NPUK.l13:
    push word [bp - 0x0004]          ; 0x2ad7
    push word [bp - 0x0002]          ; 0x2ada
    mov ax, 3                        ; 0x2add
    push ax                          ; 0x2ae0
    call loc_JROU                    ; 0x2ae1
    add sp, byte 6                   ; 0x2ae4
@..api_idx_000c_NPUK.l14:
    jmp short @..api_idx_000c_NPUK.l17 ; 0x2ae7
@..api_idx_000c_NPUK.l15:
    cmp ax, strict word 0            ; 0x2ae9
    jne short @..api_idx_000c_NPUK.l16 ; 0x2aec
    jmp near @..api_idx_000c_NPUK.l7 ; 0x2aee
@..api_idx_000c_NPUK.l16:
    cmp ax, strict word 1            ; 0x2af1
    je short @..api_idx_000c_NPUK.l8 ; 0x2af4
    cmp ax, strict word 2            ; 0x2af6
    je short @..api_idx_000c_NPUK.l11 ; 0x2af9
@..api_idx_000c_NPUK.l17:
    inc word [bp - 0x0006]           ; 0x2afb
    mov ax, word [bp - 0x0006]       ; 0x2afe
    cmp ax, strict word 3            ; 0x2b01
    jge short @..api_idx_000c_NPUK.l18 ; 0x2b04
    jmp near @..api_idx_000c_NPUK.l3 ; 0x2b06
@..api_idx_000c_NPUK.l18:
    inc word [bp - 0x0002]           ; 0x2b09
@..api_idx_000c_NPUK.l19:
    mov ax, word [bp - 0x0002]       ; 0x2b0c
    cmp ax, word [bss_8454]          ; 0x2b0f
    jg short @..api_idx_000c_NPUK.l20 ; 0x2b13
    jmp near @..api_idx_000c_NPUK.l1 ; 0x2b15
@..api_idx_000c_NPUK.l20:
    ret                              ; 0x2b18
