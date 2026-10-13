api_idx_0010_2:
    mov ax, 0xfff0                   ; 0x3802
    call aztec_csav                  ; 0x3805
    mov ax, 4                        ; 0x3808
    cmp word [bss_91d4], byte 0      ; 0x380b
    jne short @..api_idx_0010_2.l1   ; 0x3810
    mov ax, 3                        ; 0x3812
@..api_idx_0010_2.l1:
    mov word [bp - 0x000a], ax       ; 0x3815
    mov word [bp - 0x0002], 0xffff   ; 0x3818
    mov word [bp - 0x0004], 0xffff   ; 0x381d
    cmp word [bss_91d4], byte 0      ; 0x3822
    jg short @..api_idx_0010_2.l2    ; 0x3827
    jmp near @..api_idx_0010_2.l11   ; 0x3829
@..api_idx_0010_2.l2:
    cmp word [bp + 0x4], byte 3      ; 0x382c
    je short @..api_idx_0010_2.l3    ; 0x3830
    jmp near @..api_idx_0010_2.l11   ; 0x3832
@..api_idx_0010_2.l3:
    mov ax, word [bss_91d4]          ; 0x3835
    cmp ax, strict word 3            ; 0x3838
    jl short @..api_idx_0010_2.l4    ; 0x383b
    cmp ax, strict word 5            ; 0x383d
    jne short @..api_idx_0010_2.l5   ; 0x3840
@..api_idx_0010_2.l4:
    mov ax, 0x15                     ; 0x3842
    jmp short @..api_idx_0010_2.l6   ; 0x3845
@..api_idx_0010_2.l5:
    mov ax, 0x14                     ; 0x3847
@..api_idx_0010_2.l6:
    mov word [bp - 0x000c], ax       ; 0x384a
    cmp word [bss_91d4], byte 3      ; 0x384d
    jl short @..api_idx_0010_2.l7    ; 0x3852
    cmp word [bss_91d4], byte 5      ; 0x3854
    jne short @..api_idx_0010_2.l8   ; 0x3859
@..api_idx_0010_2.l7:
    mov ax, 0x16                     ; 0x385b
    jmp short @..api_idx_0010_2.l9   ; 0x385e
@..api_idx_0010_2.l8:
    mov ax, 0x15                     ; 0x3860
@..api_idx_0010_2.l9:
    mov word [bp - 0x000e], ax       ; 0x3863
    cmp word [bp + 0x8], byte 0      ; 0x3866
    jne short @..api_idx_0010_2.l10  ; 0x386a
    push ax                          ; 0x386c
    push word [bp - 0x000c]          ; 0x386d
    call loc_2e98                    ; 0x3870
    add sp, byte 4                   ; 0x3873
    mov word [bp - 0x0002], ax       ; 0x3876
    push word [bp - 0x000c]          ; 0x3879
    call loc_2e84                    ; 0x387c
    pop cx                           ; 0x387f
    mov word [bp - 0x0004], ax       ; 0x3880
    jmp short @..api_idx_0010_2.l11  ; 0x3883
@..api_idx_0010_2.l10:
    cmp word [bp + 0x8], byte 4      ; 0x3885
    jne short @..api_idx_0010_2.l11  ; 0x3889
    push word [bp - 0x000c]          ; 0x388b
    push word [bp - 0x000e]          ; 0x388e
    call loc_2e98                    ; 0x3891
    add sp, byte 4                   ; 0x3894
    mov word [bp - 0x0002], ax       ; 0x3897
    push word [bp - 0x000e]          ; 0x389a
    call loc_2e84                    ; 0x389d
    pop cx                           ; 0x38a0
    mov word [bp - 0x0004], ax       ; 0x38a1
@..api_idx_0010_2.l11:
    mov ax, word [bp + 0x6]          ; 0x38a4
    jmp near @..api_idx_0010_2.l25   ; 0x38a7
jumptable_3a86_case_1:
    cmp word [bp - 0x0002], byte 0xff ; 0x38aa
    je short @..api_idx_0010_2.l13   ; 0x38ae
    mov ax, 0                        ; 0x38b0
    push ax                          ; 0x38b3
    push ax                          ; 0x38b4
    push ax                          ; 0x38b5
    push word [bp + 0x10]            ; 0x38b6
    push word [bp + 0x4]             ; 0x38b9
    mov ax, 0xffff                   ; 0x38bc
    push ax                          ; 0x38bf
    push word [bp - 0x0004]          ; 0x38c0
    mov ax, 0                        ; 0x38c3
    push ax                          ; 0x38c6
    push ax                          ; 0x38c7
    push ax                          ; 0x38c8
    cmp word [bp + 0x4], byte 1      ; 0x38c9
    jne short @..api_idx_0010_2.l12  ; 0x38cd
    mov ax, 2                        ; 0x38cf
@..api_idx_0010_2.l12:
    push ax                          ; 0x38d2
    mov ax, 0xffff                   ; 0x38d3
    push ax                          ; 0x38d6
    push word [bp - 0x0002]          ; 0x38d7
    mov ax, 0xff                     ; 0x38da
    push ax                          ; 0x38dd
    call api_idx_0004_5              ; 0x38de
    add sp, byte 0x1c                ; 0x38e1
@..api_idx_0010_2.l13:
    jmp near @..api_idx_0010_2.l26   ; 0x38e4
