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
    call ds_loc_4f73                 ; 0x2ed6
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
cseg_2f36:
    db 0x00
cseg_2f37:
    db 0x00
cseg_2f38:
    db 0x00
cseg_2f39:
    db 0x00
cseg_2f3a:
    db 0x00
cseg_2f3b:
    times 5 db 0
cseg_2f40:
    db 0x80, 0x41, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x40, 0x01
cseg_2f4a:
    db 0x00, 0x00, 0x40, 0x00
cseg_2f4e:
    db 0x00, 0x00, 0x30, 0x05
cseg_2f52:
    db 0x00, 0x00, 0xd0, 0x01
cseg_2f56:
    times 6 db 0
    db 0x3e, 0x2f, 0xbc, 0x34
cseg_2f60:
    db 0x00, 0x00
cseg_2f62:
    db 0x00, 0x00
cseg_2f64:
    db 0x00, 0x00
cseg_2f66:

    db 0x00, 0x03, 0x01, 0x00, 0x00, 0x07, 0x01, 0x00, 0x00, 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00
    db 0x00, 0x13, 0x01, 0x00, 0x00

cseg_2f7b:
    db 0x17, 0x01, 0x00, 0x00, 0x1b, 0x01, 0x00, 0x00
cseg_2f83:
    db 0x1f, 0x01, 0x00, 0x00
cseg_2f87:
    db 0x03, 0x01, 0x00, 0x00
cseg_2f8b:
    db 0x07, 0x01, 0x00, 0x00
cseg_2f8f:
    db 0x0b, 0x01, 0x00, 0x00, 0x0f, 0x01, 0x00, 0x00, 0x13, 0x01, 0x00, 0x00
cseg_2f9b:
    db 0x17, 0x01, 0x00, 0x00
cseg_2f9f:
    db 0x1b, 0x01, 0x00, 0x00
cseg_2fa3:
    db 0x1f, 0x01, 0x00, 0x00
cseg_2fa7:
    db 0x23, 0x01, 0x00, 0x00
cseg_2fab:
    db 0x27, 0x01, 0x00, 0x00
cseg_2faf:
    db 0x2b, 0x01, 0x00, 0x00
cseg_2fb3:
    db 0x2f, 0x01, 0x00, 0x00
cseg_2fb7:
    db 0x33, 0x01, 0x00, 0x00
cseg_2fbb:
    db 0x37, 0x01, 0x00, 0x00
cseg_2fbf:
    db 0x3b, 0x01, 0x00, 0x00
cseg_2fc3:
    db 0x3f, 0x01, 0x00, 0x00
cseg_2fc7:
    db 0x43, 0x01, 0x00, 0x00
cseg_2fcb:
    db 0x47, 0x01, 0x00, 0x00
cseg_2fcf:
    db 0x4b, 0x01, 0x00, 0x00
cseg_2fd3:
    db 0x4f, 0x01, 0x00, 0x00
cseg_2fd7:
    db 0x53, 0x01, 0x00, 0x00
cseg_2fdb:
    db 0x57, 0x01, 0x00, 0x00
cseg_2fdf:
    db 0x5b, 0x01, 0x00, 0x00
cseg_2fe3:
    db 0x5f, 0x01, 0x00, 0x00
cseg_2fe7:
    db 0x63, 0x01, 0x00, 0x00
cseg_2feb:
    db 0x67, 0x01, 0x00, 0x00
cseg_2fef:
    db 0x6b, 0x01, 0x00, 0x00
cseg_2ff3:
    db 0x6f, 0x01, 0x00, 0x00
cseg_2ff7:
    db 0x73, 0x01, 0x00, 0x00
cseg_2ffb:
    db 0x77, 0x01, 0x00, 0x00
cseg_2fff:
    db 0x7b, 0x01, 0x00, 0x00
cseg_3003:
    db 0x7f, 0x01, 0x00, 0x00
cseg_3007:
    db 0x83, 0x01, 0x00, 0x00
cseg_300b:
    db 0x87, 0x01, 0x00, 0x00
cseg_300f:
    db 0x8b, 0x01, 0x00, 0x00
cseg_3013:
    db 0x8f, 0x01, 0x00, 0x00
cseg_3017:
    db 0x93, 0x01, 0x00, 0x00
cseg_301b:
    db 0x97, 0x01, 0x00, 0x00
cseg_301f:
    db 0x9b, 0x01, 0x00, 0x00
cseg_3023:
    db 0x9f, 0x01, 0x00, 0x00
cseg_3027:
    db 0xa3, 0x01, 0x00, 0x00
cseg_302b:
    db 0xa7, 0x01, 0x00, 0x00
cseg_302f:
    db 0xab, 0x01, 0x00, 0x00
cseg_3033:
    db 0xaf, 0x01, 0x00, 0x00
cseg_3037:
    db 0xb3, 0x01, 0x00, 0x00
cseg_303b:
    db 0xb7, 0x01, 0x00, 0x00
cseg_303f:
    db 0xbb, 0x01, 0x00, 0x00
cseg_3043:
    db 0xbf, 0x01, 0x00, 0x00
cseg_3047:
    db 0xc3, 0x01, 0x00, 0x00
cseg_304b:
    db 0xc7, 0x01, 0x00, 0x00
cseg_304f:
    db 0xcb, 0x01, 0x00, 0x00
cseg_3053:
    db 0xcf, 0x01, 0x00, 0x00
cseg_3057:
    db 0xd3, 0x01, 0x00, 0x00
cseg_305b:
    db 0xd7, 0x01, 0x00, 0x00
cseg_305f:
    db 0xdb, 0x01, 0x00, 0x00
cseg_3063:
    db 0xdf, 0x01, 0x00, 0x00
