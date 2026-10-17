; auto-generated
leaf_loc_GJTT:
    mov ax, word [bss_9b04]          ; 0x0d98
    mov word [bp - 0x0010], ax       ; 0x0d9b
    jmp short loc_VPRT               ; 0x0d9e
jumptable_0da0:
    dw loc_VPRT - IMAGE_BASE + 0x5055          ; 0x0da0
    dw leaf_loc_JQTI_0d80 - IMAGE_BASE + 0x5055 ; 0x0da2
    dw leaf_loc_JQTI_0d88 - IMAGE_BASE + 0x5055 ; 0x0da4
    dw leaf_loc_JQTI_0d90 - IMAGE_BASE + 0x5055 ; 0x0da6
    dw leaf_loc_GJTT - IMAGE_BASE + 0x5055     ; 0x0da8
    dw loc_VPRT - IMAGE_BASE + 0x5055          ; 0x0daa
    dw leaf_loc_JQTI_0d90 - IMAGE_BASE + 0x5055 ; 0x0dac
    dw leaf_loc_JQTI_0d88 - IMAGE_BASE + 0x5055 ; 0x0dae
loc_0db0:
    cmp ax, strict word 8            ; 0x0db0
    jae short loc_VPRT               ; 0x0db3
    xchg bx, ax                      ; 0x0db5
    shl bx, 1                        ; 0x0db6
    jmp [cs:bx + 0x5de7]             ; 0x0db8
loc_VPRT:
    cmp word [bp - 0x0010], byte 0xff ; 0x0dbd
    je short loc_OHMV                ; 0x0dc1
    mov ax, word [bp - 0x0010]       ; 0x0dc3
    push ax                          ; 0x0dc6
    mov ax, 0x24                     ; 0x0dc7
    imul word [bp + 0x8]             ; 0x0dca
    mov cx, ax                       ; 0x0dcd
    mov dx, word [bp + 0xa]          ; 0x0dcf
    shl dx, 1                        ; 0x0dd2
    add ax, dx                       ; 0x0dd4
    mov bx, ax                       ; 0x0dd6
    pop ax                           ; 0x0dd8
    mov word [bx - 0x6a30], ax       ; 0x0dd9
loc_OHMV:
    mov word [bp - 0x0010], 0xffff   ; 0x0ddd
    push word [bp + 0x6]             ; 0x0de2
    push word [bp + 0x4]             ; 0x0de5
    push word [bp - 0x000a]          ; 0x0de8
    push word [bp - 0x0008]          ; 0x0deb
    push word [bp - 0x000c]          ; 0x0dee
    mov ax, 2                        ; 0x0df1
    push ax                          ; 0x0df4
    call loc_NJKS                    ; 0x0df5
    add sp, byte 0x0c                ; 0x0df8
    mov word [bp - 0x0012], ax       ; 0x0dfb
    jmp short loc_HRMG               ; 0x0dfe
loc_JQTI_0e00:
    mov ax, word [bss_9af6]          ; 0x0e00
    mov word [bp - 0x0010], ax       ; 0x0e03
    jmp short loc_KQGG               ; 0x0e06
loc_JQTI_0e08:
    mov ax, word [bss_9af8]          ; 0x0e08
    mov word [bp - 0x0010], ax       ; 0x0e0b
    jmp short loc_KQGG               ; 0x0e0e
loc_JQTI_0e10:
    mov ax, word [bss_9afa]          ; 0x0e10
    mov word [bp - 0x0010], ax       ; 0x0e13
    jmp short loc_KQGG               ; 0x0e16
loc_TNRH:
    mov ax, word [bss_9afc]          ; 0x0e18
    mov word [bp - 0x0010], ax       ; 0x0e1b
    jmp short loc_KQGG               ; 0x0e1e
jumptable_0e20:
    dw loc_KQGG - IMAGE_BASE + 0x5055          ; 0x0e20
    dw loc_JQTI_0e00 - IMAGE_BASE + 0x5055     ; 0x0e22
    dw loc_JQTI_0e08 - IMAGE_BASE + 0x5055     ; 0x0e24
    dw loc_JQTI_0e10 - IMAGE_BASE + 0x5055     ; 0x0e26
    dw loc_TNRH - IMAGE_BASE + 0x5055          ; 0x0e28
    dw loc_KQGG - IMAGE_BASE + 0x5055          ; 0x0e2a
    dw loc_JQTI_0e10 - IMAGE_BASE + 0x5055     ; 0x0e2c
    dw loc_JQTI_0e08 - IMAGE_BASE + 0x5055     ; 0x0e2e
loc_HRMG:
    cmp ax, strict word 8            ; 0x0e30
    jae short loc_KQGG               ; 0x0e33
    xchg bx, ax                      ; 0x0e35
    shl bx, 1                        ; 0x0e36
    jmp [cs:bx + 0x5e67]             ; 0x0e38
loc_KQGG:
    cmp word [bp - 0x0010], byte 0xff ; 0x0e3d
    je short loc_MLUU                ; 0x0e41
    mov ax, word [bp - 0x0010]       ; 0x0e43
    push ax                          ; 0x0e46
    mov ax, 0x24                     ; 0x0e47
    imul word [bp + 0x8]             ; 0x0e4a
    mov cx, ax                       ; 0x0e4d
    mov dx, word [bp + 0xa]          ; 0x0e4f
    shl dx, 1                        ; 0x0e52
    add ax, dx                       ; 0x0e54
    mov bx, ax                       ; 0x0e56
    pop ax                           ; 0x0e58
    mov word [bx - 0x6cb8], ax       ; 0x0e59
loc_MLUU:
    mov word [bp - 0x0010], 0xffff   ; 0x0e5d
    push word [bp + 0x6]             ; 0x0e62
    push word [bp + 0x4]             ; 0x0e65
    push word [bp - 0x000a]          ; 0x0e68
    push word [bp - 0x0008]          ; 0x0e6b
    push word [bp - 0x000c]          ; 0x0e6e
    mov ax, 3                        ; 0x0e71
    push ax                          ; 0x0e74
    call loc_NJKS                    ; 0x0e75
    add sp, byte 0x0c                ; 0x0e78
    mov word [bp - 0x0012], ax       ; 0x0e7b
    jmp short loc_TTJR               ; 0x0e7e
