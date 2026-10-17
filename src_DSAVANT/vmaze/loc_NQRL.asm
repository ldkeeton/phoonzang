; auto-generated
loc_NQRL:
    mov ax, 0                        ; 0x8867
    call aztec_csav                  ; 0x886a
    mov word [bss_9b4a], 1           ; 0x886d
    mov word [bss_8f24], 0xffff      ; 0x8873
@..loc_NQRL.l1:
    push word [bss_8d12]             ; 0x8879
    push word [bss_8f3e]             ; 0x887d
    push word [bss_8f40]             ; 0x8881
    push word [bss_8f42]             ; 0x8885
    call api_idx_0002_GSOS           ; 0x8889
    add sp, byte 8                   ; 0x888c
    mov word [bss_8d12], ax          ; 0x888f
    cmp ax, strict word 0xffff       ; 0x8892
    jne short @..loc_NQRL.l2         ; 0x8895
    jmp near @..loc_NQRL.l10         ; 0x8897
@..loc_NQRL.l2:
    mov word [bss_9bd0], 1           ; 0x889a
    mov bx, word [bss_0e12]          ; 0x88a0
    mov si, ax                       ; 0x88a4
    mov al, byte [bx + si + 0x5a0]   ; 0x88a6
    sub ah, ah                       ; 0x88aa
    jmp near @..loc_NQRL.l6          ; 0x88ac
loc_VVQG_88af:
    call api_idx_0002_NIPM           ; 0x88af
    jmp near @..loc_NQRL.l7          ; 0x88b2
loc_UNMG:
    cmp word [bss_91a8], byte 0      ; 0x88b5
    je short @..loc_NQRL.l3          ; 0x88ba
    call api_idx_001e_KGSI           ; 0x88bc
@..loc_NQRL.l3:
    jmp near @..loc_NQRL.l7          ; 0x88bf
loc_VVQG_88c2:
    call api_idx_0004_TLVR           ; 0x88c2
    jmp near @..loc_NQRL.l7          ; 0x88c5
loc_VVQG_88c8:
    call loc_HLOU                    ; 0x88c8
    jmp near @..loc_NQRL.l7          ; 0x88cb
loc_VVQG_88ce:
    call api_idx_0002_RHUQ           ; 0x88ce
    jmp near @..loc_NQRL.l7          ; 0x88d1
loc_VVQG_88d4:
    call api_idx_000e_LLMU           ; 0x88d4
    jmp near @..loc_NQRL.l7          ; 0x88d7
loc_VVQG_88da:
    call api_idx_0006_NNSP           ; 0x88da
    jmp near @..loc_NQRL.l7          ; 0x88dd
loc_LHUS:
    mov ax, word [bss_8d12]          ; 0x88e0
    shl ax, 1                        ; 0x88e3
    mov si, ax                       ; 0x88e5
    mov bx, word [bss_0e12]          ; 0x88e7
    cmp word [bx + si], byte 0       ; 0x88eb
    jle short @..loc_NQRL.l4         ; 0x88ee
    mov ax, 0                        ; 0x88f0
    push ax                          ; 0x88f3
    push word [bx + si]              ; 0x88f4
    call loc_MLLK                    ; 0x88f6
    add sp, byte 4                   ; 0x88f9
    jmp short @..loc_NQRL.l5         ; 0x88fc
@..loc_NQRL.l4:
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
    je short @..loc_NQRL.l5          ; 0x891d
    call api_idx_0004_THPM           ; 0x891f
@..loc_NQRL.l5:
    jmp near @..loc_NQRL.l7          ; 0x8922
fpu_loc_8925:
    mov word [bss_830a], 0x1d        ; 0x8925
    jmp near @..loc_NQRL.l7          ; 0x892b
fpu_loc_892e:
    call api_idx_001c_QLSV           ; 0x892e
    jmp near @..loc_NQRL.l7          ; 0x8931
fpu_loc_8934:
    call api_idx_000a_SRNS           ; 0x8934
    jmp near @..loc_NQRL.l7          ; 0x8937
fpu_loc_893a:
    mov word [bss_830a], 0x1c        ; 0x893a
    jmp near @..loc_NQRL.l7          ; 0x8940
fpu_loc_8943:
    call api_idx_0012_JIRG           ; 0x8943
    jmp short @..loc_NQRL.l7         ; 0x8946
fpu_loc_8948:
    call loc_OKIJ                    ; 0x8948
    jmp short @..loc_NQRL.l7         ; 0x894b
fpu_loc_894d:
    jmp short @..loc_NQRL.l7         ; 0x894d
fpu_loc_894f:
    call api_idx_0004_THGV           ; 0x894f
    jmp short @..loc_NQRL.l7         ; 0x8952