jumptable_3a86_case_5:
    cmp word [bp - 0x0002], byte 0xff ; 0x38e7
    je short @..api_idx_0010_2.l14   ; 0x38eb
    mov ax, 0                        ; 0x38ed
    push ax                          ; 0x38f0
    push ax                          ; 0x38f1
    push ax                          ; 0x38f2
    push word [bp + 0x14]            ; 0x38f3
    push word [bp + 0x4]             ; 0x38f6
    mov ax, 0xffff                   ; 0x38f9
    push ax                          ; 0x38fc
    push word [bp - 0x0004]          ; 0x38fd
    mov ax, 0                        ; 0x3900
    push ax                          ; 0x3903
    push ax                          ; 0x3904
    push ax                          ; 0x3905
    mov ax, 2                        ; 0x3906
    push ax                          ; 0x3909
    mov ax, 0xffff                   ; 0x390a
    push ax                          ; 0x390d
    push word [bp - 0x0002]          ; 0x390e
    mov ax, 0xff                     ; 0x3911
    push ax                          ; 0x3914
    call api_idx_0004_5              ; 0x3915
    add sp, byte 0x1c                ; 0x3918
@..api_idx_0010_2.l14:
    jmp near @..api_idx_0010_2.l26   ; 0x391b
jumptable_3a86_case_2:
    cmp word [bss_91d4], byte 0      ; 0x391e
    jne short @..api_idx_0010_2.l17  ; 0x3923
    cmp word [bp + 0x4], byte 3      ; 0x3925
    jge short @..api_idx_0010_2.l16  ; 0x3929
    mov ax, 0                        ; 0x392b
    push ax                          ; 0x392e
    push ax                          ; 0x392f
    push ax                          ; 0x3930
    push word [bp + 0xa]             ; 0x3931
    push word [bp + 0x4]             ; 0x3934
    mov ax, 0xffff                   ; 0x3937
    push ax                          ; 0x393a
    mov ax, word [bp + 0x16]         ; 0x393b
    add ax, word [bp + 0x4]          ; 0x393e
    push ax                          ; 0x3941
    call loc_2e84                    ; 0x3942
    pop cx                           ; 0x3945
    push ax                          ; 0x3946
    mov ax, 0                        ; 0x3947
    push ax                          ; 0x394a
    push ax                          ; 0x394b
    push ax                          ; 0x394c
    mov cx, word [bp + 0x4]          ; 0x394d
    cmp cx, byte 1                   ; 0x3950
    jne short @..api_idx_0010_2.l15  ; 0x3953
    mov ax, 2                        ; 0x3955
@..api_idx_0010_2.l15:
    push ax                          ; 0x3958
    mov ax, 0xffff                   ; 0x3959
    push ax                          ; 0x395c
    add cx, word [bp + 0x18]         ; 0x395d
    mov ax, cx                       ; 0x3960
    push ax                          ; 0x3962
    mov ax, word [bp + 0x16]         ; 0x3963
    add ax, word [bp + 0x4]          ; 0x3966
    push ax                          ; 0x3969
    call loc_2e98                    ; 0x396a
    add sp, byte 4                   ; 0x396d
    push ax                          ; 0x3970
    mov ax, 0xff                     ; 0x3971
    push ax                          ; 0x3974
    call api_idx_0004_5              ; 0x3975
    add sp, byte 0x1c                ; 0x3978
@..api_idx_0010_2.l16:
    jmp near @..api_idx_0010_2.l21   ; 0x397b
@..api_idx_0010_2.l17:
    cmp word [bss_91d4], byte 3      ; 0x397e
    jl short @..api_idx_0010_2.l18   ; 0x3983
    cmp word [bss_91d4], byte 5      ; 0x3985
    jne short @..api_idx_0010_2.l20  ; 0x398a
@..api_idx_0010_2.l18:
    cmp word [bp + 0x4], byte 4      ; 0x398c
    jge short @..api_idx_0010_2.l19  ; 0x3990
    mov ax, 0                        ; 0x3992
    push ax                          ; 0x3995
    push ax                          ; 0x3996
    push ax                          ; 0x3997
    push word [bp + 0x10]            ; 0x3998
    push word [bp + 0x4]             ; 0x399b
    push word [bp - 0x0004]          ; 0x399e
    mov ax, word [bp + 0x32]         ; 0x39a1
    add ax, word [bp + 0x4]          ; 0x39a4
    push ax                          ; 0x39a7
    call loc_2e84                    ; 0x39a8
    pop cx                           ; 0x39ab
    push ax                          ; 0x39ac
    mov ax, 0                        ; 0x39ad
    push ax                          ; 0x39b0
    push ax                          ; 0x39b1
    mov ax, 2                        ; 0x39b2
    push ax                          ; 0x39b5
    push ax                          ; 0x39b6
    push word [bp - 0x0002]          ; 0x39b7
    mov ax, word [bp + 0x34]         ; 0x39ba
    add ax, word [bp + 0x4]          ; 0x39bd
    push ax                          ; 0x39c0
    mov ax, word [bp + 0x32]         ; 0x39c1
    add ax, word [bp + 0x4]          ; 0x39c4
    push ax                          ; 0x39c7
    call loc_2e98                    ; 0x39c8
    add sp, byte 4                   ; 0x39cb
    push ax                          ; 0x39ce
    mov ax, 0xff                     ; 0x39cf
    push ax                          ; 0x39d2
    call api_idx_0004_5              ; 0x39d3
    add sp, byte 0x1c                ; 0x39d6
@..api_idx_0010_2.l19:
    jmp short @..api_idx_0010_2.l21  ; 0x39d9
