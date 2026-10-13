; auto-generated
api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x29c5
    call aztec_csav                  ; 0x29c8
    mov word [bp - 0x0002], 0        ; 0x29cb
    jmp near @..api_idx_000c_3.l19   ; 0x29d0
@..api_idx_000c_3.l1:
    mov word [bp - 0x0006], 0        ; 0x29d3
@..api_idx_000c_3.l2:
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
    jl short @..api_idx_000c_3.l2    ; 0x29ff
    mov word [bp - 0x0006], 0        ; 0x2a01
@..api_idx_000c_3.l3:
    mov ax, 3                        ; 0x2a06
    push ax                          ; 0x2a09
    call ds_app_09f0                 ; 0x2a0a
    pop cx                           ; 0x2a0d
    mov word [bp - 0x0004], ax       ; 0x2a0e
    mov ax, word [bp - 0x0004]       ; 0x2a11
    shl ax, 1                        ; 0x2a14
    mov bx, ax                       ; 0x2a16
    add bx, bp                       ; 0x2a18
    cmp word [bx - 0x000c], byte 1   ; 0x2a1a
    je short @..api_idx_000c_3.l3    ; 0x2a1e
    cmp word [bp - 0x000c], byte 0   ; 0x2a20
    jne short @..api_idx_000c_3.l5   ; 0x2a24
    cmp word [bss_90ba], byte 1      ; 0x2a26
    je short @..api_idx_000c_3.l4    ; 0x2a2b
    cmp word [bp - 0x0002], byte 0   ; 0x2a2d
    jne short @..api_idx_000c_3.l5   ; 0x2a31
@..api_idx_000c_3.l4:
    mov word [bp - 0x0004], 0        ; 0x2a33
@..api_idx_000c_3.l5:
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
    je short @..api_idx_000c_3.l6    ; 0x2a5c
    jmp near @..api_idx_000c_3.l17   ; 0x2a5e
@..api_idx_000c_3.l6:
    mov ax, word [bp - 0x0002]       ; 0x2a61
    jmp near @..api_idx_000c_3.l15   ; 0x2a64
@..api_idx_000c_3.l7:
    push word [bp - 0x0004]          ; 0x2a67
    push word [bp - 0x0002]          ; 0x2a6a
    mov ax, 1                        ; 0x2a6d
    push ax                          ; 0x2a70
    call loc_299f                    ; 0x2a71
    add sp, byte 6                   ; 0x2a74
    jmp near @..api_idx_000c_3.l17   ; 0x2a77
@..api_idx_000c_3.l8:
    cmp word [bss_8466], byte 1      ; 0x2a7a
    jne short @..api_idx_000c_3.l9   ; 0x2a7f
    push word [bp - 0x0004]          ; 0x2a81
    push word [bp - 0x0002]          ; 0x2a84
    mov ax, 1                        ; 0x2a87
    push ax                          ; 0x2a8a
    call loc_299f                    ; 0x2a8b
    add sp, byte 6                   ; 0x2a8e
    jmp short @..api_idx_000c_3.l10  ; 0x2a91
@..api_idx_000c_3.l9:
    push word [bp - 0x0004]          ; 0x2a93
    push word [bp - 0x0002]          ; 0x2a96
    mov ax, 2                        ; 0x2a99
    push ax                          ; 0x2a9c
    call loc_299f                    ; 0x2a9d
    add sp, byte 6                   ; 0x2aa0
@..api_idx_000c_3.l10:
    jmp short @..api_idx_000c_3.l17  ; 0x2aa3
@..api_idx_000c_3.l11:
    cmp word [bss_8466], byte 1      ; 0x2aa5
    jne short @..api_idx_000c_3.l12  ; 0x2aaa
    push word [bp - 0x0004]          ; 0x2aac
    push word [bp - 0x0002]          ; 0x2aaf
    mov ax, 1                        ; 0x2ab2
    push ax                          ; 0x2ab5
    call loc_299f                    ; 0x2ab6
    add sp, byte 6                   ; 0x2ab9
    jmp short @..api_idx_000c_3.l14  ; 0x2abc
