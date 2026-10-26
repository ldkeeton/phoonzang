; auto-generated
sum_page_cell_values: ; Aztec csav frame=0x0004
    mov ax, 0xfffc                   ; 0x17d6
    call aztec_csav                  ; 0x17d9
    mov ax, 0x248                    ; 0x17dc
    imul word [bp + 4]               ; 0x17df
    mov bx, ax                       ; 0x17e2
    mov word [bx + party_records + pc_rec.power_total], 0 ; 0x17e4
    mov word [bp - 4], 0             ; 0x17ea
@..sum_page_cell_values.l1:
    mov word [bp - 2], 0             ; 0x17ef
@..sum_page_cell_values.l2:
    mov ax, 0x248                    ; 0x17f4
    imul word [bp + 4]               ; 0x17f7
    push ax                          ; 0x17fa
    mov ax, 0x78                     ; 0x17fb
    imul word [bp - 4]               ; 0x17fe
    mov cx, ax                       ; 0x1801
    pop ax                           ; 0x1803
    add ax, cx                       ; 0x1804
    push ax                          ; 0x1806
    mov ax, 0xc                      ; 0x1807
    imul word [bp - 2]               ; 0x180a
    mov cx, ax                       ; 0x180d
    pop ax                           ; 0x180f
    add ax, cx                       ; 0x1810
    mov bx, ax                       ; 0x1812
    cmp word [bx + party_records + pc_rec.cell], byte 0 ; 0x1814
    jle short @..sum_page_cell_values.l3 ; 0x1819
    push word [bp - 2]               ; 0x181b
    push word [bp - 4]               ; 0x181e
    push word [bp + 4]               ; 0x1821
    call cell_power                  ; 0x1824
    add sp, byte 6                   ; 0x1827
    push ax                          ; 0x182a
    mov ax, 0x248                    ; 0x182b
    imul word [bp + 4]               ; 0x182e
    mov bx, ax                       ; 0x1831
    pop ax                           ; 0x1833
    add word [bx + party_records + pc_rec.power_total], ax ; 0x1834
@..sum_page_cell_values.l3:
    inc word [bp - 2]                ; 0x1838
    mov ax, word [bp - 2]            ; 0x183b
    cmp ax, strict word 0xa          ; 0x183e
    jl short @..sum_page_cell_values.l2 ; 0x1841
    inc word [bp - 4]                ; 0x1843
    mov ax, word [bp - 4]            ; 0x1846
    cmp ax, strict word 2            ; 0x1849
    jl short @..sum_page_cell_values.l1 ; 0x184c
    ret                              ; 0x184e