@..api_idx_0010_2.l20:
    cmp word [bss_91d4], byte 5      ; 0x39db
    jge short @..api_idx_0010_2.l21  ; 0x39e0
    cmp word [bp + 0x4], byte 4      ; 0x39e2
    jge short @..api_idx_0010_2.l21  ; 0x39e6
    mov ax, 0                        ; 0x39e8
    push ax                          ; 0x39eb
    push ax                          ; 0x39ec
    push ax                          ; 0x39ed
    push word [bp + 0x14]            ; 0x39ee
    push word [bp + 0x4]             ; 0x39f1
    push word [bp - 0x0004]          ; 0x39f4
    mov ax, word [bp + 0x46]         ; 0x39f7
    add ax, word [bp + 0x4]          ; 0x39fa
    push ax                          ; 0x39fd
    call loc_2e84                    ; 0x39fe
    pop cx                           ; 0x3a01
    push ax                          ; 0x3a02
    mov ax, 0                        ; 0x3a03
    push ax                          ; 0x3a06
    push ax                          ; 0x3a07
    mov ax, 2                        ; 0x3a08
    push ax                          ; 0x3a0b
    push ax                          ; 0x3a0c
    push word [bp - 0x0002]          ; 0x3a0d
    mov ax, word [bp + 0x48]         ; 0x3a10
    add ax, word [bp + 0x4]          ; 0x3a13
    push ax                          ; 0x3a16
    mov ax, word [bp + 0x46]         ; 0x3a17
    add ax, word [bp + 0x4]          ; 0x3a1a
    push ax                          ; 0x3a1d
    call loc_2e98                    ; 0x3a1e
    add sp, byte 4                   ; 0x3a21
    push ax                          ; 0x3a24
    mov ax, 0xff                     ; 0x3a25
    push ax                          ; 0x3a28
    call api_idx_0004_5              ; 0x3a29
    add sp, byte 0x1c                ; 0x3a2c
@..api_idx_0010_2.l21:
    jmp near @..api_idx_0010_2.l26   ; 0x3a2f
jumptable_3a86_case_4:
    mov ax, word [bss_91d4]          ; 0x3a32
    mov cx, 2                        ; 0x3a35
    cwd                              ; 0x3a38
    idiv cx                          ; 0x3a39
    mov ax, dx                       ; 0x3a3b
    cmp ax, strict word 1            ; 0x3a3d
    jne short @..api_idx_0010_2.l24  ; 0x3a40
    cmp word [bp + 0x4], byte 4      ; 0x3a42
    jge short @..api_idx_0010_2.l24  ; 0x3a46
    mov ax, 0                        ; 0x3a48
    push ax                          ; 0x3a4b
    push ax                          ; 0x3a4c
    push ax                          ; 0x3a4d
    push word [bp + 0xc]             ; 0x3a4e
    push word [bp + 0x4]             ; 0x3a51
    mov ax, 0xffff                   ; 0x3a54
    push ax                          ; 0x3a57
    push ax                          ; 0x3a58
    mov ax, 0                        ; 0x3a59
    push ax                          ; 0x3a5c
    push ax                          ; 0x3a5d
    push ax                          ; 0x3a5e
    push cx                          ; 0x3a5f
    mov ax, 0xffff                   ; 0x3a60
    push ax                          ; 0x3a63
    cmp word [bss_9b18], byte 0      ; 0x3a64
    je short @..api_idx_0010_2.l22   ; 0x3a69
    mov ax, word [bp + 0x1c]         ; 0x3a6b
    add ax, word [bp + 0x4]          ; 0x3a6e
    jmp short @..api_idx_0010_2.l23  ; 0x3a71
@..api_idx_0010_2.l22:
    mov ax, word [bp + 0x1a]         ; 0x3a73
    add ax, word [bp + 0x4]          ; 0x3a76
@..api_idx_0010_2.l23:
    push ax                          ; 0x3a79
    mov ax, 0xfc                     ; 0x3a7a
    push ax                          ; 0x3a7d
    call api_idx_0004_5              ; 0x3a7e
    add sp, byte 0x1c                ; 0x3a81
@..api_idx_0010_2.l24:
    jmp short @..api_idx_0010_2.l26  ; 0x3a84
jumptable_3a86:
    dw jumptable_3a86_case_0 - IMAGE_BASE + 0x5055 ; 0x3a86
    dw jumptable_3a86_case_1 - IMAGE_BASE + 0x5055 ; 0x3a88
    dw jumptable_3a86_case_2 - IMAGE_BASE + 0x5055 ; 0x3a8a
    dw jumptable_3a86_case_1 - IMAGE_BASE + 0x5055 ; 0x3a8c
    dw jumptable_3a86_case_4 - IMAGE_BASE + 0x5055 ; 0x3a8e
    dw jumptable_3a86_case_5 - IMAGE_BASE + 0x5055 ; 0x3a90
    dw jumptable_3a86_case_1 - IMAGE_BASE + 0x5055 ; 0x3a92
    dw jumptable_3a86_case_1 - IMAGE_BASE + 0x5055 ; 0x3a94
    dw jumptable_3a86_case_0 - IMAGE_BASE + 0x5055 ; 0x3a96
    dw jumptable_3a86_case_0 - IMAGE_BASE + 0x5055 ; 0x3a98
    dw jumptable_3a86_case_2 - IMAGE_BASE + 0x5055 ; 0x3a9a
    dw jumptable_3a86_case_2 - IMAGE_BASE + 0x5055 ; 0x3a9c
    dw jumptable_3a86_case_2 - IMAGE_BASE + 0x5055 ; 0x3a9e
    dw jumptable_3a86_case_2 - IMAGE_BASE + 0x5055 ; 0x3aa0
    dw jumptable_3a86_case_2 - IMAGE_BASE + 0x5055 ; 0x3aa2
    dw jumptable_3a86_case_2 - IMAGE_BASE + 0x5055 ; 0x3aa4
@..api_idx_0010_2.l25:
    cmp ax, strict word 0x10         ; 0x3aa6
    jae short @..api_idx_0010_2.l26  ; 0x3aa9
    xchg bx, ax                      ; 0x3aab
    shl bx, 1                        ; 0x3aac
    jmp [cs:bx - 0x7533]             ; 0x3aae
