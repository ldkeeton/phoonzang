; auto-generated
load_score_files: ; Aztec csav frame=0x00a8
    mov ax, 0xff58                   ; 0x2a2e
    call aztec_csav                  ; 0x2a31
    mov al, byte [video_mode]        ; 0x2a34
    sub ah, ah                       ; 0x2a37
    mov word [bp - 0xa8], ax         ; 0x2a39
    cmp ax, strict word 6            ; 0x2a3d
    jne short .forward1              ; 0x2a40
    mov word [bp - 0xa8], 4          ; 0x2a42
.forward1:
    mov ax, dseg_0be3                ; 0x2a48
    push ax                          ; 0x2a4b
    lea ax, word [bp - 0xa4]         ; 0x2a4c
    push ax                          ; 0x2a50
    call aztec_strcpy                ; 0x2a51
    add sp, byte 4                   ; 0x2a54
    mov ax, word [bp + 4]            ; 0x2a57
    mov cx, 0xa                      ; 0x2a5a
    cwd                              ; 0x2a5d
    idiv cx                          ; 0x2a5e
    add ax, strict word 0x30         ; 0x2a60
    mov byte [bp - 0x9f], al         ; 0x2a63
    add dx, byte 0x30                ; 0x2a67
    mov ax, dx                       ; 0x2a6a
    mov byte [bp - 0x9e], al         ; 0x2a6c
    lea ax, word [bp - 0xa4]         ; 0x2a70
    push ax                          ; 0x2a74
    lea ax, word [bp - 0x54]         ; 0x2a75
    push ax                          ; 0x2a78
    call aztec_strcpy                ; 0x2a79
    add sp, byte 4                   ; 0x2a7c
    mov ax, score_ext_csf            ; 0x2a7f
    push ax                          ; 0x2a82
    lea ax, word [bp - 0x54]         ; 0x2a83
    push ax                          ; 0x2a86
    call aztec_strcat                ; 0x2a87
    add sp, byte 4                   ; 0x2a8a
    mov ax, 0                        ; 0x2a8d
    push ax                          ; 0x2a90
    mov ax, 1                        ; 0x2a91
    push ax                          ; 0x2a94
    lea ax, word [bp - 0x54]         ; 0x2a95
    push ax                          ; 0x2a98
    call data_file_path              ; 0x2a99
    add sp, byte 4                   ; 0x2a9c
    push ax                          ; 0x2a9f
    call aztec_open                  ; 0x2aa0
    add sp, byte 4                   ; 0x2aa3
    mov word [bp - 2], ax            ; 0x2aa6
    cmp ax, strict word 0xffff       ; 0x2aa9
    jne short .forward2              ; 0x2aac
    mov ax, 0xf                      ; 0x2aae
    push ax                          ; 0x2ab1
    call release_and_exit            ; 0x2ab2
    pop cx                           ; 0x2ab5
.forward2:
    lea ax, word [bp - 0xa4]         ; 0x2ab6
    push ax                          ; 0x2aba
    lea ax, word [bp - 0x54]         ; 0x2abb
    push ax                          ; 0x2abe
    call aztec_strcpy                ; 0x2abf
    add sp, byte 4                   ; 0x2ac2
    cmp word [bp - 0xa8], byte 5     ; 0x2ac5
    jne short .forward3              ; 0x2aca
    mov ax, score_ext_pbl            ; 0x2acc
    push ax                          ; 0x2acf
    lea ax, word [bp - 0x54]         ; 0x2ad0
    push ax                          ; 0x2ad3
    call aztec_strcat                ; 0x2ad4
    add sp, byte 4                   ; 0x2ad7
    jmp short .forward4              ; 0x2ada
.forward3:
    mov ax, score_ext_pba            ; 0x2adc
    push ax                          ; 0x2adf
    lea ax, word [bp - 0x54]         ; 0x2ae0
    push ax                          ; 0x2ae3
    call aztec_strcat                ; 0x2ae4
    add sp, byte 4                   ; 0x2ae7
.forward4:
    mov ax, 0                        ; 0x2aea
    push ax                          ; 0x2aed
    mov ax, 1                        ; 0x2aee
    push ax                          ; 0x2af1
    lea ax, word [bp - 0x54]         ; 0x2af2
    push ax                          ; 0x2af5
    call data_file_path              ; 0x2af6
    add sp, byte 4                   ; 0x2af9
    push ax                          ; 0x2afc
    call aztec_open                  ; 0x2afd
    add sp, byte 4                   ; 0x2b00
    mov word [bp - 4], ax            ; 0x2b03
    cmp ax, strict word 0xffff       ; 0x2b06
    jne short .forward5              ; 0x2b09
    mov ax, 0x10                     ; 0x2b0b
    push ax                          ; 0x2b0e
    call release_and_exit            ; 0x2b0f
    pop cx                           ; 0x2b12
.forward5:
    push word [bp + 6]               ; 0x2b13
    push word [bp - 0xa8]            ; 0x2b16
    push word [bp - 4]               ; 0x2b1a
    push word [bp - 2]               ; 0x2b1d
    call gfx_load_score              ; 0x2b20
    add sp, byte 8                   ; 0x2b23
    mov word [bp - 0xa6], ax         ; 0x2b26
    cmp word [bp - 0xa6], byte 0     ; 0x2b2a
    je short .forward6               ; 0x2b2f
    mov ax, 0x11                     ; 0x2b31
    push ax                          ; 0x2b34
    call release_and_exit            ; 0x2b35
    pop cx                           ; 0x2b38
.forward6:
    push word [bp - 2]               ; 0x2b39
    call aztec_close                 ; 0x2b3c
    pop cx                           ; 0x2b3f
    push word [bp - 4]               ; 0x2b40
    call aztec_close                 ; 0x2b43
    pop cx                           ; 0x2b46
    mov ax, word [bp + 4]            ; 0x2b47
    mov word [loaded_score_num], ax  ; 0x2b4a
    ret                              ; 0x2b4d
