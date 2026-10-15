; auto-generated
loc_SQVH:
    mov ax, 0                        ; 0x28f7
    call aztec_csav                  ; 0x28fa
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
    jg short @..loc_SQVH.l1          ; 0x2936
    jne short @..loc_SQVH.l2         ; 0x2938
    cmp cx, ax                       ; 0x293a
    jbe short @..loc_SQVH.l2         ; 0x293c
@..loc_SQVH.l1:
    jmp short @..loc_SQVH.l3         ; 0x293e
@..loc_SQVH.l2:
    mov ax, word [bss_908e]          ; 0x2940
    mov dx, word [bss_9090]          ; 0x2943
    mov word [bss_908c], dx          ; 0x2947
    mov word [bss_908a], ax          ; 0x294b
    call api_idx_000a_IOVI           ; 0x294e
    push word [bp + 0x4]             ; 0x2951
    call api_idx_000c_TKNT           ; 0x2954
    pop cx                           ; 0x2957
    push word [bp + 0x6]             ; 0x2958
    call api_idx_0002_PGOV           ; 0x295b
    pop cx                           ; 0x295e
    mov ax, 1                        ; 0x295f
    push ax                          ; 0x2962
    mov ax, 0x73                     ; 0x2963
    push ax                          ; 0x2966
    mov ax, 0x32                     ; 0x2967
    push ax                          ; 0x296a
    call draw_party_slot_letters     ; 0x296b
    add sp, byte 6                   ; 0x296e
    mov ax, 0xc5                     ; 0x2971
    push ax                          ; 0x2974
    mov ax, 0x93                     ; 0x2975
    push ax                          ; 0x2978
    mov ax, 0x73                     ; 0x2979
    push ax                          ; 0x297c
    mov ax, 0x32                     ; 0x297d
    push ax                          ; 0x2980
    call thunk_4                     ; 0x2981
    add sp, byte 8                   ; 0x2984
@..loc_SQVH.l3:
    ret                              ; 0x2987