jumptable_3a86_case_0:
@..api_idx_0010_2.l26:
    mov word [bp - 0x0002], 0xffff   ; 0x3ab3
    mov word [bp - 0x0004], 0xffff   ; 0x3ab8
    mov ax, word [bp + 0x4]          ; 0x3abd
    cmp ax, word [bp - 0x000a]       ; 0x3ac0
    jl short @..api_idx_0010_2.l27   ; 0x3ac3
    jmp near @..api_idx_0010_2.l49   ; 0x3ac5
@..api_idx_0010_2.l27:
    mov word [bp - 0x0010], 0xffff   ; 0x3ac8
    mov ax, word [bp + 0x6]          ; 0x3acd
    jmp near @..api_idx_0010_2.l47   ; 0x3ad0
jumptable_3ed8_case_8:
    mov ax, word [bp + 0x2e]         ; 0x3ad3
    cmp word [bp + 0x6], byte 8      ; 0x3ad6
    jne short @..api_idx_0010_2.l28  ; 0x3ada
    mov ax, word [bp + 0x2a]         ; 0x3adc
@..api_idx_0010_2.l28:
    mov word [bp - 0x0006], ax       ; 0x3adf
    mov ax, word [bp + 0x30]         ; 0x3ae2
    cmp word [bp + 0x6], byte 8      ; 0x3ae5
    jne short @..api_idx_0010_2.l29  ; 0x3ae9
    mov ax, word [bp + 0x2c]         ; 0x3aeb
@..api_idx_0010_2.l29:
    mov word [bp - 0x0008], ax       ; 0x3aee
    mov ax, word [bp - 0x0006]       ; 0x3af1
    add ax, word [bp + 0x4]          ; 0x3af4
    inc ax                           ; 0x3af7
    inc ax                           ; 0x3af8
    inc ax                           ; 0x3af9
    mov word [bp - 0x0002], ax       ; 0x3afa
    mov word [bp - 0x0004], 0xffff   ; 0x3afd
jumptable_3ed8_case_7:
    cmp word [bp + 0x6], byte 7      ; 0x3b02
    jne short @..api_idx_0010_2.l30  ; 0x3b06
    mov ax, word [bp + 0x44]         ; 0x3b08
    add ax, word [bp + 0x4]          ; 0x3b0b
    push ax                          ; 0x3b0e
    mov ax, word [bp + 0x42]         ; 0x3b0f
    add ax, word [bp + 0x4]          ; 0x3b12
    push ax                          ; 0x3b15
    call loc_2e98                    ; 0x3b16
    add sp, byte 4                   ; 0x3b19
    mov word [bp - 0x0002], ax       ; 0x3b1c
    mov ax, word [bp + 0x42]         ; 0x3b1f
    add ax, word [bp + 0x4]          ; 0x3b22
    push ax                          ; 0x3b25
    call loc_2e84                    ; 0x3b26
    pop cx                           ; 0x3b29
    mov word [bp - 0x0004], ax       ; 0x3b2a
jumptable_3ed8_case_1:
@..api_idx_0010_2.l30:
    cmp word [bss_91d4], byte 0      ; 0x3b2d
    jne short @..api_idx_0010_2.l31  ; 0x3b32
    mov ax, 0                        ; 0x3b34
    push ax                          ; 0x3b37
    push ax                          ; 0x3b38
    push ax                          ; 0x3b39
    push word [bp + 0xa]             ; 0x3b3a
    push word [bp + 0x4]             ; 0x3b3d
    push word [bp - 0x0004]          ; 0x3b40
    mov ax, word [bp + 0x1e]         ; 0x3b43
    add ax, word [bp + 0x4]          ; 0x3b46
    push ax                          ; 0x3b49
    call loc_2e84                    ; 0x3b4a
    pop cx                           ; 0x3b4d
    push ax                          ; 0x3b4e
    mov ax, 0                        ; 0x3b4f
    push ax                          ; 0x3b52
    push ax                          ; 0x3b53
    mov ax, 2                        ; 0x3b54
    push ax                          ; 0x3b57
    push ax                          ; 0x3b58
    push word [bp - 0x0002]          ; 0x3b59
    mov ax, word [bp + 0x20]         ; 0x3b5c
    add ax, word [bp + 0x4]          ; 0x3b5f
    push ax                          ; 0x3b62
    mov ax, word [bp + 0x1e]         ; 0x3b63
    add ax, word [bp + 0x4]          ; 0x3b66
    push ax                          ; 0x3b69
    call loc_2e98                    ; 0x3b6a
    add sp, byte 4                   ; 0x3b6d
    push ax                          ; 0x3b70
    mov ax, 0xff                     ; 0x3b71
    push ax                          ; 0x3b74
    call api_idx_0004_5              ; 0x3b75
    add sp, byte 0x1c                ; 0x3b78
    jmp short @..api_idx_0010_2.l32  ; 0x3b7b
@..api_idx_0010_2.l31:
    cmp word [bss_91d4], byte 2      ; 0x3b7d
    jne short @..api_idx_0010_2.l32  ; 0x3b82
    mov ax, 0                        ; 0x3b84
    push ax                          ; 0x3b87
    push ax                          ; 0x3b88
    push ax                          ; 0x3b89
    push word [bp + 0xe]             ; 0x3b8a
    push word [bp + 0x4]             ; 0x3b8d
    push word [bp - 0x0004]          ; 0x3b90
    mov ax, word [bp + 0x36]         ; 0x3b93
    add ax, word [bp + 0x4]          ; 0x3b96
    push ax                          ; 0x3b99
    call loc_2e84                    ; 0x3b9a
    pop cx                           ; 0x3b9d
    push ax                          ; 0x3b9e
    mov ax, 0                        ; 0x3b9f
    push ax                          ; 0x3ba2
    push ax                          ; 0x3ba3
    mov ax, 2                        ; 0x3ba4
    push ax                          ; 0x3ba7
    push ax                          ; 0x3ba8
    push word [bp - 0x0002]          ; 0x3ba9
    mov ax, word [bp + 0x38]         ; 0x3bac
    add ax, word [bp + 0x4]          ; 0x3baf
    push ax                          ; 0x3bb2
    mov ax, word [bp + 0x36]         ; 0x3bb3
    add ax, word [bp + 0x4]          ; 0x3bb6
    push ax                          ; 0x3bb9
    call loc_2e98                    ; 0x3bba
    add sp, byte 4                   ; 0x3bbd
    push ax                          ; 0x3bc0
    mov ax, 0xff                     ; 0x3bc1
    push ax                          ; 0x3bc4
    call api_idx_0004_5              ; 0x3bc5
    add sp, byte 0x1c                ; 0x3bc8
