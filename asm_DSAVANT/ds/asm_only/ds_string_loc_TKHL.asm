; auto-generated
; asm only
ds_string_loc_TKHL:
    test al, al                      ; 0x4882
    je short @..ds_string_loc_TKHL.l1 ; 0x4884
    call ds_loc_NJTI                 ; 0x4886
    jmp short ds_loc_KNJH            ; 0x4889
@..ds_string_loc_TKHL.l1:
    mov ax, word [bp - 0x0002]       ; 0x488b
    pop si                           ; 0x488e
    pop di                           ; 0x488f
    mov sp, bp                       ; 0x4890
    pop bp                           ; 0x4892
    ret                              ; 0x4893
ds_loc_JJKK:
    mov byte [bp - 0x000c], 0x20     ; 0x4894
    mov byte [bp - 0x000e], 0        ; 0x4898
    mov byte [bp - 0x000d], 0        ; 0x489c
    mov word [bp - 0x0006], 0xffff   ; 0x48a0
ds_loc_JHJV:
    lodsb                            ; 0x48a5
    cmp al, 0x2d                     ; 0x48a6
    jne short ds_loc_JKSS            ; 0x48a8
    or byte [bp - 0x000b], 8         ; 0x48aa
    jmp short ds_loc_JHJV            ; 0x48ae
ds_loc_JKSS:
    cmp al, 0x2b                     ; 0x48b0
    jne short ds_loc_INOQ            ; 0x48b2
    mov byte [bp - 0x000e], 0x2b     ; 0x48b4
    jmp short ds_loc_JHJV            ; 0x48b8
ds_loc_INOQ:
    cmp al, 0x20                     ; 0x48ba
    jne short ds_loc_OQNK            ; 0x48bc
    cmp byte [bp - 0x000e], 0        ; 0x48be
    jne short ds_loc_JHJV            ; 0x48c2
    mov byte [bp - 0x000e], 0x20     ; 0x48c4
    jmp short ds_loc_JHJV            ; 0x48c8
ds_loc_OQNK:
    cmp al, 0x23                     ; 0x48ca
    jne short ds_loc_KLHI            ; 0x48cc
    or byte [bp - 0x000b], 0x10      ; 0x48ce
    jmp short ds_loc_JHJV            ; 0x48d2
ds_loc_KLHI:
    cmp al, 0x30                     ; 0x48d4
    jne short ds_loc_HIQV            ; 0x48d6
    mov byte [bp - 0x000c], 0x30     ; 0x48d8
    lodsb                            ; 0x48dc
ds_loc_HIQV:
    call ds_string_loc_TRQP          ; 0x48dd
    test dx, dx                      ; 0x48e0
    jns short ds_loc_NLTU            ; 0x48e2
    neg dx                           ; 0x48e4
    or byte [bp - 0x000b], 8         ; 0x48e6
ds_loc_NLTU:
    mov word [bp - 0x0004], dx       ; 0x48ea
    cmp al, 0x2e                     ; 0x48ed
    jne short ds_loc_RMVI            ; 0x48ef
    lodsb                            ; 0x48f1
    call ds_string_loc_TRQP          ; 0x48f2
    mov word [bp - 0x0006], dx       ; 0x48f5
ds_loc_RMVI:
    mov di, cs                       ; 0x48f8
    mov es, di                       ; 0x48fa
ds_loc_UUPK:
    mov di, 0x460d                   ; 0x48fc
    mov cx, 0x15                     ; 0x48ff
    repne scasb                      ; 0x4902
    sub di, strict word 0x460e       ; 0x4904
    shl di, 1                        ; 0x4908
    jmp [cs:di + jumptable_4822 - IMAGE_BASE] ; 0x490a
