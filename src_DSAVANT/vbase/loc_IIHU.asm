; auto-generated
loc_IIHU:
    mov ax, 0                        ; 0x4727
    call aztec_csav                  ; 0x472a
    mov ax, word [bp + 8]            ; 0x472d
    add ax, strict word 6            ; 0x4730
    push ax                          ; 0x4733
    mov ax, 6                        ; 0x4734
    imul word [bp + 0xa]             ; 0x4737
    add ax, word [bp + 6]            ; 0x473a
    inc ax                           ; 0x473d
    inc ax                           ; 0x473e
    push ax                          ; 0x473f
    push word [bp + 8]               ; 0x4740
    push word [bp + 6]               ; 0x4743
    call draw_inset_panel            ; 0x4746
    add sp, byte 8                   ; 0x4749
    mov ax, 1                        ; 0x474c
    push ax                          ; 0x474f
    mov ax, word [bp + 8]            ; 0x4750
    add ax, strict word 6            ; 0x4753
    push ax                          ; 0x4756
    mov ax, 6                        ; 0x4757
    imul word [bp + 0xa]             ; 0x475a
    add ax, word [bp + 6]            ; 0x475d
    inc ax                           ; 0x4760
    inc ax                           ; 0x4761
    push ax                          ; 0x4762
    push word [bp + 8]               ; 0x4763
    push word [bp + 6]               ; 0x4766
    call call_fill_area              ; 0x4769
    add sp, byte 0xa                 ; 0x476c
    mov ax, word [bp + 8]            ; 0x476f
    inc ax                           ; 0x4772
    push ax                          ; 0x4773
    mov ax, word [bp + 6]            ; 0x4774
    inc ax                           ; 0x4777
    inc ax                           ; 0x4778
    push ax                          ; 0x4779
    call call_set_text_pos           ; 0x477a
    add sp, byte 4                   ; 0x477d
    mov ax, 1                        ; 0x4780
    push ax                          ; 0x4783
    mov ax, 0                        ; 0x4784
    push ax                          ; 0x4787
    call call_set_text_color         ; 0x4788
    add sp, byte 4                   ; 0x478b
    mov ax, 0                        ; 0x478e
    push ax                          ; 0x4791
    push word [bp + 4]               ; 0x4792
    call draw_text_glyphs            ; 0x4795
    add sp, byte 4                   ; 0x4798
    mov ax, word [bp + 8]            ; 0x479b
    add ax, strict word 6            ; 0x479e
    push ax                          ; 0x47a1
    mov ax, 6                        ; 0x47a2
    imul word [bp + 0xa]             ; 0x47a5
    add ax, word [bp + 6]            ; 0x47a8
    inc ax                           ; 0x47ab
    inc ax                           ; 0x47ac
    push ax                          ; 0x47ad
    push word [bp + 8]               ; 0x47ae
    push word [bp + 6]               ; 0x47b1
    call call_show_area              ; 0x47b4
    add sp, byte 8                   ; 0x47b7
    ret                              ; 0x47ba
