; auto-generated
api_idx_0002_SKSN:
    mov ax, 0xfffe                   ; 0x133d
    call aztec_csav                  ; 0x1340
    cmp word [bss_906a], byte 0      ; 0x1343
    je short @..api_idx_0002_SKSN.l1 ; 0x1348
    mov ax, 1                        ; 0x134a
    push ax                          ; 0x134d
    push word [bss_9068]             ; 0x134e
    call draw_restore_saved_screen   ; 0x1352
    add sp, byte 4                   ; 0x1355
    mov word [bss_906a], 0           ; 0x1358
@..api_idx_0002_SKSN.l1:
    mov ax, 1                        ; 0x135e
    push ax                          ; 0x1361
    push word [bss_8d08]             ; 0x1362
    push word [bss_8d06]             ; 0x1366
    call gfx_restore_area            ; 0x136a
    add sp, byte 6                   ; 0x136d
    mov word [bss_69c8], 0           ; 0x1370
    mov word [bp - 0x0002], 0        ; 0x1376
@..api_idx_0002_SKSN.l2:
    mov ax, 1                        ; 0x137b
    push ax                          ; 0x137e
    mov ax, word [bp - 0x0002]       ; 0x137f
    shl ax, 1                        ; 0x1382
    shl ax, 1                        ; 0x1384
    mov bx, ax                       ; 0x1386
    push word [bx + 0x69a6]          ; 0x1388
    push word [bx + 0x69a4]          ; 0x138c
    call gfx_restore_area            ; 0x1390
    add sp, byte 6                   ; 0x1393
    inc word [bp - 0x0002]           ; 0x1396
    mov ax, word [bp - 0x0002]       ; 0x1399
    cmp ax, strict word 6            ; 0x139c
    jl short @..api_idx_0002_SKSN.l2 ; 0x139f
    mov word [bp - 0x0002], 0        ; 0x13a1
@..api_idx_0002_SKSN.l3:
    mov ax, 1                        ; 0x13a6
    push ax                          ; 0x13a9
    mov ax, word [bp - 0x0002]       ; 0x13aa
    shl ax, 1                        ; 0x13ad
    shl ax, 1                        ; 0x13af
    mov bx, ax                       ; 0x13b1
    push word [bx - 0x7d2e]          ; 0x13b3
    push word [bx - 0x7d30]          ; 0x13b7
    call gfx_restore_area            ; 0x13bb
    add sp, byte 6                   ; 0x13be
    inc word [bp - 0x0002]           ; 0x13c1
    mov ax, word [bp - 0x0002]       ; 0x13c4
    cmp ax, strict word 6            ; 0x13c7
    jl short @..api_idx_0002_SKSN.l3 ; 0x13ca
    call ds_app_VKRR                 ; 0x13cc
    mov ax, 0                        ; 0x13cf
    push ax                          ; 0x13d2
    call ds_app_gfx_entry_22_VNHP    ; 0x13d3
    pop cx                           ; 0x13d6
    mov ax, 3                        ; 0x13d7
    push ax                          ; 0x13da
    call ds_app_gfx_entry_22_VNHP    ; 0x13db
    pop cx                           ; 0x13de
    mov ax, 4                        ; 0x13df
    push ax                          ; 0x13e2
    call ds_app_gfx_entry_22_VNHP    ; 0x13e3
    pop cx                           ; 0x13e6
    mov ax, 6                        ; 0x13e7
    push ax                          ; 0x13ea
    call ds_app_gfx_entry_22_VNHP    ; 0x13eb
    pop cx                           ; 0x13ee
    mov ax, 8                        ; 0x13ef
    push ax                          ; 0x13f2
    call ds_app_gfx_entry_22_VNHP    ; 0x13f3
    pop cx                           ; 0x13f6
    mov ax, 0xe                      ; 0x13f7
    push ax                          ; 0x13fa
    call ds_app_gfx_entry_22_VNHP    ; 0x13fb
    pop cx                           ; 0x13fe
    mov word [bss_830a], 2           ; 0x13ff
    call bios_kbd_check              ; 0x1405
    ret                              ; 0x1408
