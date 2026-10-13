api_idx_00a2:
    mov ax, 0xff5e                   ; 0x9844
    call ds_aztec_csav               ; 0x9847
    cmp word [bss_9e46], byte 0xff   ; 0x984a
    jne short @..api_idx_00a2.l1     ; 0x984f
    cmp word [bss_9e60], byte 1      ; 0x9851
    jne short @..api_idx_00a2.l1     ; 0x9856
    mov word [bss_9e46], 1           ; 0x9858
@..api_idx_00a2.l1:
    cmp word [bss_9e7e], byte 0xff   ; 0x985e
    jne short @..api_idx_00a2.l2     ; 0x9863
    jmp near @..api_idx_00a2.l3      ; 0x9865
@..api_idx_00a2.l2:
    lea ax, word [bp - 0x0052]       ; 0x9868
    push ax                          ; 0x986b
    push word [bss_9e44]             ; 0x986c
    push word [bss_9e42]             ; 0x9870
    call loc_8981                    ; 0x9874
    add sp, byte 6                   ; 0x9877
    lea ax, word [bp - 0x0052]       ; 0x987a
    push ax                          ; 0x987d
    call api_idx_0002_11             ; 0x987e
    pop cx                           ; 0x9881
    lea ax, word [bp - 0x0052]       ; 0x9882
    push ax                          ; 0x9885
    call api_idx_0004_15             ; 0x9886
    pop cx                           ; 0x9889
    lea ax, word [bp - 0x00a2]       ; 0x988a
    push ax                          ; 0x988e
    mov ax, 0x640                    ; 0x988f
    push ax                          ; 0x9892
    call ds_app_mem_0782             ; 0x9893
    add sp, byte 4                   ; 0x9896
    mov ax, 0x5e                     ; 0x9899
    push ax                          ; 0x989c
    lea ax, word [bp - 0x0052]       ; 0x989d
    push ax                          ; 0x98a0
    lea ax, word [bp - 0x00a2]       ; 0x98a1
    push ax                          ; 0x98a5
    call ds_app_string_0547          ; 0x98a6
    add sp, byte 6                   ; 0x98a9
    lea ax, word [bp - 0x00a2]       ; 0x98ac
    push ax                          ; 0x98b0
    call loc_9587                    ; 0x98b1
    pop cx                           ; 0x98b4
    lea ax, word [bp - 0x0052]       ; 0x98b5
    push ax                          ; 0x98b8
    push word [bss_9e80]             ; 0x98b9
    push word [bss_9e7e]             ; 0x98bd
    call loc_8981                    ; 0x98c1
    add sp, byte 6                   ; 0x98c4
    lea ax, word [bp - 0x0052]       ; 0x98c7
    push ax                          ; 0x98ca
    call api_idx_0002_11             ; 0x98cb
    pop cx                           ; 0x98ce
    lea ax, word [bp - 0x0052]       ; 0x98cf
    push ax                          ; 0x98d2
    call api_idx_0004_15             ; 0x98d3
    pop cx                           ; 0x98d6
    lea ax, word [bp - 0x0052]       ; 0x98d7
    push ax                          ; 0x98da
    mov ax, 0x641                    ; 0x98db
    push ax                          ; 0x98de
    call api_idx_0080                ; 0x98df
    add sp, byte 4                   ; 0x98e2
    mov ax, 0xffff                   ; 0x98e5
    ret                              ; 0x98e8
@..api_idx_00a2.l3:
    cmp word [bss_9e48], byte 0xff   ; 0x98e9
    jne short @..api_idx_00a2.l7     ; 0x98ee
    cmp word [bss_9e42], byte 0xff   ; 0x98f0
    jne short @..api_idx_00a2.l7     ; 0x98f5
    cmp word [bss_9e46], byte 0xff   ; 0x98f7
    je short @..api_idx_00a2.l4      ; 0x98fc
    mov ax, 0xa                      ; 0x98fe
    imul word [bss_9e46]             ; 0x9901
    add ax, 0xa658                   ; 0x9905
    push ax                          ; 0x9908
    lea ax, word [bp - 0x0052]       ; 0x9909
    push ax                          ; 0x990c
    call ds_aztec_strcpy             ; 0x990d
    add sp, byte 4                   ; 0x9910
    lea ax, word [bp - 0x0052]       ; 0x9913
    push ax                          ; 0x9916
    call api_idx_0004_15             ; 0x9917
    pop cx                           ; 0x991a
    lea ax, word [bp - 0x0052]       ; 0x991b
    push ax                          ; 0x991e
    mov ax, 0x642                    ; 0x991f
    push ax                          ; 0x9922
    call api_idx_0080                ; 0x9923
    add sp, byte 4                   ; 0x9926
    jmp short @..api_idx_00a2.l6     ; 0x9929