@..api_idx_0010_2.l32:
    cmp word [bp + 0x6], byte 3      ; 0x3bcb
    je short @..api_idx_0010_2.l33   ; 0x3bcf
    jmp near @..api_idx_0010_2.l36   ; 0x3bd1
@..api_idx_0010_2.l33:
    cmp word [bss_831a], byte 0      ; 0x3bd4
    je short @..api_idx_0010_2.l34   ; 0x3bd9
    cmp word [bp + 0x4], byte 0      ; 0x3bdb
    jne short @..api_idx_0010_2.l34  ; 0x3bdf
    cmp word [bp + 0x8], byte 2      ; 0x3be1
    jne short @..api_idx_0010_2.l34  ; 0x3be5
    mov ax, 0                        ; 0x3be7
    push ax                          ; 0x3bea
    push ax                          ; 0x3beb
    push ax                          ; 0x3bec
    push ax                          ; 0x3bed
    push word [bp + 0x4]             ; 0x3bee
    mov ax, 0xf8                     ; 0x3bf1
    push ax                          ; 0x3bf4
    mov ax, 0x48                     ; 0x3bf5
    push ax                          ; 0x3bf8
    mov ax, 0                        ; 0x3bf9
    push ax                          ; 0x3bfc
    push ax                          ; 0x3bfd
    push ax                          ; 0x3bfe
    mov ax, word [bss_831a]          ; 0x3bff
    add ax, strict word 0xc          ; 0x3c02
    push ax                          ; 0x3c05
    mov ax, 0                        ; 0x3c06
    push ax                          ; 0x3c09
    mov ax, 0xa                      ; 0x3c0a
    imul word [bp + 0x4]             ; 0x3c0d
    mov cx, word [bp + 0x8]          ; 0x3c10
    shl cx, 1                        ; 0x3c13
    add ax, cx                       ; 0x3c15
    mov bx, ax                       ; 0x3c17
    push word [bx + 0x36e]           ; 0x3c19
    mov ax, 5                        ; 0x3c1d
    push ax                          ; 0x3c20
    call api_idx_0004_5              ; 0x3c21
    add sp, byte 0x1c                ; 0x3c24
    jmp near @..api_idx_0010_2.l35   ; 0x3c27
@..api_idx_0010_2.l34:
    mov ax, 0                        ; 0x3c2a
    push ax                          ; 0x3c2d
    push ax                          ; 0x3c2e
    push word [bss_91d0]             ; 0x3c2f
    push ax                          ; 0x3c33
    push word [bp + 0x4]             ; 0x3c34
    mov ax, 0xf8                     ; 0x3c37
    push ax                          ; 0x3c3a
    mov ax, 0x48                     ; 0x3c3b
    push ax                          ; 0x3c3e
    mov ax, 0                        ; 0x3c3f
    push ax                          ; 0x3c42
    push ax                          ; 0x3c43
    push ax                          ; 0x3c44
    mov ax, word [bp + 0x4]          ; 0x3c45
    shl ax, 1                        ; 0x3c48
    add ax, word [bss_91d0]          ; 0x3c4a
    add ax, strict word 5            ; 0x3c4e
    push ax                          ; 0x3c51
    mov ax, 0                        ; 0x3c52
    push ax                          ; 0x3c55
    mov ax, 0xa                      ; 0x3c56
    imul word [bp + 0x4]             ; 0x3c59
    mov cx, word [bp + 0x8]          ; 0x3c5c
    shl cx, 1                        ; 0x3c5f
    add ax, cx                       ; 0x3c61
    mov bx, ax                       ; 0x3c63
    push word [bx + 0x36e]           ; 0x3c65
    mov ax, 5                        ; 0x3c69
    push ax                          ; 0x3c6c
    call api_idx_0004_5              ; 0x3c6d
    add sp, byte 0x1c                ; 0x3c70
    mov ax, 0                        ; 0x3c73
    push ax                          ; 0x3c76
    push ax                          ; 0x3c77
    push word [bss_91d0]             ; 0x3c78
    push ax                          ; 0x3c7c
    push word [bp + 0x4]             ; 0x3c7d
    mov ax, 0xf8                     ; 0x3c80
    push ax                          ; 0x3c83
    mov ax, 0x48                     ; 0x3c84
    push ax                          ; 0x3c87
    mov ax, 0                        ; 0x3c88
    push ax                          ; 0x3c8b
    push ax                          ; 0x3c8c
    push ax                          ; 0x3c8d
    mov ax, word [bp + 0x4]          ; 0x3c8e
    inc ax                           ; 0x3c91
    push ax                          ; 0x3c92
    mov ax, 0                        ; 0x3c93
    push ax                          ; 0x3c96
    mov ax, 0xa                      ; 0x3c97
    imul word [bp + 0x4]             ; 0x3c9a
    mov cx, word [bp + 0x8]          ; 0x3c9d
    shl cx, 1                        ; 0x3ca0
    add ax, cx                       ; 0x3ca2
    mov bx, ax                       ; 0x3ca4
    push word [bx + 0x36e]           ; 0x3ca6
    mov ax, 5                        ; 0x3caa
    push ax                          ; 0x3cad
    call api_idx_0004_5              ; 0x3cae
    add sp, byte 0x1c                ; 0x3cb1
