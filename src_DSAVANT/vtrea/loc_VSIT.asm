; auto-generated
loc_VSIT:
    mov ax, 0                        ; 0x7eba
    call aztec_csav                  ; 0x7ebd
    mov ax, 0                        ; 0x7ec0
    push ax                          ; 0x7ec3
    mov ax, 1                        ; 0x7ec4
    push ax                          ; 0x7ec7
    push word [bss_9066]             ; 0x7ec8
    push word [bss_9064]             ; 0x7ecc
    call thunk_12                    ; 0x7ed0
    add sp, byte 8                   ; 0x7ed3
    mov ax, 0                        ; 0x7ed6
    push ax                          ; 0x7ed9
    mov ax, 1                        ; 0x7eda
    push ax                          ; 0x7edd
    push word [bss_9062]             ; 0x7ede
    push word [bss_9060]             ; 0x7ee2
    call thunk_12                    ; 0x7ee6
    add sp, byte 8                   ; 0x7ee9
    call api_idx_000e_TIOP           ; 0x7eec
    mov ax, 0xf                      ; 0x7eef
    push ax                          ; 0x7ef2
    call ds_app_thunk_26_VNHP        ; 0x7ef3
    pop cx                           ; 0x7ef6
    mov ax, 7                        ; 0x7ef7
    push ax                          ; 0x7efa
    call ds_app_thunk_26_VNHP        ; 0x7efb
    pop cx                           ; 0x7efe
    mov ax, 5                        ; 0x7eff
    push ax                          ; 0x7f02
    call ds_app_SOQK                 ; 0x7f03
    pop cx                           ; 0x7f06
    mov ax, 0                        ; 0x7f07
    push ax                          ; 0x7f0a
    call api_idx_000a_TIPG           ; 0x7f0b
    pop cx                           ; 0x7f0e
    mov ax, 1                        ; 0x7f0f
    push ax                          ; 0x7f12
    call ds_app_thunk_26_VNHP        ; 0x7f13
    pop cx                           ; 0x7f16
    mov ax, 2                        ; 0x7f17
    push ax                          ; 0x7f1a
    call ds_app_thunk_26_VNHP        ; 0x7f1b
    pop cx                           ; 0x7f1e
    mov ax, 1                        ; 0x7f1f
    push ax                          ; 0x7f22
    push word [bss_8d0c]             ; 0x7f23
    push word [bss_8d0a]             ; 0x7f27
    call thunk_13                    ; 0x7f2b
    add sp, byte 6                   ; 0x7f2e
    mov ax, 1                        ; 0x7f31
    push ax                          ; 0x7f34
    push word [bss_8d10]             ; 0x7f35
    push word [bss_8d0e]             ; 0x7f39
    call thunk_13                    ; 0x7f3d
    add sp, byte 6                   ; 0x7f40
    mov ax, 0xc6                     ; 0x7f43
    push ax                          ; 0x7f46
    mov ax, 0x109                    ; 0x7f47
    push ax                          ; 0x7f4a
    mov ax, 0x92                     ; 0x7f4b
    push ax                          ; 0x7f4e
    mov ax, 0x37                     ; 0x7f4f
    push ax                          ; 0x7f52
    call ds_app_io_VRKV              ; 0x7f53
    add sp, byte 8                   ; 0x7f56
    ret                              ; 0x7f59
