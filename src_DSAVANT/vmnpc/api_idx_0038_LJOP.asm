; auto-generated
api_idx_0038_LJOP:
    mov ax, 0xffc8                   ; 0x47d9
    call aztec_csav                  ; 0x47dc
    mov ax, bss_99ae                 ; 0x47df
    push ax                          ; 0x47e2
    mov ax, 0x5e4                    ; 0x47e3
    push ax                          ; 0x47e6
    call ds_app_mem_TIMR             ; 0x47e7
    add sp, byte 4                   ; 0x47ea
    mov word [bss_904e], 0xffff      ; 0x47ed
    mov word [bss_93d8], 0x8d        ; 0x47f3
    mov word [bp - 0x0004], 0x23     ; 0x47f9
    mov word [bp - 0x0006], 0x8f     ; 0x47fe
    mov word [bp - 0x0008], 0x11c    ; 0x4803
    mov word [bp - 0x000a], 0xc5     ; 0x4808
    mov word [bp - 0x0012], 0x16     ; 0x480d
    mov ax, 3                        ; 0x4812
    cmp word [bp + 0xc], byte 3      ; 0x4815
    jge short @..api_idx_0038_LJOP.l1 ; 0x4819
    mov ax, word [bp + 0xc]          ; 0x481b
@..api_idx_0038_LJOP.l1:
    mov word [bp - 0x0022], ax       ; 0x481e
    mov ax, dseg_90d6                ; 0x4821
    push ax                          ; 0x4824
    mov ax, word [bp - 0x000a]       ; 0x4825
    inc ax                           ; 0x4828
    push ax                          ; 0x4829
    mov ax, word [bp - 0x0008]       ; 0x482a
    inc ax                           ; 0x482d
    push ax                          ; 0x482e
    mov ax, word [bp - 0x0006]       ; 0x482f
    dec ax                           ; 0x4832
    push ax                          ; 0x4833
    mov ax, word [bp - 0x0004]       ; 0x4834
    dec ax                           ; 0x4837
    push ax                          ; 0x4838
    call ds_app_file_LMRK            ; 0x4839
    add sp, byte 0x0a                ; 0x483c
    mov word [bp - 0x0038], ax       ; 0x483f
    push word [bp - 0x000a]          ; 0x4842
    push word [bp - 0x0008]          ; 0x4845
    push word [bp - 0x0006]          ; 0x4848
    push word [bp - 0x0004]          ; 0x484b
    call ds_app_KNSQ                 ; 0x484e
    add sp, byte 8                   ; 0x4851
    mov ax, 0xc2                     ; 0x4854
    push ax                          ; 0x4857
    mov ax, 1                        ; 0x4858
    push ax                          ; 0x485b
    call gfx_entry_12                ; 0x485c
    add sp, byte 4                   ; 0x485f
    mov ax, word [bp - 0x0006]       ; 0x4862
    add ax, strict word 6            ; 0x4865
    push ax                          ; 0x4868
    mov ax, 0x248                    ; 0x4869
    imul word [bp + 0x4]             ; 0x486c
    add ax, bss_5bf4                 ; 0x486f
    push ax                          ; 0x4872
    call aztec_strlen                ; 0x4873
    pop cx                           ; 0x4876
    mov cx, 6                        ; 0x4877
    imul cx                          ; 0x487a
    mov cx, 2                        ; 0x487c
    cwd                              ; 0x487f
    idiv cx                          ; 0x4880
    mov cx, ax                       ; 0x4882
    mov ax, word [bp - 0x0004]       ; 0x4884
    add ax, strict word 0x26         ; 0x4887
    sub ax, cx                       ; 0x488a
    push ax                          ; 0x488c
    call gfx_entry_13                ; 0x488d
    add sp, byte 4                   ; 0x4890
    mov ax, 0                        ; 0x4893
    push ax                          ; 0x4896
    mov ax, 0x248                    ; 0x4897
    imul word [bp + 0x4]             ; 0x489a
    add ax, bss_5bf4                 ; 0x489d
    push ax                          ; 0x48a0
    call ds_string_loc_QRJV          ; 0x48a1
    add sp, byte 4                   ; 0x48a4
    mov ax, 0xc2                     ; 0x48a7
    push ax                          ; 0x48aa
    mov ax, 0xb3                     ; 0x48ab
    push ax                          ; 0x48ae
    call gfx_entry_12                ; 0x48af
    add sp, byte 4                   ; 0x48b2
    lea ax, word [bp - 0x0036]       ; 0x48b5
    push ax                          ; 0x48b8
    mov ax, 0x248                    ; 0x48b9
    imul word [bp + 0x4]             ; 0x48bc
    mov bx, ax                       ; 0x48bf
    push word [bx + bss_5c0a]        ; 0x48c1
    push word [bx + bss_5c08]        ; 0x48c5
    call ds_app_SVGG                 ; 0x48c9
    add sp, byte 6                   ; 0x48cc
    mov ax, word [bp - 0x0006]       ; 0x48cf
    add ax, strict word 0xc          ; 0x48d2
    push ax                          ; 0x48d5
    lea ax, word [bp - 0x0036]       ; 0x48d6
    push ax                          ; 0x48d9
    call aztec_strlen                ; 0x48da
    pop cx                           ; 0x48dd
    mov cx, 6                        ; 0x48de
    imul cx                          ; 0x48e1
    add ax, strict word 0x12         ; 0x48e3
    mov cx, 2                        ; 0x48e6
    cwd                              ; 0x48e9
    idiv cx                          ; 0x48ea
    mov cx, ax                       ; 0x48ec
    mov ax, word [bp - 0x0004]       ; 0x48ee
    add ax, strict word 0x26         ; 0x48f1
    sub ax, cx                       ; 0x48f4
    push ax                          ; 0x48f6
    call gfx_entry_13                ; 0x48f7
    add sp, byte 4                   ; 0x48fa
    mov ax, 0                        ; 0x48fd
    push ax                          ; 0x4900
    lea ax, word [bp - 0x0036]       ; 0x4901
    push ax                          ; 0x4904
    call ds_string_loc_QRJV          ; 0x4905
    add sp, byte 4                   ; 0x4908
    lea ax, word [bp - 0x0036]       ; 0x490b
    push ax                          ; 0x490e
    push word [bp + 0x6]             ; 0x490f
    call ds_app_mem_TIMR             ; 0x4912
    add sp, byte 4                   ; 0x4915
    mov ax, 0xc2                     ; 0x4918
    push ax                          ; 0x491b
    mov ax, 0x1a                     ; 0x491c
    push ax                          ; 0x491f
    call gfx_entry_12                ; 0x4920
    add sp, byte 4                   ; 0x4923
    mov ax, 0                        ; 0x4926
    push ax                          ; 0x4929
    lea ax, word [bp - 0x0036]       ; 0x492a
    push ax                          ; 0x492d
    call ds_string_loc_QRJV          ; 0x492e
    add sp, byte 4                   ; 0x4931
    lea ax, word [bp - 0x0036]       ; 0x4934
    push ax                          ; 0x4937
    mov ax, word [bp + 0x6]          ; 0x4938
    inc ax                           ; 0x493b
    push ax                          ; 0x493c
    call ds_app_mem_TIMR             ; 0x493d
    add sp, byte 4                   ; 0x4940
    lea ax, word [bp - 0x0036]       ; 0x4943
    push ax                          ; 0x4946
    push word [bp + 0x8]             ; 0x4947
    mov ax, 1                        ; 0x494a
    push ax                          ; 0x494d
    mov ax, 0xa                      ; 0x494e
    push ax                          ; 0x4951
    mov ax, word [bp - 0x0006]       ; 0x4952
    add ax, strict word 0x17         ; 0x4955
    push ax                          ; 0x4958
    mov ax, word [bp - 0x0004]       ; 0x4959
    add ax, strict word 8            ; 0x495c
    push ax                          ; 0x495f
    call ds_app_string_IIIR          ; 0x4960
    add sp, byte 0x0c                ; 0x4963
    lea ax, word [bp - 0x0036]       ; 0x4966
    push ax                          ; 0x4969
    mov ax, word [bp + 0x6]          ; 0x496a
    inc ax                           ; 0x496d
    inc ax                           ; 0x496e
    push ax                          ; 0x496f
    call ds_app_mem_TIMR             ; 0x4970
    add sp, byte 4                   ; 0x4973
    lea ax, word [bp - 0x0036]       ; 0x4976
    push ax                          ; 0x4979
    push word [bp + 0xa]             ; 0x497a
    mov ax, 1                        ; 0x497d
    push ax                          ; 0x4980
    mov ax, 0xa                      ; 0x4981
    push ax                          ; 0x4984
    mov ax, word [bp - 0x0006]       ; 0x4985
    add ax, strict word 0x27         ; 0x4988
    push ax                          ; 0x498b
    mov ax, word [bp - 0x0004]       ; 0x498c
    add ax, strict word 8            ; 0x498f
    push ax                          ; 0x4992
    call ds_app_string_IIIR          ; 0x4993
    add sp, byte 0x0c                ; 0x4996
    mov ax, word [bp + 0xe]          ; 0x4999
    inc ax                           ; 0x499c
    inc ax                           ; 0x499d
    inc ax                           ; 0x499e
    cmp ax, word [bp + 0xc]          ; 0x499f
    jle short @..api_idx_0038_LJOP.l2 ; 0x49a2
    mov ax, word [bp + 0xc]          ; 0x49a4
    dec ax                           ; 0x49a7
    dec ax                           ; 0x49a8
    dec ax                           ; 0x49a9
    mov word [bp + 0xe], ax          ; 0x49aa
