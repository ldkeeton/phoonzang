; auto-generated
ds_string_loc_IJKM:
    call ds_leaf_loc_GPQN            ; 0x4aa2
    mov ax, word [bp - 0x0002]       ; 0x4aa5
    mov word [es:di], ax             ; 0x4aa8
    test byte [bp - 0x000b], 2       ; 0x4aab
    je short @..ds_string_loc_IJKM.l1 ; 0x4aaf
    mov word [es:di + 0x2], 0        ; 0x4ab1
@..ds_string_loc_IJKM.l1:
    jmp near ds_loc_4879             ; 0x4ab7
ds_loc_4aba:
    mov al, byte [bp - 0x000d]       ; 0x4aba
    test al, al                      ; 0x4abd
    je short ds_loc_4aec             ; 0x4abf
    cmp al, 0x78                     ; 0x4ac1
    jne short @..ds_loc_4aba.l1      ; 0x4ac3
    mov al, 0x30                     ; 0x4ac5
    call ds_loc_4ad0                 ; 0x4ac7
    mov al, 0x78                     ; 0x4aca
@..ds_loc_4aba.l1:
    mov byte [bp - 0x000d], 0        ; 0x4acc
ds_loc_4ad0:
    inc word [bp - 0x0002]           ; 0x4ad0
    test byte [bp - 0x000b], 0x20    ; 0x4ad3
    je short @..ds_loc_4ad0.l1       ; 0x4ad7
    cmp al, 0x61                     ; 0x4ad9
    jb short @..ds_loc_4ad0.l1       ; 0x4adb
    cmp al, 0x7a                     ; 0x4add
    ja short @..ds_loc_4ad0.l1       ; 0x4adf
    sub al, 0x20                     ; 0x4ae1
@..ds_loc_4ad0.l1:
    push es                          ; 0x4ae3
    sub ah, ah                       ; 0x4ae4
    push ax                          ; 0x4ae6
    call [bp + 0x4]                  ; 0x4ae7
    pop ax                           ; 0x4aea
    pop es                           ; 0x4aeb
ds_loc_4aec:
    ret                              ; 0x4aec
