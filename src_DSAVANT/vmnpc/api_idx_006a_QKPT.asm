; auto-generated
api_idx_006a_QKPT:
    mov ax, 0xff96                   ; 0xab8d
    call aztec_csav                  ; 0xab90
    mov ax, word [bp + 0x4]          ; 0xab93
    mov word [bss_b04e], ax          ; 0xab96
    mov word [bss_93ee], 0           ; 0xab99
    mov ax, 0                        ; 0xab9f
    push ax                          ; 0xaba2
    mov ax, 0x42                     ; 0xaba3
    push ax                          ; 0xaba6
    mov ax, bss_9e42                 ; 0xaba7
    push ax                          ; 0xabaa
    call aztec_setmem                ; 0xabab
    add sp, byte 6                   ; 0xabae
    mov word [bss_9e4a], 0xffff      ; 0xabb1
    mov word [bss_9e4c], 0           ; 0xabb7
    mov word [bss_9e4e], 0xffff      ; 0xabbd
    mov word [bss_9e50], 0xffff      ; 0xabc3
    mov word [bss_93d4], 0           ; 0xabc9
@..api_idx_006a_QKPT.l1:
    mov ax, word [bss_93d4]          ; 0xabcf
    mov cx, 7                        ; 0xabd2
    shl ax, cl                       ; 0xabd5
    mov bx, ax                       ; 0xabd7
    mov byte [bx - 0x6e34], 0        ; 0xabd9
    mov ax, word [bss_93d4]          ; 0xabde
    shl ax, 1                        ; 0xabe1
    mov bx, ax                       ; 0xabe3
    mov word [bx - 0x6c34], 0        ; 0xabe5
    inc word [bss_93d4]              ; 0xabeb
    mov ax, word [bss_93d4]          ; 0xabef
    cmp ax, strict word 4            ; 0xabf2
    jl short @..api_idx_006a_QKPT.l1 ; 0xabf5
    mov word [bss_93d4], 0           ; 0xabf7
    lea ax, word [bp - 0x006a]       ; 0xabfd
    push ax                          ; 0xac00
    mov ax, 0x5e9                    ; 0xac01
    push ax                          ; 0xac04
    call ds_app_mem_TIMR             ; 0xac05
    add sp, byte 4                   ; 0xac08
    mov ax, 0x5e                     ; 0xac0b
    push ax                          ; 0xac0e
    mov ax, 0x248                    ; 0xac0f
    imul word [bp + 0x4]             ; 0xac12
    add ax, 0x5bf4                   ; 0xac15
    push ax                          ; 0xac18
    lea ax, word [bp - 0x006a]       ; 0xac19
    push ax                          ; 0xac1c
    call ds_app_string_HHIL          ; 0xac1d
    add sp, byte 6                   ; 0xac20
    push word [bss_0e2c]             ; 0xac23
    push word [bss_0e2a]             ; 0xac27
    call ds_app_io_TSGV              ; 0xac2b
    add sp, byte 4                   ; 0xac2e
    mov ax, 0                        ; 0xac31
    push ax                          ; 0xac34
    mov ax, 0xa4                     ; 0xac35
    push ax                          ; 0xac38
    mov ax, 0x12e                    ; 0xac39
    push ax                          ; 0xac3c
    call gfx_entry_33                ; 0xac3d
    add sp, byte 6                   ; 0xac40
    mov ax, 3                        ; 0xac43
    push ax                          ; 0xac46
    call api_idx_0006_SHUK           ; 0xac47
    pop cx                           ; 0xac4a
    mov ax, 3                        ; 0xac4b
    push ax                          ; 0xac4e
    call loc_HTQP                    ; 0xac4f
    pop cx                           ; 0xac52
