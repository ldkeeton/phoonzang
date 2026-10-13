api_idx_007c:
    mov ax, 0xff84                   ; 0x0572
    call aztec_csav                  ; 0x0575
    mov ax, 0                        ; 0x0578
    push ax                          ; 0x057b
    push ax                          ; 0x057c
    push word [bss_9418]             ; 0x057d
    push word [bss_9416]             ; 0x0581
    call ds_loc_3b89                 ; 0x0585
    add sp, byte 8                   ; 0x0588
    mov ax, 0                        ; 0x058b
    push ax                          ; 0x058e
    push ax                          ; 0x058f
    push word [bss_941c]             ; 0x0590
    push word [bss_941a]             ; 0x0594
    call ds_loc_3b89                 ; 0x0598
    add sp, byte 8                   ; 0x059b
    mov ax, 0x12                     ; 0x059e
    push ax                          ; 0x05a1
    mov ax, 0xe                      ; 0x05a2
    push ax                          ; 0x05a5
    push word [bp + 0x4]             ; 0x05a6
    call api_idx_0010                ; 0x05a9
    add sp, byte 6                   ; 0x05ac
    mov ax, 0                        ; 0x05af
    push ax                          ; 0x05b2
    push ax                          ; 0x05b3
    call ds_loc_3a6a                 ; 0x05b4
    add sp, byte 4                   ; 0x05b7
    mov ax, 0x4c                     ; 0x05ba
    push ax                          ; 0x05bd
    mov ax, 0x248                    ; 0x05be
    imul word [bp + 0x4]             ; 0x05c1
    add ax, 0x5bf4                   ; 0x05c4
    push ax                          ; 0x05c7
    call aztec_strlen                ; 0x05c8
    pop cx                           ; 0x05cb
    mov cx, 6                        ; 0x05cc
    imul cx                          ; 0x05cf
    mov cx, 2                        ; 0x05d1
    cwd                              ; 0x05d4
    idiv cx                          ; 0x05d5
    mov cx, ax                       ; 0x05d7
    mov ax, 0x28                     ; 0x05d9
    sub ax, cx                       ; 0x05dc
    push ax                          ; 0x05de
    call ds_loc_3a50                 ; 0x05df
    add sp, byte 4                   ; 0x05e2
    mov ax, 0                        ; 0x05e5
    push ax                          ; 0x05e8
    mov ax, 0x248                    ; 0x05e9
    imul word [bp + 0x4]             ; 0x05ec
    add ax, 0x5bf4                   ; 0x05ef
    push ax                          ; 0x05f2
    call ds_string_loc_3a95          ; 0x05f3
    add sp, byte 4                   ; 0x05f6
    mov ax, 0                        ; 0x05f9
    push ax                          ; 0x05fc
    mov ax, 1                        ; 0x05fd
    push ax                          ; 0x0600
    call ds_loc_3a6a                 ; 0x0601
    add sp, byte 4                   ; 0x0604
    mov ax, 6                        ; 0x0607
    push ax                          ; 0x060a
    mov ax, 0x5a                     ; 0x060b
    push ax                          ; 0x060e
    call ds_loc_3a50                 ; 0x060f
    add sp, byte 4                   ; 0x0612
    lea ax, word [bp - 0x0058]       ; 0x0615
    push ax                          ; 0x0618
    mov ax, 0x248                    ; 0x0619
    imul word [bp + 0x4]             ; 0x061c
    mov bx, ax                       ; 0x061f
    mov al, byte [bx + 0x5e2c]       ; 0x0621
    sub ah, ah                       ; 0x0625
    add ax, 0x8c                     ; 0x0627
    push ax                          ; 0x062a
    call ds_app_mem_0782             ; 0x062b
    add sp, byte 4                   ; 0x062e
    mov ax, 0                        ; 0x0631
    push ax                          ; 0x0634
    mov al, byte [bp - 0x0058]       ; 0x0635
    sub ah, ah                       ; 0x0638
    push ax                          ; 0x063a
    call ds_loc_3a77                 ; 0x063b
    add sp, byte 4                   ; 0x063e
    mov ax, 0                        ; 0x0641
    push ax                          ; 0x0644
    mov ax, 0x2d                     ; 0x0645
    push ax                          ; 0x0648
    call ds_loc_3a77                 ; 0x0649
    add sp, byte 4                   ; 0x064c
    lea ax, word [bp - 0x0058]       ; 0x064f
    push ax                          ; 0x0652
    mov ax, 0x248                    ; 0x0653
    imul word [bp + 0x4]             ; 0x0656
    mov bx, ax                       ; 0x0659
    mov al, byte [bx + 0x5e2b]       ; 0x065b
    sub ah, ah                       ; 0x065f
    add ax, strict word 0x64         ; 0x0661
    push ax                          ; 0x0664
    call ds_app_mem_0782             ; 0x0665
    add sp, byte 4                   ; 0x0668
    mov ax, 0                        ; 0x066b
    push ax                          ; 0x066e
    lea ax, word [bp - 0x0058]       ; 0x066f
    push ax                          ; 0x0672
    call ds_string_loc_3a95          ; 0x0673
    add sp, byte 4                   ; 0x0676
    mov ax, 0                        ; 0x0679
    push ax                          ; 0x067c
    mov ax, 0x84                     ; 0x067d
    push ax                          ; 0x0680
    call ds_loc_3a6a                 ; 0x0681
    add sp, byte 4                   ; 0x0684
    mov ax, 0xc                      ; 0x0687
    push ax                          ; 0x068a
    mov ax, 0x5a                     ; 0x068b
    push ax                          ; 0x068e
    call ds_loc_3a50                 ; 0x068f
    add sp, byte 4                   ; 0x0692
    lea ax, word [bp - 0x0058]       ; 0x0695
    push ax                          ; 0x0698
    mov ax, 0x248                    ; 0x0699
    imul word [bp + 0x4]             ; 0x069c
    mov bx, ax                       ; 0x069f
    mov al, byte [bx + 0x5e2d]       ; 0x06a1
    sub ah, ah                       ; 0x06a5
    add ax, strict word 0x78         ; 0x06a7
    push ax                          ; 0x06aa
    call ds_app_mem_0782             ; 0x06ab
    add sp, byte 4                   ; 0x06ae
    mov ax, 0                        ; 0x06b1
    push ax                          ; 0x06b4
    lea ax, word [bp - 0x0058]       ; 0x06b5
    push ax                          ; 0x06b8
    call ds_string_loc_3a95          ; 0x06b9
    add sp, byte 4                   ; 0x06bc
    mov ax, 0x12                     ; 0x06bf
    push ax                          ; 0x06c2
    mov ax, 0x5a                     ; 0x06c3
    push ax                          ; 0x06c6
    call ds_loc_3a50                 ; 0x06c7
    add sp, byte 4                   ; 0x06ca
    lea ax, word [bp - 0x0058]       ; 0x06cd
    push ax                          ; 0x06d0
    mov ax, 0xc8                     ; 0x06d1
    push ax                          ; 0x06d4
    call ds_app_mem_0782             ; 0x06d5
    add sp, byte 4                   ; 0x06d8
    mov ax, 0                        ; 0x06db
    push ax                          ; 0x06de
    lea ax, word [bp - 0x0058]       ; 0x06df
    push ax                          ; 0x06e2
    call ds_string_loc_3a95          ; 0x06e3
    add sp, byte 4                   ; 0x06e6
    mov ax, 0                        ; 0x06e9
    push ax                          ; 0x06ec
    mov ax, 4                        ; 0x06ed
    push ax                          ; 0x06f0
    mov ax, 0x248                    ; 0x06f1
    imul word [bp + 0x4]             ; 0x06f4
    mov bx, ax                       ; 0x06f7
    push word [bx + 0x5c18]          ; 0x06f9
    call ds_app_052e                 ; 0x06fd
    add sp, byte 6                   ; 0x0700
    mov ax, 0x248                    ; 0x0703
    imul word [bp + 0x4]             ; 0x0706
    mov bx, ax                       ; 0x0709
    mov ax, word [bx + 0x5bfc]       ; 0x070b
    mov dx, word [bx + 0x5bfe]       ; 0x070f
    mov cx, 0x16d                    ; 0x0713
    mov bx, 0                        ; 0x0716
    call aztec_ldv                   ; 0x0719
    add ax, strict word 0xffee       ; 0x071c
    adc dx, byte 0xff                ; 0x071f
    mov cx, 4                        ; 0x0722
    mov bx, 0                        ; 0x0725
    call aztec_ldv                   ; 0x0728
    push ax                          ; 0x072b
    push dx                          ; 0x072c
    mov ax, 0x248                    ; 0x072d
    imul word [bp + 0x4]             ; 0x0730
    mov bx, ax                       ; 0x0733
    mov ax, word [bx + 0x5c1a]       ; 0x0735
    cwd                              ; 0x0739
    mov cx, ax                       ; 0x073a
    mov bx, dx                       ; 0x073c
    pop dx                           ; 0x073e
    pop ax                           ; 0x073f
    add ax, cx                       ; 0x0740
    adc dx, bx                       ; 0x0742
    mov cx, ax                       ; 0x0744
    mov bx, dx                       ; 0x0746
    add ax, strict word 0xffff       ; 0x0748
    adc dx, byte 0xff                ; 0x074b
    mov cx, ax                       ; 0x074e
    mov bx, dx                       ; 0x0750
    mov ax, 0x14                     ; 0x0752
    mov dx, 0                        ; 0x0755
    sub ax, cx                       ; 0x0758
    sbb dx, bx                       ; 0x075a
    push ax                          ; 0x075c
    push dx                          ; 0x075d
    mov ax, 0x248                    ; 0x075e
    imul word [bp + 0x4]             ; 0x0761
    mov bx, ax                       ; 0x0764
    mov al, byte [bx + 0x5d67]       ; 0x0766
    sub ah, ah                       ; 0x076a
    cwd                              ; 0x076c
    mov cx, ax                       ; 0x076d
    mov bx, dx                       ; 0x076f
    pop dx                           ; 0x0771
    pop ax                           ; 0x0772
    push ax                          ; 0x0773
    push dx                          ; 0x0774
    mul bx                           ; 0x0775
    mov bx, ax                       ; 0x0777
    pop ax                           ; 0x0779
    mul cx                           ; 0x077a
    add bx, ax                       ; 0x077c
    pop ax                           ; 0x077e
    mul cx                           ; 0x077f
    add dx, bx                       ; 0x0781
    mov cx, 0x12                     ; 0x0783
    mov bx, 0                        ; 0x0786
    call aztec_ldv                   ; 0x0789
    mov word [bss_9436], ax          ; 0x078c
    mov ax, 0x14                     ; 0x078f
    push ax                          ; 0x0792
    mov ax, 0                        ; 0x0793
    push ax                          ; 0x0796
    push word [bss_9436]             ; 0x0797
    call ds_app_0a09                 ; 0x079b
    add sp, byte 6                   ; 0x079e
    mov word [bss_9436], ax          ; 0x07a1
    mov ax, 0x248                    ; 0x07a4
    imul word [bp + 0x4]             ; 0x07a7
    mov bx, ax                       ; 0x07aa
    cmp byte [bx + 0x5e2f], 3        ; 0x07ac
    jae short @..api_idx_007c.l1     ; 0x07b1
    mov ax, 0                        ; 0x07b3
    jmp short @..api_idx_007c.l2     ; 0x07b6