@..api_idx_0038_LJOP.l2:
    mov ax, 0                        ; 0x49ad
    cmp word [bp + 0xe], byte 0      ; 0x49b0
    jle short @..api_idx_0038_LJOP.l3 ; 0x49b4
    mov ax, word [bp + 0xe]          ; 0x49b6
@..api_idx_0038_LJOP.l3:
    mov word [bp - 0x0016], ax       ; 0x49b9
    mov word [bp - 0x0020], 0xffff   ; 0x49bc
    mov word [bss_9ca6], 0xffff      ; 0x49c1
    push word [bp - 0x0022]          ; 0x49c7
    push word [bp - 0x0020]          ; 0x49ca
    push ax                          ; 0x49cd
    mov ax, 7                        ; 0x49ce
    push ax                          ; 0x49d1
    mov ax, 0x18                     ; 0x49d2
    push ax                          ; 0x49d5
    mov ax, word [bp - 0x0006]       ; 0x49d6
    add ax, strict word 6            ; 0x49d9
    push ax                          ; 0x49dc
    mov ax, word [bp - 0x0004]       ; 0x49dd
    add ax, strict word 0x4e         ; 0x49e0
    push ax                          ; 0x49e3
    push word [bp + 0x4]             ; 0x49e4
    call loc_VUSH                    ; 0x49e7
    add sp, byte 0x10                ; 0x49ea
    mov word [bp - 0x0010], 0        ; 0x49ed
    cmp word [bp + 0xc], byte 3      ; 0x49f2
    jle short @..api_idx_0038_LJOP.l4 ; 0x49f6
    push word [bp - 0x0012]          ; 0x49f8
    mov ax, 0                        ; 0x49fb
    push ax                          ; 0x49fe
    mov ax, 0x64                     ; 0x49ff
    imul word [bp - 0x0012]          ; 0x4a02
    add ax, strict word 0x64         ; 0x4a05
    mov cx, word [bp + 0xc]          ; 0x4a08
    dec cx                           ; 0x4a0b
    dec cx                           ; 0x4a0c
    dec cx                           ; 0x4a0d
    cwd                              ; 0x4a0e
    idiv cx                          ; 0x4a0f
    imul word [bp - 0x0016]          ; 0x4a11
    mov cx, 0x64                     ; 0x4a14
    cwd                              ; 0x4a17
    idiv cx                          ; 0x4a18
    push ax                          ; 0x4a1a
    call clamp_between               ; 0x4a1b
    add sp, byte 6                   ; 0x4a1e
    mov word [bp - 0x0010], ax       ; 0x4a21
