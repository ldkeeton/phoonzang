; auto-generated
ds_app_2bed: ; Aztec csav frame=0x0000
    mov ax, 0                        ; 0x2bed
    call aztec_csav                  ; 0x2bf0
    cmp byte [bss_5985], 1           ; 0x2bf3
    je short @..ds_app_2bed.l1       ; 0x2bf8
    cmp byte [bss_5985], 3           ; 0x2bfa
    jbe short @..ds_app_2bed.l2      ; 0x2bff
@..ds_app_2bed.l1:
    cmp byte [bss_597f], 0           ; 0x2c01
    jbe short @..ds_app_2bed.l2      ; 0x2c06
    mov ax, 1                        ; 0x2c08
    jmp short @..ds_app_2bed.l3      ; 0x2c0b
@..ds_app_2bed.l2:
    mov ax, 0                        ; 0x2c0d
@..ds_app_2bed.l3:
    ret                              ; 0x2c10