@..api_idx_0010_2.l35:
    jmp short @..api_idx_0010_2.l37  ; 0x3cb4
@..api_idx_0010_2.l36:
    cmp word [bp + 0x6], byte 6      ; 0x3cb6
    jne short @..api_idx_0010_2.l37  ; 0x3cba
    mov ax, 0                        ; 0x3cbc
    push ax                          ; 0x3cbf
    push ax                          ; 0x3cc0
    push word [bss_91d0]             ; 0x3cc1
    push ax                          ; 0x3cc5
    push word [bp + 0x4]             ; 0x3cc6
    mov ax, 0xf8                     ; 0x3cc9
    push ax                          ; 0x3ccc
    mov ax, 0x48                     ; 0x3ccd
    push ax                          ; 0x3cd0
    mov ax, 0                        ; 0x3cd1
    push ax                          ; 0x3cd4
    push ax                          ; 0x3cd5
    push ax                          ; 0x3cd6
    mov ax, word [bp + 0x4]          ; 0x3cd7
    inc ax                           ; 0x3cda
    push ax                          ; 0x3cdb
    mov ax, 0                        ; 0x3cdc
    push ax                          ; 0x3cdf
    mov ax, 0xa                      ; 0x3ce0
    imul word [bp + 0x4]             ; 0x3ce3
    mov cx, word [bp + 0x8]          ; 0x3ce6
    shl cx, 1                        ; 0x3ce9
    add ax, cx                       ; 0x3ceb
    mov bx, ax                       ; 0x3ced
    push word [bx + 0x36e]           ; 0x3cef
    mov ax, 5                        ; 0x3cf3
    push ax                          ; 0x3cf6
    call api_idx_0004_5              ; 0x3cf7
    add sp, byte 0x1c                ; 0x3cfa
@..api_idx_0010_2.l37:
    cmp word [bss_91d4], byte 0      ; 0x3cfd
    jne short @..api_idx_0010_2.l38  ; 0x3d02
    mov ax, 0                        ; 0x3d04
    push ax                          ; 0x3d07
    push ax                          ; 0x3d08
    push ax                          ; 0x3d09
    push word [bp + 0xa]             ; 0x3d0a
    push word [bp + 0x4]             ; 0x3d0d
    mov ax, word [bp + 0x26]         ; 0x3d10
    add ax, word [bp + 0x4]          ; 0x3d13
    push ax                          ; 0x3d16
    call loc_2e84                    ; 0x3d17
    pop cx                           ; 0x3d1a
    push ax                          ; 0x3d1b
    mov ax, word [bp + 0x22]         ; 0x3d1c
    add ax, word [bp + 0x4]          ; 0x3d1f
    push ax                          ; 0x3d22
    call loc_2e84                    ; 0x3d23
    pop cx                           ; 0x3d26
    push ax                          ; 0x3d27
    mov ax, 0                        ; 0x3d28
    push ax                          ; 0x3d2b
    push ax                          ; 0x3d2c
    mov ax, 2                        ; 0x3d2d
    push ax                          ; 0x3d30
    push ax                          ; 0x3d31
    mov ax, word [bp + 0x28]         ; 0x3d32
    add ax, word [bp + 0x4]          ; 0x3d35
    push ax                          ; 0x3d38
    mov ax, word [bp + 0x26]         ; 0x3d39
    add ax, word [bp + 0x4]          ; 0x3d3c
    push ax                          ; 0x3d3f
    call loc_2e98                    ; 0x3d40
    add sp, byte 4                   ; 0x3d43
    push ax                          ; 0x3d46
    mov ax, word [bp + 0x24]         ; 0x3d47
    add ax, word [bp + 0x4]          ; 0x3d4a
    push ax                          ; 0x3d4d
    mov ax, word [bp + 0x22]         ; 0x3d4e
    add ax, word [bp + 0x4]          ; 0x3d51
    push ax                          ; 0x3d54
    call loc_2e98                    ; 0x3d55
    add sp, byte 4                   ; 0x3d58
    push ax                          ; 0x3d5b
    mov ax, 0xff                     ; 0x3d5c
    push ax                          ; 0x3d5f
    call api_idx_0004_5              ; 0x3d60
    add sp, byte 0x1c                ; 0x3d63
    jmp short @..api_idx_0010_2.l39  ; 0x3d66
