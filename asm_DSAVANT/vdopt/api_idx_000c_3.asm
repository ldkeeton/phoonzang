api_idx_000c_3:
    mov ax, 0xfff4                   ; 0x285e
    call ds_aztec_csav               ; 0x2861
    mov word [bp - 0x0002], 0        ; 0x2864
@..api_idx_000c_3.l1:
    lea ax, word [bp - 0x000c]       ; 0x2869
    push ax                          ; 0x286c
    mov ax, 0x248                    ; 0x286d
    imul word [bp + 0x4]             ; 0x2870
    mov cx, word [bp - 0x0002]       ; 0x2873
    shl cx, 1                        ; 0x2876
    shl cx, 1                        ; 0x2878
    add ax, cx                       ; 0x287a
    mov bx, ax                       ; 0x287c
    push word [bx + 0x5c1c]          ; 0x287e
    call ds_app_04c4                 ; 0x2882
    add sp, byte 4                   ; 0x2885
    mov ax, 0                        ; 0x2888
    push ax                          ; 0x288b
    mov ax, word [bp - 0x0002]       ; 0x288c
    shl ax, 1                        ; 0x288f
    shl ax, 1                        ; 0x2891
    mov bx, ax                       ; 0x2893
    push word [word bx + 0x6]        ; 0x2895
    call ds_loc_3a6a                 ; 0x2899
    add sp, byte 4                   ; 0x289c
    mov ax, word [bp - 0x0002]       ; 0x289f
    shl ax, 1                        ; 0x28a2
    shl ax, 1                        ; 0x28a4
    mov bx, ax                       ; 0x28a6
    push word [bx + 0x18e]           ; 0x28a8
    lea ax, word [bp - 0x000c]       ; 0x28ac
    push ax                          ; 0x28af
    call ds_aztec_strlen             ; 0x28b0
    pop cx                           ; 0x28b3
    mov cx, 6                        ; 0x28b4
    imul cx                          ; 0x28b7
    mov cx, 2                        ; 0x28b9
    cwd                              ; 0x28bc
    idiv cx                          ; 0x28bd
    mov cx, ax                       ; 0x28bf
    mov ax, word [bp - 0x0002]       ; 0x28c1
    shl ax, 1                        ; 0x28c4
    shl ax, 1                        ; 0x28c6
    mov bx, ax                       ; 0x28c8
    mov ax, word [bx + 0x18c]        ; 0x28ca
    add ax, strict word 9            ; 0x28ce
    sub ax, cx                       ; 0x28d1
    push ax                          ; 0x28d3
    call ds_loc_3a50                 ; 0x28d4
    add sp, byte 4                   ; 0x28d7
    mov ax, 0                        ; 0x28da
    push ax                          ; 0x28dd
    lea ax, word [bp - 0x000c]       ; 0x28de
    push ax                          ; 0x28e1
    call ds_string_loc_3a95          ; 0x28e2
    add sp, byte 4                   ; 0x28e5
    inc word [bp - 0x0002]           ; 0x28e8
    mov ax, word [bp - 0x0002]       ; 0x28eb
    cmp ax, strict word 6            ; 0x28ee
    jge short @..api_idx_000c_3.l2   ; 0x28f1
    jmp near @..api_idx_000c_3.l1    ; 0x28f3
@..api_idx_000c_3.l2:
    ret                              ; 0x28f6
loc_28f7:
    mov ax, 0                        ; 0x28f7
    call ds_aztec_csav               ; 0x28fa
    les bx, word [dseg_0002]         ; 0x28fd
    mov ax, word [es:bx]             ; 0x2901
    mov dx, word [es:bx + 0x2]       ; 0x2904
    mov word [bss_9090], dx          ; 0x2908
    mov word [bss_908e], ax          ; 0x290c
    mov ax, word [bss_908e]          ; 0x290f
    mov dx, word [bss_9090]          ; 0x2912
    sub ax, word [bss_908a]          ; 0x2916
    sbb dx, word [bss_908c]          ; 0x291a
    mov word [bss_9094], dx          ; 0x291e
    mov word [bss_9092], ax          ; 0x2922
    mov ax, word [bss_9b5e]          ; 0x2925
    cwd                              ; 0x2928
    mov cx, ax                       ; 0x2929
    mov bx, dx                       ; 0x292b
    mov ax, word [bss_9092]          ; 0x292d
    mov dx, word [bss_9094]          ; 0x2930
    cmp bx, dx                       ; 0x2934
    jg short @..local.l45            ; 0x2936
    jne short @..local.l46           ; 0x2938
    cmp cx, ax                       ; 0x293a
    jbe short @..local.l46           ; 0x293c
@..local.l45:
    jmp short @..local.l47           ; 0x293e
@..local.l46:
    mov ax, word [bss_908e]          ; 0x2940
    mov dx, word [bss_9090]          ; 0x2943
    mov word [bss_908c], dx          ; 0x2947
    mov word [bss_908a], ax          ; 0x294b
    call api_idx_000a_3              ; 0x294e
    push word [bp + 0x4]             ; 0x2951
    call api_idx_000c_3              ; 0x2954
    pop cx                           ; 0x2957
    push word [bp + 0x6]             ; 0x2958
    call api_idx_0002_5              ; 0x295b
    pop cx                           ; 0x295e
    mov ax, 1                        ; 0x295f
    push ax                          ; 0x2962
    mov ax, 0x73                     ; 0x2963
    push ax                          ; 0x2966
    mov ax, 0x32                     ; 0x2967
    push ax                          ; 0x296a
    call api_idx_000c_2              ; 0x296b
    add sp, byte 6                   ; 0x296e
    mov ax, 0xc5                     ; 0x2971
    push ax                          ; 0x2974
    mov ax, 0x93                     ; 0x2975
    push ax                          ; 0x2978
    mov ax, 0x73                     ; 0x2979
    push ax                          ; 0x297c
    mov ax, 0x32                     ; 0x297d
    push ax                          ; 0x2980
    call ds_loc_3b21                 ; 0x2981
    add sp, byte 8                   ; 0x2984
@..local.l47:
    ret                              ; 0x2987
