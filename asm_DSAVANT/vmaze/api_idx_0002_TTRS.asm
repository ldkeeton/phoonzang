; auto-generated
api_idx_0002_TTRS:
    mov ax, 0xfffe                   ; 0x0106
    call aztec_csav                  ; 0x0109
    cmp word [bss_830c], byte 0x17   ; 0x010c
    jne short @..api_idx_0002_TTRS.l1 ; 0x0111
    cmp word [bss_8f3e], byte 0x0f   ; 0x0113
    jne short @..api_idx_0002_TTRS.l1 ; 0x0118
    ret                              ; 0x011a
@..api_idx_0002_TTRS.l1:
    mov ax, 3                        ; 0x011b
    push ax                          ; 0x011e
    call ds_app_GGUI                 ; 0x011f
    pop cx                           ; 0x0122
    cmp ax, strict word 2            ; 0x0123
    jne short @..api_idx_0002_TTRS.l2 ; 0x0126
    cmp word [bss_9196], byte 0      ; 0x0128
    je short @..api_idx_0002_TTRS.l2 ; 0x012d
    mov ax, 0xf                      ; 0x012f
    jmp short @..api_idx_0002_TTRS.l3 ; 0x0132
@..api_idx_0002_TTRS.l2:
    mov ax, 0xe                      ; 0x0134
@..api_idx_0002_TTRS.l3:
    mov word [bp - 0x0002], ax       ; 0x0137
    push ax                          ; 0x013a
    call ds_app_IPOK                 ; 0x013b
    pop cx                           ; 0x013e
    ret                              ; 0x013f
loc_KNIO:
    mov ax, 0                        ; 0x0140
    call aztec_csav                  ; 0x0143
    mov ax, 1                        ; 0x0146
    push ax                          ; 0x0149
    call thunk_17                    ; 0x014a
    pop cx                           ; 0x014d
    cmp word [bss_9194], byte 0      ; 0x014e
    je short @..loc_KNIO.l1          ; 0x0153
    mov ax, 0xe                      ; 0x0155
    push ax                          ; 0x0158
    call ds_app_KKKO                 ; 0x0159
    pop cx                           ; 0x015c
@..loc_KNIO.l1:
    cmp word [bss_9196], byte 0      ; 0x015d
    je short @..loc_KNIO.l2          ; 0x0162
    mov ax, 0xf                      ; 0x0164
    push ax                          ; 0x0167
    call ds_app_KKKO                 ; 0x0168
    pop cx                           ; 0x016b
@..loc_KNIO.l2:
    mov word [bss_9194], 0           ; 0x016c
    mov word [bss_9196], 0           ; 0x0172
    mov word [bss_9198], 0           ; 0x0178
    ret                              ; 0x017e
