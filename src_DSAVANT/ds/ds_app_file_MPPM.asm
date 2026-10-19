; auto-generated
ds_app_file_MPPM: ; Aztec csav frame=0x0100
    mov ax, 0xff00                   ; 0x0883
    call aztec_csav                  ; 0x0886
    mov ax, word [bp + 0x4]          ; 0x0889
    jmp short @..ds_app_file_MPPM.l1 ; 0x088c
jumptable_08d4_case_0:
    mov bx, word [bp + 0x8]          ; 0x088e
    mov al, byte [bx + 0x5244]       ; 0x0891
    sub ah, ah                       ; 0x0895
    mov word [bp + 0x8], ax          ; 0x0897
    jmp short @..ds_app_file_MPPM.l2 ; 0x089a
jumptable_08d4_case_3:
    mov bx, word [bp + 0x8]          ; 0x089c
    mov al, byte [bx + 0x5264]       ; 0x089f
    sub ah, ah                       ; 0x08a3
    mov word [bp + 0x8], ax          ; 0x08a5
    jmp short @..ds_app_file_MPPM.l2 ; 0x08a8
jumptable_08d4_case_5:
    mov bx, word [bp + 0x8]          ; 0x08aa
    mov al, byte [bx + 0x52c4]       ; 0x08ad
    sub ah, ah                       ; 0x08b1
    mov word [bp + 0x8], ax          ; 0x08b3
    jmp short @..ds_app_file_MPPM.l2 ; 0x08b6
jumptable_08d4_case_2:
    mov bx, word [bp + 0x8]          ; 0x08b8
    mov al, byte [bx + 0x53c4]       ; 0x08bb
    sub ah, ah                       ; 0x08bf
    mov word [bp + 0x8], ax          ; 0x08c1
    jmp short @..ds_app_file_MPPM.l2 ; 0x08c4
jumptable_08d4_case_6:
    mov bx, word [bp + 0x8]          ; 0x08c6
    mov al, byte [bx + 0x54c4]       ; 0x08c9
    sub ah, ah                       ; 0x08cd
    mov word [bp + 0x8], ax          ; 0x08cf
    jmp short @..ds_app_file_MPPM.l2 ; 0x08d2
jumptable_08d4:
    dw jumptable_08d4_case_0 - IMAGE_BASE      ; 0x08d4
    dw jumptable_08d4_case_0 - IMAGE_BASE      ; 0x08d6
    dw jumptable_08d4_case_2 - IMAGE_BASE      ; 0x08d8
    dw jumptable_08d4_case_3 - IMAGE_BASE      ; 0x08da
    dw jumptable_08d4_case_4 - IMAGE_BASE      ; 0x08dc
    dw jumptable_08d4_case_5 - IMAGE_BASE      ; 0x08de
    dw jumptable_08d4_case_6 - IMAGE_BASE      ; 0x08e0
@..ds_app_file_MPPM.l1:
    sub ax, strict word 2            ; 0x08e2
    cmp ax, strict word 7            ; 0x08e5
    jae short @..ds_app_file_MPPM.l2 ; 0x08e8
    xchg bx, ax                      ; 0x08ea
    shl bx, 1                        ; 0x08eb
    jmp [cs:bx + jumptable_08d4 - IMAGE_BASE] ; 0x08ed
jumptable_08d4_case_4:
@..ds_app_file_MPPM.l2:
    mov ax, 0                        ; 0x08f2
    push ax                          ; 0x08f5
    call gfx_entry_47                ; 0x08f6
    pop cx                           ; 0x08f9
    mov ax, 0                        ; 0x08fa
    push ax                          ; 0x08fd
    mov ax, word [bp + 0x4]          ; 0x08fe
    shl ax, 1                        ; 0x0901
    mov bx, ax                       ; 0x0903
    mov cx, word [bx + bss_5524]     ; 0x0905
    mov ax, word [bp + 0x8]          ; 0x0909
    mov bx, cx                       ; 0x090c
    imul bx                          ; 0x090e
    mov cx, word [bp + 0x4]          ; 0x0910
    shl cx, 1                        ; 0x0913
    shl cx, 1                        ; 0x0915
    mov bx, cx                       ; 0x0917
    mov cx, word [bx + 0x521c]       ; 0x0919
    mov bx, word [bx + 0x521e]       ; 0x091d
    add ax, cx                       ; 0x0921
    adc dx, bx                       ; 0x0923
    push dx                          ; 0x0925
    push ax                          ; 0x0926
    push word [bss_0e22]             ; 0x0927
    call aztec_lseek                 ; 0x092b
    add sp, byte 8                   ; 0x092e
    mov bx, word [bp + 0x4]          ; 0x0931
    cmp byte [bx + 0x556c], 0        ; 0x0934
    jne short @..ds_app_file_MPPM.l5 ; 0x0939
    cmp word [bp + 0xa], byte 0      ; 0x093b
    jne short @..ds_app_file_MPPM.l3 ; 0x093f
    shl bx, 1                        ; 0x0941
    push word [bx + bss_5524]        ; 0x0943
    push word [bp + 0x6]             ; 0x0947
    push word [bss_0e22]             ; 0x094a
    call aztec_read                  ; 0x094e
    add sp, byte 6                   ; 0x0951
    jmp short @..ds_app_file_MPPM.l4 ; 0x0954
@..ds_app_file_MPPM.l3:
    cmp word [bp + 0xa], byte 1      ; 0x0956
    jne short @..ds_app_file_MPPM.l4 ; 0x095a
    mov ax, word [bp + 0x4]          ; 0x095c
    shl ax, 1                        ; 0x095f
    mov bx, ax                       ; 0x0961
    push word [bx + bss_5524]        ; 0x0963
    push word [bp + 0x6]             ; 0x0967
    push word [bss_0e22]             ; 0x096a
    call aztec_write                 ; 0x096e
    add sp, byte 6                   ; 0x0971
@..ds_app_file_MPPM.l4:
    jmp short @..ds_app_file_MPPM.l6 ; 0x0974
@..ds_app_file_MPPM.l5:
    cmp word [bp + 0xa], byte 0      ; 0x0976
    jne short @..ds_app_file_MPPM.l6 ; 0x097a
    mov ax, word [bp + 0x4]          ; 0x097c
    shl ax, 1                        ; 0x097f
    mov bx, ax                       ; 0x0981
    push word [bx + bss_5524]        ; 0x0983
    lea ax, word [bp - 0x00ff]       ; 0x0987
    push ax                          ; 0x098b
    push word [bss_0e22]             ; 0x098c
    call aztec_read                  ; 0x0990
    add sp, byte 6                   ; 0x0993
    push word [bp + 0x6]             ; 0x0996
    lea ax, word [bp - 0x00ff]       ; 0x0999
    push ax                          ; 0x099d
    call ds_string_loc_HTNS          ; 0x099e
    add sp, byte 4                   ; 0x09a1
@..ds_app_file_MPPM.l6:
    ret                              ; 0x09a4
