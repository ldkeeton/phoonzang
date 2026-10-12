api_idx_0002_5:
    mov ax, 0xfffe                   ; 0x6fda
    call ds_aztec_csav               ; 0x6fdd
    mov ax, 0                        ; 0x6fe0
    push ax                          ; 0x6fe3
    call ds_loc_415b                 ; 0x6fe4
    pop cx                           ; 0x6fe7
    mov ax, 0                        ; 0x6fe8
    push ax                          ; 0x6feb
    mov ax, 1                        ; 0x6fec
    push ax                          ; 0x6fef
    push word [bp + 0x4]             ; 0x6ff0
    call ds_app_23a8                 ; 0x6ff3
    add sp, byte 4                   ; 0x6ff6
    push ax                          ; 0x6ff9
    call ds_aztec_open               ; 0x6ffa
    add sp, byte 4                   ; 0x6ffd
    mov word [bp - 0x0002], ax       ; 0x7000
    cmp ax, strict word 0xffff       ; 0x7003
    jne short @..api_idx_0002_5.l1   ; 0x7006
    mov ax, 0xe                      ; 0x7008
    push ax                          ; 0x700b
    call ds_app_03b8                 ; 0x700c
    pop cx                           ; 0x700f
@..api_idx_0002_5.l1:
    mov ax, 0                        ; 0x7010
    push ax                          ; 0x7013
    push word [bp - 0x0002]          ; 0x7014
    call ds_loc_4225                 ; 0x7017
    add sp, byte 4                   ; 0x701a
    push word [bp - 0x0002]          ; 0x701d
    call ds_aztec_close              ; 0x7020
    pop cx                           ; 0x7023
    cmp word [bp + 0x6], byte 1      ; 0x7024
    jne short @..api_idx_0002_5.l2   ; 0x7028
    mov ax, 0xc7                     ; 0x702a
    push ax                          ; 0x702d
    mov ax, 0x13f                    ; 0x702e
    push ax                          ; 0x7031
    mov ax, 0                        ; 0x7032
    push ax                          ; 0x7035
    push ax                          ; 0x7036
    call ds_loc_3b21                 ; 0x7037
    add sp, byte 8                   ; 0x703a
    jmp short @..api_idx_0002_5.l3   ; 0x703d
@..api_idx_0002_5.l2:
    cmp word [bp + 0x6], byte 2      ; 0x703f
    jne short @..api_idx_0002_5.l3   ; 0x7043
    mov ax, 0                        ; 0x7045
    push ax                          ; 0x7048
    push ax                          ; 0x7049
    push ax                          ; 0x704a
    call ds_loc_431e                 ; 0x704b
    add sp, byte 6                   ; 0x704e
    mov ax, 0xc7                     ; 0x7051
    push ax                          ; 0x7054
    mov ax, 0x13f                    ; 0x7055
    push ax                          ; 0x7058
    mov ax, 0                        ; 0x7059
    push ax                          ; 0x705c
    push ax                          ; 0x705d
    call ds_loc_3b21                 ; 0x705e
    add sp, byte 8                   ; 0x7061
    mov ax, 0                        ; 0x7064
    push ax                          ; 0x7067
    call ds_loc_4304                 ; 0x7068
    pop cx                           ; 0x706b
@..api_idx_0002_5.l3:
    ret                              ; 0x706c