@..api_idx_007c.l1:
    mov ax, 1                        ; 0x07b8
@..api_idx_007c.l2:
    mov word [bss_9438], ax          ; 0x07bb
    mov word [bss_943a], 0           ; 0x07be
    push word [bss_943a]             ; 0x07c4
    call api_idx_000a                ; 0x07c8
    pop cx                           ; 0x07cb
    mov ax, 0                        ; 0x07cc
    push ax                          ; 0x07cf
    mov ax, 0x55                     ; 0x07d0
    push ax                          ; 0x07d3
    call ds_loc_3a6a                 ; 0x07d4
    add sp, byte 4                   ; 0x07d7
    mov word [bp - 0x0002], 0        ; 0x07da
@..api_idx_007c.l3:
    mov ax, 6                        ; 0x07df
    imul word [bp - 0x0002]          ; 0x07e2
    add ax, strict word 0x23         ; 0x07e5
    push ax                          ; 0x07e8
    mov ax, 0x73                     ; 0x07e9
    push ax                          ; 0x07ec
    call ds_loc_3a50                 ; 0x07ed
    add sp, byte 4                   ; 0x07f0
    lea ax, word [bp - 0x0058]       ; 0x07f3
    push ax                          ; 0x07f6
    mov ax, word [bp - 0x0002]       ; 0x07f7
    add ax, 0xcc                     ; 0x07fa
    push ax                          ; 0x07fd
    call ds_app_mem_0782             ; 0x07fe
    add sp, byte 4                   ; 0x0801
    mov ax, 0                        ; 0x0804
    push ax                          ; 0x0807
    lea ax, word [bp - 0x0058]       ; 0x0808
    push ax                          ; 0x080b
    call ds_string_loc_3a95          ; 0x080c
    add sp, byte 4                   ; 0x080f
    mov ax, 0                        ; 0x0812
    push ax                          ; 0x0815
    mov ax, 3                        ; 0x0816
    push ax                          ; 0x0819
    mov ax, 0x248                    ; 0x081a
    imul word [bp + 0x4]             ; 0x081d
    add ax, word [bp - 0x0002]       ; 0x0820
    mov bx, ax                       ; 0x0823
    mov al, byte [bx + 0x5d64]       ; 0x0825
    sub ah, ah                       ; 0x0829
    push ax                          ; 0x082b
    call ds_app_052e                 ; 0x082c
    add sp, byte 6                   ; 0x082f
    inc word [bp - 0x0002]           ; 0x0832
    mov ax, word [bp - 0x0002]       ; 0x0835
    cmp ax, strict word 8            ; 0x0838
    jl short @..api_idx_007c.l3      ; 0x083b
    mov ax, 0                        ; 0x083d
    push ax                          ; 0x0840
    mov ax, 0xfd                     ; 0x0841
    push ax                          ; 0x0844
    call ds_loc_3a6a                 ; 0x0845
    add sp, byte 4                   ; 0x0848
    lea ax, word [bp - 0x0058]       ; 0x084b
    push ax                          ; 0x084e
    mov ax, 0xc9                     ; 0x084f
    push ax                          ; 0x0852
    call ds_app_mem_0782             ; 0x0853
    add sp, byte 4                   ; 0x0856
    mov ax, 6                        ; 0x0859
    push ax                          ; 0x085c
    mov ax, 0xe4                     ; 0x085d
    push ax                          ; 0x0860
    call ds_loc_3a50                 ; 0x0861
    add sp, byte 4                   ; 0x0864
    mov ax, 0                        ; 0x0867
    push ax                          ; 0x086a
    lea ax, word [bp - 0x0058]       ; 0x086b
    push ax                          ; 0x086e
    call ds_string_loc_3a95          ; 0x086f
    add sp, byte 4                   ; 0x0872
    lea ax, word [bp - 0x0058]       ; 0x0875
    push ax                          ; 0x0878
    mov ax, 0x248                    ; 0x0879
    imul word [bp + 0x4]             ; 0x087c
    mov bx, ax                       ; 0x087f
    mov al, byte [bx + 0x5e2d]       ; 0x0881
    sub ah, ah                       ; 0x0885
    mov cx, 0xa                      ; 0x0887
    imul cx                          ; 0x088a
    push ax                          ; 0x088c
    mov al, byte [bx + 0x5e2e]       ; 0x088d
    sub ah, ah                       ; 0x0891
    mov cx, ax                       ; 0x0893
    pop ax                           ; 0x0895
    add ax, cx                       ; 0x0896
    add ax, 0x320                    ; 0x0898
    push ax                          ; 0x089b
    call ds_app_mem_0782             ; 0x089c
    add sp, byte 4                   ; 0x089f
    mov ax, 6                        ; 0x08a2
    push ax                          ; 0x08a5
    lea ax, word [bp - 0x0058]       ; 0x08a6
    push ax                          ; 0x08a9
    call aztec_strlen                ; 0x08aa
    pop cx                           ; 0x08ad
    mov cx, 0x34                     ; 0x08ae
    sub cx, ax                       ; 0x08b1
    mov ax, 6                        ; 0x08b3
    imul cx                          ; 0x08b6
    push ax                          ; 0x08b8
    call ds_loc_3a50                 ; 0x08b9
    add sp, byte 4                   ; 0x08bc
    mov ax, 0                        ; 0x08bf
    push ax                          ; 0x08c2
    lea ax, word [bp - 0x0058]       ; 0x08c3
    push ax                          ; 0x08c6
    call ds_string_loc_3a95          ; 0x08c7
    add sp, byte 4                   ; 0x08ca
    mov ax, 0                        ; 0x08cd
    push ax                          ; 0x08d0
    mov ax, 0x47                     ; 0x08d1
    push ax                          ; 0x08d4
    call ds_loc_3a6a                 ; 0x08d5
    add sp, byte 4                   ; 0x08d8
    lea ax, word [bp - 0x0058]       ; 0x08db
    push ax                          ; 0x08de
    mov ax, 0xca                     ; 0x08df
    push ax                          ; 0x08e2
    call ds_app_mem_0782             ; 0x08e3
    add sp, byte 4                   ; 0x08e6
    mov ax, 0xc                      ; 0x08e9
    push ax                          ; 0x08ec
    mov ax, 0xe4                     ; 0x08ed
    push ax                          ; 0x08f0
    call ds_loc_3a50                 ; 0x08f1
    add sp, byte 4                   ; 0x08f4
    mov ax, 0                        ; 0x08f7
    push ax                          ; 0x08fa
    lea ax, word [bp - 0x0058]       ; 0x08fb
    push ax                          ; 0x08fe
    call ds_string_loc_3a95          ; 0x08ff
    add sp, byte 4                   ; 0x0902
    mov ax, 0                        ; 0x0905
    push ax                          ; 0x0908
    mov ax, 0x20                     ; 0x0909
    push ax                          ; 0x090c
    call ds_loc_3a77                 ; 0x090d
    add sp, byte 4                   ; 0x0910
    mov ax, 0                        ; 0x0913
    push ax                          ; 0x0916
    mov ax, 0xa                      ; 0x0917
    push ax                          ; 0x091a
    mov ax, 0x248                    ; 0x091b
    imul word [bp + 0x4]             ; 0x091e
    mov bx, ax                       ; 0x0921
    push word [bx + 0x5c02]          ; 0x0923
    push word [bx + 0x5c00]          ; 0x0927
    call ds_app_string_04da          ; 0x092b
    add sp, byte 8                   ; 0x092e
    lea ax, word [bp - 0x0058]       ; 0x0931
    push ax                          ; 0x0934
    mov ax, 0xcb                     ; 0x0935
    push ax                          ; 0x0938
    call ds_app_mem_0782             ; 0x0939
    add sp, byte 4                   ; 0x093c
    mov ax, 0x12                     ; 0x093f
    push ax                          ; 0x0942
    mov ax, 0xe4                     ; 0x0943
    push ax                          ; 0x0946
    call ds_loc_3a50                 ; 0x0947
    add sp, byte 4                   ; 0x094a
    mov ax, 0                        ; 0x094d
    push ax                          ; 0x0950
    lea ax, word [bp - 0x0058]       ; 0x0951
    push ax                          ; 0x0954
    call ds_string_loc_3a95          ; 0x0955
    add sp, byte 4                   ; 0x0958
    mov ax, 0                        ; 0x095b
    push ax                          ; 0x095e
    mov ax, 0x20                     ; 0x095f
    push ax                          ; 0x0962
    call ds_loc_3a77                 ; 0x0963
    add sp, byte 4                   ; 0x0966
    mov ax, 0                        ; 0x0969
    push ax                          ; 0x096c
    mov ax, 0xa                      ; 0x096d
    push ax                          ; 0x0970
    mov ax, 0x248                    ; 0x0971
    imul word [bp + 0x4]             ; 0x0974
    mov bx, ax                       ; 0x0977
    push word [bx + 0x5c06]          ; 0x0979
    push word [bx + 0x5c04]          ; 0x097d
    call ds_app_string_04da          ; 0x0981
    add sp, byte 8                   ; 0x0984
    mov ax, 0                        ; 0x0987
    push ax                          ; 0x098a
    mov ax, 0x1d                     ; 0x098b
    push ax                          ; 0x098e
    call ds_loc_3a6a                 ; 0x098f
    add sp, byte 4                   ; 0x0992
    lea ax, word [bp - 0x0058]       ; 0x0995
    push ax                          ; 0x0998
    mov ax, 0xd4                     ; 0x0999
    push ax                          ; 0x099c
    call ds_app_mem_0782             ; 0x099d
    add sp, byte 4                   ; 0x09a0
    mov ax, 0x5d                     ; 0x09a3
    push ax                          ; 0x09a6
    mov ax, 6                        ; 0x09a7
    push ax                          ; 0x09aa
    call ds_loc_3a50                 ; 0x09ab
    add sp, byte 4                   ; 0x09ae
    mov ax, 0                        ; 0x09b1
    push ax                          ; 0x09b4
    lea ax, word [bp - 0x0058]       ; 0x09b5
    push ax                          ; 0x09b8
    call ds_string_loc_3a95          ; 0x09b9
    add sp, byte 4                   ; 0x09bc
    mov ax, 0                        ; 0x09bf
    push ax                          ; 0x09c2
    mov ax, 0x20                     ; 0x09c3
    push ax                          ; 0x09c6
    call ds_loc_3a77                 ; 0x09c7
    add sp, byte 4                   ; 0x09ca
    mov ax, 0                        ; 0x09cd
    push ax                          ; 0x09d0
    mov ax, 0x1b                     ; 0x09d1
    push ax                          ; 0x09d4
    call ds_loc_3a6a                 ; 0x09d5
    add sp, byte 4                   ; 0x09d8
    lea ax, word [bp - 0x0058]       ; 0x09db
    push ax                          ; 0x09de
    mov ax, 0x248                    ; 0x09df
    imul word [bp + 0x4]             ; 0x09e2
    mov bx, ax                       ; 0x09e5
    push word [bx + 0x5c0c]          ; 0x09e7
    call ds_app_04c4                 ; 0x09eb
    add sp, byte 4                   ; 0x09ee
    mov ax, 0                        ; 0x09f1
    push ax                          ; 0x09f4
    lea ax, word [bp - 0x0058]       ; 0x09f5
    push ax                          ; 0x09f8
    call ds_string_loc_3a95          ; 0x09f9
    add sp, byte 4                   ; 0x09fc
    mov ax, 0                        ; 0x09ff
    push ax                          ; 0x0a02
    mov ax, 0x2f                     ; 0x0a03
    push ax                          ; 0x0a06
    call ds_loc_3a77                 ; 0x0a07
    add sp, byte 4                   ; 0x0a0a
    lea ax, word [bp - 0x0058]       ; 0x0a0d
    push ax                          ; 0x0a10
    mov ax, 0x248                    ; 0x0a11
    imul word [bp + 0x4]             ; 0x0a14
    mov bx, ax                       ; 0x0a17
    push word [bx + 0x5c0e]          ; 0x0a19
    call ds_app_04c4                 ; 0x0a1d
    add sp, byte 4                   ; 0x0a20
    mov ax, 0                        ; 0x0a23
    push ax                          ; 0x0a26
    lea ax, word [bp - 0x0058]       ; 0x0a27
    push ax                          ; 0x0a2a
    call ds_string_loc_3a95          ; 0x0a2b
    add sp, byte 4                   ; 0x0a2e
    mov ax, 0                        ; 0x0a31
    push ax                          ; 0x0a34
    mov ax, 0x1d                     ; 0x0a35
    push ax                          ; 0x0a38
    call ds_loc_3a6a                 ; 0x0a39
    add sp, byte 4                   ; 0x0a3c
    lea ax, word [bp - 0x0058]       ; 0x0a3f
    push ax                          ; 0x0a42
    mov ax, 0xd5                     ; 0x0a43
    push ax                          ; 0x0a46
    call ds_app_mem_0782             ; 0x0a47
    add sp, byte 4                   ; 0x0a4a
    mov ax, 0x63                     ; 0x0a4d
    push ax                          ; 0x0a50
    mov ax, 6                        ; 0x0a51
    push ax                          ; 0x0a54
    call ds_loc_3a50                 ; 0x0a55
    add sp, byte 4                   ; 0x0a58
    mov ax, 0                        ; 0x0a5b
    push ax                          ; 0x0a5e
    lea ax, word [bp - 0x0058]       ; 0x0a5f
    push ax                          ; 0x0a62
    call ds_string_loc_3a95          ; 0x0a63
    add sp, byte 4                   ; 0x0a66
    mov ax, 0                        ; 0x0a69
    push ax                          ; 0x0a6c
    mov ax, 0x20                     ; 0x0a6d
    push ax                          ; 0x0a70
    call ds_loc_3a77                 ; 0x0a71
    add sp, byte 4                   ; 0x0a74
    mov ax, 0                        ; 0x0a77
    push ax                          ; 0x0a7a
    mov ax, 0x1b                     ; 0x0a7b
    push ax                          ; 0x0a7e
    call ds_loc_3a6a                 ; 0x0a7f
    add sp, byte 4                   ; 0x0a82
    mov ax, 0x248                    ; 0x0a85
    imul word [bp + 0x4]             ; 0x0a88
    mov bx, ax                       ; 0x0a8b
    mov ax, word [bx + 0x5c10]       ; 0x0a8d
    mov cx, 0x64                     ; 0x0a91
    imul cx                          ; 0x0a94
    mov cx, word [bx + 0x5c12]       ; 0x0a96
    cwd                              ; 0x0a9a
    idiv cx                          ; 0x0a9b
    mov word [bp - 0x0008], ax       ; 0x0a9d
    cmp ax, strict word 1            ; 0x0aa0
    jge short @..api_idx_007c.l4     ; 0x0aa3
    cmp word [bx + 0x5c10], byte 0   ; 0x0aa5
    jle short @..api_idx_007c.l4     ; 0x0aaa
    mov ax, 1                        ; 0x0aac
    jmp short @..api_idx_007c.l5     ; 0x0aaf