@..api_idx_0038_LJOP.l4:
    push word [bp - 0x0010]          ; 0x4a24
    mov ax, 7                        ; 0x4a27
    push ax                          ; 0x4a2a
    mov ax, 8                        ; 0x4a2b
    push ax                          ; 0x4a2e
    mov ax, word [bp - 0x0006]       ; 0x4a2f
    add ax, strict word 6            ; 0x4a32
    push ax                          ; 0x4a35
    mov ax, word [bp - 0x0004]       ; 0x4a36
    add ax, 0xe8                     ; 0x4a39
    push ax                          ; 0x4a3c
    call ds_app_JKST                 ; 0x4a3d
    add sp, byte 0x0a                ; 0x4a40
    mov ax, 0                        ; 0x4a43
    push ax                          ; 0x4a46
    push ax                          ; 0x4a47
    mov ax, word [bp - 0x0006]       ; 0x4a48
    add ax, word [bp - 0x0010]       ; 0x4a4b
    add ax, strict word 0x12         ; 0x4a4e
    push ax                          ; 0x4a51
    mov ax, word [bp - 0x0004]       ; 0x4a52
    add ax, 0xf0                     ; 0x4a55
    push ax                          ; 0x4a58
    mov ax, word [bp - 0x0006]       ; 0x4a59
    add ax, word [bp - 0x0010]       ; 0x4a5c
    add ax, strict word 0xe          ; 0x4a5f
    push ax                          ; 0x4a62
    mov ax, word [bp - 0x0004]       ; 0x4a63
    add ax, 0xe8                     ; 0x4a66
    push ax                          ; 0x4a69
    mov ax, 0                        ; 0x4a6a
    push ax                          ; 0x4a6d
    call ds_app_NGUR                 ; 0x4a6e
    add sp, byte 0x0e                ; 0x4a71
    mov ax, 0                        ; 0x4a74
    push ax                          ; 0x4a77
    mov ax, 9                        ; 0x4a78
    push ax                          ; 0x4a7b
    mov ax, word [bp - 0x0006]       ; 0x4a7c
    add ax, strict word 0xc          ; 0x4a7f
    push ax                          ; 0x4a82
    mov ax, word [bp - 0x0004]       ; 0x4a83
    add ax, 0xf0                     ; 0x4a86
    push ax                          ; 0x4a89
    mov ax, word [bp - 0x0006]       ; 0x4a8a
    add ax, strict word 6            ; 0x4a8d
    push ax                          ; 0x4a90
    mov ax, word [bp - 0x0004]       ; 0x4a91
    add ax, 0xe8                     ; 0x4a94
    push ax                          ; 0x4a97
    mov ax, 1                        ; 0x4a98
    push ax                          ; 0x4a9b
    call ds_app_NGUR                 ; 0x4a9c
    add sp, byte 0x0e                ; 0x4a9f
    mov ax, 0                        ; 0x4aa2
    push ax                          ; 0x4aa5
    mov ax, 0xb                      ; 0x4aa6
    push ax                          ; 0x4aa9
    mov ax, word [bp - 0x0006]       ; 0x4aaa
    add ax, strict word 0x30         ; 0x4aad
    push ax                          ; 0x4ab0
    mov ax, word [bp - 0x0004]       ; 0x4ab1
    add ax, 0xf0                     ; 0x4ab4
    push ax                          ; 0x4ab7
    mov ax, word [bp - 0x0006]       ; 0x4ab8
    add ax, strict word 0x2a         ; 0x4abb
    push ax                          ; 0x4abe
    mov ax, word [bp - 0x0004]       ; 0x4abf
    add ax, 0xe8                     ; 0x4ac2
    push ax                          ; 0x4ac5
    mov ax, 2                        ; 0x4ac6
    push ax                          ; 0x4ac9
    call ds_app_NGUR                 ; 0x4aca
    add sp, byte 0x0e                ; 0x4acd
    mov ax, 0                        ; 0x4ad0
    push ax                          ; 0x4ad3
    push ax                          ; 0x4ad4
    mov ax, word [bp - 0x0006]       ; 0x4ad5
    add ax, strict word 0xf          ; 0x4ad8
    push ax                          ; 0x4adb
    mov ax, word [bp - 0x0004]       ; 0x4adc
    add ax, strict word 0x44         ; 0x4adf
    push ax                          ; 0x4ae2
    mov ax, word [bp - 0x0006]       ; 0x4ae3
    add ax, strict word 7            ; 0x4ae6
    push ax                          ; 0x4ae9
    mov ax, word [bp - 0x0004]       ; 0x4aea
    add ax, strict word 8            ; 0x4aed
    push ax                          ; 0x4af0
    mov ax, 3                        ; 0x4af1
    push ax                          ; 0x4af4
    call ds_app_NGUR                 ; 0x4af5
    add sp, byte 0x0e                ; 0x4af8
    mov ax, 0xd                      ; 0x4afb
    push ax                          ; 0x4afe
    mov ax, 0x42                     ; 0x4aff
    push ax                          ; 0x4b02
    mov ax, word [bp - 0x0006]       ; 0x4b03
    add ax, strict word 0x1f         ; 0x4b06
    push ax                          ; 0x4b09
    mov ax, word [bp - 0x0004]       ; 0x4b0a
    add ax, strict word 0x44         ; 0x4b0d
    push ax                          ; 0x4b10
    mov ax, word [bp - 0x0006]       ; 0x4b11
    add ax, strict word 0x17         ; 0x4b14
    push ax                          ; 0x4b17
    mov ax, word [bp - 0x0004]       ; 0x4b18
    add ax, strict word 8            ; 0x4b1b
    push ax                          ; 0x4b1e
    mov ax, 4                        ; 0x4b1f
    push ax                          ; 0x4b22
    call ds_app_NGUR                 ; 0x4b23
    add sp, byte 0x0e                ; 0x4b26
    mov ax, 0                        ; 0x4b29
    push ax                          ; 0x4b2c
    mov ax, 0x1b                     ; 0x4b2d
    push ax                          ; 0x4b30
    mov ax, word [bp - 0x0006]       ; 0x4b31
    add ax, strict word 0x2f         ; 0x4b34
    push ax                          ; 0x4b37
    mov ax, word [bp - 0x0004]       ; 0x4b38
    add ax, strict word 0x44         ; 0x4b3b
    push ax                          ; 0x4b3e
    mov ax, word [bp - 0x0006]       ; 0x4b3f
    add ax, strict word 0x27         ; 0x4b42
    push ax                          ; 0x4b45
    mov ax, word [bp - 0x0004]       ; 0x4b46
    add ax, strict word 8            ; 0x4b49
    push ax                          ; 0x4b4c
    mov ax, 5                        ; 0x4b4d
    push ax                          ; 0x4b50
    call ds_app_NGUR                 ; 0x4b51
    add sp, byte 0x0e                ; 0x4b54
    mov ax, 3                        ; 0x4b57
    mov cx, word [bp + 0xc]          ; 0x4b5a
    cmp cx, byte 3                   ; 0x4b5d
    jge short @..api_idx_0038_LJOP.l5 ; 0x4b60
    mov ax, cx                       ; 0x4b62