@..api_idx_00a2.l4:
    mov ax, 2                        ; 0x992b
    push ax                          ; 0x992e
    call ds_app_09f0                 ; 0x992f
    pop cx                           ; 0x9932
    test ax, ax                      ; 0x9933
    jne short @..api_idx_00a2.l5     ; 0x9935
    mov ax, 0x90f4                   ; 0x9937
    push ax                          ; 0x993a
    mov ax, 0x643                    ; 0x993b
    push ax                          ; 0x993e
    call api_idx_0080                ; 0x993f
    add sp, byte 4                   ; 0x9942
    jmp short @..api_idx_00a2.l6     ; 0x9945
@..api_idx_00a2.l5:
    mov ax, 0x90f5                   ; 0x9947
    push ax                          ; 0x994a
    mov ax, 0x644                    ; 0x994b
    push ax                          ; 0x994e
    call api_idx_0080                ; 0x994f
    add sp, byte 4                   ; 0x9952
@..api_idx_00a2.l6:
    mov ax, 0xffff                   ; 0x9955
    ret                              ; 0x9958
@..api_idx_00a2.l7:
    cmp word [bss_9e82], byte 0xff   ; 0x9959
    je short @..api_idx_00a2.l10     ; 0x995e
    cmp word [bss_9e42], byte 0xff   ; 0x9960
    je short @..api_idx_00a2.l8      ; 0x9965
    lea ax, word [bp - 0x0052]       ; 0x9967
    push ax                          ; 0x996a
    mov ax, 1                        ; 0x996b
    push ax                          ; 0x996e
    push word [bss_9e42]             ; 0x996f
    call loc_8981                    ; 0x9973
    add sp, byte 6                   ; 0x9976
    lea ax, word [bp - 0x0052]       ; 0x9979
    push ax                          ; 0x997c
    call api_idx_0002_11             ; 0x997d
    pop cx                           ; 0x9980
    lea ax, word [bp - 0x0052]       ; 0x9981
    push ax                          ; 0x9984
    call api_idx_0004_15             ; 0x9985
    pop cx                           ; 0x9988
    lea ax, word [bp - 0x0052]       ; 0x9989
    push ax                          ; 0x998c
    mov ax, 0x645                    ; 0x998d
    push ax                          ; 0x9990
    call api_idx_0080                ; 0x9991
    add sp, byte 4                   ; 0x9994
    mov word [bss_9e4e], 1           ; 0x9997
    mov ax, word [bss_9e42]          ; 0x999d
    mov word [bss_9e4a], ax          ; 0x99a0
    mov ax, word [bss_9e44]          ; 0x99a3
    mov word [bss_9e4c], ax          ; 0x99a6
    mov word [bss_9e50], 1           ; 0x99a9
    jmp short @..api_idx_00a2.l9     ; 0x99af
@..api_idx_00a2.l8:
    mov ax, 0x90f6                   ; 0x99b1
    push ax                          ; 0x99b4
    mov ax, 0x646                    ; 0x99b5
    push ax                          ; 0x99b8
    call api_idx_0080                ; 0x99b9
    add sp, byte 4                   ; 0x99bc
@..api_idx_00a2.l9:
    mov ax, 0xffff                   ; 0x99bf
    ret                              ; 0x99c2
@..api_idx_00a2.l10:
    cmp word [bss_9e48], byte 0xff   ; 0x99c3
    jne short @..api_idx_00a2.l12    ; 0x99c8
    cmp word [bss_9e46], byte 0xff   ; 0x99ca
    jne short @..api_idx_00a2.l12    ; 0x99cf
    cmp word [bss_9e42], byte 0xff   ; 0x99d1
    je short @..api_idx_00a2.l11     ; 0x99d6
    mov word [bss_9e62], 1           ; 0x99d8
    mov word [bss_9e54], 1           ; 0x99de
    mov word [bss_9e46], 1           ; 0x99e4
    mov ax, 0                        ; 0x99ea
    ret                              ; 0x99ed
@..api_idx_00a2.l11:
    mov ax, 0x90f7                   ; 0x99ee
    push ax                          ; 0x99f1
    mov ax, 0x647                    ; 0x99f2
    push ax                          ; 0x99f5
    call api_idx_0080                ; 0x99f6
    add sp, byte 4                   ; 0x99f9
    mov ax, 0xffff                   ; 0x99fc
    ret                              ; 0x99ff
@..api_idx_00a2.l12:
    mov ax, 0                        ; 0x9a00
    ret                              ; 0x9a03
loc_9a04:
    mov ax, 0                        ; 0x9a04
    call ds_aztec_csav               ; 0x9a07
    mov word [bss_9e46], 0xffff      ; 0x9a0a
    mov word [bss_9e42], 0xffff      ; 0x9a10
    mov word [bss_9e44], 0           ; 0x9a16
    mov ax, word [bss_9e48]          ; 0x9a1c
    jmp near @..loc_9a04.l4          ; 0x9a1f