@..api_idx_007c.l4:
    mov ax, word [bp - 0x0008]       ; 0x0ab1
@..api_idx_007c.l5:
    mov word [bp - 0x0008], ax       ; 0x0ab4
    lea ax, word [bp - 0x0058]       ; 0x0ab7
    push ax                          ; 0x0aba
    push word [bp - 0x0008]          ; 0x0abb
    call ds_app_04c4                 ; 0x0abe
    add sp, byte 4                   ; 0x0ac1
    mov ax, 0                        ; 0x0ac4
    push ax                          ; 0x0ac7
    lea ax, word [bp - 0x0058]       ; 0x0ac8
    push ax                          ; 0x0acb
    call ds_string_loc_3a95          ; 0x0acc
    add sp, byte 4                   ; 0x0acf
    mov ax, 0                        ; 0x0ad2
    push ax                          ; 0x0ad5
    mov ax, 0x9098                   ; 0x0ad6
    push ax                          ; 0x0ad9
    call ds_string_loc_3a95          ; 0x0ada
    add sp, byte 4                   ; 0x0add
    mov ax, 0                        ; 0x0ae0
    push ax                          ; 0x0ae3
    mov ax, 0x1d                     ; 0x0ae4
    push ax                          ; 0x0ae7
    call ds_loc_3a6a                 ; 0x0ae8
    add sp, byte 4                   ; 0x0aeb
    mov ax, 0                        ; 0x0aee
    push ax                          ; 0x0af1
    mov ax, 0x28                     ; 0x0af2
    push ax                          ; 0x0af5
    call ds_loc_3a77                 ; 0x0af6
    add sp, byte 4                   ; 0x0af9
    lea ax, word [bp - 0x0058]       ; 0x0afc
    push ax                          ; 0x0aff
    mov ax, 0x248                    ; 0x0b00
    imul word [bp + 0x4]             ; 0x0b03
    mov bx, ax                       ; 0x0b06
    push word [bx + 0x5c12]          ; 0x0b08
    call ds_app_04c4                 ; 0x0b0c
    add sp, byte 4                   ; 0x0b0f
    mov ax, 0                        ; 0x0b12
    push ax                          ; 0x0b15
    lea ax, word [bp - 0x0058]       ; 0x0b16
    push ax                          ; 0x0b19
    call ds_string_loc_3a95          ; 0x0b1a
    add sp, byte 4                   ; 0x0b1d
    mov ax, 0                        ; 0x0b20
    push ax                          ; 0x0b23
    mov ax, 0x29                     ; 0x0b24
    push ax                          ; 0x0b27
    call ds_loc_3a77                 ; 0x0b28
    add sp, byte 4                   ; 0x0b2b
    mov ax, 0                        ; 0x0b2e
    push ax                          ; 0x0b31
    mov ax, 0xc4                     ; 0x0b32
    push ax                          ; 0x0b35
    call ds_loc_3a6a                 ; 0x0b36
    add sp, byte 4                   ; 0x0b39
    lea ax, word [bp - 0x0058]       ; 0x0b3c
    push ax                          ; 0x0b3f
    mov ax, 0xd6                     ; 0x0b40
    push ax                          ; 0x0b43
    call ds_app_mem_0782             ; 0x0b44
    add sp, byte 4                   ; 0x0b47
    mov ax, 0x5d                     ; 0x0b4a
    push ax                          ; 0x0b4d
    mov ax, 0x5b                     ; 0x0b4e
    push ax                          ; 0x0b51
    call ds_loc_3a50                 ; 0x0b52
    add sp, byte 4                   ; 0x0b55
    mov ax, 0                        ; 0x0b58
    push ax                          ; 0x0b5b
    lea ax, word [bp - 0x0058]       ; 0x0b5c
    push ax                          ; 0x0b5f
    call ds_string_loc_3a95          ; 0x0b60
    add sp, byte 4                   ; 0x0b63
    mov ax, 0                        ; 0x0b66
    push ax                          ; 0x0b69
    mov ax, 0x20                     ; 0x0b6a
    push ax                          ; 0x0b6d
    call ds_loc_3a77                 ; 0x0b6e
    add sp, byte 4                   ; 0x0b71
    lea ax, word [bp - 0x0058]       ; 0x0b74
    push ax                          ; 0x0b77
    mov ax, 0x248                    ; 0x0b78
    imul word [bp + 0x4]             ; 0x0b7b
    mov bx, ax                       ; 0x0b7e
    push word [bx + 0x5c0a]          ; 0x0b80
    push word [bx + 0x5c08]          ; 0x0b84
    call ds_app_0422                 ; 0x0b88
    add sp, byte 6                   ; 0x0b8b
    mov ax, 0                        ; 0x0b8e
    push ax                          ; 0x0b91
    lea ax, word [bp - 0x0058]       ; 0x0b92
    push ax                          ; 0x0b95
    call ds_string_loc_3a95          ; 0x0b96
    add sp, byte 4                   ; 0x0b99
    push word [bp + 0x4]             ; 0x0b9c
    call ds_app_17d6                 ; 0x0b9f
    pop cx                           ; 0x0ba2
    push word [bp + 0x4]             ; 0x0ba3
    call api_idx_0012                ; 0x0ba6
    pop cx                           ; 0x0ba9
    mov si, ax                       ; 0x0baa
    lea di, word [bp - 0x007c]       ; 0x0bac
    mov cx, ds                       ; 0x0baf
    mov es, cx                       ; 0x0bb1
    mov cx, 7                        ; 0x0bb3
    rep movsw                        ; 0x0bb6
    mov al, byte [bp - 0x0072]       ; 0x0bb8
    push ax                          ; 0x0bbb
    mov ax, 0x248                    ; 0x0bbc
    imul word [bp + 0x4]             ; 0x0bbf
    mov bx, ax                       ; 0x0bc2
    pop ax                           ; 0x0bc4
    mov byte [bx + 0x5e33], al       ; 0x0bc5
    mov ax, 0                        ; 0x0bc9
    push ax                          ; 0x0bcc
    push word [bp - 0x0070]          ; 0x0bcd
    call ds_loc_3a6a                 ; 0x0bd0
    add sp, byte 4                   ; 0x0bd3
    lea ax, word [bp - 0x0058]       ; 0x0bd6
    push ax                          ; 0x0bd9
    mov ax, 0xd7                     ; 0x0bda
    push ax                          ; 0x0bdd
    call ds_app_mem_0782             ; 0x0bde
    add sp, byte 4                   ; 0x0be1
    mov ax, 0x63                     ; 0x0be4
    push ax                          ; 0x0be7
    mov ax, 0x5b                     ; 0x0be8
    push ax                          ; 0x0beb
    call ds_loc_3a50                 ; 0x0bec
    add sp, byte 4                   ; 0x0bef
    mov ax, 0                        ; 0x0bf2
    push ax                          ; 0x0bf5
    lea ax, word [bp - 0x0058]       ; 0x0bf6
    push ax                          ; 0x0bf9
    call ds_string_loc_3a95          ; 0x0bfa
    add sp, byte 4                   ; 0x0bfd
    mov ax, 0                        ; 0x0c00
    push ax                          ; 0x0c03
    mov ax, 0x20                     ; 0x0c04
    push ax                          ; 0x0c07
    call ds_loc_3a77                 ; 0x0c08
    add sp, byte 4                   ; 0x0c0b
    lea ax, word [bp - 0x0058]       ; 0x0c0e
    push ax                          ; 0x0c11
    mov ax, 0x248                    ; 0x0c12
    imul word [bp + 0x4]             ; 0x0c15
    mov bx, ax                       ; 0x0c18
    mov ax, word [bx + 0x5c14]       ; 0x0c1a
    mov cx, 0xa                      ; 0x0c1e
    cwd                              ; 0x0c21
    idiv cx                          ; 0x0c22
    push ax                          ; 0x0c24
    call ds_app_04c4                 ; 0x0c25
    add sp, byte 4                   ; 0x0c28
    mov ax, 0                        ; 0x0c2b
    push ax                          ; 0x0c2e
    lea ax, word [bp - 0x0058]       ; 0x0c2f
    push ax                          ; 0x0c32
    call ds_string_loc_3a95          ; 0x0c33
    add sp, byte 4                   ; 0x0c36
    mov ax, 0                        ; 0x0c39
    push ax                          ; 0x0c3c
    mov ax, 0x2f                     ; 0x0c3d
    push ax                          ; 0x0c40
    call ds_loc_3a77                 ; 0x0c41
    add sp, byte 4                   ; 0x0c44
    lea ax, word [bp - 0x0058]       ; 0x0c47
    push ax                          ; 0x0c4a
    mov ax, 0x248                    ; 0x0c4b
    imul word [bp + 0x4]             ; 0x0c4e
    mov bx, ax                       ; 0x0c51
    mov ax, word [bx + 0x5c16]       ; 0x0c53
    mov cx, 0xa                      ; 0x0c57
    cwd                              ; 0x0c5a
    idiv cx                          ; 0x0c5b
    push ax                          ; 0x0c5d
    call ds_app_04c4                 ; 0x0c5e
    add sp, byte 4                   ; 0x0c61
    mov ax, 0                        ; 0x0c64
    push ax                          ; 0x0c67
    lea ax, word [bp - 0x0058]       ; 0x0c68
    push ax                          ; 0x0c6b
    call ds_string_loc_3a95          ; 0x0c6c
    add sp, byte 4                   ; 0x0c6f
    push word [bp + 0x4]             ; 0x0c72
    call api_idx_0004                ; 0x0c75
    pop cx                           ; 0x0c78
    mov word [bp - 0x0004], 0        ; 0x0c79
    mov ax, 0x248                    ; 0x0c7e
    imul word [bp + 0x4]             ; 0x0c81
    mov bx, ax                       ; 0x0c84
    mov al, byte [bx + 0x5e2f]       ; 0x0c86
    sub ah, ah                       ; 0x0c8a
    shl ax, 1                        ; 0x0c8c
    mov bx, ax                       ; 0x0c8e
    mov ax, word [bx + 0x920]        ; 0x0c90
    mov word [bp - 0x0006], ax       ; 0x0c94
    cmp ax, strict word 0xffff       ; 0x0c97
    jne short @..api_idx_007c.l6     ; 0x0c9a
    mov ax, 0x248                    ; 0x0c9c
    imul word [bp + 0x4]             ; 0x0c9f
    mov bx, ax                       ; 0x0ca2
    cmp byte [bx + 0x5d5c], 0        ; 0x0ca4
    jbe short @..api_idx_007c.l6     ; 0x0ca9
    mov ax, 0                        ; 0x0cab
    jmp short @..api_idx_007c.l7     ; 0x0cae