@..api_idx_0038_LJOP.l5:
    mov word [bp - 0x001e], ax       ; 0x4b64
    mov word [bp - 0x0002], 0        ; 0x4b67
    jmp short @..api_idx_0038_LJOP.l7 ; 0x4b6c
@..api_idx_0038_LJOP.l6:
    mov ax, 0                        ; 0x4b6e
    push ax                          ; 0x4b71
    push ax                          ; 0x4b72
    mov ax, 0xe                      ; 0x4b73
    imul word [bp - 0x0002]          ; 0x4b76
    add ax, word [bp - 0x0006]       ; 0x4b79
    add ax, strict word 0x13         ; 0x4b7c
    push ax                          ; 0x4b7f
    mov ax, word [bp - 0x0004]       ; 0x4b80
    add ax, 0xe0                     ; 0x4b83
    push ax                          ; 0x4b86
    mov ax, 0xe                      ; 0x4b87
    imul word [bp - 0x0002]          ; 0x4b8a
    add ax, word [bp - 0x0006]       ; 0x4b8d
    add ax, strict word 7            ; 0x4b90
    push ax                          ; 0x4b93
    mov ax, word [bp - 0x0004]       ; 0x4b94
    add ax, strict word 0x4e         ; 0x4b97
    push ax                          ; 0x4b9a
    mov ax, word [bp - 0x0002]       ; 0x4b9b
    add ax, strict word 6            ; 0x4b9e
    push ax                          ; 0x4ba1
    call ds_app_NGUR                 ; 0x4ba2
    add sp, byte 0x0e                ; 0x4ba5
    inc word [bp - 0x0002]           ; 0x4ba8
@..api_idx_0038_LJOP.l7:
    mov ax, word [bp - 0x0002]       ; 0x4bab
    cmp ax, word [bp - 0x001e]       ; 0x4bae
    jl short @..api_idx_0038_LJOP.l6 ; 0x4bb1
    mov ax, 0                        ; 0x4bb3
    push ax                          ; 0x4bb6
    push ax                          ; 0x4bb7
    push ax                          ; 0x4bb8
    push ax                          ; 0x4bb9
    push ax                          ; 0x4bba
    mov ax, 0xffff                   ; 0x4bbb
    push ax                          ; 0x4bbe
    mov ax, word [bp - 0x001e]       ; 0x4bbf
    add ax, strict word 6            ; 0x4bc2
    push ax                          ; 0x4bc5
    call ds_app_NGUR                 ; 0x4bc6
    add sp, byte 0x0e                ; 0x4bc9
    mov ax, 0xc6                     ; 0x4bcc
    push ax                          ; 0x4bcf
    mov ax, 0x139                    ; 0x4bd0
    push ax                          ; 0x4bd3
    mov ax, 0x8e                     ; 0x4bd4
    push ax                          ; 0x4bd7
    mov ax, 9                        ; 0x4bd8
    push ax                          ; 0x4bdb
    call gfx_entry_16                ; 0x4bdc
    add sp, byte 8                   ; 0x4bdf
    mov word [bp - 0x001a], 1        ; 0x4be2
@..api_idx_0038_LJOP.l8:
    mov ax, 0x59fe                   ; 0x4be7
    push ax                          ; 0x4bea
    call ds_app_io_UHMG              ; 0x4beb
    pop cx                           ; 0x4bee
    dec ax                           ; 0x4bef
    mov word [bp - 0x0018], ax       ; 0x4bf0
    call api_idx_0006_SQTK           ; 0x4bf3
    cmp word [bss_59fc], byte 0      ; 0x4bf6
    je short @..api_idx_0038_LJOP.l9 ; 0x4bfb
    push word [bp - 0x001e]          ; 0x4bfd
    push word [bp - 0x0016]          ; 0x4c00
    push word [bp - 0x0020]          ; 0x4c03
    call loc_UVUO                    ; 0x4c06
    add sp, byte 6                   ; 0x4c09
    mov word [bp - 0x0020], ax       ; 0x4c0c
    mov word [bss_5b3e], 1           ; 0x4c0f
    sub ax, word [bp - 0x0016]       ; 0x4c15
    add ax, strict word 6            ; 0x4c18
    mov word [bp - 0x0018], ax       ; 0x4c1b