jumptable_9baa_case_0:
    mov ax, 0x90f8                   ; 0x9a22
    push ax                          ; 0x9a25
    push word [bss_b04a]             ; 0x9a26
    call api_idx_0080                ; 0x9a2a
    add sp, byte 4                   ; 0x9a2d
    jmp near @..loc_9a04.l5          ; 0x9a30
jumptable_9baa_case_1:
    cmp word [bss_b04c], byte 0      ; 0x9a33
    jle short @..loc_9a04.l1         ; 0x9a38
    mov ax, 0x90f9                   ; 0x9a3a
    push ax                          ; 0x9a3d
    push word [bss_b04c]             ; 0x9a3e
    call api_idx_0080                ; 0x9a42
    add sp, byte 4                   ; 0x9a45
    mov ax, 0                        ; 0x9a48
    push ax                          ; 0x9a4b
    push word [bss_905a]             ; 0x9a4c
    call api_idx_0004_5              ; 0x9a50
    add sp, byte 4                   ; 0x9a53
@..loc_9a04.l1:
    jmp near @..loc_9a04.l5          ; 0x9a56
jumptable_9baa_case_2:
    mov ax, 0x90fa                   ; 0x9a59
    push ax                          ; 0x9a5c
    mov ax, 0x648                    ; 0x9a5d
    push ax                          ; 0x9a60
    call api_idx_0080                ; 0x9a61
    add sp, byte 4                   ; 0x9a64
    mov ax, word [bss_9e4e]          ; 0x9a67
    mov word [bss_9e46], ax          ; 0x9a6a
    mov ax, word [bss_9e4a]          ; 0x9a6d
    mov word [bss_9e42], ax          ; 0x9a70
    mov ax, word [bss_9e4c]          ; 0x9a73
    mov word [bss_9e44], ax          ; 0x9a76
    mov word [bss_9e62], 1           ; 0x9a79
    push word [bss_9e50]             ; 0x9a7f
    call loc_86c6                    ; 0x9a83
    pop cx                           ; 0x9a86
    jmp near @..loc_9a04.l5          ; 0x9a87
jumptable_9baa_case_3:
    mov ax, 0x90fb                   ; 0x9a8a
    push ax                          ; 0x9a8d
    mov ax, 0x649                    ; 0x9a8e
    push ax                          ; 0x9a91
    call api_idx_0080                ; 0x9a92
    add sp, byte 4                   ; 0x9a95
    mov word [bss_9e50], 0xffff      ; 0x9a98
    jmp near @..loc_9a04.l5          ; 0x9a9e
jumptable_9baa_case_4:
    mov ax, 0x90fc                   ; 0x9aa1
    push ax                          ; 0x9aa4
    mov ax, 0x64a                    ; 0x9aa5
    push ax                          ; 0x9aa8
    call api_idx_0080                ; 0x9aa9
    add sp, byte 4                   ; 0x9aac
    jmp near @..loc_9a04.l5          ; 0x9aaf
jumptable_9baa_case_5:
    mov ax, 0x90fd                   ; 0x9ab2
    push ax                          ; 0x9ab5
    mov ax, 0x64b                    ; 0x9ab6
    push ax                          ; 0x9ab9
    call api_idx_0080                ; 0x9aba
    add sp, byte 4                   ; 0x9abd
    jmp near @..loc_9a04.l5          ; 0x9ac0
jumptable_9baa_case_6:
    mov ax, 0x90fe                   ; 0x9ac3
    push ax                          ; 0x9ac6
    mov ax, 0x64c                    ; 0x9ac7
    push ax                          ; 0x9aca
    call api_idx_0080                ; 0x9acb
    add sp, byte 4                   ; 0x9ace
    mov ax, 0                        ; 0x9ad1
    push ax                          ; 0x9ad4
    mov ax, 5                        ; 0x9ad5
    push ax                          ; 0x9ad8
    call ds_app_09f0                 ; 0x9ad9
    pop cx                           ; 0x9adc
    mov cx, ax                       ; 0x9add
    inc ax                           ; 0x9adf
    mov cx, ax                       ; 0x9ae0
    mov ax, 0                        ; 0x9ae2
    sub ax, cx                       ; 0x9ae5
    push ax                          ; 0x9ae7
    push word [bss_b04e]             ; 0x9ae8
    call loc_85f9                    ; 0x9aec
    add sp, byte 6                   ; 0x9aef
    mov ax, 2                        ; 0x9af2
    push ax                          ; 0x9af5
    call ds_app_09f0                 ; 0x9af6
    pop cx                           ; 0x9af9
    cmp ax, strict word 1            ; 0x9afa
    jne short @..loc_9a04.l2         ; 0x9afd
    mov word [bss_9e70], 1           ; 0x9aff