@..api_idx_0010_2.l38:
    cmp word [bss_91d4], byte 2      ; 0x3d68
    jne short @..api_idx_0010_2.l39  ; 0x3d6d
    mov ax, 0                        ; 0x3d6f
    push ax                          ; 0x3d72
    push ax                          ; 0x3d73
    push ax                          ; 0x3d74
    push word [bp + 0xe]             ; 0x3d75
    push word [bp + 0x4]             ; 0x3d78
    mov ax, word [bp + 0x3e]         ; 0x3d7b
    add ax, word [bp + 0x4]          ; 0x3d7e
    push ax                          ; 0x3d81
    call loc_2e84                    ; 0x3d82
    pop cx                           ; 0x3d85
    push ax                          ; 0x3d86
    mov ax, word [bp + 0x3a]         ; 0x3d87
    add ax, word [bp + 0x4]          ; 0x3d8a
    push ax                          ; 0x3d8d
    call loc_2e84                    ; 0x3d8e
    pop cx                           ; 0x3d91
    push ax                          ; 0x3d92
    mov ax, 0                        ; 0x3d93
    push ax                          ; 0x3d96
    push ax                          ; 0x3d97
    mov ax, 2                        ; 0x3d98
    push ax                          ; 0x3d9b
    push ax                          ; 0x3d9c
    mov ax, word [bp + 0x40]         ; 0x3d9d
    add ax, word [bp + 0x4]          ; 0x3da0
    push ax                          ; 0x3da3
    mov ax, word [bp + 0x3e]         ; 0x3da4
    add ax, word [bp + 0x4]          ; 0x3da7
    push ax                          ; 0x3daa
    call loc_2e98                    ; 0x3dab
    add sp, byte 4                   ; 0x3dae
    push ax                          ; 0x3db1
    mov ax, word [bp + 0x3c]         ; 0x3db2
    add ax, word [bp + 0x4]          ; 0x3db5
    push ax                          ; 0x3db8
    mov ax, word [bp + 0x3a]         ; 0x3db9
    add ax, word [bp + 0x4]          ; 0x3dbc
    push ax                          ; 0x3dbf
    call loc_2e98                    ; 0x3dc0
    add sp, byte 4                   ; 0x3dc3
    push ax                          ; 0x3dc6
    mov ax, 0xff                     ; 0x3dc7
    push ax                          ; 0x3dca
    call api_idx_0004_5              ; 0x3dcb
    add sp, byte 0x1c                ; 0x3dce
@..api_idx_0010_2.l39:
    cmp word [bp + 0x6], byte 8      ; 0x3dd1
    je short @..api_idx_0010_2.l40   ; 0x3dd5
    cmp word [bp + 0x6], byte 9      ; 0x3dd7
    jne short @..api_idx_0010_2.l41  ; 0x3ddb
@..api_idx_0010_2.l40:
    mov ax, 0                        ; 0x3ddd
    push ax                          ; 0x3de0
    push ax                          ; 0x3de1
    push ax                          ; 0x3de2
    push word [bp + 0xa]             ; 0x3de3
    push word [bp + 0x4]             ; 0x3de6
    mov ax, 0xffff                   ; 0x3de9
    push ax                          ; 0x3dec
    push ax                          ; 0x3ded
    mov ax, 0                        ; 0x3dee
    push ax                          ; 0x3df1
    push ax                          ; 0x3df2
    push ax                          ; 0x3df3
    mov ax, 2                        ; 0x3df4
    push ax                          ; 0x3df7
    mov ax, 0xffff                   ; 0x3df8
    push ax                          ; 0x3dfb
    mov ax, word [bp - 0x0006]       ; 0x3dfc
    add ax, word [bp + 0x4]          ; 0x3dff
    push ax                          ; 0x3e02
    mov ax, 0xff                     ; 0x3e03
    push ax                          ; 0x3e06
    call api_idx_0004_5              ; 0x3e07
    add sp, byte 0x1c                ; 0x3e0a
@..api_idx_0010_2.l41:
    jmp near @..api_idx_0010_2.l48   ; 0x3e0d
jumptable_3ed8_case_5:
    cmp word [bp + 0x4], byte 4      ; 0x3e10
    jge short @..api_idx_0010_2.l42  ; 0x3e14
    mov ax, 0                        ; 0x3e16
    push ax                          ; 0x3e19
    push ax                          ; 0x3e1a
    push ax                          ; 0x3e1b
    push word [bp + 0x12]            ; 0x3e1c
    push word [bp + 0x4]             ; 0x3e1f
    mov ax, 0xffff                   ; 0x3e22
    push ax                          ; 0x3e25
    mov ax, word [bp + 0x4a]         ; 0x3e26
    add ax, word [bp + 0x4]          ; 0x3e29
    push ax                          ; 0x3e2c
    call loc_2e84                    ; 0x3e2d
    pop cx                           ; 0x3e30
    push ax                          ; 0x3e31
    mov ax, 0                        ; 0x3e32
    push ax                          ; 0x3e35
    push ax                          ; 0x3e36
    push ax                          ; 0x3e37
    mov ax, 2                        ; 0x3e38
    push ax                          ; 0x3e3b
    mov ax, 0xffff                   ; 0x3e3c
    push ax                          ; 0x3e3f
    mov ax, word [bp + 0x4c]         ; 0x3e40
    add ax, word [bp + 0x4]          ; 0x3e43
    push ax                          ; 0x3e46
    mov ax, word [bp + 0x4a]         ; 0x3e47
    add ax, word [bp + 0x4]          ; 0x3e4a
    push ax                          ; 0x3e4d
    call loc_2e98                    ; 0x3e4e
    add sp, byte 4                   ; 0x3e51
    push ax                          ; 0x3e54
    mov ax, 0xff                     ; 0x3e55
    push ax                          ; 0x3e58
    call api_idx_0004_5              ; 0x3e59
    add sp, byte 0x1c                ; 0x3e5c
@..api_idx_0010_2.l42:
    jmp near @..api_idx_0010_2.l48   ; 0x3e5f
jumptable_3ed8_case_10:
    mov word [bp - 0x0010], 9        ; 0x3e62
    mov word [bp - 0x000c], 1        ; 0x3e67
    mov ax, word [bss_82e8]          ; 0x3e6c
    inc ax                           ; 0x3e6f
    inc ax                           ; 0x3e70
    mov word [bp - 0x000e], ax       ; 0x3e71
    jmp near @..api_idx_0010_2.l48   ; 0x3e74
jumptable_3ed8_case_11:
    mov word [bp - 0x0010], 9        ; 0x3e77
    mov word [bp - 0x000c], 7        ; 0x3e7c
    mov ax, 0                        ; 0x3e81
    cmp word [bss_82e8], byte 0      ; 0x3e84
    je short @..api_idx_0010_2.l43   ; 0x3e89
    mov ax, 8                        ; 0x3e8b
