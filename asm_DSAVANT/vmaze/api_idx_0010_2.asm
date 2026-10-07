api_idx_0010_2:
    mov ax, 0xfff0                   ; 0x3802
    call ds_dispatch_f40b            ; 0x3805
    mov ax, 4                        ; 0x3808
    cmp word [data_91d4], byte 0     ; 0x380b
    jne short @..api_idx_0010_2.l1   ; 0x3810
    mov ax, 3                        ; 0x3812
@..api_idx_0010_2.l1:
    mov word [bp - 0x000a], ax       ; 0x3815
    mov word [bp - 0x0002], 0xffff   ; 0x3818
    mov word [bp - 0x0004], 0xffff   ; 0x381d
    cmp word [data_91d4], byte 0     ; 0x3822
    jg short @..api_idx_0010_2.l2    ; 0x3827
    jmp near @..api_idx_0010_2.l11   ; 0x3829
@..api_idx_0010_2.l2:
    cmp word [bp + 0x4], byte 3      ; 0x382c
    je short @..api_idx_0010_2.l3    ; 0x3830
    jmp near @..api_idx_0010_2.l11   ; 0x3832
@..api_idx_0010_2.l3:
    mov ax, word [data_91d4]         ; 0x3835
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
    cmp word [data_91d4], byte 3     ; 0x384d
    jl short @..api_idx_0010_2.l7    ; 0x3852
    cmp word [data_91d4], byte 5     ; 0x3854
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
    jmp near @..api_idx_0010_2.l12   ; 0x38a7
    cmp word [bp - 0x0002], byte 0xff ; 0x38aa
    je short loc_38e4                ; 0x38ae
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
    jne short loc_38d2               ; 0x38cd
    mov ax, 2                        ; 0x38cf
    push ax                          ; 0x38d2
    mov ax, 0xffff                   ; 0x38d3
    push ax                          ; 0x38d6
    push word [bp - 0x0002]          ; 0x38d7
    mov ax, 0xff                     ; 0x38da
    push ax                          ; 0x38dd
    call api_idx_0004_5              ; 0x38de
    add sp, byte 0x1c                ; 0x38e1
    jmp near @..api_idx_0010_2.l13   ; 0x38e4
    cmp word [bp - 0x0002], byte 0xff ; 0x38e7
    je short loc_391b                ; 0x38eb
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
    jmp near @..api_idx_0010_2.l13   ; 0x391b
    cmp word [data_91d4], byte 0     ; 0x391e
    jne short loc_397e               ; 0x3923
    cmp word [bp + 0x4], byte 3      ; 0x3925
    jge short loc_397b               ; 0x3929
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
    jne short loc_3958               ; 0x3953
    mov ax, 2                        ; 0x3955
    push ax                          ; 0x3958
    mov ax, 0xffff                   ; 0x3959
    push ax                          ; 0x395c
    add cx, word [bp + 0x18]         ; 0x395d
    db 0x8b, 0xc1 ; mov ax, cx
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
    jmp near loc_3a2f                ; 0x397b
    cmp word [data_91d4], byte 3     ; 0x397e
    jl short loc_398c                ; 0x3983
    cmp word [data_91d4], byte 5     ; 0x3985
    jne short loc_39db               ; 0x398a
    cmp word [bp + 0x4], byte 4      ; 0x398c
    jge short loc_39d9               ; 0x3990
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
    jmp short loc_3a2f               ; 0x39d9
    cmp word [data_91d4], byte 5     ; 0x39db
    jge short loc_3a2f               ; 0x39e0
    cmp word [bp + 0x4], byte 4      ; 0x39e2
    db 0x7d, 0x47 ; jge short loc_3a2f
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