@..loc_9a04.l2:
    jmp near @..loc_9a04.l5          ; 0x9b05
jumptable_9baa_case_7:
    mov ax, 0x90ff                   ; 0x9b08
    push ax                          ; 0x9b0b
    mov ax, 0x64d                    ; 0x9b0c
    push ax                          ; 0x9b0f
    call api_idx_0080                ; 0x9b10
    add sp, byte 4                   ; 0x9b13
    mov word [bss_9e42], 0xffff      ; 0x9b16
    mov word [bss_9e44], 0           ; 0x9b1c
    mov word [bss_9e46], 0xffff      ; 0x9b22
    mov word [bss_9e4a], 0xffff      ; 0x9b28
    mov word [bss_9e4c], 0           ; 0x9b2e
    mov word [bss_9e4e], 0xffff      ; 0x9b34
    mov word [bss_9e50], 0xffff      ; 0x9b3a
    jmp near @..loc_9a04.l5          ; 0x9b40
jumptable_9baa_case_8:
    mov ax, 0x9100                   ; 0x9b43
    push ax                          ; 0x9b46
    mov ax, 0x64e                    ; 0x9b47
    push ax                          ; 0x9b4a
    call api_idx_0080                ; 0x9b4b
    add sp, byte 4                   ; 0x9b4e
    jmp near @..loc_9a04.l5          ; 0x9b51
jumptable_9baa_case_9:
    mov ax, 0x9101                   ; 0x9b54
    push ax                          ; 0x9b57
    mov ax, 0x64f                    ; 0x9b58
    push ax                          ; 0x9b5b
    call api_idx_0080                ; 0x9b5c
    add sp, byte 4                   ; 0x9b5f
    cmp word [bss_9d6a], byte 0      ; 0x9b62
    jne short @..loc_9a04.l3         ; 0x9b67
    mov ax, 2                        ; 0x9b69
    push ax                          ; 0x9b6c
    call ds_app_09f0                 ; 0x9b6d
    pop cx                           ; 0x9b70
    cmp ax, strict word 1            ; 0x9b71
    jne short @..loc_9a04.l3         ; 0x9b74
    mov ax, 0x248                    ; 0x9b76
    imul word [bss_b04e]             ; 0x9b79
    add ax, word [bss_9136]          ; 0x9b7d
    mov bx, ax                       ; 0x9b81
    cmp byte [bx + 0x5db2], 0x32     ; 0x9b83
    jge short @..loc_9a04.l3         ; 0x9b88
    mov ax, 0                        ; 0x9b8a
    push ax                          ; 0x9b8d
    mov ax, 3                        ; 0x9b8e
    push ax                          ; 0x9b91
    call ds_app_09f0                 ; 0x9b92
    pop cx                           ; 0x9b95
    inc ax                           ; 0x9b96
    push ax                          ; 0x9b97
    push word [bss_b04e]             ; 0x9b98
    call loc_85f9                    ; 0x9b9c
    add sp, byte 6                   ; 0x9b9f
    mov word [bss_9d6a], 1           ; 0x9ba2
@..loc_9a04.l3:
    jmp short @..loc_9a04.l5         ; 0x9ba8
jumptable_9baa:
    dw jumptable_9baa_case_0 - IMAGE_BASE + 0x5055 ; 0x9baa
    dw jumptable_9baa_case_1 - IMAGE_BASE + 0x5055 ; 0x9bac
    dw jumptable_9baa_case_2 - IMAGE_BASE + 0x5055 ; 0x9bae
    dw jumptable_9baa_case_3 - IMAGE_BASE + 0x5055 ; 0x9bb0
    dw jumptable_9baa_case_4 - IMAGE_BASE + 0x5055 ; 0x9bb2
    dw jumptable_9baa_case_5 - IMAGE_BASE + 0x5055 ; 0x9bb4
    dw jumptable_9baa_case_6 - IMAGE_BASE + 0x5055 ; 0x9bb6
    dw jumptable_9baa_case_7 - IMAGE_BASE + 0x5055 ; 0x9bb8
    dw jumptable_9baa_case_8 - IMAGE_BASE + 0x5055 ; 0x9bba
    dw jumptable_9baa_case_9 - IMAGE_BASE + 0x5055 ; 0x9bbc
@..loc_9a04.l4:
    cmp ax, strict word 0xa          ; 0x9bbe
    jae short @..loc_9a04.l5         ; 0x9bc1
    xchg bx, ax                      ; 0x9bc3
    shl bx, 1                        ; 0x9bc4
    jmp [cs:bx - 0x140f]             ; 0x9bc6
@..loc_9a04.l5:
    ret                              ; 0x9bcb