fpu_loc_8954:
    call api_idx_000c_QGMU           ; 0x8954
    jmp short @..loc_NQRL.l7         ; 0x8957
fpu_loc_8959:
    call loc_PLOT                    ; 0x8959
    jmp short @..loc_NQRL.l7         ; 0x895c
fpu_loc_895e:
    jmp short @..loc_NQRL.l7         ; 0x895e
fpu_loc_8960:
    jmp short @..loc_NQRL.l7         ; 0x8960
fpu_loc_8962:
    call api_idx_001e_QHIQ           ; 0x8962
    jmp short @..loc_NQRL.l7         ; 0x8965
fpu_loc_8967:
    call api_idx_000e_RTSO           ; 0x8967
    jmp short @..loc_NQRL.l7         ; 0x896a
fpu_loc_896c:
    call api_idx_0010_TVMI           ; 0x896c
    jmp short @..loc_NQRL.l7         ; 0x896f
fpu_loc_8971:
    call api_idx_0002_QMUL           ; 0x8971
    jmp short @..loc_NQRL.l7         ; 0x8974
fpu_loc_8976:
    jmp short @..loc_NQRL.l7         ; 0x8976
jumptable_8978:
    dw jumptable_8978_case_0 - IMAGE_BASE + __zres_end ; 0x8978
    dw loc_VVQG_88af - IMAGE_BASE + __zres_end ; 0x897a
    dw loc_UNMG - IMAGE_BASE + __zres_end      ; 0x897c
    dw loc_VVQG_88c2 - IMAGE_BASE + __zres_end ; 0x897e
    dw loc_VVQG_88c8 - IMAGE_BASE + __zres_end ; 0x8980
    dw loc_VVQG_88ce - IMAGE_BASE + __zres_end ; 0x8982
    dw loc_VVQG_88d4 - IMAGE_BASE + __zres_end ; 0x8984
    dw loc_VVQG_88da - IMAGE_BASE + __zres_end ; 0x8986
    dw loc_LHUS - IMAGE_BASE + __zres_end      ; 0x8988
    dw fpu_loc_8925 - IMAGE_BASE + __zres_end  ; 0x898a
    dw fpu_loc_892e - IMAGE_BASE + __zres_end  ; 0x898c
    dw fpu_loc_8934 - IMAGE_BASE + __zres_end  ; 0x898e
    dw fpu_loc_893a - IMAGE_BASE + __zres_end  ; 0x8990
    dw fpu_loc_8943 - IMAGE_BASE + __zres_end  ; 0x8992
    dw fpu_loc_8948 - IMAGE_BASE + __zres_end  ; 0x8994
    dw fpu_loc_894d - IMAGE_BASE + __zres_end  ; 0x8996
    dw fpu_loc_894f - IMAGE_BASE + __zres_end  ; 0x8998
    dw fpu_loc_8954 - IMAGE_BASE + __zres_end  ; 0x899a
    dw fpu_loc_8959 - IMAGE_BASE + __zres_end  ; 0x899c
    dw fpu_loc_895e - IMAGE_BASE + __zres_end  ; 0x899e
    dw fpu_loc_8960 - IMAGE_BASE + __zres_end  ; 0x89a0
    dw fpu_loc_8962 - IMAGE_BASE + __zres_end  ; 0x89a2
    dw fpu_loc_8967 - IMAGE_BASE + __zres_end  ; 0x89a4
    dw fpu_loc_896c - IMAGE_BASE + __zres_end  ; 0x89a6
    dw fpu_loc_8971 - IMAGE_BASE + __zres_end  ; 0x89a8
    dw fpu_loc_8976 - IMAGE_BASE + __zres_end  ; 0x89aa
@..loc_NQRL.l6:
    cmp ax, strict word 0x1a         ; 0x89ac
    jae short @..loc_NQRL.l7         ; 0x89af
    xchg bx, ax                      ; 0x89b1
    shl bx, 1                        ; 0x89b2
    jmp [cs:bx + jumptable_8978 - IMAGE_BASE + __zres_end] ; 0x89b4
jumptable_8978_case_0:
@..loc_NQRL.l7:
    cmp word [bss_830a], byte 5      ; 0x89b9
    je short @..loc_NQRL.l8          ; 0x89be
    ret                              ; 0x89c0
@..loc_NQRL.l8:
    cmp word [bss_9bd0], byte 1      ; 0x89c1
    jne short @..loc_NQRL.l9         ; 0x89c6
    inc word [bss_8d12]              ; 0x89c8
@..loc_NQRL.l9:
    jmp near @..loc_NQRL.l1          ; 0x89cc
@..loc_NQRL.l10:
    ret                              ; 0x89cf