@..api_idx_006a_QKPT.l2:
    lea ax, word [bp - 0x006a]       ; 0xac53
    push ax                          ; 0xac56
    lea ax, word [bp - 0x0056]       ; 0xac57
    push ax                          ; 0xac5a
    call api_idx_00b0_KPHQ           ; 0xac5b
    add sp, byte 4                   ; 0xac5e
    lea ax, word [bp - 0x0056]       ; 0xac61
    push ax                          ; 0xac64
    call api_idx_0004_JVTH           ; 0xac65
    pop cx                           ; 0xac68
    lea ax, word [bp - 0x0056]       ; 0xac69
    push ax                          ; 0xac6c
    call aztec_strlen                ; 0xac6d
    pop cx                           ; 0xac70
    mov word [bp - 0x0002], ax       ; 0xac71
    mov bx, ax                       ; 0xac74
    add bx, bp                       ; 0xac76
    mov byte [bx - 0x0056], 0x20     ; 0xac78
    mov byte [bx - 0x0055], 0        ; 0xac7c
    mov ax, 9                        ; 0xac80
    push ax                          ; 0xac83
    mov ax, dseg_9120                ; 0xac84
    push ax                          ; 0xac87
    lea ax, word [bp - 0x0056]       ; 0xac88
    push ax                          ; 0xac8b
    call aztec_strncmp               ; 0xac8c
    add sp, byte 6                   ; 0xac8f
    test ax, ax                      ; 0xac92
    je short @..api_idx_006a_QKPT.l3 ; 0xac94
    mov ax, 0                        ; 0xac96
    jmp short @..api_idx_006a_QKPT.l4 ; 0xac99
@..api_idx_006a_QKPT.l3:
    mov ax, 1                        ; 0xac9b
@..api_idx_006a_QKPT.l4:
    mov word [bp - 0x0006], ax       ; 0xac9e
    lea ax, word [bp - 0x0056]       ; 0xaca1
    push ax                          ; 0xaca4
    call api_idx_00a8_PUTL           ; 0xaca5
    pop cx                           ; 0xaca8
    mov word [bp - 0x0002], 0        ; 0xaca9
    mov word [bss_9e42], 0xffff      ; 0xacae
    mov word [bss_9e44], 0           ; 0xacb4
    mov word [bss_9e46], 0xffff      ; 0xacba
    mov word [bss_9e48], 0xffff      ; 0xacc0
    mov word [bss_9e52], 0           ; 0xacc6
    mov word [bss_9e54], 0           ; 0xaccc
    mov word [bss_9e56], 0           ; 0xacd2
    mov word [bss_9e58], 0           ; 0xacd8
    mov word [bss_9e5a], 0           ; 0xacde
    mov word [bss_9e5c], 0           ; 0xace4
    mov word [bss_9e5e], 0           ; 0xacea
    mov word [bss_9e60], 0           ; 0xacf0
    mov ax, word [bss_9e84]          ; 0xacf6
    mov word [bss_9e62], ax          ; 0xacf9
    mov word [bss_9e64], 0           ; 0xacfc
    mov word [bss_9e66], 0           ; 0xad02
    mov word [bss_9e68], 0           ; 0xad08
    mov word [bss_9e6a], 0           ; 0xad0e
    mov word [bss_9e6c], 0           ; 0xad14
    mov word [bss_9e6e], 0           ; 0xad1a
    mov word [bss_9e70], 0           ; 0xad20
    mov word [bss_9e72], 0           ; 0xad26
    mov word [bss_9e74], 0           ; 0xad2c
    mov word [bss_9e76], 0           ; 0xad32
    mov word [bss_9e78], 0           ; 0xad38
    mov word [bss_9e7a], 1           ; 0xad3e
    mov word [bss_9e7c], 0xffff      ; 0xad44
    mov word [bss_9e7e], 0xffff      ; 0xad4a
    mov word [bss_9e80], 0           ; 0xad50
    mov word [bss_9e82], 0xffff      ; 0xad56
    mov word [bss_b030], 0xa         ; 0xad5c
