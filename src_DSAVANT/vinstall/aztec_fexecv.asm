; auto-generated
aztec_fexecv:
    push bp                          ; 0x291c
    mov bp, sp                       ; 0x291d
    add sp, strict word 0xff5c       ; 0x291f
    push di                          ; 0x2923
    push si                          ; 0x2924
    lea si, word [bp - 0x83]         ; 0x2925
    mov word [bp - 2], 1             ; 0x2929
    lea ax, word [bp - 0x94]         ; 0x292e
    push ax                          ; 0x2932
    mov ax, 0x230a                   ; 0x2933
    push ax                          ; 0x2936
    call aztec_fcbinit               ; 0x2937
    add sp, byte 4                   ; 0x293a
    lea ax, word [bp - 0xa4]         ; 0x293d
    push ax                          ; 0x2941
    mov ax, 0x230c                   ; 0x2942
    push ax                          ; 0x2945
    call aztec_fcbinit               ; 0x2946
    add sp, byte 4                   ; 0x2949
    mov bx, word [bp + 6]            ; 0x294c
    cmp word [bx], byte 0            ; 0x294f
    je short .forward4               ; 0x2952
    add word [bp + 6], byte 2        ; 0x2954
.back1:
    mov bx, word [bp + 6]            ; 0x2958
    add word [bp + 6], byte 2        ; 0x295b
    mov di, word [bx]                ; 0x295f
    test di, di                      ; 0x2961
    je short .forward4               ; 0x2963
    cmp word [bp - 2], byte 1        ; 0x2965
    jne short .forward1              ; 0x2969
    lea ax, word [bp - 0x94]         ; 0x296b
    push ax                          ; 0x296f
    push di                          ; 0x2970
    call aztec_fcbinit               ; 0x2971
    add sp, byte 4                   ; 0x2974
    jmp short .forward2              ; 0x2977
.forward1:
    cmp word [bp - 2], byte 2        ; 0x2979
    jne short .forward2              ; 0x297d
    lea ax, word [bp - 0xa4]         ; 0x297f
    push ax                          ; 0x2983
    push di                          ; 0x2984
    call aztec_fcbinit               ; 0x2985
    add sp, byte 4                   ; 0x2988
.forward2:
    mov byte [si], 0x20              ; 0x298b
    inc si                           ; 0x298e
.back2:
    cmp byte [di], 0                 ; 0x298f
    je short .forward3               ; 0x2992
    lea ax, word [bp - 5]            ; 0x2994
    cmp ax, si                       ; 0x2997
    jbe short .forward4              ; 0x2999
    mov al, byte [di]                ; 0x299b
    mov byte [si], al                ; 0x299d
    inc di                           ; 0x299f
    inc si                           ; 0x29a0
    jmp short .back2                 ; 0x29a1
.forward3:
    inc word [bp - 2]                ; 0x29a3
    jmp short .back1                 ; 0x29a6
.forward4:
    mov ax, si                       ; 0x29a8
    lea cx, word [bp - 0x83]         ; 0x29aa
    sub ax, cx                       ; 0x29ae
    mov byte [bp - 0x84], al         ; 0x29b0
    mov byte [si], 0xd               ; 0x29b4
    lea ax, word [bp - 0xa4]         ; 0x29b7
    push ax                          ; 0x29bb
    lea ax, word [bp - 0x94]         ; 0x29bc
    push ax                          ; 0x29c0
    lea ax, word [bp - 0x84]         ; 0x29c1
    push ax                          ; 0x29c5
    mov ax, 0                        ; 0x29c6
    push ax                          ; 0x29c9
    push word [bp + 4]               ; 0x29ca
    call aztec_fexec                 ; 0x29cd
    add sp, byte 0xa                 ; 0x29d0
    pop si                           ; 0x29d3
    pop di                           ; 0x29d4
    mov sp, bp                       ; 0x29d5
    pop bp                           ; 0x29d7
    ret                              ; 0x29d8
