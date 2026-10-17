; auto-generated
loc_IPSH:
    mov ax, 0                        ; 0x8867
    call aztec_csav                  ; 0x886a
    mov word [bss_9b4a], 1           ; 0x886d
    mov word [bss_8f24], 0xffff      ; 0x8873
@..loc_IPSH.l1:
    push word [bss_8d12]             ; 0x8879
    push word [bss_8f3e]             ; 0x887d
    push word [bss_8f40]             ; 0x8881
    push word [bss_8f42]             ; 0x8885
    call api_idx_0002_GSOS           ; 0x8889
    add sp, byte 8                   ; 0x888c
    mov word [bss_8d12], ax          ; 0x888f
    cmp ax, strict word 0xffff       ; 0x8892
    jne short @..loc_IPSH.l2         ; 0x8895
    jmp near @..loc_IPSH.l10         ; 0x8897
@..loc_IPSH.l2:
    mov word [bss_9bd0], 1           ; 0x889a
    mov bx, word [bss_0e12]          ; 0x88a0
    mov si, ax                       ; 0x88a4
    mov al, byte [bx + si + 0x5a0]   ; 0x88a6
    sub ah, ah                       ; 0x88aa
    jmp near @..loc_IPSH.l6          ; 0x88ac
jumptable_8978_case_1:
    call api_idx_0002_NIPM           ; 0x88af
    jmp near @..loc_IPSH.l7          ; 0x88b2
jumptable_8978_case_2:
    cmp word [bss_91a8], byte 0      ; 0x88b5
    je short @..loc_IPSH.l3          ; 0x88ba
    call api_idx_001e_KGSI           ; 0x88bc
@..loc_IPSH.l3:
    jmp near @..loc_IPSH.l7          ; 0x88bf
jumptable_8978_case_3:
    call api_idx_0004_TLVR           ; 0x88c2
    jmp near @..loc_IPSH.l7          ; 0x88c5
jumptable_8978_case_4:
    call loc_HLOU                    ; 0x88c8
    jmp near @..loc_IPSH.l7          ; 0x88cb
jumptable_8978_case_5:
    call api_idx_0002_RHUQ           ; 0x88ce
    jmp near @..loc_IPSH.l7          ; 0x88d1
jumptable_8978_case_6:
    call api_idx_000e_LLMU           ; 0x88d4
    jmp near @..loc_IPSH.l7          ; 0x88d7
jumptable_8978_case_7:
    call api_idx_0006_NNSP           ; 0x88da
    jmp near @..loc_IPSH.l7          ; 0x88dd
jumptable_8978_case_8:
    mov ax, word [bss_8d12]          ; 0x88e0
    shl ax, 1                        ; 0x88e3
    mov si, ax                       ; 0x88e5
    mov bx, word [bss_0e12]          ; 0x88e7
    cmp word [bx + si], byte 0       ; 0x88eb
    jle short @..loc_IPSH.l4         ; 0x88ee
    mov ax, 0                        ; 0x88f0
    push ax                          ; 0x88f3
    push word [bx + si]              ; 0x88f4
    call loc_MLLK                    ; 0x88f6
    add sp, byte 4                   ; 0x88f9
    jmp short @..loc_IPSH.l5         ; 0x88fc
@..loc_IPSH.l4:
    mov ax, 1                        ; 0x88fe
    push ax                          ; 0x8901
    mov ax, 0xb                      ; 0x8902
    push ax                          ; 0x8905
    mov ax, word [bss_8d12]          ; 0x8906
    shl ax, 1                        ; 0x8909
    mov si, ax                       ; 0x890b
    mov bx, word [bss_0e12]          ; 0x890d
    push word [bx + si + 0x3c0]      ; 0x8911
    call ds_dos_con_loc_QJHU         ; 0x8915
    add sp, byte 6                   ; 0x8918
    test ax, ax                      ; 0x891b
    je short @..loc_IPSH.l5          ; 0x891d
    call api_idx_0004_THPM           ; 0x891f
@..loc_IPSH.l5:
    jmp near @..loc_IPSH.l7          ; 0x8922
jumptable_8978_case_9:
    mov word [bss_830a], 0x1d        ; 0x8925
    jmp near @..loc_IPSH.l7          ; 0x892b
jumptable_8978_case_10:
    call api_idx_001c_QLSV           ; 0x892e
    jmp near @..loc_IPSH.l7          ; 0x8931
jumptable_8978_case_11:
    call api_idx_000a_SRNS           ; 0x8934
    jmp near @..loc_IPSH.l7          ; 0x8937
jumptable_8978_case_12:
    mov word [bss_830a], 0x1c        ; 0x893a
    jmp near @..loc_IPSH.l7          ; 0x8940
jumptable_8978_case_13:
    call api_idx_0012_JIRG           ; 0x8943
    jmp short @..loc_IPSH.l7         ; 0x8946
jumptable_8978_case_14:
    call loc_OKIJ                    ; 0x8948
    jmp short @..loc_IPSH.l7         ; 0x894b
