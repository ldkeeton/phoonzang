; auto-generated
api_idx_0018_MOPR:
    mov ax, 0xffe8                   ; 0x4955
    call aztec_csav                  ; 0x4958
    mov ax, 0x248                    ; 0x495b
    imul word [bp + 0x4]             ; 0x495e
    mov bx, ax                       ; 0x4961
    mov al, byte [bx + 0x5d65]       ; 0x4963
    sub ah, ah                       ; 0x4967
    mov word [bp - 0x0004], ax       ; 0x4969
    mov al, byte [bx + 0x5d66]       ; 0x496c
    sub ah, ah                       ; 0x4970
    mov word [bp - 0x0006], ax       ; 0x4972
    mov al, byte [bx + 0x5d67]       ; 0x4975
    sub ah, ah                       ; 0x4979
    mov word [bp - 0x0008], ax       ; 0x497b
    mov al, byte [bx + 0x5d6a]       ; 0x497e
    sub ah, ah                       ; 0x4982
    mov word [bp - 0x000a], ax       ; 0x4984
    mov al, byte [bx + 0x5e2d]       ; 0x4987
    sub ah, ah                       ; 0x498b
    jmp near loc_4b58                ; 0x498d
