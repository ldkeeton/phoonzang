; auto-generated
api_idx_0006_RKSL:
    mov ax, 0xfffa                   ; 0x573e
    call aztec_csav                  ; 0x5741
    call loc_UTQS                    ; 0x5744
    mov word [bp - 0x0006], 0        ; 0x5747
@..api_idx_0006_RKSL.l1:
    push word [bp - 0x0006]          ; 0x574c
    push word [bss_9cd2]             ; 0x574f
    mov ax, 1                        ; 0x5753
    push ax                          ; 0x5756
    push ax                          ; 0x5757
    mov ax, MSG_GP_1577              ; 0x5758
    push ax                          ; 0x575b
    push word [bp + 0x4]             ; 0x575c
    call api_idx_0038_LJOP           ; 0x575f
    add sp, byte 0x0c                ; 0x5762
    mov word [bp - 0x0002], ax       ; 0x5765
    mov ax, word [spell_dialog_result] ; 0x5768
    mov word [bp - 0x0004], ax       ; 0x576b
    cmp word [bp - 0x0002], byte 1   ; 0x576e
    jne short @..api_idx_0006_RKSL.l3 ; 0x5772
    cmp ax, strict word 0xffff       ; 0x5774
    je short @..api_idx_0006_RKSL.l3 ; 0x5777
    push ax                          ; 0x5779
    push word [bp + 0x4]             ; 0x577a
    call api_idx_0008_GUJV           ; 0x577d
    add sp, byte 4                   ; 0x5780
    test ax, ax                      ; 0x5783
    je short @..api_idx_0006_RKSL.l2 ; 0x5785
    call loc_GOMR                    ; 0x5787
    mov ax, 1                        ; 0x578a
    ret                              ; 0x578d
@..api_idx_0006_RKSL.l2:
    mov ax, word [bp - 0x0004]       ; 0x578e
    sub ax, word [bss_9ca6]          ; 0x5791
    mov word [bp - 0x0006], ax       ; 0x5795
@..api_idx_0006_RKSL.l3:
    mov word [bss_93d8], 0x8d        ; 0x5798
    call loc_UTQS                    ; 0x579e
    mov word [bss_93d8], 0x8f        ; 0x57a1
    cmp word [bp - 0x0002], byte 2   ; 0x57a7
    je short @..api_idx_0006_RKSL.l4 ; 0x57ab
    cmp word [bss_9cd2], byte 0      ; 0x57ad
    jg short @..api_idx_0006_RKSL.l1 ; 0x57b2
@..api_idx_0006_RKSL.l4:
    call loc_GOMR                    ; 0x57b4
    mov ax, 0                        ; 0x57b7
    ret                              ; 0x57ba