@..api_idx_0038_LJOP.l9:
    cmp word [bss_5b3e], byte 1      ; 0x4c1e
    je short @..api_idx_0038_LJOP.l10 ; 0x4c23
    jmp near @..api_idx_0038_LJOP.l23 ; 0x4c25
@..api_idx_0038_LJOP.l10:
    mov ax, word [bp - 0x0018]       ; 0x4c28
    jmp near @..api_idx_0038_LJOP.l21 ; 0x4c2b
jumptable_4fa9_case_0:
    lea ax, word [bp - 0x000e]       ; 0x4c2e
    push ax                          ; 0x4c31
    lea ax, word [bp - 0x000c]       ; 0x4c32
    push ax                          ; 0x4c35
    call gfx_entry_23                ; 0x4c36
    add sp, byte 4                   ; 0x4c39
    mov ax, 4                        ; 0x4c3c
    push ax                          ; 0x4c3f
    mov ax, 0                        ; 0x4c40
    push ax                          ; 0x4c43
    mov ax, word [bp - 0x000e]       ; 0x4c44
    mov cx, word [bp - 0x0006]       ; 0x4c47
    add cx, word [bp - 0x0010]       ; 0x4c4a
    add cx, byte 0x0e                ; 0x4c4d
    sub ax, cx                       ; 0x4c50
    push ax                          ; 0x4c52
    call clamp_between               ; 0x4c53
    add sp, byte 6                   ; 0x4c56
    mov word [bp - 0x0014], ax       ; 0x4c59
@..api_idx_0038_LJOP.l11:
    lea ax, word [bp - 0x000e]       ; 0x4c5c
    push ax                          ; 0x4c5f
    lea ax, word [bp - 0x000c]       ; 0x4c60
    push ax                          ; 0x4c63
    call gfx_entry_23                ; 0x4c64
    add sp, byte 4                   ; 0x4c67
    mov word [bp - 0x001c], ax       ; 0x4c6a
    push word [bp - 0x0012]          ; 0x4c6d
    mov ax, 0                        ; 0x4c70
    push ax                          ; 0x4c73
    mov ax, word [bp - 0x000e]       ; 0x4c74
    mov cx, word [bp - 0x0006]       ; 0x4c77
    add cx, byte 0x0e                ; 0x4c7a
    sub ax, cx                       ; 0x4c7d
    sub ax, word [bp - 0x0014]       ; 0x4c7f
    push ax                          ; 0x4c82
    call clamp_between               ; 0x4c83
    add sp, byte 6                   ; 0x4c86
    mov word [bp - 0x0010], ax       ; 0x4c89
    cmp word [bp + 0xc], byte 3      ; 0x4c8c
    jle short @..api_idx_0038_LJOP.l12 ; 0x4c90
    mov cx, 0x64                     ; 0x4c92
    imul cx                          ; 0x4c95
    push ax                          ; 0x4c97
    mov ax, cx                       ; 0x4c98
    imul word [bp - 0x0012]          ; 0x4c9a
    add ax, strict word 0x64         ; 0x4c9d
    mov cx, word [bp + 0xc]          ; 0x4ca0
    dec cx                           ; 0x4ca3
    dec cx                           ; 0x4ca4
    cwd                              ; 0x4ca5
    idiv cx                          ; 0x4ca6
    mov cx, ax                       ; 0x4ca8
    pop ax                           ; 0x4caa
    cwd                              ; 0x4cab
    idiv cx                          ; 0x4cac
    mov word [bp - 0x0016], ax       ; 0x4cae
    mov ax, word [bp - 0x0010]       ; 0x4cb1
    cmp ax, word [bp - 0x0012]       ; 0x4cb4
    jne short @..api_idx_0038_LJOP.l12 ; 0x4cb7
    mov ax, word [bp + 0xc]          ; 0x4cb9
    dec ax                           ; 0x4cbc
    dec ax                           ; 0x4cbd
    dec ax                           ; 0x4cbe
    mov word [bp - 0x0016], ax       ; 0x4cbf