@..api_idx_000c_3.l12:
    cmp word [bss_8466], byte 2      ; 0x2abe
    jne short @..api_idx_000c_3.l13  ; 0x2ac3
    push word [bp - 0x0004]          ; 0x2ac5
    push word [bp - 0x0002]          ; 0x2ac8
    mov ax, 2                        ; 0x2acb
    push ax                          ; 0x2ace
    call loc_299f                    ; 0x2acf
    add sp, byte 6                   ; 0x2ad2
    jmp short @..api_idx_000c_3.l14  ; 0x2ad5
@..api_idx_000c_3.l13:
    push word [bp - 0x0004]          ; 0x2ad7
    push word [bp - 0x0002]          ; 0x2ada
    mov ax, 3                        ; 0x2add
    push ax                          ; 0x2ae0
    call loc_299f                    ; 0x2ae1
    add sp, byte 6                   ; 0x2ae4
@..api_idx_000c_3.l14:
    jmp short @..api_idx_000c_3.l17  ; 0x2ae7
@..api_idx_000c_3.l15:
    cmp ax, strict word 0            ; 0x2ae9
    jne short @..api_idx_000c_3.l16  ; 0x2aec
    jmp near @..api_idx_000c_3.l7    ; 0x2aee
@..api_idx_000c_3.l16:
    cmp ax, strict word 1            ; 0x2af1
    je short @..api_idx_000c_3.l8    ; 0x2af4
    cmp ax, strict word 2            ; 0x2af6
    je short @..api_idx_000c_3.l11   ; 0x2af9
@..api_idx_000c_3.l17:
    inc word [bp - 0x0006]           ; 0x2afb
    mov ax, word [bp - 0x0006]       ; 0x2afe
    cmp ax, strict word 3            ; 0x2b01
    jge short @..api_idx_000c_3.l18  ; 0x2b04
    jmp near @..api_idx_000c_3.l3    ; 0x2b06
@..api_idx_000c_3.l18:
    inc word [bp - 0x0002]           ; 0x2b09
@..api_idx_000c_3.l19:
    mov ax, word [bp - 0x0002]       ; 0x2b0c
    cmp ax, word [bss_8454]          ; 0x2b0f
    jg short @..api_idx_000c_3.l20   ; 0x2b13
    jmp near @..api_idx_000c_3.l1    ; 0x2b15
@..api_idx_000c_3.l20:
    ret                              ; 0x2b18
loc_2b19:
    mov ax, 0                        ; 0x2b19
    call aztec_csav                  ; 0x2b1c
    les bx, word [dseg_0002]         ; 0x2b1f
    mov ax, word [es:bx]             ; 0x2b23
    mov dx, word [es:bx + 0x2]       ; 0x2b26
    mov word [bss_9090], dx          ; 0x2b2a
    mov word [bss_908e], ax          ; 0x2b2e
    mov ax, word [bss_908e]          ; 0x2b31
    mov dx, word [bss_9090]          ; 0x2b34
    sub ax, word [bss_908a]          ; 0x2b38
    sbb dx, word [bss_908c]          ; 0x2b3c
    mov word [bss_9094], dx          ; 0x2b40
    mov word [bss_9092], ax          ; 0x2b44
    mov ax, word [bss_90b6]          ; 0x2b47
    cwd                              ; 0x2b4a
    mov cx, ax                       ; 0x2b4b
    mov bx, dx                       ; 0x2b4d
    mov ax, word [bss_9092]          ; 0x2b4f
    mov dx, word [bss_9094]          ; 0x2b52
    cmp bx, dx                       ; 0x2b56
    jg short @..loc_2b19.l1          ; 0x2b58
    jne short @..loc_2b19.l2         ; 0x2b5a
    cmp cx, ax                       ; 0x2b5c
    jbe short @..loc_2b19.l2         ; 0x2b5e
@..loc_2b19.l1:
    jmp short @..loc_2b19.l3         ; 0x2b60
@..loc_2b19.l2:
    mov ax, word [bss_908e]          ; 0x2b62
    mov dx, word [bss_9090]          ; 0x2b65
    mov word [bss_908c], dx          ; 0x2b69
    mov word [bss_908a], ax          ; 0x2b6d
    mov ax, 1                        ; 0x2b70
    ret                              ; 0x2b73
@..loc_2b19.l3:
    mov ax, 0                        ; 0x2b74
    ret                              ; 0x2b77
