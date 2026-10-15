; auto-generated
main: ; Aztec csav frame=0x0002
    mov ax, 0xfffe                   ; 0x2dd5
    call aztec_csav                  ; 0x2dd8
    mov word [bss_830a], 0           ; 0x2ddb
@..main.l1:
    mov ax, word [bss_830a]          ; 0x2de1
    jmp near @..main.l2              ; 0x2de4
jumptable_2edc_case_8:
    mov ax, 0                        ; 0x2de7
    push ax                          ; 0x2dea
    mov ax, 3                        ; 0x2deb
    push ax                          ; 0x2dee
    call ds_app_OVOG                 ; 0x2def
    add sp, byte 4                   ; 0x2df2
jumptable_2edc_case_0:
    mov ax, 0xbfa                    ; 0x2df5
    push ax                          ; 0x2df8
    call aztec_ovloader              ; 0x2df9
    pop cx                           ; 0x2dfc
    mov word [bp - 0x0002], ax       ; 0x2dfd
    jmp near @..main.l3              ; 0x2e00
jumptable_2edc_case_7:
    mov ax, 0                        ; 0x2e03
    push ax                          ; 0x2e06
    mov ax, 1                        ; 0x2e07
    push ax                          ; 0x2e0a
    call ds_app_OVOG                 ; 0x2e0b
    add sp, byte 4                   ; 0x2e0e
jumptable_2edc_case_4:
    mov ax, 0xc00                    ; 0x2e11
    push ax                          ; 0x2e14
    call aztec_ovloader              ; 0x2e15
    pop cx                           ; 0x2e18
    mov word [bp - 0x0002], ax       ; 0x2e19
    jmp near @..main.l3              ; 0x2e1c
jumptable_2edc_case_17:
    mov ax, 0xc06                    ; 0x2e1f
    push ax                          ; 0x2e22
    call aztec_ovloader              ; 0x2e23
    pop cx                           ; 0x2e26
    mov word [bp - 0x0002], ax       ; 0x2e27
    jmp near @..main.l3              ; 0x2e2a
jumptable_2edc_case_22:
    mov ax, 0xc0c                    ; 0x2e2d
    push ax                          ; 0x2e30
    call aztec_ovloader              ; 0x2e31
    pop cx                           ; 0x2e34
    mov word [bp - 0x0002], ax       ; 0x2e35
    jmp near @..main.l3              ; 0x2e38
jumptable_2edc_case_16:
    mov ax, 0xc12                    ; 0x2e3b
    push ax                          ; 0x2e3e
    call aztec_ovloader              ; 0x2e3f
    pop cx                           ; 0x2e42
    mov word [bp - 0x0002], ax       ; 0x2e43
    jmp near @..main.l3              ; 0x2e46
jumptable_2edc_case_25:
    push word [bss_830c]             ; 0x2e49
    mov ax, 2                        ; 0x2e4d
    push ax                          ; 0x2e50
    call ds_app_OVOG                 ; 0x2e51
    add sp, byte 4                   ; 0x2e54
    mov word [bss_830a], 5           ; 0x2e57
jumptable_2edc_case_5:
    mov ax, 0xc18                    ; 0x2e5d
    push ax                          ; 0x2e60
    call aztec_ovloader              ; 0x2e61
    pop cx                           ; 0x2e64
    mov word [bp - 0x0002], ax       ; 0x2e65
    jmp near @..main.l3              ; 0x2e68
jumptable_2edc_case_23:
    mov ax, 0xc1e                    ; 0x2e6b
    push ax                          ; 0x2e6e
    call aztec_ovloader              ; 0x2e6f
    pop cx                           ; 0x2e72
    mov word [bp - 0x0002], ax       ; 0x2e73
    jmp near @..main.l3              ; 0x2e76
jumptable_2edc_case_10:
    mov ax, 0xc24                    ; 0x2e79
    push ax                          ; 0x2e7c
    call aztec_ovloader              ; 0x2e7d
    pop cx                           ; 0x2e80
    mov word [bp - 0x0002], ax       ; 0x2e81
    jmp near @..main.l3              ; 0x2e84
jumptable_2edc_case_12:
    mov ax, 0xc2a                    ; 0x2e87
    push ax                          ; 0x2e8a
    call aztec_ovloader              ; 0x2e8b
    pop cx                           ; 0x2e8e
    mov word [bp - 0x0002], ax       ; 0x2e8f
    jmp near @..main.l3              ; 0x2e92
jumptable_2edc_case_13:
    mov ax, 0xc30                    ; 0x2e95
    push ax                          ; 0x2e98
    call aztec_ovloader              ; 0x2e99
    pop cx                           ; 0x2e9c
    mov word [bp - 0x0002], ax       ; 0x2e9d
    jmp near @..main.l3              ; 0x2ea0
jumptable_2edc_case_19:
    mov ax, 0xc36                    ; 0x2ea3
    push ax                          ; 0x2ea6
    call aztec_ovloader              ; 0x2ea7
    pop cx                           ; 0x2eaa
    mov word [bp - 0x0002], ax       ; 0x2eab
    jmp short @..main.l3             ; 0x2eae
