; auto-generated
api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x08b7
    call aztec_csav                  ; 0x08ba
    mov ax, 0                        ; 0x08bd
    push ax                          ; 0x08c0
    call ds_loc_415b                 ; 0x08c1
    pop cx                           ; 0x08c4
    mov ax, 0                        ; 0x08c5
    push ax                          ; 0x08c8
    mov ax, 1                        ; 0x08c9
    push ax                          ; 0x08cc
    push word [bp + 0x4]             ; 0x08cd
    call ds_app_23a8                 ; 0x08d0
    add sp, byte 4                   ; 0x08d3
    push ax                          ; 0x08d6
    call aztec_open                  ; 0x08d7
    add sp, byte 4                   ; 0x08da
    mov word [bp - 0x0002], ax       ; 0x08dd
    cmp ax, strict word 0xffff       ; 0x08e0
    jne short @..api_idx_0002_5.l1   ; 0x08e3
    mov ax, 0xe                      ; 0x08e5
    push ax                          ; 0x08e8
    call ds_app_03b8                 ; 0x08e9
    pop cx                           ; 0x08ec
@..api_idx_0002_5.l1:
    mov ax, 0                        ; 0x08ed
    push ax                          ; 0x08f0
    push word [bp - 0x0002]          ; 0x08f1
    call ds_loc_4225                 ; 0x08f4
    add sp, byte 4                   ; 0x08f7
    push word [bp - 0x0002]          ; 0x08fa
    call aztec_close                 ; 0x08fd
    pop cx                           ; 0x0900
    cmp word [bp + 0x6], byte 1      ; 0x0901
    jne short @..api_idx_0002_5.l2   ; 0x0905
    mov ax, 0xc7                     ; 0x0907
    push ax                          ; 0x090a
    mov ax, 0x13f                    ; 0x090b
    push ax                          ; 0x090e
    mov ax, 0                        ; 0x090f
    push ax                          ; 0x0912
    push ax                          ; 0x0913
    call ds_loc_3b21                 ; 0x0914
    add sp, byte 8                   ; 0x0917
    jmp short @..api_idx_0002_5.l3   ; 0x091a
@..api_idx_0002_5.l2:
    cmp word [bp + 0x6], byte 2      ; 0x091c
    jne short @..api_idx_0002_5.l3   ; 0x0920
    mov ax, 0                        ; 0x0922
    push ax                          ; 0x0925
    push ax                          ; 0x0926
    push ax                          ; 0x0927
    call ds_loc_431e                 ; 0x0928
    add sp, byte 6                   ; 0x092b
    mov ax, 0xc7                     ; 0x092e
    push ax                          ; 0x0931
    mov ax, 0x13f                    ; 0x0932
    push ax                          ; 0x0935
    mov ax, 0                        ; 0x0936
    push ax                          ; 0x0939
    push ax                          ; 0x093a
    call ds_loc_3b21                 ; 0x093b
    add sp, byte 8                   ; 0x093e
    mov ax, 0                        ; 0x0941
    push ax                          ; 0x0944
    call ds_loc_4304                 ; 0x0945
    pop cx                           ; 0x0948
@..api_idx_0002_5.l3:
    ret                              ; 0x0949