@..api_idx_006a_QKPT.l5:
    mov bx, word [bp - 0x0002]       ; 0xad62
    add bx, bp                       ; 0xad65
    cmp byte [bx - 0x0056], 0x20     ; 0xad67
    jne short @..api_idx_006a_QKPT.l6 ; 0xad6b
    inc word [bp - 0x0002]           ; 0xad6d
    jmp short @..api_idx_006a_QKPT.l5 ; 0xad70
@..api_idx_006a_QKPT.l6:
    mov ax, word [bp - 0x0002]       ; 0xad72
    lea cx, word [bp - 0x0056]       ; 0xad75
    add ax, cx                       ; 0xad78
    push ax                          ; 0xad7a
    call api_idx_0004_GSIV           ; 0xad7b
    pop cx                           ; 0xad7e
    mov word [bss_b030], ax          ; 0xad7f
    push word [bp - 0x0002]          ; 0xad82
    lea ax, word [bp - 0x0056]       ; 0xad85
    push ax                          ; 0xad88
    call api_idx_0002_MRKH           ; 0xad89
    add sp, byte 4                   ; 0xad8c
    mov word [bp - 0x0002], ax       ; 0xad8f
    cmp ax, strict word 0xffff       ; 0xad92
    jne short @..api_idx_006a_QKPT.l5 ; 0xad95
    mov ax, word [bss_9136]          ; 0xad97
    cmp ax, strict word 0x2d         ; 0xad9a
    je short @..api_idx_006a_QKPT.l7 ; 0xad9d
    cmp ax, strict word 0x51         ; 0xad9f
    je short @..api_idx_006a_QKPT.l7 ; 0xada2
    cmp ax, strict word 0x53         ; 0xada4
    je short @..api_idx_006a_QKPT.l7 ; 0xada7
    cmp ax, strict word 0x4d         ; 0xada9
    jne short @..api_idx_006a_QKPT.l8 ; 0xadac
    cmp word [bp - 0x0006], byte 0   ; 0xadae
    jne short @..api_idx_006a_QKPT.l8 ; 0xadb2
@..api_idx_006a_QKPT.l7:
    mov byte [bp - 0x0056], 0        ; 0xadb4
@..api_idx_006a_QKPT.l8:
    lea ax, word [bp - 0x0056]       ; 0xadb8
    push ax                          ; 0xadbb
    call aztec_strlen                ; 0xadbc
    pop cx                           ; 0xadbf
    cmp ax, strict word 0            ; 0xadc0
    jle short @..api_idx_006a_QKPT.l9 ; 0xadc3
    call api_idx_00a2_IKRJ           ; 0xadc5
    test ax, ax                      ; 0xadc8
    jne short @..api_idx_006a_QKPT.l9 ; 0xadca
    call loc_LTIS                    ; 0xadcc
@..api_idx_006a_QKPT.l9:
    cmp word [bss_9e70], byte 1      ; 0xadcf
    je short @..api_idx_006a_QKPT.l10 ; 0xadd4
    jmp near @..api_idx_006a_QKPT.l2 ; 0xadd6
@..api_idx_006a_QKPT.l10:
    mov ax, 3                        ; 0xadd9
    push ax                          ; 0xaddc
    call api_idx_0006_SHUK           ; 0xaddd
    pop cx                           ; 0xade0
    mov ax, 3                        ; 0xade1
    push ax                          ; 0xade4
    call loc_HTQP                    ; 0xade5
    pop cx                           ; 0xade8
    mov ax, 0                        ; 0xade9
    push ax                          ; 0xadec
    mov ax, 0xa4                     ; 0xaded
    push ax                          ; 0xadf0
    mov ax, 0x12e                    ; 0xadf1
    push ax                          ; 0xadf4
    call gfx_entry_34                ; 0xadf5
    add sp, byte 6                   ; 0xadf8
    mov ax, 0                        ; 0xadfb
    mov dx, 0                        ; 0xadfe
    push dx                          ; 0xae01
    push ax                          ; 0xae02
    call ds_app_io_TSGV              ; 0xae03
    add sp, byte 4                   ; 0xae06
    mov word [bss_93ee], 1           ; 0xae09
    ret                              ; 0xae0f