@..api_idx_007c.l6:
    mov ax, word [bp - 0x0006]       ; 0x0cb0
@..api_idx_007c.l7:
    mov word [bp - 0x0006], ax       ; 0x0cb3
    cmp ax, strict word 0            ; 0x0cb6
    jg short @..api_idx_007c.l8      ; 0x0cb9
    mov ax, 0x248                    ; 0x0cbb
    imul word [bp + 0x4]             ; 0x0cbe
    mov bx, ax                       ; 0x0cc1
    cmp byte [bx + 0x5d5d], 0        ; 0x0cc3
    jbe short @..api_idx_007c.l8     ; 0x0cc8
    mov ax, 1                        ; 0x0cca
    jmp short @..api_idx_007c.l9     ; 0x0ccd
@..api_idx_007c.l8:
    mov ax, word [bp - 0x0006]       ; 0x0ccf
@..api_idx_007c.l9:
    mov word [bp - 0x0006], ax       ; 0x0cd2
    cmp ax, strict word 0xffff       ; 0x0cd5
    je short @..api_idx_007c.l10     ; 0x0cd8
    mov ax, 0x2d                     ; 0x0cda
    push ax                          ; 0x0cdd
    mov ax, 0x51                     ; 0x0cde
    push ax                          ; 0x0ce1
    call ds_loc_3a50                 ; 0x0ce2
    add sp, byte 4                   ; 0x0ce5
    mov ax, 6                        ; 0x0ce8
    push ax                          ; 0x0ceb
    mov al, byte [bp - 0x0006]       ; 0x0cec
    sub ah, ah                       ; 0x0cef
    push ax                          ; 0x0cf1
    call ds_loc_3a77                 ; 0x0cf2
    add sp, byte 4                   ; 0x0cf5
    inc word [bp - 0x0004]           ; 0x0cf8
