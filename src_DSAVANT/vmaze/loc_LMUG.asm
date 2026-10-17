; auto-generated
loc_LMUG:
    mov ax, 0                        ; 0x0ea6
    call aztec_csav                  ; 0x0ea9
    les bx, word [dseg_0002]         ; 0x0eac
    mov ax, word [es:bx]             ; 0x0eb0
    mov dx, word [es:bx + 0x2]       ; 0x0eb3
    cmp dx, word [bss_919c]          ; 0x0eb7
    jl short @..loc_LMUG.l1          ; 0x0ebb
    jne short @..loc_LMUG.l2         ; 0x0ebd
    cmp ax, word [bss_919a]          ; 0x0ebf
    ja short @..loc_LMUG.l2          ; 0x0ec3
@..loc_LMUG.l1:
    jmp short @..loc_LMUG.l6         ; 0x0ec5
@..loc_LMUG.l2:
    call api_idx_0002_VUIJ           ; 0x0ec7
    mov ax, 0x3c                     ; 0x0eca
    push ax                          ; 0x0ecd
    call ds_app_PUNN                 ; 0x0ece
    pop cx                           ; 0x0ed1
    cwd                              ; 0x0ed2
    push ax                          ; 0x0ed3
    push dx                          ; 0x0ed4
    cmp word [bss_5b6e], byte 3      ; 0x0ed5
    je short @..loc_LMUG.l3          ; 0x0eda
    cmp word [bss_5b6e], byte 5      ; 0x0edc
    jne short @..loc_LMUG.l4         ; 0x0ee1
@..loc_LMUG.l3:
    mov ax, 0x3c                     ; 0x0ee3
    jmp short @..loc_LMUG.l5         ; 0x0ee6
@..loc_LMUG.l4:
    mov ax, 0                        ; 0x0ee8
@..loc_LMUG.l5:
    cwd                              ; 0x0eeb
    mov cx, ax                       ; 0x0eec
    mov bx, dx                       ; 0x0eee
    pop dx                           ; 0x0ef0
    pop ax                           ; 0x0ef1
    add ax, cx                       ; 0x0ef2
    adc dx, bx                       ; 0x0ef4
    les bx, word [dseg_0002]         ; 0x0ef6
    mov cx, word [es:bx]             ; 0x0efa
    mov bx, word [es:bx + 0x2]       ; 0x0efd
    add ax, cx                       ; 0x0f01
    adc dx, bx                       ; 0x0f03
    mov word [bss_919c], dx          ; 0x0f05
    mov word [bss_919a], ax          ; 0x0f09
    jmp short @..loc_LMUG.l7         ; 0x0f0c
@..loc_LMUG.l6:
    cmp word [bp + 0x4], byte 0      ; 0x0f0e
    je short @..loc_LMUG.l7          ; 0x0f12
    mov ax, 0xa                      ; 0x0f14
    push ax                          ; 0x0f17
    call ds_leaf_loc_UJPS            ; 0x0f18
    pop cx                           ; 0x0f1b
@..loc_LMUG.l7:
    ret                              ; 0x0f1c
loc_HVLG:
    mov ax, 0                        ; 0x0f1d
    call aztec_csav                  ; 0x0f20
    les bx, word [dseg_0002]         ; 0x0f23
    mov ax, word [es:bx]             ; 0x0f27
    mov dx, word [es:bx + 0x2]       ; 0x0f2a
    sub ax, word [bss_908a]          ; 0x0f2e
    sbb dx, word [bss_908c]          ; 0x0f32
    push ax                          ; 0x0f36
    push dx                          ; 0x0f37
    mov ax, word [bss_9192]          ; 0x0f38
    cwd                              ; 0x0f3b
    mov cx, ax                       ; 0x0f3c
    mov bx, dx                       ; 0x0f3e
    pop dx                           ; 0x0f40
    pop ax                           ; 0x0f41
    cmp dx, bx                       ; 0x0f42
    jl short @..loc_HVLG.l1          ; 0x0f44
    jne short @..loc_HVLG.l2         ; 0x0f46
    cmp ax, cx                       ; 0x0f48
    jae short @..loc_HVLG.l2         ; 0x0f4a
@..loc_HVLG.l1:
    jmp short @..loc_HVLG.l3         ; 0x0f4c
@..loc_HVLG.l2:
    les bx, word [dseg_0002]         ; 0x0f4e
    mov ax, word [es:bx]             ; 0x0f52
    mov dx, word [es:bx + 0x2]       ; 0x0f55
    mov word [bss_908c], dx          ; 0x0f59
    mov word [bss_908a], ax          ; 0x0f5d
    mov ax, 1                        ; 0x0f60
    ret                              ; 0x0f63
@..loc_HVLG.l3:
    mov ax, 0                        ; 0x0f64
    ret                              ; 0x0f67
