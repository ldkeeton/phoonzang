api_idx_004a:
    mov ax, 0xffb6                   ; 0x68bd
    call aztec_csav                  ; 0x68c0
    mov word [bss_830a], 0x19        ; 0x68c3
    mov ax, 0                        ; 0x68c9
    push ax                          ; 0x68cc
    mov ax, 0x8f                     ; 0x68cd
    push ax                          ; 0x68d0
    mov ax, 0xf7                     ; 0x68d1
    push ax                          ; 0x68d4
    mov ax, 0x20                     ; 0x68d5
    push ax                          ; 0x68d8
    mov ax, 0x48                     ; 0x68d9
    push ax                          ; 0x68dc
    call ds_loc_3b48                 ; 0x68dd
    add sp, byte 0x0a                ; 0x68e0
    mov ax, 0x8f                     ; 0x68e3
    push ax                          ; 0x68e6
    mov ax, 0xf7                     ; 0x68e7
    push ax                          ; 0x68ea
    mov ax, 0x20                     ; 0x68eb
    push ax                          ; 0x68ee
    mov ax, 0x48                     ; 0x68ef
    push ax                          ; 0x68f2
    call ds_loc_3b21                 ; 0x68f3
    add sp, byte 8                   ; 0x68f6
    mov word [bp - 0x0002], 0        ; 0x68f9
@..api_idx_004a.l1:
    mov ax, word [bp - 0x0002]       ; 0x68fe
    shl ax, 1                        ; 0x6901
    mov bx, ax                       ; 0x6903
    add bx, bp                       ; 0x6905
    mov word [bx - 0x0022], 1        ; 0x6907
    inc word [bp - 0x0002]           ; 0x690c
    mov ax, word [bp - 0x0002]       ; 0x690f
    cmp ax, strict word 5            ; 0x6912
    jle short @..api_idx_004a.l1     ; 0x6915
    mov word [bp - 0x001e], 0        ; 0x6917
    mov word [bp - 0x0016], 0xffff   ; 0x691c
    mov word [bp - 0x0004], 1        ; 0x6921
@..api_idx_004a.l2:
    lea ax, word [bp - 0x0022]       ; 0x6926
    push ax                          ; 0x6929
    mov ax, 1                        ; 0x692a
    push ax                          ; 0x692d
    mov ax, 6                        ; 0x692e
    push ax                          ; 0x6931
    mov ax, 0xd                      ; 0x6932
    push ax                          ; 0x6935
    mov ax, 0x12                     ; 0x6936
    push ax                          ; 0x6939
    mov ax, 0x24                     ; 0x693a
    push ax                          ; 0x693d
    mov ax, 0x61                     ; 0x693e
    push ax                          ; 0x6941
    mov ax, 0x898                    ; 0x6942
    push ax                          ; 0x6945
    call loc_023a                    ; 0x6946
    add sp, byte 0x10                ; 0x6949
    mov word [bp - 0x0002], ax       ; 0x694c
    lea ax, word [bp - 0x004a]       ; 0x694f
    push ax                          ; 0x6952
    mov ax, word [bp - 0x0002]       ; 0x6953
    add ax, 0x898                    ; 0x6956
    push ax                          ; 0x6959
    call ds_app_mem_0782             ; 0x695a
    add sp, byte 4                   ; 0x695d
    mov ax, 0x1a                     ; 0x6960
    push ax                          ; 0x6963
    mov ax, 0xd                      ; 0x6964
    push ax                          ; 0x6967
    mov ax, 0x12                     ; 0x6968
    push ax                          ; 0x696b
    mov ax, 0x24                     ; 0x696c
    push ax                          ; 0x696f
    mov ax, 0x61                     ; 0x6970
    push ax                          ; 0x6973
    push word [bss_9052]             ; 0x6974
    lea ax, word [bp - 0x004a]       ; 0x6978
    push ax                          ; 0x697b
    call api_idx_0004                ; 0x697c
    add sp, byte 0x0e                ; 0x697f
    mov ax, word [bp - 0x0002]       ; 0x6982
    jmp short @..api_idx_004a.l6     ; 0x6985
loc_6987:
    mov word [bp - 0x0004], 0        ; 0x6987
    jmp near @..api_idx_004a.l7      ; 0x698c
loc_698f:
    mov ax, 1                        ; 0x698f
    push ax                          ; 0x6992
    call loc_4d0e                    ; 0x6993
    pop cx                           ; 0x6996
    jmp short @..api_idx_004a.l7     ; 0x6997
loc_6999:
    jmp short @..api_idx_004a.l7     ; 0x6999
loc_699b:
    mov ax, 0                        ; 0x699b
    push ax                          ; 0x699e
    call api_idx_004e                ; 0x699f
    pop cx                           ; 0x69a2
    cmp ax, strict word 0xffff       ; 0x69a3
    jne short @..api_idx_004a.l3     ; 0x69a6
    mov ax, 0xc6                     ; 0x69a8
    push ax                          ; 0x69ab
    mov ax, 0x109                    ; 0x69ac
    push ax                          ; 0x69af
    mov ax, 0x8e                     ; 0x69b0
    push ax                          ; 0x69b3
    mov ax, 0x36                     ; 0x69b4
    push ax                          ; 0x69b7
    call ds_loc_3b21                 ; 0x69b8
    add sp, byte 8                   ; 0x69bb
    jmp short @..api_idx_004a.l5     ; 0x69be
@..api_idx_004a.l3:
    cmp word [bp - 0x0002], byte 4   ; 0x69c0
    jne short @..api_idx_004a.l4     ; 0x69c4
    mov word [bss_8460], 0           ; 0x69c6
    mov word [bss_830a], 7           ; 0x69cc
@..api_idx_004a.l4:
    mov word [bp - 0x0004], 0        ; 0x69d2
@..api_idx_004a.l5:
    jmp short @..api_idx_004a.l7     ; 0x69d7
loc_69d9:
    mov word [bss_8460], 0           ; 0x69d9
    mov word [bss_830a], 7           ; 0x69df
    mov word [bp - 0x0004], 0        ; 0x69e5
    jmp short @..api_idx_004a.l7     ; 0x69ea
jumptable_69ec:
    dw loc_6987 - IMAGE_BASE + 0x5055          ; 0x69ec
    dw loc_698f - IMAGE_BASE + 0x5055          ; 0x69ee
    dw loc_6999 - IMAGE_BASE + 0x5055          ; 0x69f0
    dw loc_699b - IMAGE_BASE + 0x5055          ; 0x69f2
    dw loc_699b - IMAGE_BASE + 0x5055          ; 0x69f4
    dw loc_69d9 - IMAGE_BASE + 0x5055          ; 0x69f6
@..api_idx_004a.l6:
    cmp ax, strict word 6            ; 0x69f8
    jae short @..api_idx_004a.l7     ; 0x69fb
    xchg bx, ax                      ; 0x69fd
    shl bx, 1                        ; 0x69fe
    jmp [cs:bx - 0x45cd]             ; 0x6a00
@..api_idx_004a.l7:
    cmp word [bp - 0x0004], byte 0   ; 0x6a05
    je short @..api_idx_004a.l8      ; 0x6a09
    jmp near @..api_idx_004a.l2      ; 0x6a0b
@..api_idx_004a.l8:
    ret                              ; 0x6a0e