@..api_idx_0038_LJOP.l12:
    push word [bp - 0x0022]          ; 0x4cc2
    push word [bp - 0x0020]          ; 0x4cc5
    push word [bp - 0x0016]          ; 0x4cc8
    mov ax, 7                        ; 0x4ccb
    push ax                          ; 0x4cce
    mov ax, 0x18                     ; 0x4ccf
    push ax                          ; 0x4cd2
    mov ax, word [bp - 0x0006]       ; 0x4cd3
    add ax, strict word 6            ; 0x4cd6
    push ax                          ; 0x4cd9
    mov ax, word [bp - 0x0004]       ; 0x4cda
    add ax, strict word 0x4e         ; 0x4cdd
    push ax                          ; 0x4ce0
    push word [bp + 0x4]             ; 0x4ce1
    call loc_VUSH                    ; 0x4ce4
    add sp, byte 0x10                ; 0x4ce7
    push word [bp - 0x0010]          ; 0x4cea
    mov ax, 7                        ; 0x4ced
    push ax                          ; 0x4cf0
    mov ax, 8                        ; 0x4cf1
    push ax                          ; 0x4cf4
    mov ax, word [bp - 0x0006]       ; 0x4cf5
    add ax, strict word 6            ; 0x4cf8
    push ax                          ; 0x4cfb
    mov ax, word [bp - 0x0004]       ; 0x4cfc
    add ax, 0xe8                     ; 0x4cff
    push ax                          ; 0x4d02
    call ds_app_JKST                 ; 0x4d03
    add sp, byte 0x0a                ; 0x4d06
    mov ax, 0                        ; 0x4d09
    push ax                          ; 0x4d0c
    push ax                          ; 0x4d0d
    mov ax, word [bp - 0x0006]       ; 0x4d0e
    add ax, word [bp - 0x0010]       ; 0x4d11
    add ax, strict word 0x12         ; 0x4d14
    push ax                          ; 0x4d17
    mov ax, word [bp - 0x0004]       ; 0x4d18
    add ax, 0xf0                     ; 0x4d1b
    push ax                          ; 0x4d1e
    mov ax, word [bp - 0x0006]       ; 0x4d1f
    add ax, word [bp - 0x0010]       ; 0x4d22
    add ax, strict word 0xe          ; 0x4d25
    push ax                          ; 0x4d28
    mov ax, word [bp - 0x0004]       ; 0x4d29
    add ax, 0xe8                     ; 0x4d2c
    push ax                          ; 0x4d2f
    mov ax, 0                        ; 0x4d30
    push ax                          ; 0x4d33
    call ds_app_NGUR                 ; 0x4d34
    add sp, byte 0x0e                ; 0x4d37
    mov ax, word [bp - 0x0006]       ; 0x4d3a
    add ax, strict word 0x30         ; 0x4d3d
    push ax                          ; 0x4d40
    mov ax, word [bp - 0x0004]       ; 0x4d41
    add ax, 0xf0                     ; 0x4d44
    push ax                          ; 0x4d47
    mov ax, word [bp - 0x0006]       ; 0x4d48
    add ax, strict word 6            ; 0x4d4b
    push ax                          ; 0x4d4e
    mov ax, word [bp - 0x0004]       ; 0x4d4f
    add ax, strict word 0x4e         ; 0x4d52
    push ax                          ; 0x4d55
    call gfx_entry_16                ; 0x4d56
    add sp, byte 8                   ; 0x4d59
    cmp word [bp - 0x001c], byte 0   ; 0x4d5c
    je short @..api_idx_0038_LJOP.l13 ; 0x4d60
    jmp near @..api_idx_0038_LJOP.l11 ; 0x4d62
@..api_idx_0038_LJOP.l13:
    jmp near @..api_idx_0038_LJOP.l23 ; 0x4d65
jumptable_4fa9_case_1:
    cmp word [bp - 0x0018], byte 1   ; 0x4d68
    jne short @..api_idx_0038_LJOP.l15 ; 0x4d6c
    mov ax, 1                        ; 0x4d6e
    push ax                          ; 0x4d71
    mov ax, word [bp - 0x0006]       ; 0x4d72
    add ax, strict word 0xc          ; 0x4d75
    push ax                          ; 0x4d78
    mov ax, word [bp - 0x0004]       ; 0x4d79
    add ax, 0xf0                     ; 0x4d7c
    push ax                          ; 0x4d7f
    mov ax, word [bp - 0x0006]       ; 0x4d80
    add ax, strict word 6            ; 0x4d83
    push ax                          ; 0x4d86
    mov ax, word [bp - 0x0004]       ; 0x4d87
    add ax, 0xe8                     ; 0x4d8a
    push ax                          ; 0x4d8d
    call ds_app_QOOL                 ; 0x4d8e
    add sp, byte 0x0a                ; 0x4d91
    cmp word [bp - 0x0016], byte 0   ; 0x4d94
    jle short @..api_idx_0038_LJOP.l14 ; 0x4d98
    dec word [bp - 0x0016]           ; 0x4d9a
@..api_idx_0038_LJOP.l14:
    jmp short @..api_idx_0038_LJOP.l16 ; 0x4d9d
@..api_idx_0038_LJOP.l15:
    mov ax, 1                        ; 0x4d9f
    push ax                          ; 0x4da2
    mov ax, word [bp - 0x0006]       ; 0x4da3
    add ax, strict word 0x30         ; 0x4da6
    push ax                          ; 0x4da9
    mov ax, word [bp - 0x0004]       ; 0x4daa
    add ax, 0xf0                     ; 0x4dad
    push ax                          ; 0x4db0
    mov ax, word [bp - 0x0006]       ; 0x4db1
    add ax, strict word 0x2a         ; 0x4db4
    push ax                          ; 0x4db7
    mov ax, word [bp - 0x0004]       ; 0x4db8
    add ax, 0xe8                     ; 0x4dbb
    push ax                          ; 0x4dbe
    call ds_app_QOOL                 ; 0x4dbf
    add sp, byte 0x0a                ; 0x4dc2
    mov ax, word [bp + 0xc]          ; 0x4dc5
    dec ax                           ; 0x4dc8
    dec ax                           ; 0x4dc9
    dec ax                           ; 0x4dca
    cmp ax, word [bp - 0x0016]       ; 0x4dcb
    jle short @..api_idx_0038_LJOP.l16 ; 0x4dce
    inc word [bp - 0x0016]           ; 0x4dd0
@..api_idx_0038_LJOP.l16:
    mov ax, word [bp + 0xc]          ; 0x4dd3
    cmp ax, strict word 3            ; 0x4dd6
    jle short @..api_idx_0038_LJOP.l17 ; 0x4dd9
    push word [bp - 0x0012]          ; 0x4ddb
    mov ax, 0                        ; 0x4dde
    push ax                          ; 0x4de1
    mov ax, 0x64                     ; 0x4de2
    imul word [bp - 0x0012]          ; 0x4de5
    add ax, strict word 0x64         ; 0x4de8
    mov cx, word [bp + 0xc]          ; 0x4deb
    dec cx                           ; 0x4dee
    dec cx                           ; 0x4def
    dec cx                           ; 0x4df0
    cwd                              ; 0x4df1
    idiv cx                          ; 0x4df2
    imul word [bp - 0x0016]          ; 0x4df4
    mov cx, 0x64                     ; 0x4df7
    cwd                              ; 0x4dfa
    idiv cx                          ; 0x4dfb
    push ax                          ; 0x4dfd
    call clamp_between               ; 0x4dfe
    add sp, byte 6                   ; 0x4e01
    mov word [bp - 0x0010], ax       ; 0x4e04
