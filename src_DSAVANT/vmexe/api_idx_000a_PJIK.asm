; auto-generated
api_idx_000a_PJIK:
    mov ax, 0xfff6                   ; 0x28e1
    call aztec_csav                  ; 0x28e4
    cmp word [bp + 8], byte 0        ; 0x28e7
    jle short .forward1              ; 0x28eb
    push word [bp + 8]               ; 0x28ed
    push word [bp + 0xe]             ; 0x28f0
    push word [bp + 4]               ; 0x28f3
    call loc_QUJT                    ; 0x28f6
    add sp, byte 6                   ; 0x28f9
    mov word [bp - 8], ax            ; 0x28fc
    jmp short .forward2              ; 0x28ff
.forward1:
    mov ax, word [bp + 8]            ; 0x2901
    mov word [bp - 8], ax            ; 0x2904
.forward2:
    cmp word [bp + 0xa], byte 0      ; 0x2907
    jle short .forward3              ; 0x290b
    push word [bp + 0xa]             ; 0x290d
    push word [bp + 0xe]             ; 0x2910
    push word [bp + 4]               ; 0x2913
    call loc_QUJT                    ; 0x2916
    add sp, byte 6                   ; 0x2919
    mov word [bp - 0xa], ax          ; 0x291c
    jmp short .forward4              ; 0x291f
.forward3:
    mov ax, word [bp + 0xa]          ; 0x2921
    mov word [bp - 0xa], ax          ; 0x2924
.forward4:
    mov ax, word [bp - 8]            ; 0x2927
    cmp ax, word [bp + 8]            ; 0x292a
    jne short .forward5              ; 0x292d
    mov ax, word [bp - 0xa]          ; 0x292f
    cmp ax, word [bp + 0xa]          ; 0x2932
    je short .forward6               ; 0x2935
.forward5:
    mov ax, MSG_SPELL_REDUCED        ; 0x2937
    push ax                          ; 0x293a
    call loc_PKMT                    ; 0x293b
    pop cx                           ; 0x293e
.forward6:
    lea ax, word [bp - 4]            ; 0x293f
    push ax                          ; 0x2942
    lea ax, word [bp - 6]            ; 0x2943
    push ax                          ; 0x2946
    push word [bp + 6]               ; 0x2947
    push word [bp + 4]               ; 0x294a
    call api_idx_0006_OMUL           ; 0x294d
    add sp, byte 8                   ; 0x2950
    mov ax, word [bp - 6]            ; 0x2953
    mov word [bp - 2], ax            ; 0x2956
    jmp short .forward8              ; 0x2959
.back1:
    push word [bp + 0x10]            ; 0x295b
    push word [bp + 0xe]             ; 0x295e
    push word [bp + 0xc]             ; 0x2961
    push word [bp - 0xa]             ; 0x2964
    push word [bp - 8]               ; 0x2967
    push word [bp - 2]               ; 0x296a
    push word [bp + 4]               ; 0x296d
    call api_idx_0022_ROKS           ; 0x2970
    add sp, byte 0xe                 ; 0x2973
    cmp word [bp + 4], byte 0        ; 0x2976
    jne short .forward7              ; 0x297a
    mov ax, 0                        ; 0x297c
    push ax                          ; 0x297f
    push word [bp - 2]               ; 0x2980
    call api_idx_0004_MLLS           ; 0x2983
    add sp, byte 4                   ; 0x2986
.forward7:
    inc word [bp - 2]                ; 0x2989
.forward8:
    mov ax, word [bp - 6]            ; 0x298c
    add ax, word [bp - 4]            ; 0x298f
    cmp ax, word [bp - 2]            ; 0x2992
    jg short .back1                  ; 0x2995
    ret                              ; 0x2997