jumptable_2edc_case_15:
    mov ax, 0xc3c                    ; 0x2eb0
    push ax                          ; 0x2eb3
    call aztec_ovloader              ; 0x2eb4
    pop cx                           ; 0x2eb7
    mov word [bp - 0x0002], ax       ; 0x2eb8
    jmp short @..main.l3             ; 0x2ebb
jumptable_2edc_case_18:
    mov ax, 0xc42                    ; 0x2ebd
    push ax                          ; 0x2ec0
    call aztec_ovloader              ; 0x2ec1
    pop cx                           ; 0x2ec4
    mov word [bp - 0x0002], ax       ; 0x2ec5
    jmp short @..main.l3             ; 0x2ec8
jumptable_2edc_case_3:
    mov ax, 0                        ; 0x2eca
    push ax                          ; 0x2ecd
    call ds_app_file_JHOT            ; 0x2ece
    pop cx                           ; 0x2ed1
    mov ax, 0                        ; 0x2ed2
    push ax                          ; 0x2ed5
    call ds_loc_OMIG                 ; 0x2ed6
    pop cx                           ; 0x2ed9
    jmp short @..main.l3             ; 0x2eda
jumptable_2edc:
    dw jumptable_2edc_case_0 - IMAGE_BASE      ; 0x2edc
    dw jumptable_2edc_case_0 - IMAGE_BASE      ; 0x2ede
    dw jumptable_2edc_case_0 - IMAGE_BASE      ; 0x2ee0
    dw jumptable_2edc_case_3 - IMAGE_BASE      ; 0x2ee2
    dw jumptable_2edc_case_4 - IMAGE_BASE      ; 0x2ee4
    dw jumptable_2edc_case_5 - IMAGE_BASE      ; 0x2ee6
    dw jumptable_2edc_case_5 - IMAGE_BASE      ; 0x2ee8
    dw jumptable_2edc_case_7 - IMAGE_BASE      ; 0x2eea
    dw jumptable_2edc_case_8 - IMAGE_BASE      ; 0x2eec
    dw jumptable_2edc_case_9 - IMAGE_BASE      ; 0x2eee
    dw jumptable_2edc_case_10 - IMAGE_BASE     ; 0x2ef0
    dw jumptable_2edc_case_10 - IMAGE_BASE     ; 0x2ef2
    dw jumptable_2edc_case_12 - IMAGE_BASE     ; 0x2ef4
    dw jumptable_2edc_case_13 - IMAGE_BASE     ; 0x2ef6
    dw jumptable_2edc_case_10 - IMAGE_BASE     ; 0x2ef8
    dw jumptable_2edc_case_15 - IMAGE_BASE     ; 0x2efa
    dw jumptable_2edc_case_16 - IMAGE_BASE     ; 0x2efc
    dw jumptable_2edc_case_17 - IMAGE_BASE     ; 0x2efe
    dw jumptable_2edc_case_18 - IMAGE_BASE     ; 0x2f00
    dw jumptable_2edc_case_19 - IMAGE_BASE     ; 0x2f02
    dw jumptable_2edc_case_19 - IMAGE_BASE     ; 0x2f04
    dw jumptable_2edc_case_15 - IMAGE_BASE     ; 0x2f06
    dw jumptable_2edc_case_22 - IMAGE_BASE     ; 0x2f08
    dw jumptable_2edc_case_23 - IMAGE_BASE     ; 0x2f0a
    dw jumptable_2edc_case_7 - IMAGE_BASE      ; 0x2f0c
    dw jumptable_2edc_case_25 - IMAGE_BASE     ; 0x2f0e
    dw jumptable_2edc_case_15 - IMAGE_BASE     ; 0x2f10
    dw jumptable_2edc_case_23 - IMAGE_BASE     ; 0x2f12
    dw jumptable_2edc_case_15 - IMAGE_BASE     ; 0x2f14
    dw jumptable_2edc_case_15 - IMAGE_BASE     ; 0x2f16
    dw jumptable_2edc_case_23 - IMAGE_BASE     ; 0x2f18
    dw jumptable_2edc_case_23 - IMAGE_BASE     ; 0x2f1a
@..main.l2:
    cmp ax, strict word 0x20         ; 0x2f1c
    jae short @..main.l3             ; 0x2f1f
    xchg bx, ax                      ; 0x2f21
    shl bx, 1                        ; 0x2f22
    jmp [cs:bx + jumptable_2edc - IMAGE_BASE] ; 0x2f24
jumptable_2edc_case_9:
@..main.l3:
    mov ax, 0                        ; 0x2f29
    push ax                          ; 0x2f2c
    call thunk_17                    ; 0x2f2d
    pop cx                           ; 0x2f30
    jmp near @..main.l1              ; 0x2f31
    ret                              ; 0x2f34
    db 0x00
