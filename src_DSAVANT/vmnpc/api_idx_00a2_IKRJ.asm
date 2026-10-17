; auto-generated
api_idx_00a2_IKRJ:
    mov ax, 0xff5e                   ; 0x9844
    call aztec_csav                  ; 0x9847
    cmp word [bss_9e46], byte 0xff   ; 0x984a
    jne short @..api_idx_00a2_IKRJ.l1 ; 0x984f
    cmp word [bss_9e60], byte 1      ; 0x9851
    jne short @..api_idx_00a2_IKRJ.l1 ; 0x9856
    mov word [bss_9e46], 1           ; 0x9858
@..api_idx_00a2_IKRJ.l1:
    cmp word [bss_9e7e], byte 0xff   ; 0x985e
    jne short @..api_idx_00a2_IKRJ.l2 ; 0x9863
    jmp near @..api_idx_00a2_IKRJ.l3 ; 0x9865
@..api_idx_00a2_IKRJ.l2:
    lea ax, word [bp - 0x0052]       ; 0x9868
    push ax                          ; 0x986b
    push word [bss_9e44]             ; 0x986c
    push word [bss_9e42]             ; 0x9870
    call loc_UIIS                    ; 0x9874
    add sp, byte 6                   ; 0x9877
    lea ax, word [bp - 0x0052]       ; 0x987a
    push ax                          ; 0x987d
    call api_idx_0002_UHGS           ; 0x987e
    pop cx                           ; 0x9881
    lea ax, word [bp - 0x0052]       ; 0x9882
    push ax                          ; 0x9885
    call api_idx_0004_ULSR           ; 0x9886
    pop cx                           ; 0x9889
    lea ax, word [bp - 0x00a2]       ; 0x988a
    push ax                          ; 0x988e
    mov ax, 0x640                    ; 0x988f
    push ax                          ; 0x9892
    call ds_app_mem_TIMR             ; 0x9893
    add sp, byte 4                   ; 0x9896
    mov ax, 0x5e                     ; 0x9899
    push ax                          ; 0x989c
    lea ax, word [bp - 0x0052]       ; 0x989d
    push ax                          ; 0x98a0
    lea ax, word [bp - 0x00a2]       ; 0x98a1
    push ax                          ; 0x98a5
    call ds_app_string_HHIL          ; 0x98a6
    add sp, byte 6                   ; 0x98a9
    lea ax, word [bp - 0x00a2]       ; 0x98ac
    push ax                          ; 0x98b0
    call loc_IPHP                    ; 0x98b1
    pop cx                           ; 0x98b4
    lea ax, word [bp - 0x0052]       ; 0x98b5
    push ax                          ; 0x98b8
    push word [bss_9e80]             ; 0x98b9
    push word [bss_9e7e]             ; 0x98bd
    call loc_UIIS                    ; 0x98c1
    add sp, byte 6                   ; 0x98c4
    lea ax, word [bp - 0x0052]       ; 0x98c7
    push ax                          ; 0x98ca
    call api_idx_0002_UHGS           ; 0x98cb
    pop cx                           ; 0x98ce
    lea ax, word [bp - 0x0052]       ; 0x98cf
    push ax                          ; 0x98d2
    call api_idx_0004_ULSR           ; 0x98d3
    pop cx                           ; 0x98d6
    lea ax, word [bp - 0x0052]       ; 0x98d7
    push ax                          ; 0x98da
    mov ax, 0x641                    ; 0x98db
    push ax                          ; 0x98de
    call api_idx_0080_TKTP           ; 0x98df
    add sp, byte 4                   ; 0x98e2
    mov ax, 0xffff                   ; 0x98e5
    ret                              ; 0x98e8
@..api_idx_00a2_IKRJ.l3:
    cmp word [bss_9e48], byte 0xff   ; 0x98e9
    jne short @..api_idx_00a2_IKRJ.l7 ; 0x98ee
    cmp word [bss_9e42], byte 0xff   ; 0x98f0
    jne short @..api_idx_00a2_IKRJ.l7 ; 0x98f5
    cmp word [bss_9e46], byte 0xff   ; 0x98f7
    je short @..api_idx_00a2_IKRJ.l4 ; 0x98fc
    mov ax, 0xa                      ; 0x98fe
    imul word [bss_9e46]             ; 0x9901
    add ax, 0xa658                   ; 0x9905
    push ax                          ; 0x9908
    lea ax, word [bp - 0x0052]       ; 0x9909
    push ax                          ; 0x990c
    call aztec_strcpy                ; 0x990d
    add sp, byte 4                   ; 0x9910
    lea ax, word [bp - 0x0052]       ; 0x9913
    push ax                          ; 0x9916
    call api_idx_0004_ULSR           ; 0x9917
    pop cx                           ; 0x991a
    lea ax, word [bp - 0x0052]       ; 0x991b
    push ax                          ; 0x991e
    mov ax, 0x642                    ; 0x991f
    push ax                          ; 0x9922
    call api_idx_0080_TKTP           ; 0x9923
    add sp, byte 4                   ; 0x9926
    jmp short @..api_idx_00a2_IKRJ.l6 ; 0x9929
