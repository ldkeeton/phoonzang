api_idx_000a_3:
    mov ax, 0xfff6                   ; 0x28e1
    call aztec_csav                  ; 0x28e4
    cmp word [bp + 0x8], byte 0      ; 0x28e7
    jle short @..api_idx_000a_3.l1   ; 0x28eb
    push word [bp + 0x8]             ; 0x28ed
    push word [bp + 0xe]             ; 0x28f0
    push word [bp + 0x4]             ; 0x28f3
    call loc_2553                    ; 0x28f6
    add sp, byte 6                   ; 0x28f9
    mov word [bp - 0x0008], ax       ; 0x28fc
    jmp short @..api_idx_000a_3.l2   ; 0x28ff
@..api_idx_000a_3.l1:
    mov ax, word [bp + 0x8]          ; 0x2901
    mov word [bp - 0x0008], ax       ; 0x2904
@..api_idx_000a_3.l2:
    cmp word [bp + 0xa], byte 0      ; 0x2907
    jle short @..api_idx_000a_3.l3   ; 0x290b
    push word [bp + 0xa]             ; 0x290d
    push word [bp + 0xe]             ; 0x2910
    push word [bp + 0x4]             ; 0x2913
    call loc_2553                    ; 0x2916
    add sp, byte 6                   ; 0x2919
    mov word [bp - 0x000a], ax       ; 0x291c
    jmp short @..api_idx_000a_3.l4   ; 0x291f
@..api_idx_000a_3.l3:
    mov ax, word [bp + 0xa]          ; 0x2921
    mov word [bp - 0x000a], ax       ; 0x2924
@..api_idx_000a_3.l4:
    mov ax, word [bp - 0x0008]       ; 0x2927
    cmp ax, word [bp + 0x8]          ; 0x292a
    jne short @..api_idx_000a_3.l5   ; 0x292d
    mov ax, word [bp - 0x000a]       ; 0x292f
    cmp ax, word [bp + 0xa]          ; 0x2932
    je short @..api_idx_000a_3.l6    ; 0x2935
@..api_idx_000a_3.l5:
    mov ax, 0xc8d                    ; 0x2937
    push ax                          ; 0x293a
    call loc_24c2                    ; 0x293b
    pop cx                           ; 0x293e
@..api_idx_000a_3.l6:
    lea ax, word [bp - 0x0004]       ; 0x293f
    push ax                          ; 0x2942
    lea ax, word [bp - 0x0006]       ; 0x2943
    push ax                          ; 0x2946
    push word [bp + 0x6]             ; 0x2947
    push word [bp + 0x4]             ; 0x294a
    call api_idx_0006_3              ; 0x294d
    add sp, byte 8                   ; 0x2950
    mov ax, word [bp - 0x0006]       ; 0x2953
    mov word [bp - 0x0002], ax       ; 0x2956
    jmp short @..api_idx_000a_3.l9   ; 0x2959
@..api_idx_000a_3.l7:
    push word [bp + 0x10]            ; 0x295b
    push word [bp + 0xe]             ; 0x295e
    push word [bp + 0xc]             ; 0x2961
    push word [bp - 0x000a]          ; 0x2964
    push word [bp - 0x0008]          ; 0x2967
    push word [bp - 0x0002]          ; 0x296a
    push word [bp + 0x4]             ; 0x296d
    call api_idx_0022                ; 0x2970
    add sp, byte 0x0e                ; 0x2973
    cmp word [bp + 0x4], byte 0      ; 0x2976
    jne short @..api_idx_000a_3.l8   ; 0x297a
    mov ax, 0                        ; 0x297c
    push ax                          ; 0x297f
    push word [bp - 0x0002]          ; 0x2980
    call api_idx_0004_2              ; 0x2983
    add sp, byte 4                   ; 0x2986
@..api_idx_000a_3.l8:
    inc word [bp - 0x0002]           ; 0x2989
@..api_idx_000a_3.l9:
    mov ax, word [bp - 0x0006]       ; 0x298c
    add ax, word [bp - 0x0004]       ; 0x298f
    cmp ax, word [bp - 0x0002]       ; 0x2992
    jg short @..api_idx_000a_3.l7    ; 0x2995
    ret                              ; 0x2997
