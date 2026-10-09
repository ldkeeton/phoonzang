aztec_fexecv:
    push bp                          ; 0x291c
    mov bp, sp                       ; 0x291d
    add sp, strict word 0xff5c       ; 0x291f
    push di                          ; 0x2923
    push si                          ; 0x2924
    lea si, word [bp - 0x0083]       ; 0x2925
    mov word [bp - 0x0002], 1        ; 0x2929
    lea ax, word [bp - 0x0094]       ; 0x292e
    push ax                          ; 0x2932
    mov ax, 0x230a                   ; 0x2933
    push ax                          ; 0x2936
    call aztec_fcbinit               ; 0x2937
    add sp, byte 4                   ; 0x293a
    lea ax, word [bp - 0x00a4]       ; 0x293d
    push ax                          ; 0x2941
    mov ax, 0x230c                   ; 0x2942
    push ax                          ; 0x2945
    call aztec_fcbinit               ; 0x2946
    add sp, byte 4                   ; 0x2949
    mov bx, word [bp + 0x6]          ; 0x294c
    cmp word [bx], byte 0            ; 0x294f
    je short @..aztec_fexecv.l6      ; 0x2952
    add word [bp + 0x6], byte 2      ; 0x2954
@..aztec_fexecv.l1:
    mov bx, word [bp + 0x6]          ; 0x2958
    add word [bp + 0x6], byte 2      ; 0x295b
    mov di, word [bx]                ; 0x295f
    test di, di                      ; 0x2961
    je short @..aztec_fexecv.l6      ; 0x2963
    cmp word [bp - 0x0002], byte 1   ; 0x2965
    jne short @..aztec_fexecv.l2     ; 0x2969
    lea ax, word [bp - 0x0094]       ; 0x296b
    push ax                          ; 0x296f
    push di                          ; 0x2970
    call aztec_fcbinit               ; 0x2971
    add sp, byte 4                   ; 0x2974
    jmp short @..aztec_fexecv.l3     ; 0x2977
@..aztec_fexecv.l2:
    cmp word [bp - 0x0002], byte 2   ; 0x2979
    jne short @..aztec_fexecv.l3     ; 0x297d
    lea ax, word [bp - 0x00a4]       ; 0x297f
    push ax                          ; 0x2983
    push di                          ; 0x2984
    call aztec_fcbinit               ; 0x2985
    add sp, byte 4                   ; 0x2988
@..aztec_fexecv.l3:
    mov byte [si], 0x20              ; 0x298b
    inc si                           ; 0x298e
@..aztec_fexecv.l4:
    cmp byte [di], 0                 ; 0x298f
    je short @..aztec_fexecv.l5      ; 0x2992
    lea ax, word [bp - 0x0005]       ; 0x2994
    cmp ax, si                       ; 0x2997
    jbe short @..aztec_fexecv.l6     ; 0x2999
    mov al, byte [di]                ; 0x299b
    mov byte [si], al                ; 0x299d
    inc di                           ; 0x299f
    inc si                           ; 0x29a0
    jmp short @..aztec_fexecv.l4     ; 0x29a1
@..aztec_fexecv.l5:
    inc word [bp - 0x0002]           ; 0x29a3
    jmp short @..aztec_fexecv.l1     ; 0x29a6
@..aztec_fexecv.l6:
    mov ax, si                       ; 0x29a8
    lea cx, word [bp - 0x0083]       ; 0x29aa
    sub ax, cx                       ; 0x29ae
    mov byte [bp - 0x0084], al       ; 0x29b0
    mov byte [si], 0xd               ; 0x29b4
    lea ax, word [bp - 0x00a4]       ; 0x29b7
    push ax                          ; 0x29bb
    lea ax, word [bp - 0x0094]       ; 0x29bc
    push ax                          ; 0x29c0
    lea ax, word [bp - 0x0084]       ; 0x29c1
    push ax                          ; 0x29c5
    mov ax, 0                        ; 0x29c6
    push ax                          ; 0x29c9
    push word [bp + 0x4]             ; 0x29ca
    call aztec_fexec                 ; 0x29cd
    add sp, byte 0x0a                ; 0x29d0
    pop si                           ; 0x29d3
    pop di                           ; 0x29d4
    mov sp, bp                       ; 0x29d5
    pop bp                           ; 0x29d7
    ret                              ; 0x29d8