@..api_idx_0038_LJOP.l17:
    push word [bp - 0x0022]          ; 0x4e07
    push word [bp - 0x0020]          ; 0x4e0a
    push word [bp - 0x0016]          ; 0x4e0d
    mov ax, 7                        ; 0x4e10
    push ax                          ; 0x4e13
    mov ax, 0x18                     ; 0x4e14
    push ax                          ; 0x4e17
    mov ax, word [bp - 0x0006]       ; 0x4e18
    add ax, strict word 6            ; 0x4e1b
    push ax                          ; 0x4e1e
    mov ax, word [bp - 0x0004]       ; 0x4e1f
    add ax, strict word 0x4e         ; 0x4e22
    push ax                          ; 0x4e25
    push word [bp + 0x4]             ; 0x4e26
    call loc_VUSH                    ; 0x4e29
    add sp, byte 0x10                ; 0x4e2c
    push word [bp - 0x0010]          ; 0x4e2f
    mov ax, 7                        ; 0x4e32
    push ax                          ; 0x4e35
    mov ax, 8                        ; 0x4e36
    push ax                          ; 0x4e39
    mov ax, word [bp - 0x0006]       ; 0x4e3a
    add ax, strict word 6            ; 0x4e3d
    push ax                          ; 0x4e40
    mov ax, word [bp - 0x0004]       ; 0x4e41
    add ax, 0xe8                     ; 0x4e44
    push ax                          ; 0x4e47
    call ds_app_JKST                 ; 0x4e48
    add sp, byte 0x0a                ; 0x4e4b
    mov ax, 0                        ; 0x4e4e
    push ax                          ; 0x4e51
    push ax                          ; 0x4e52
    mov ax, word [bp - 0x0006]       ; 0x4e53
    add ax, word [bp - 0x0010]       ; 0x4e56
    add ax, strict word 0x12         ; 0x4e59
    push ax                          ; 0x4e5c
    mov ax, word [bp - 0x0004]       ; 0x4e5d
    add ax, 0xf0                     ; 0x4e60
    push ax                          ; 0x4e63
    mov ax, word [bp - 0x0006]       ; 0x4e64
    add ax, word [bp - 0x0010]       ; 0x4e67
    add ax, strict word 0xe          ; 0x4e6a
    push ax                          ; 0x4e6d
    mov ax, word [bp - 0x0004]       ; 0x4e6e
    add ax, 0xe8                     ; 0x4e71
    push ax                          ; 0x4e74
    mov ax, 0                        ; 0x4e75
    push ax                          ; 0x4e78
    call ds_app_NGUR                 ; 0x4e79
    add sp, byte 0x0e                ; 0x4e7c
    mov ax, word [bp - 0x0006]       ; 0x4e7f
    add ax, strict word 0x30         ; 0x4e82
    push ax                          ; 0x4e85
    mov ax, word [bp - 0x0004]       ; 0x4e86
    add ax, 0xf0                     ; 0x4e89
    push ax                          ; 0x4e8c
    mov ax, word [bp - 0x0006]       ; 0x4e8d
    add ax, strict word 6            ; 0x4e90
    push ax                          ; 0x4e93
    mov ax, word [bp - 0x0004]       ; 0x4e94
    add ax, strict word 0x4e         ; 0x4e97
    push ax                          ; 0x4e9a
    call gfx_entry_16                ; 0x4e9b
    add sp, byte 8                   ; 0x4e9e
    jmp near @..api_idx_0038_LJOP.l23 ; 0x4ea1
jumptable_4fa9_case_3:
    jmp near @..api_idx_0038_LJOP.l23 ; 0x4ea4
jumptable_4fa9_case_4:
    cmp word [bp + 0x8], byte 0      ; 0x4ea7
    je short @..api_idx_0038_LJOP.l18 ; 0x4eab
    mov ax, 1                        ; 0x4ead
    push ax                          ; 0x4eb0
    push ax                          ; 0x4eb1
    mov ax, 0xa                      ; 0x4eb2
    push ax                          ; 0x4eb5
    mov ax, word [bp - 0x0006]       ; 0x4eb6
    add ax, strict word 0x17         ; 0x4eb9
    push ax                          ; 0x4ebc
    mov ax, word [bp - 0x0004]       ; 0x4ebd
    add ax, strict word 8            ; 0x4ec0
    push ax                          ; 0x4ec3
    call ds_app_VIGG                 ; 0x4ec4
    add sp, byte 0x0a                ; 0x4ec7
    mov ax, 0                        ; 0x4eca
    push ax                          ; 0x4ecd
    mov ax, 1                        ; 0x4ece
    push ax                          ; 0x4ed1
    mov ax, 0xa                      ; 0x4ed2
    push ax                          ; 0x4ed5
    mov ax, word [bp - 0x0006]       ; 0x4ed6
    add ax, strict word 0x17         ; 0x4ed9
    push ax                          ; 0x4edc
    mov ax, word [bp - 0x0004]       ; 0x4edd
    add ax, strict word 8            ; 0x4ee0
    push ax                          ; 0x4ee3
    call ds_app_VIGG                 ; 0x4ee4
    add sp, byte 0x0a                ; 0x4ee7
    mov word [bss_9050], 1           ; 0x4eea
    mov word [bp - 0x001a], 0        ; 0x4ef0
@..api_idx_0038_LJOP.l18:
    jmp near @..api_idx_0038_LJOP.l23 ; 0x4ef5