@..api_idx_007c.l10:
    mov word [bp - 0x006e], 6        ; 0x0cfb
    mov word [bp - 0x006c], 7        ; 0x0d00
    mov word [bp - 0x006a], 5        ; 0x0d05
    mov word [bp - 0x0068], 4        ; 0x0d0a
    mov word [bp - 0x0066], 8        ; 0x0d0f
    mov word [bp - 0x0064], 9        ; 0x0d14
    mov word [bp - 0x0062], 1        ; 0x0d19
    mov word [bp - 0x0006], 0xffff   ; 0x0d1e
    mov word [bp - 0x0002], 0        ; 0x0d23
@..api_idx_007c.l11:
    mov ax, word [bp - 0x0002]       ; 0x0d28
    shl ax, 1                        ; 0x0d2b
    mov bx, ax                       ; 0x0d2d
    add bx, bp                       ; 0x0d2f
    mov ax, word [bx - 0x006e]       ; 0x0d31
    mov word [bp - 0x0008], ax       ; 0x0d34
    cmp word [bp - 0x0004], byte 6   ; 0x0d37
    jge short @..api_idx_007c.l12    ; 0x0d3b
    shl ax, 1                        ; 0x0d3d
    mov bx, ax                       ; 0x0d3f
    mov ax, word [bx + 0x92c]        ; 0x0d41
    cmp ax, word [bp - 0x0006]       ; 0x0d45
    je short @..api_idx_007c.l12     ; 0x0d48
    mov ax, 0x248                    ; 0x0d4a
    imul word [bp + 0x4]             ; 0x0d4d
    add ax, word [bp - 0x0008]       ; 0x0d50
    mov bx, ax                       ; 0x0d53
    cmp byte [bx + 0x5d5a], 0        ; 0x0d55
    jbe short @..api_idx_007c.l12    ; 0x0d5a
    mov ax, word [bp - 0x0004]       ; 0x0d5c
    mov cx, 3                        ; 0x0d5f
    cwd                              ; 0x0d62
    idiv cx                          ; 0x0d63
    mov ax, dx                       ; 0x0d65
    mov cx, 0xb                      ; 0x0d67
    imul cx                          ; 0x0d6a
    add ax, strict word 0x2d         ; 0x0d6c
    push ax                          ; 0x0d6f
    mov ax, word [bp - 0x0004]       ; 0x0d70
    mov cx, 3                        ; 0x0d73
    cwd                              ; 0x0d76
    idiv cx                          ; 0x0d77
    mov cx, 0x17                     ; 0x0d79
    imul cx                          ; 0x0d7c
    add ax, strict word 0x51         ; 0x0d7e
    push ax                          ; 0x0d81
    call ds_loc_3a50                 ; 0x0d82
    add sp, byte 4                   ; 0x0d85
    mov ax, 6                        ; 0x0d88
    push ax                          ; 0x0d8b
    mov ax, word [bp - 0x0008]       ; 0x0d8c
    shl ax, 1                        ; 0x0d8f
    mov bx, ax                       ; 0x0d91
    mov al, byte [bx + 0x92c]        ; 0x0d93
    sub ah, ah                       ; 0x0d97
    push ax                          ; 0x0d99
    call ds_loc_3a77                 ; 0x0d9a
    add sp, byte 4                   ; 0x0d9d
    mov ax, word [bp - 0x0008]       ; 0x0da0
    shl ax, 1                        ; 0x0da3
    mov bx, ax                       ; 0x0da5
    mov ax, word [bx + 0x92c]        ; 0x0da7
    mov word [bp - 0x0006], ax       ; 0x0dab
    inc word [bp - 0x0004]           ; 0x0dae