jumptable_8978_case_15:
    jmp short @..loc_IPSH.l7         ; 0x894d
jumptable_8978_case_16:
    call api_idx_0004_THGV           ; 0x894f
    jmp short @..loc_IPSH.l7         ; 0x8952
jumptable_8978_case_17:
    call api_idx_000c_QGMU           ; 0x8954
    jmp short @..loc_IPSH.l7         ; 0x8957
jumptable_8978_case_18:
    call loc_PLOT                    ; 0x8959
    jmp short @..loc_IPSH.l7         ; 0x895c
jumptable_8978_case_19:
    jmp short @..loc_IPSH.l7         ; 0x895e
jumptable_8978_case_20:
    jmp short @..loc_IPSH.l7         ; 0x8960
jumptable_8978_case_21:
    call api_idx_001e_QHIQ           ; 0x8962
    jmp short @..loc_IPSH.l7         ; 0x8965
jumptable_8978_case_22:
    call api_idx_000e_RTSO           ; 0x8967
    jmp short @..loc_IPSH.l7         ; 0x896a
jumptable_8978_case_23:
    call api_idx_0010_TVMI           ; 0x896c
    jmp short @..loc_IPSH.l7         ; 0x896f
jumptable_8978_case_24:
    call api_idx_0002_QMUL           ; 0x8971
    jmp short @..loc_IPSH.l7         ; 0x8974
jumptable_8978_case_25:
    jmp short @..loc_IPSH.l7         ; 0x8976
jumptable_8978:
    dw jumptable_8978_case_0 - IMAGE_BASE + __zres_end ; 0x8978
    dw jumptable_8978_case_1 - IMAGE_BASE + __zres_end ; 0x897a
    dw jumptable_8978_case_2 - IMAGE_BASE + __zres_end ; 0x897c
    dw jumptable_8978_case_3 - IMAGE_BASE + __zres_end ; 0x897e
    dw jumptable_8978_case_4 - IMAGE_BASE + __zres_end ; 0x8980
    dw jumptable_8978_case_5 - IMAGE_BASE + __zres_end ; 0x8982
    dw jumptable_8978_case_6 - IMAGE_BASE + __zres_end ; 0x8984
    dw jumptable_8978_case_7 - IMAGE_BASE + __zres_end ; 0x8986
    dw jumptable_8978_case_8 - IMAGE_BASE + __zres_end ; 0x8988
    dw jumptable_8978_case_9 - IMAGE_BASE + __zres_end ; 0x898a
    dw jumptable_8978_case_10 - IMAGE_BASE + __zres_end ; 0x898c
    dw jumptable_8978_case_11 - IMAGE_BASE + __zres_end ; 0x898e
    dw jumptable_8978_case_12 - IMAGE_BASE + __zres_end ; 0x8990
    dw jumptable_8978_case_13 - IMAGE_BASE + __zres_end ; 0x8992
    dw jumptable_8978_case_14 - IMAGE_BASE + __zres_end ; 0x8994
    dw jumptable_8978_case_15 - IMAGE_BASE + __zres_end ; 0x8996
    dw jumptable_8978_case_16 - IMAGE_BASE + __zres_end ; 0x8998
    dw jumptable_8978_case_17 - IMAGE_BASE + __zres_end ; 0x899a
    dw jumptable_8978_case_18 - IMAGE_BASE + __zres_end ; 0x899c
    dw jumptable_8978_case_19 - IMAGE_BASE + __zres_end ; 0x899e
    dw jumptable_8978_case_20 - IMAGE_BASE + __zres_end ; 0x89a0
    dw jumptable_8978_case_21 - IMAGE_BASE + __zres_end ; 0x89a2
    dw jumptable_8978_case_22 - IMAGE_BASE + __zres_end ; 0x89a4
    dw jumptable_8978_case_23 - IMAGE_BASE + __zres_end ; 0x89a6
    dw jumptable_8978_case_24 - IMAGE_BASE + __zres_end ; 0x89a8
    dw jumptable_8978_case_25 - IMAGE_BASE + __zres_end ; 0x89aa
@..loc_IPSH.l6:
    cmp ax, strict word 0x1a         ; 0x89ac
    jae short @..loc_IPSH.l7         ; 0x89af
    xchg bx, ax                      ; 0x89b1
    shl bx, 1                        ; 0x89b2
    jmp [cs:bx + jumptable_8978 - IMAGE_BASE + __zres_end] ; 0x89b4
jumptable_8978_case_0:
@..loc_IPSH.l7:
    cmp word [bss_830a], byte 5      ; 0x89b9
    je short @..loc_IPSH.l8          ; 0x89be
    ret                              ; 0x89c0
@..loc_IPSH.l8:
    cmp word [bss_9bd0], byte 1      ; 0x89c1
    jne short @..loc_IPSH.l9         ; 0x89c6
    inc word [bss_8d12]              ; 0x89c8
@..loc_IPSH.l9:
    jmp near @..loc_IPSH.l1          ; 0x89cc
@..loc_IPSH.l10:
    ret                              ; 0x89cf