jumptable_4fa9_case_5:
    cmp word [bp + 0xa], byte 0      ; 0x4ef8
    je short @..api_idx_0038_LJOP.l19 ; 0x4efc
    mov ax, 1                        ; 0x4efe
    push ax                          ; 0x4f01
    push ax                          ; 0x4f02
    mov ax, 0xa                      ; 0x4f03
    push ax                          ; 0x4f06
    mov ax, word [bp - 0x0006]       ; 0x4f07
    add ax, strict word 0x27         ; 0x4f0a
    push ax                          ; 0x4f0d
    mov ax, word [bp - 0x0004]       ; 0x4f0e
    add ax, strict word 8            ; 0x4f11
    push ax                          ; 0x4f14
    call ds_app_VIGG                 ; 0x4f15
    add sp, byte 0x0a                ; 0x4f18
    mov ax, 0                        ; 0x4f1b
    push ax                          ; 0x4f1e
    mov ax, 1                        ; 0x4f1f
    push ax                          ; 0x4f22
    mov ax, 0xa                      ; 0x4f23
    push ax                          ; 0x4f26
    mov ax, word [bp - 0x0006]       ; 0x4f27
    add ax, strict word 0x27         ; 0x4f2a
    push ax                          ; 0x4f2d
    mov ax, word [bp - 0x0004]       ; 0x4f2e
    add ax, strict word 8            ; 0x4f31
    push ax                          ; 0x4f34
    call ds_app_VIGG                 ; 0x4f35
    add sp, byte 0x0a                ; 0x4f38
    mov word [bss_9050], 2           ; 0x4f3b
    mov word [bp - 0x001a], 0        ; 0x4f41
@..api_idx_0038_LJOP.l19:
    jmp short @..api_idx_0038_LJOP.l23 ; 0x4f46
@..api_idx_0038_LJOP.l20:
    mov ax, word [bp - 0x0016]       ; 0x4f48
    add ax, word [bp - 0x0018]       ; 0x4f4b
    add ax, strict word 0xfffa       ; 0x4f4e
    mov word [bp - 0x0020], ax       ; 0x4f51
    mov ax, word [bp - 0x0018]       ; 0x4f54
    add ax, strict word 0xfffa       ; 0x4f57
    mov word [bss_9ca6], ax          ; 0x4f5a
    push word [bp - 0x0022]          ; 0x4f5d
    push word [bp - 0x0020]          ; 0x4f60
    push word [bp - 0x0016]          ; 0x4f63
    mov ax, 7                        ; 0x4f66
    push ax                          ; 0x4f69
    mov ax, 0x18                     ; 0x4f6a
    push ax                          ; 0x4f6d
    mov ax, word [bp - 0x0006]       ; 0x4f6e
    add ax, strict word 6            ; 0x4f71
    push ax                          ; 0x4f74
    mov ax, word [bp - 0x0004]       ; 0x4f75
    add ax, strict word 0x4e         ; 0x4f78
    push ax                          ; 0x4f7b
    push word [bp + 0x4]             ; 0x4f7c
    call loc_VUSH                    ; 0x4f7f
    add sp, byte 0x10                ; 0x4f82
    mov ax, word [bp - 0x0006]       ; 0x4f85
    add ax, strict word 0x30         ; 0x4f88
    push ax                          ; 0x4f8b
    mov ax, word [bp - 0x0004]       ; 0x4f8c
    add ax, 0xe0                     ; 0x4f8f
    push ax                          ; 0x4f92
    mov ax, word [bp - 0x0006]       ; 0x4f93
    add ax, strict word 6            ; 0x4f96
    push ax                          ; 0x4f99
    mov ax, word [bp - 0x0004]       ; 0x4f9a
    add ax, strict word 0x4e         ; 0x4f9d
    push ax                          ; 0x4fa0
    call gfx_entry_16                ; 0x4fa1
    add sp, byte 8                   ; 0x4fa4
    jmp short @..api_idx_0038_LJOP.l23 ; 0x4fa7
jumptable_4fa9:
    dw jumptable_4fa9_case_0 - IMAGE_BASE + __zres_end ; 0x4fa9
    dw jumptable_4fa9_case_1 - IMAGE_BASE + __zres_end ; 0x4fab
    dw jumptable_4fa9_case_1 - IMAGE_BASE + __zres_end ; 0x4fad
    dw jumptable_4fa9_case_3 - IMAGE_BASE + __zres_end ; 0x4faf
    dw jumptable_4fa9_case_4 - IMAGE_BASE + __zres_end ; 0x4fb1
    dw jumptable_4fa9_case_5 - IMAGE_BASE + __zres_end ; 0x4fb3
@..api_idx_0038_LJOP.l21:
    cmp ax, strict word 6            ; 0x4fb5
    jae short @..api_idx_0038_LJOP.l22 ; 0x4fb8
    xchg bx, ax                      ; 0x4fba
    shl bx, 1                        ; 0x4fbb
    jmp [cs:bx + jumptable_4fa9 - IMAGE_BASE + __zres_end] ; 0x4fbd
@..api_idx_0038_LJOP.l22:
    jmp short @..api_idx_0038_LJOP.l20 ; 0x4fc2
@..api_idx_0038_LJOP.l23:
    cmp word [bp - 0x001a], byte 0   ; 0x4fc4
    je short @..api_idx_0038_LJOP.l24 ; 0x4fc8
    jmp near @..api_idx_0038_LJOP.l8 ; 0x4fca
@..api_idx_0038_LJOP.l24:
    mov ax, 1                        ; 0x4fcd
    push ax                          ; 0x4fd0
    push word [bp - 0x0038]          ; 0x4fd1
    call ds_app_file_HMNO            ; 0x4fd4
    add sp, byte 4                   ; 0x4fd7
    mov word [bss_93d8], 0x8f        ; 0x4fda
    mov ax, word [bp - 0x0020]       ; 0x4fe0
    mov word [bss_904e], ax          ; 0x4fe3
    mov ax, word [bss_9050]          ; 0x4fe6
    ret                              ; 0x4fe9
