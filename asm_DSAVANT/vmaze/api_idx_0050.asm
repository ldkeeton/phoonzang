api_idx_0050:
    mov ax, 0xffb0                   ; 0x1094
    call ds_aztec_csav               ; 0x1097
    lea ax, word [bp - 0x0050]       ; 0x109a
    push ax                          ; 0x109d
    push word [bp + 0x4]             ; 0x109e
    call ds_app_mem_0782             ; 0x10a1
    add sp, byte 4                   ; 0x10a4
    lea ax, word [bp - 0x0050]       ; 0x10a7
    push ax                          ; 0x10aa
    call api_idx_0008_2              ; 0x10ab
    pop cx                           ; 0x10ae
    ret                              ; 0x10af
loc_10b0:
    mov ax, 0                        ; 0x10b0
    call ds_aztec_csav               ; 0x10b3
    mov ax, 0x248                    ; 0x10b6
    imul word [bp + 0x4]             ; 0x10b9
    mov bx, ax                       ; 0x10bc
    cmp byte [bx + 0x5e2f], 3        ; 0x10be
    jae short @..local.l19           ; 0x10c3
    mov al, byte [bx + 0x5e2c]       ; 0x10c5
    sub ah, ah                       ; 0x10c9
    add ax, strict word 8            ; 0x10cb
    push ax                          ; 0x10ce
    call ds_app_0a27                 ; 0x10cf
    pop cx                           ; 0x10d2
@..local.l19:
    mov ax, 0x248                    ; 0x10d3
    imul word [bp + 0x4]             ; 0x10d6
    mov bx, ax                       ; 0x10d9
    mov byte [bx + 0x5e2f], 3        ; 0x10db
    mov word [bx + 0x5c0c], 0        ; 0x10e0
    mov word [bx + 0x5c10], 0        ; 0x10e6
    cmp word [bp + 0x6], byte 0      ; 0x10ec
    jle short @..local.l20           ; 0x10f0
    mov ax, 1                        ; 0x10f2
    push ax                          ; 0x10f5
    push word [bp + 0x4]             ; 0x10f6
    call ds_app_1d81                 ; 0x10f9
    add sp, byte 4                   ; 0x10fc
    cmp word [bp + 0x6], byte 1      ; 0x10ff
    jle short @..local.l20           ; 0x1103
    mov ax, 8                        ; 0x1105
    push ax                          ; 0x1108
    call ds_app_09a5                 ; 0x1109
    pop cx                           ; 0x110c
@..local.l20:
    ret                              ; 0x110d
