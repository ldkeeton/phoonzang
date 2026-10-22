; auto-generated
loc_SNOI:
    mov ax, 0                        ; 0x7d99
    call aztec_csav                  ; 0x7d9c
    call free_current_maze           ; 0x7d9f
    mov ax, 1                        ; 0x7da2
    push ax                          ; 0x7da5
    mov ax, 5                        ; 0x7da6
    push ax                          ; 0x7da9
    push ax                          ; 0x7daa
    call load_sound_file             ; 0x7dab
    add sp, byte 6                   ; 0x7dae
    mov ax, 7                        ; 0x7db1
    push ax                          ; 0x7db4
    mov ax, 9                        ; 0x7db5
    push ax                          ; 0x7db8
    call ds_app_file_TSNH            ; 0x7db9
    add sp, byte 4                   ; 0x7dbc
    mov ax, 0xf                      ; 0x7dbf
    push ax                          ; 0x7dc2
    mov ax, 0xd                      ; 0x7dc3
    push ax                          ; 0x7dc6
    call ds_app_file_TSNH            ; 0x7dc7
    add sp, byte 4                   ; 0x7dca
    mov ax, 0                        ; 0x7dcd
    push ax                          ; 0x7dd0
    mov ax, 2                        ; 0x7dd1
    push ax                          ; 0x7dd4
    mov ax, 0x8f                     ; 0x7dd5
    push ax                          ; 0x7dd8
    mov ax, 0xf7                     ; 0x7dd9
    push ax                          ; 0x7ddc
    mov ax, 0x21                     ; 0x7ddd
    push ax                          ; 0x7de0
    mov ax, 0x48                     ; 0x7de1
    push ax                          ; 0x7de4
    call gfx_cache_area              ; 0x7de5
    add sp, byte 0x0c                ; 0x7de8
    mov word [bss_9062], dx          ; 0x7deb
    mov word [bss_9060], ax          ; 0x7def
    cmp word [bss_906a], byte 0      ; 0x7df2
    je short @..loc_SNOI.l1          ; 0x7df7
    mov ax, 1                        ; 0x7df9
    push ax                          ; 0x7dfc
    push word [bss_9068]             ; 0x7dfd
    call restore_saved_screen        ; 0x7e01
    add sp, byte 4                   ; 0x7e04
    mov word [bss_906a], 0           ; 0x7e07
@..loc_SNOI.l1:
    mov ax, 0                        ; 0x7e0d
    push ax                          ; 0x7e10
    mov ax, 2                        ; 0x7e11
    push ax                          ; 0x7e14
    mov ax, 0x8f                     ; 0x7e15
    push ax                          ; 0x7e18
    mov ax, 0xf7                     ; 0x7e19
    push ax                          ; 0x7e1c
    mov ax, 0x21                     ; 0x7e1d
    push ax                          ; 0x7e20
    mov ax, 0x48                     ; 0x7e21
    push ax                          ; 0x7e24
    call gfx_cache_area              ; 0x7e25
    add sp, byte 0x0c                ; 0x7e28
    mov word [bss_9066], dx          ; 0x7e2b
    mov word [bss_9064], ax          ; 0x7e2f
    call api_idx_000e_TIOP           ; 0x7e32
    mov ax, 0xc6                     ; 0x7e35
    push ax                          ; 0x7e38
    mov ax, 0x127                    ; 0x7e39
    push ax                          ; 0x7e3c
    mov ax, 0xa5                     ; 0x7e3d
    push ax                          ; 0x7e40
    mov ax, 0x19                     ; 0x7e41
    push ax                          ; 0x7e44
    call gfx_save_area               ; 0x7e45
    add sp, byte 8                   ; 0x7e48
    mov word [bss_8d10], dx          ; 0x7e4b
    mov word [bss_8d0e], ax          ; 0x7e4f
    mov ax, 0xa4                     ; 0x7e52
    push ax                          ; 0x7e55
    mov ax, 0xff                     ; 0x7e56
    push ax                          ; 0x7e59
    mov ax, 0x92                     ; 0x7e5a
    push ax                          ; 0x7e5d
    mov ax, 0x41                     ; 0x7e5e
    push ax                          ; 0x7e61
    call gfx_save_area               ; 0x7e62
    add sp, byte 8                   ; 0x7e65
    mov word [bss_8d0c], dx          ; 0x7e68
    mov word [bss_8d0a], ax          ; 0x7e6c
    mov ax, 1                        ; 0x7e6f
    push ax                          ; 0x7e72
    mov ax, 2                        ; 0x7e73
    push ax                          ; 0x7e76
    call ds_app_file_TSNH            ; 0x7e77
    add sp, byte 4                   ; 0x7e7a
    mov ax, 2                        ; 0x7e7d
    push ax                          ; 0x7e80
    mov ax, 3                        ; 0x7e81
    push ax                          ; 0x7e84
    call ds_app_file_TSNH            ; 0x7e85
    add sp, byte 4                   ; 0x7e88
    mov word [bss_91d4], 1           ; 0x7e8b
    mov word [party_redraw_interval], 5 ; 0x7e91
    mov word [bss_911c], 0x8f        ; 0x7e97
    call flush_keyboard              ; 0x7e9d
    mov word [bss_9126], 0           ; 0x7ea0
    cmp word [bp + 0x4], byte 0      ; 0x7ea6
    jle short @..loc_SNOI.l2         ; 0x7eaa
    mov ax, bss_9128                 ; 0x7eac
    push ax                          ; 0x7eaf
    push word [bp + 0x4]             ; 0x7eb0
    call load_message_string         ; 0x7eb3
    add sp, byte 4                   ; 0x7eb6
@..loc_SNOI.l2:
    ret                              ; 0x7eb9