@..api_idx_00a2_IKRJ.l4:
    mov ax, 2                        ; 0x992b
    push ax                          ; 0x992e
    call ds_app_PUNN                 ; 0x992f
    pop cx                           ; 0x9932
    test ax, ax                      ; 0x9933
    jne short @..api_idx_00a2_IKRJ.l5 ; 0x9935
    mov ax, 0x90f4                   ; 0x9937
    push ax                          ; 0x993a
    mov ax, 0x643                    ; 0x993b
    push ax                          ; 0x993e
    call api_idx_0080_TKTP           ; 0x993f
    add sp, byte 4                   ; 0x9942
    jmp short @..api_idx_00a2_IKRJ.l6 ; 0x9945
@..api_idx_00a2_IKRJ.l5:
    mov ax, 0x90f5                   ; 0x9947
    push ax                          ; 0x994a
    mov ax, 0x644                    ; 0x994b
    push ax                          ; 0x994e
    call api_idx_0080_TKTP           ; 0x994f
    add sp, byte 4                   ; 0x9952
@..api_idx_00a2_IKRJ.l6:
    mov ax, 0xffff                   ; 0x9955
    ret                              ; 0x9958
@..api_idx_00a2_IKRJ.l7:
    cmp word [bss_9e82], byte 0xff   ; 0x9959
    je short @..api_idx_00a2_IKRJ.l10 ; 0x995e
    cmp word [bss_9e42], byte 0xff   ; 0x9960
    je short @..api_idx_00a2_IKRJ.l8 ; 0x9965
    lea ax, word [bp - 0x0052]       ; 0x9967
    push ax                          ; 0x996a
    mov ax, 1                        ; 0x996b
    push ax                          ; 0x996e
    push word [bss_9e42]             ; 0x996f
    call loc_UIIS                    ; 0x9973
    add sp, byte 6                   ; 0x9976
    lea ax, word [bp - 0x0052]       ; 0x9979
    push ax                          ; 0x997c
    call api_idx_0002_UHGS           ; 0x997d
    pop cx                           ; 0x9980
    lea ax, word [bp - 0x0052]       ; 0x9981
    push ax                          ; 0x9984
    call api_idx_0004_ULSR           ; 0x9985
    pop cx                           ; 0x9988
    lea ax, word [bp - 0x0052]       ; 0x9989
    push ax                          ; 0x998c
    mov ax, 0x645                    ; 0x998d
    push ax                          ; 0x9990
    call api_idx_0080_TKTP           ; 0x9991
    add sp, byte 4                   ; 0x9994
    mov word [bss_9e4e], 1           ; 0x9997
    mov ax, word [bss_9e42]          ; 0x999d
    mov word [bss_9e4a], ax          ; 0x99a0
    mov ax, word [bss_9e44]          ; 0x99a3
    mov word [bss_9e4c], ax          ; 0x99a6
    mov word [bss_9e50], 1           ; 0x99a9
    jmp short @..api_idx_00a2_IKRJ.l9 ; 0x99af
@..api_idx_00a2_IKRJ.l8:
    mov ax, 0x90f6                   ; 0x99b1
    push ax                          ; 0x99b4
    mov ax, 0x646                    ; 0x99b5
    push ax                          ; 0x99b8
    call api_idx_0080_TKTP           ; 0x99b9
    add sp, byte 4                   ; 0x99bc
@..api_idx_00a2_IKRJ.l9:
    mov ax, 0xffff                   ; 0x99bf
    ret                              ; 0x99c2
@..api_idx_00a2_IKRJ.l10:
    cmp word [bss_9e48], byte 0xff   ; 0x99c3
    jne short @..api_idx_00a2_IKRJ.l12 ; 0x99c8
    cmp word [bss_9e46], byte 0xff   ; 0x99ca
    jne short @..api_idx_00a2_IKRJ.l12 ; 0x99cf
    cmp word [bss_9e42], byte 0xff   ; 0x99d1
    je short @..api_idx_00a2_IKRJ.l11 ; 0x99d6
    mov word [bss_9e62], 1           ; 0x99d8
    mov word [bss_9e54], 1           ; 0x99de
    mov word [bss_9e46], 1           ; 0x99e4
    mov ax, 0                        ; 0x99ea
    ret                              ; 0x99ed
@..api_idx_00a2_IKRJ.l11:
    mov ax, 0x90f7                   ; 0x99ee
    push ax                          ; 0x99f1
    mov ax, 0x647                    ; 0x99f2
    push ax                          ; 0x99f5
    call api_idx_0080_TKTP           ; 0x99f6
    add sp, byte 4                   ; 0x99f9
    mov ax, 0xffff                   ; 0x99fc
    ret                              ; 0x99ff
@..api_idx_00a2_IKRJ.l12:
    mov ax, 0                        ; 0x9a00
    ret                              ; 0x9a03
