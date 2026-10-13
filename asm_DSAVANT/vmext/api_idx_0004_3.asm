api_idx_0004_3:
    mov ax, 0xfffc                   ; 0x0897
    call aztec_csav                  ; 0x089a
    mov ax, word [bss_8f3e]          ; 0x089d
    mov cx, 6                        ; 0x08a0
    shl ax, cl                       ; 0x08a3
    mov cx, word [bss_8f40]          ; 0x08a5
    shl cx, 1                        ; 0x08a9
    shl cx, 1                        ; 0x08ab
    shl cx, 1                        ; 0x08ad
    add ax, cx                       ; 0x08af
    add ax, word [bss_8f42]          ; 0x08b1
    mov word [bp - 0x0002], ax       ; 0x08b5
    mov word [bp - 0x0004], 0        ; 0x08b8
    push ax                          ; 0x08bd
    mov ax, word [bss_0e14]          ; 0x08be
    add ax, 0x9b0                    ; 0x08c1
    push ax                          ; 0x08c4
    call ds_leaf_loc_3ebb            ; 0x08c5
    add sp, byte 4                   ; 0x08c8
    test ax, ax                      ; 0x08cb
    je short @..api_idx_0004_3.l3    ; 0x08cd
    mov ax, word [bss_830c]          ; 0x08cf
    jmp short @..api_idx_0004_3.l2   ; 0x08d2
loc_08d4:
    cmp word [bss_8f3e], byte 0x0c   ; 0x08d4
    jle short @..api_idx_0004_3.l1   ; 0x08d9
    mov word [bp - 0x0004], 1        ; 0x08db
@..api_idx_0004_3.l1:
    jmp short @..api_idx_0004_3.l3   ; 0x08e0
loc_08e2:
    mov word [bp - 0x0004], 1        ; 0x08e2
    jmp short @..api_idx_0004_3.l3   ; 0x08e7
jumptable_08e9:
    dw loc_08e2 - IMAGE_BASE + 0x5055          ; 0x08e9
    dw jumptable_08e9_case_1 - IMAGE_BASE + 0x5055 ; 0x08eb
    dw loc_08e2 - IMAGE_BASE + 0x5055          ; 0x08ed
    dw jumptable_08e9_case_1 - IMAGE_BASE + 0x5055 ; 0x08ef
    dw jumptable_08e9_case_1 - IMAGE_BASE + 0x5055 ; 0x08f1
    dw jumptable_08e9_case_1 - IMAGE_BASE + 0x5055 ; 0x08f3
    dw jumptable_08e9_case_1 - IMAGE_BASE + 0x5055 ; 0x08f5
    dw loc_08e2 - IMAGE_BASE + 0x5055          ; 0x08f7
    dw loc_08e2 - IMAGE_BASE + 0x5055          ; 0x08f9
    dw loc_08e2 - IMAGE_BASE + 0x5055          ; 0x08fb
    dw loc_08e2 - IMAGE_BASE + 0x5055          ; 0x08fd
    dw loc_08e2 - IMAGE_BASE + 0x5055          ; 0x08ff
    dw jumptable_08e9_case_1 - IMAGE_BASE + 0x5055 ; 0x0901
    dw jumptable_08e9_case_1 - IMAGE_BASE + 0x5055 ; 0x0903
    dw loc_08d4 - IMAGE_BASE + 0x5055          ; 0x0905
    dw loc_08e2 - IMAGE_BASE + 0x5055          ; 0x0907
@..api_idx_0004_3.l2:
    sub ax, strict word 0xf          ; 0x0909
    cmp ax, strict word 0x10         ; 0x090c
    jae short @..api_idx_0004_3.l3   ; 0x090f
    xchg bx, ax                      ; 0x0911
    shl bx, 1                        ; 0x0912
    jmp [cs:bx + 0x5930]             ; 0x0914
