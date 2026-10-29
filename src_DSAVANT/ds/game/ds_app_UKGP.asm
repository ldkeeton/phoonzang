; auto-generated
ds_app_UKGP:
    mov ax, 0xfffc                   ; 0x2bab
    call aztec_csav                  ; 0x2bae
    mov ax, 0xa                      ; 0x2bb1
    push ax                          ; 0x2bb4
    mov al, byte [music_volume]      ; 0x2bb5
    sub ah, ah                       ; 0x2bb8
    mov cx, ax                       ; 0x2bba
    pop ax                           ; 0x2bbc
    sub ax, cx                       ; 0x2bbd
    mov word [bp - 2], ax            ; 0x2bbf
    imul ax                          ; 0x2bc2
    mov cx, 0xff                     ; 0x2bc4
    imul cx                          ; 0x2bc7
    mov cx, ax                       ; 0x2bc9
    mov ax, 0x639c                   ; 0x2bcb
    sub ax, cx                       ; 0x2bce
    mov cx, 0x64                     ; 0x2bd0
    cwd                              ; 0x2bd3
    idiv cx                          ; 0x2bd4
    mov word [bp - 4], ax            ; 0x2bd6
    push word [bp + 8]               ; 0x2bd9
    push ax                          ; 0x2bdc
    push word [bp + 6]               ; 0x2bdd
    push word [bp + 4]               ; 0x2be0
    call call_play_score             ; 0x2be3
    add sp, byte 8                   ; 0x2be6
    mov ax, word [bp - 4]            ; 0x2be9
    ret                              ; 0x2bec
