; auto-generated
loc_LTIS:
    mov ax, 0                        ; 0xa29f
    call aztec_csav                  ; 0xa2a2
    cmp word [bss_9e48], byte -1     ; 0xa2a5
    je short .forward2               ; 0xa2aa
    cmp word [bss_9e46], byte -1     ; 0xa2ac
    je short .forward1               ; 0xa2b1
    cmp word [bss_9e42], byte -1     ; 0xa2b3
    jne short .forward2              ; 0xa2b8
.forward1:
    call loc_PLLR                    ; 0xa2ba
.forward2:
    cmp word [bss_9e46], byte -1     ; 0xa2bd
    je short .return1                ; 0xa2c2
    cmp word [bss_9e42], byte -1     ; 0xa2c4
    je short .return1                ; 0xa2c9
    call api_idx_0054_SSQP           ; 0xa2cb
    mov ax, word [bss_9e42]          ; 0xa2ce
    mov word [bss_9e4a], ax          ; 0xa2d1
    mov ax, word [bss_9e44]          ; 0xa2d4
    mov word [bss_9e4c], ax          ; 0xa2d7
    mov ax, word [bss_9e46]          ; 0xa2da
    mov word [bss_9e4e], ax          ; 0xa2dd
    mov word [bss_9e50], 0xffff      ; 0xa2e0
.return1:
    ret                              ; 0xa2e6