@..api_idx_007c.l12:
    inc word [bp - 0x0002]           ; 0x0db1
    mov ax, word [bp - 0x0002]       ; 0x0db4
    cmp ax, strict word 7            ; 0x0db7
    jge short @..api_idx_007c.l13    ; 0x0dba
    jmp near @..api_idx_007c.l11     ; 0x0dbc
@..api_idx_007c.l13:
    ret                              ; 0x0dbf
loc_0dc0:
    mov ax, 0                        ; 0x0dc0
    call aztec_csav                  ; 0x0dc3
    push word [bp + 0xc]             ; 0x0dc6
    mov ax, word [bp + 0x6]          ; 0x0dc9
    dec ax                           ; 0x0dcc
    push ax                          ; 0x0dcd
    mov ax, word [bp + 0x8]          ; 0x0dce
    inc ax                           ; 0x0dd1
    push ax                          ; 0x0dd2
    mov ax, word [bp + 0x6]          ; 0x0dd3
    dec ax                           ; 0x0dd6
    push ax                          ; 0x0dd7
    mov ax, word [bp + 0x4]          ; 0x0dd8
    dec ax                           ; 0x0ddb
    push ax                          ; 0x0ddc
    call ds_loc_3b48                 ; 0x0ddd
    add sp, byte 0x0a                ; 0x0de0
    push word [bp + 0xc]             ; 0x0de3
    mov ax, word [bp + 0xa]          ; 0x0de6
    inc ax                           ; 0x0de9
    push ax                          ; 0x0dea
    mov ax, word [bp + 0x8]          ; 0x0deb
    inc ax                           ; 0x0dee
    push ax                          ; 0x0def
    mov ax, word [bp + 0x6]          ; 0x0df0
    dec ax                           ; 0x0df3
    push ax                          ; 0x0df4
    mov ax, word [bp + 0x8]          ; 0x0df5
    inc ax                           ; 0x0df8
    push ax                          ; 0x0df9
    call ds_loc_3b48                 ; 0x0dfa
    add sp, byte 0x0a                ; 0x0dfd
    push word [bp + 0xc]             ; 0x0e00
    mov ax, word [bp + 0xa]          ; 0x0e03
    inc ax                           ; 0x0e06
    push ax                          ; 0x0e07
    mov ax, word [bp + 0x8]          ; 0x0e08
    inc ax                           ; 0x0e0b
    push ax                          ; 0x0e0c
    mov ax, word [bp + 0xa]          ; 0x0e0d
    inc ax                           ; 0x0e10
    push ax                          ; 0x0e11
    mov ax, word [bp + 0x4]          ; 0x0e12
    dec ax                           ; 0x0e15
    push ax                          ; 0x0e16
    call ds_loc_3b48                 ; 0x0e17
    add sp, byte 0x0a                ; 0x0e1a
    push word [bp + 0xc]             ; 0x0e1d
    mov ax, word [bp + 0xa]          ; 0x0e20
    inc ax                           ; 0x0e23
    push ax                          ; 0x0e24
    mov ax, word [bp + 0x4]          ; 0x0e25
    dec ax                           ; 0x0e28
    push ax                          ; 0x0e29
    mov ax, word [bp + 0x6]          ; 0x0e2a
    dec ax                           ; 0x0e2d
    push ax                          ; 0x0e2e
    mov ax, word [bp + 0x4]          ; 0x0e2f
    dec ax                           ; 0x0e32
    push ax                          ; 0x0e33
    call ds_loc_3b48                 ; 0x0e34
    add sp, byte 0x0a                ; 0x0e37
    ret                              ; 0x0e3a
