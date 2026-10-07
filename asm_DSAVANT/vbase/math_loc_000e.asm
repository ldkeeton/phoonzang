math_loc_000e:
    mov ax, 0                        ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    cmp word [data_830a], byte 7     ; 0x0014
    jne short @..math_loc_000e.l1    ; 0x0019
    call api_idx_0002_3              ; 0x001b
@..math_loc_000e.l1:
    cmp word [data_830a], byte 4     ; 0x001e
    jne short @..math_loc_000e.l2    ; 0x0023
    call api_idx_004a_2              ; 0x0025
@..math_loc_000e.l2:
    cmp word [data_830a], byte 0x18  ; 0x0028
    jne short @..math_loc_000e.l3    ; 0x002d
    call api_idx_004a                ; 0x002f
@..math_loc_000e.l3:
    mov ax, 0                        ; 0x0032
    ret                              ; 0x0035