@..api_idx_0010_2.l43:
    mov word [bp - 0x000e], ax       ; 0x3e8e
    jmp short @..api_idx_0010_2.l48  ; 0x3e91
jumptable_3ed8_case_12:
    mov word [bp - 0x0010], 0xa      ; 0x3e93
    mov ax, 5                        ; 0x3e98
    cmp word [bss_91d4], byte 0      ; 0x3e9b
    jne short @..api_idx_0010_2.l44  ; 0x3ea0
    mov ax, 1                        ; 0x3ea2
@..api_idx_0010_2.l44:
    mov cx, 0                        ; 0x3ea5
    cmp word [bp + 0x6], byte 0x0d   ; 0x3ea8
    jne short @..api_idx_0010_2.l45  ; 0x3eac
    mov cx, 1                        ; 0x3eae
@..api_idx_0010_2.l45:
    add ax, cx                       ; 0x3eb1
    mov word [bp - 0x000c], ax       ; 0x3eb3
    mov word [bp - 0x000e], 0        ; 0x3eb6
    jmp short @..api_idx_0010_2.l48  ; 0x3ebb
jumptable_3ed8_case_14:
    mov word [bp - 0x0010], 0xa      ; 0x3ebd
    mov word [bp - 0x000c], 9        ; 0x3ec2
    mov ax, 0xb                      ; 0x3ec7
    cmp word [bp + 0x6], byte 0x0e   ; 0x3eca
    jne short @..api_idx_0010_2.l46  ; 0x3ece
    mov ax, 0xa                      ; 0x3ed0
@..api_idx_0010_2.l46:
    mov word [bp - 0x000e], ax       ; 0x3ed3
    jmp short @..api_idx_0010_2.l48  ; 0x3ed6
jumptable_3ed8:
    dw jumptable_3ed8_case_0 - IMAGE_BASE + 0x5055 ; 0x3ed8
    dw jumptable_3ed8_case_1 - IMAGE_BASE + 0x5055 ; 0x3eda
    dw jumptable_3ed8_case_0 - IMAGE_BASE + 0x5055 ; 0x3edc
    dw jumptable_3ed8_case_1 - IMAGE_BASE + 0x5055 ; 0x3ede
    dw jumptable_3ed8_case_0 - IMAGE_BASE + 0x5055 ; 0x3ee0
    dw jumptable_3ed8_case_5 - IMAGE_BASE + 0x5055 ; 0x3ee2
    dw jumptable_3ed8_case_1 - IMAGE_BASE + 0x5055 ; 0x3ee4
    dw jumptable_3ed8_case_7 - IMAGE_BASE + 0x5055 ; 0x3ee6
    dw jumptable_3ed8_case_8 - IMAGE_BASE + 0x5055 ; 0x3ee8
    dw jumptable_3ed8_case_8 - IMAGE_BASE + 0x5055 ; 0x3eea
    dw jumptable_3ed8_case_10 - IMAGE_BASE + 0x5055 ; 0x3eec
    dw jumptable_3ed8_case_11 - IMAGE_BASE + 0x5055 ; 0x3eee
    dw jumptable_3ed8_case_12 - IMAGE_BASE + 0x5055 ; 0x3ef0
    dw jumptable_3ed8_case_12 - IMAGE_BASE + 0x5055 ; 0x3ef2
    dw jumptable_3ed8_case_14 - IMAGE_BASE + 0x5055 ; 0x3ef4
    dw jumptable_3ed8_case_14 - IMAGE_BASE + 0x5055 ; 0x3ef6
@..api_idx_0010_2.l47:
    cmp ax, strict word 0x10         ; 0x3ef8
    jae short @..api_idx_0010_2.l48  ; 0x3efb
    xchg bx, ax                      ; 0x3efd
    shl bx, 1                        ; 0x3efe
    jmp [cs:bx - 0x70e1]             ; 0x3f00
jumptable_3ed8_case_0:
@..api_idx_0010_2.l48:
    cmp word [bp - 0x0010], byte 0xff ; 0x3f05
    je short @..api_idx_0010_2.l49   ; 0x3f09
    mov ax, 2                        ; 0x3f0b
    push ax                          ; 0x3f0e
    mov ax, 0                        ; 0x3f0f
    push ax                          ; 0x3f12
    push word [bss_91d0]             ; 0x3f13
    mov ax, word [bp + 0x4]          ; 0x3f17
    shl ax, 1                        ; 0x3f1a
    mov bx, ax                       ; 0x3f1c
    push word [bx + 0x576]           ; 0x3f1e
    push word [bp + 0x4]             ; 0x3f22
    mov ax, 0xf8                     ; 0x3f25
    push ax                          ; 0x3f28
    mov ax, 0x48                     ; 0x3f29
    push ax                          ; 0x3f2c
    mov ax, 0                        ; 0x3f2d
    push ax                          ; 0x3f30
    push ax                          ; 0x3f31
    push word [bp - 0x000e]          ; 0x3f32
    push word [bp - 0x000c]          ; 0x3f35
    push ax                          ; 0x3f38
    mov ax, 0xa                      ; 0x3f39
    imul word [bp + 0x4]             ; 0x3f3c
    mov cx, word [bp + 0x8]          ; 0x3f3f
    shl cx, 1                        ; 0x3f42
    add ax, cx                       ; 0x3f44
    mov bx, ax                       ; 0x3f46
    push word [bx + 0x36e]           ; 0x3f48
    push word [bp - 0x0010]          ; 0x3f4c
    call api_idx_0004_5              ; 0x3f4f
    add sp, byte 0x1c                ; 0x3f52
@..api_idx_0010_2.l49:
    ret                              ; 0x3f55
