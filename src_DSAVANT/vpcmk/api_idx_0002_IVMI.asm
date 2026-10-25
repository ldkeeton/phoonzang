; auto-generated
api_idx_0002_IVMI:
    mov ax, 0xfffe                   ; 0x626e
    call aztec_csav                  ; 0x6271
    mov ax, 0x248                    ; 0x6274
    imul word [bp + 0x4]             ; 0x6277
    mov bx, ax                       ; 0x627a
    mov byte [bx + party_records + pc_rec.f_0246], 0x64 ; 0x627c
    push word [bp + 0x4]             ; 0x6281
    call api_idx_000a_HMMT           ; 0x6284
    pop cx                           ; 0x6287
    push word [bp + 0x4]             ; 0x6288
    call api_idx_0004_QSJP           ; 0x628b
    pop cx                           ; 0x628e
    mov ax, 0x248                    ; 0x628f
    imul word [bp + 0x4]             ; 0x6292
    mov bx, ax                       ; 0x6295
    mov byte [bx + party_records + pc_rec.attack], 0 ; 0x6297
    mov byte [bx + party_records + pc_rec.defense], 0 ; 0x629c
    mov byte [bx + party_records + pc_rec.f_023f], 0 ; 0x62a1
    mov byte [bx + party_records + pc_rec.f_023a], 0 ; 0x62a6
    mov word [bx + party_records + pc_rec.power_cap], 1 ; 0x62ab
    mov word [bx + party_records + pc_rec.f_0026], 1 ; 0x62b1
    mov word [bp - 0x0002], 0        ; 0x62b7
@..api_idx_0002_IVMI.l1:
    mov ax, 0x248                    ; 0x62bc
    imul word [bp + 0x4]             ; 0x62bf
    add ax, word [bp - 0x0002]       ; 0x62c2
    mov bx, ax                       ; 0x62c5
    mov byte [bx + party_records + pc_rec.order], 0xff ; 0x62c7
    inc word [bp - 0x0002]           ; 0x62cc
    mov ax, word [bp - 0x0002]       ; 0x62cf
    cmp ax, strict word 8            ; 0x62d2
    jl short @..api_idx_0002_IVMI.l1 ; 0x62d5
    push word [bp + 0x4]             ; 0x62d7
    call api_idx_0004_GHPT           ; 0x62da
    pop cx                           ; 0x62dd
    mov ax, 0x248                    ; 0x62de
    imul word [bp + 0x4]             ; 0x62e1
    mov bx, ax                       ; 0x62e4
    mov byte [bx + party_records + pc_rec.f_0243], 1 ; 0x62e6
    mov byte [bx + party_records + pc_rec.f_0244], 1 ; 0x62eb
    mov al, byte [bx + party_records + pc_rec.stat + 0x5] ; 0x62f0
    inc al                           ; 0x62f4
    mov byte [bx + party_records + pc_rec.f_0245], al ; 0x62f6
    ret                              ; 0x62fa
