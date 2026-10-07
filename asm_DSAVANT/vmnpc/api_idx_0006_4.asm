api_idx_0006_4:
    mov ax, 0xfffa                   ; 0x573e
    db 0xe8, 0xc7, 0x9c ; call 0xf40b
    call loc_10b6                    ; 0x5744
    mov word [bp - 0x0006], 0        ; 0x5747
@..api_idx_0006_4.l1:
    push word [bp - 0x0006]          ; 0x574c
    push word [data_9cd2]            ; 0x574f
    mov ax, 1                        ; 0x5753
    push ax                          ; 0x5756
    push ax                          ; 0x5757
    mov ax, 0x629                    ; 0x5758
    push ax                          ; 0x575b
    push word [bp + 0x4]             ; 0x575c
    call api_idx_0038_3              ; 0x575f
    add sp, byte 0x0c                ; 0x5762
    mov word [bp - 0x0002], ax       ; 0x5765
    mov ax, word [data_904e]         ; 0x5768
    mov word [bp - 0x0004], ax       ; 0x576b
    cmp word [bp - 0x0002], byte 1   ; 0x576e
    jne short @..api_idx_0006_4.l3   ; 0x5772
    cmp ax, strict word 0xffff       ; 0x5774
    je short @..api_idx_0006_4.l3    ; 0x5777
    push ax                          ; 0x5779
    push word [bp + 0x4]             ; 0x577a
    call api_idx_0008_4              ; 0x577d
    add sp, byte 4                   ; 0x5780
    test ax, ax                      ; 0x5783
    je short @..api_idx_0006_4.l2    ; 0x5785
    call loc_47b9                    ; 0x5787
    mov ax, 1                        ; 0x578a
    ret                              ; 0x578d
