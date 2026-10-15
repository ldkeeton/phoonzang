; auto-generated
leaf_loc_JMMO:
    mov ax, 5                        ; 0x1dd2
    imul word [bss_91aa]             ; 0x1dd5
    add ax, word [bp + 0xe]          ; 0x1dd9
    mov bx, ax                       ; 0x1ddc
    mov byte [bx - 0x6d8a], 2        ; 0x1dde
    jmp short loc_SGRK               ; 0x1de3
jumptable_1de5:
    dw loc_SGRK - IMAGE_BASE + 0x5055          ; 0x1de5
    dw leaf_loc_RHMT - IMAGE_BASE + 0x5055     ; 0x1de7
    dw leaf_loc_PVPR - IMAGE_BASE + 0x5055     ; 0x1de9
    dw leaf_loc_TUGP - IMAGE_BASE + 0x5055     ; 0x1deb
    dw leaf_loc_TNPR - IMAGE_BASE + 0x5055     ; 0x1ded
    dw leaf_loc_SHVQ - IMAGE_BASE + 0x5055     ; 0x1def
    dw leaf_loc_JKQS - IMAGE_BASE + 0x5055     ; 0x1df1
    dw leaf_loc_MQTO - IMAGE_BASE + 0x5055     ; 0x1df3
    dw leaf_loc_NRSH - IMAGE_BASE + 0x5055     ; 0x1df5
    dw leaf_loc_MIHT - IMAGE_BASE + 0x5055     ; 0x1df7
    dw leaf_loc_TRLG - IMAGE_BASE + 0x5055     ; 0x1df9
    dw leaf_loc_MPSN - IMAGE_BASE + 0x5055     ; 0x1dfb
    dw leaf_loc_THMM - IMAGE_BASE + 0x5055     ; 0x1dfd
    dw leaf_loc_ROLV - IMAGE_BASE + 0x5055     ; 0x1dff
    dw leaf_loc_KKHL - IMAGE_BASE + 0x5055     ; 0x1e01
    dw leaf_loc_STNM - IMAGE_BASE + 0x5055     ; 0x1e03
    dw leaf_loc_JMMO - IMAGE_BASE + 0x5055     ; 0x1e05
    dw leaf_loc_KKHL - IMAGE_BASE + 0x5055     ; 0x1e07
loc_KLTL:
    cmp ax, strict word 0x12         ; 0x1e09
    jae short loc_SGRK               ; 0x1e0c
    xchg bx, ax                      ; 0x1e0e
    shl bx, 1                        ; 0x1e0f
    jmp [cs:bx + 0x6e2c]             ; 0x1e11
loc_SGRK:
    mov ax, word [bss_830c]          ; 0x1e16
    cmp ax, word [bss_8f28]          ; 0x1e19
    jne short loc_UMVV               ; 0x1e1d
    mov ax, word [bp + 0xc]          ; 0x1e1f
    cmp ax, word [bss_8f2a]          ; 0x1e22
    jne short loc_UMVV               ; 0x1e26
    mov ax, word [bp + 0x8]          ; 0x1e28
    cmp ax, word [bss_8f2e]          ; 0x1e2b
    jne short loc_UMVV               ; 0x1e2f
    mov ax, word [bp + 0xa]          ; 0x1e31
    cmp ax, word [bss_8f2c]          ; 0x1e34
    jne short loc_UMVV               ; 0x1e38
    mov ax, 5                        ; 0x1e3a
    imul word [bss_91aa]             ; 0x1e3d
    add ax, word [bp + 0xe]          ; 0x1e41
    mov bx, ax                       ; 0x1e44
    mov byte [bx - 0x6d8a], 3        ; 0x1e46
loc_UMVV:
    mov ax, word [bp - 0x0004]       ; 0x1e4b
    ret                              ; 0x1e4e