jumptable_08e9_case_1:
@..api_idx_0004_3.l3:
    push word [bp - 0x0002]          ; 0x0919
    mov ax, word [bss_0e14]          ; 0x091c
    add ax, 0x8b0                    ; 0x091f
    push ax                          ; 0x0922
    call ds_leaf_loc_3ebb            ; 0x0923
    add sp, byte 4                   ; 0x0926
    test ax, ax                      ; 0x0929
    je short @..api_idx_0004_3.l7    ; 0x092b
    mov ax, word [bss_830c]          ; 0x092d
    jmp short @..api_idx_0004_3.l6   ; 0x0930
@..api_idx_0004_3.l4:
    mov word [bp - 0x0004], 1        ; 0x0932
    jmp short @..api_idx_0004_3.l7   ; 0x0937
@..api_idx_0004_3.l5:
    mov word [bp - 0x0004], 2        ; 0x0939
    jmp short @..api_idx_0004_3.l7   ; 0x093e
@..api_idx_0004_3.l6:
    cmp ax, strict word 8            ; 0x0940
    je short @..api_idx_0004_3.l4    ; 0x0943
    cmp ax, strict word 9            ; 0x0945
    je short @..api_idx_0004_3.l4    ; 0x0948
    cmp ax, strict word 0xa          ; 0x094a
    je short @..api_idx_0004_3.l4    ; 0x094d
    cmp ax, strict word 0xb          ; 0x094f
    je short @..api_idx_0004_3.l4    ; 0x0952
    cmp ax, strict word 0xc          ; 0x0954
    je short @..api_idx_0004_3.l4    ; 0x0957
    cmp ax, strict word 0x1b         ; 0x0959
    je short @..api_idx_0004_3.l5    ; 0x095c
@..api_idx_0004_3.l7:
    push word [bp - 0x0002]          ; 0x095e
    mov ax, word [bss_0e14]          ; 0x0961
    add ax, 0x930                    ; 0x0964
    push ax                          ; 0x0967
    call ds_leaf_loc_3ebb            ; 0x0968
    add sp, byte 4                   ; 0x096b
    test ax, ax                      ; 0x096e
    je short @..api_idx_0004_3.l14   ; 0x0970
    mov ax, word [bss_830c]          ; 0x0972
    jmp short @..api_idx_0004_3.l13  ; 0x0975
@..api_idx_0004_3.l8:
    mov word [bp - 0x0004], 3        ; 0x0977
    jmp short @..api_idx_0004_3.l14  ; 0x097c
@..api_idx_0004_3.l9:
    jmp short @..api_idx_0004_3.l14  ; 0x097e
@..api_idx_0004_3.l10:
    mov word [bp - 0x0004], 1        ; 0x0980
    jmp short @..api_idx_0004_3.l14  ; 0x0985
@..api_idx_0004_3.l11:
    mov word [bp - 0x0004], 2        ; 0x0987
    jmp short @..api_idx_0004_3.l14  ; 0x098c
@..api_idx_0004_3.l12:
    mov word [bp - 0x0004], 4        ; 0x098e
    jmp short @..api_idx_0004_3.l14  ; 0x0993
@..api_idx_0004_3.l13:
    cmp ax, strict word 0            ; 0x0995
    je short @..api_idx_0004_3.l8    ; 0x0998
    cmp ax, strict word 0xa          ; 0x099a
    je short @..api_idx_0004_3.l9    ; 0x099d
    cmp ax, strict word 0xe          ; 0x099f
    je short @..api_idx_0004_3.l10   ; 0x09a2
    cmp ax, strict word 0x13         ; 0x09a4
    je short @..api_idx_0004_3.l10   ; 0x09a7
    cmp ax, strict word 0x17         ; 0x09a9
    je short @..api_idx_0004_3.l11   ; 0x09ac
    cmp ax, strict word 0x19         ; 0x09ae
    je short @..api_idx_0004_3.l9    ; 0x09b1
    cmp ax, strict word 0x1f         ; 0x09b3
    je short @..api_idx_0004_3.l10   ; 0x09b6
    jmp short @..api_idx_0004_3.l12  ; 0x09b8
@..api_idx_0004_3.l14:
    mov ax, word [bp - 0x0004]       ; 0x09ba
    ret                              ; 0x09bd
