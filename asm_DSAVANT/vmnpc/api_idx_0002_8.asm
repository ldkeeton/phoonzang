api_idx_0002_8:
    mov ax, 0xfffe                   ; 0x86a4
    call ds_aztec_csav               ; 0x86a7
    mov word [bp - 0x0002], 0        ; 0x86aa
    jmp short @..api_idx_0002_8.l2   ; 0x86af
@..api_idx_0002_8.l1:
    mov bx, word [bp + 0x4]          ; 0x86b1
    mov si, word [bp - 0x0002]       ; 0x86b4
    mov byte [bx + si], 0x78         ; 0x86b7
    inc word [bp - 0x0002]           ; 0x86ba
@..api_idx_0002_8.l2:
    mov ax, word [bp - 0x0002]       ; 0x86bd
    cmp ax, word [bp + 0x6]          ; 0x86c0
    jl short @..api_idx_0002_8.l1    ; 0x86c3
    ret                              ; 0x86c5
loc_86c6:
    mov ax, 0                        ; 0x86c6
    call ds_aztec_csav               ; 0x86c9
    mov word [bss_9e62], 1           ; 0x86cc
    mov ax, word [bp + 0x4]          ; 0x86d2
    jmp short @..local.l97           ; 0x86d5
loc_86d7:
    mov word [bss_9e62], 0           ; 0x86d7
    jmp short @..local.l98           ; 0x86dd
loc_86df:
    mov word [bss_9e52], 1           ; 0x86df
    jmp short @..local.l98           ; 0x86e5
loc_86e7:
    mov word [bss_9e54], 1           ; 0x86e7
    jmp short @..local.l98           ; 0x86ed
loc_86ef:
    mov word [bss_9e56], 1           ; 0x86ef
    jmp short @..local.l98           ; 0x86f5
loc_86f7:
    mov word [bss_9e58], 1           ; 0x86f7
    jmp short @..local.l98           ; 0x86fd
loc_86ff:
    mov word [bss_9e5a], 1           ; 0x86ff
    jmp short @..local.l98           ; 0x8705
loc_8707:
    mov word [bss_9e5c], 1           ; 0x8707
    jmp short @..local.l98           ; 0x870d
loc_870f:
    mov word [bss_9e5e], 1           ; 0x870f
    jmp short @..local.l98           ; 0x8715
jumptable_8717:
    dw loc_86d7 - IMAGE_BASE + 0x5055          ; 0x8717
    dw loc_86df - IMAGE_BASE + 0x5055          ; 0x8719
    dw loc_86e7 - IMAGE_BASE + 0x5055          ; 0x871b
    dw loc_86ef - IMAGE_BASE + 0x5055          ; 0x871d
    dw loc_86f7 - IMAGE_BASE + 0x5055          ; 0x871f
    dw loc_86ff - IMAGE_BASE + 0x5055          ; 0x8721
    dw loc_8707 - IMAGE_BASE + 0x5055          ; 0x8723
    dw loc_870f - IMAGE_BASE + 0x5055          ; 0x8725
@..local.l97:
    sub ax, strict word 0xffff       ; 0x8727
    cmp ax, strict word 8            ; 0x872a
    jae short @..local.l98           ; 0x872d
    xchg bx, ax                      ; 0x872f
    shl bx, 1                        ; 0x8730
    jmp [cs:bx - 0x28a2]             ; 0x8732
@..local.l98:
    ret                              ; 0x8737
