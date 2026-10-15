; auto-generated
loc_PISK:
    mov ax, 0                        ; 0x2d94
    call aztec_csav                  ; 0x2d97
    mov ax, word [bp + 0x6]          ; 0x2d9a
    dec ax                           ; 0x2d9d
    push ax                          ; 0x2d9e
    push word [bp + 0x4]             ; 0x2d9f
    lea ax, word [bp + 0xc]          ; 0x2da2
    push ax                          ; 0x2da5
    lea ax, word [bp + 0xa]          ; 0x2da6
    push ax                          ; 0x2da9
    lea ax, word [bp + 0x8]          ; 0x2daa
    push ax                          ; 0x2dad
    call api_idx_0004_HROJ           ; 0x2dae
    add sp, byte 0x0a                ; 0x2db1
    test ax, ax                      ; 0x2db4
    je short @..loc_PISK.l5          ; 0x2db6
    mov ax, word [bss_5b6e]          ; 0x2db8
    mov cx, 2                        ; 0x2dbb
    cwd                              ; 0x2dbe
    idiv cx                          ; 0x2dbf
    mov ax, dx                       ; 0x2dc1
    test ax, ax                      ; 0x2dc3
    je short @..loc_PISK.l1          ; 0x2dc5
    mov ax, cx                       ; 0x2dc7
    jmp short @..loc_PISK.l4         ; 0x2dc9
@..loc_PISK.l1:
    mov ax, word [bss_5b6e]          ; 0x2dcb
    cmp ax, strict word 6            ; 0x2dce
    je short @..loc_PISK.l2          ; 0x2dd1
    cmp word [bss_91a6], byte 0      ; 0x2dd3
    je short @..loc_PISK.l3          ; 0x2dd8
@..loc_PISK.l2:
    mov ax, 0                        ; 0x2dda
    jmp short @..loc_PISK.l4         ; 0x2ddd
@..loc_PISK.l3:
    mov ax, 4                        ; 0x2ddf
@..loc_PISK.l4:
    ret                              ; 0x2de2
@..loc_PISK.l5:
    mov ax, 4                        ; 0x2de3
    push ax                          ; 0x2de6
    mov ax, word [bp + 0xc]          ; 0x2de7
    mov cx, 6                        ; 0x2dea
    shl ax, cl                       ; 0x2ded
    mov cx, word [bp + 0xa]          ; 0x2def
    shl cx, 1                        ; 0x2df2
    shl cx, 1                        ; 0x2df4
    shl cx, 1                        ; 0x2df6
    add ax, cx                       ; 0x2df8
    add ax, word [bp + 0x8]          ; 0x2dfa
    push ax                          ; 0x2dfd
    mov ax, word [bss_0e14]          ; 0x2dfe
    add ax, 0x90                     ; 0x2e01
    push ax                          ; 0x2e04
    call ds_leaf_loc_JIKQ            ; 0x2e05
    add sp, byte 6                   ; 0x2e08
    ret                              ; 0x2e0b
