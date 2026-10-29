; auto-generated
ovmain:
    mov ax, 0                        ; 0x000e
    call aztec_csav                  ; 0x0011
    mov ax, word [game_state]        ; 0x0014
    jmp short .forward1              ; 0x0017
.back1:
    call initialize_runtime_resources ; 0x0019
    jmp short .forward2              ; 0x001c
.back2:
    call api_idx_0068_OUHP           ; 0x001e
    jmp short .forward2              ; 0x0021
.back3:
    call api_idx_0002_SKSN           ; 0x0023
    jmp short .forward2              ; 0x0026
.back4:
    call api_idx_0008_QGRM           ; 0x0028
    jmp short .forward2              ; 0x002b
.forward1:
    cmp ax, strict word 0            ; 0x002d
    je short .back1                  ; 0x0030
    cmp ax, strict word 1            ; 0x0032
    je short .back2                  ; 0x0035
    cmp ax, strict word 2            ; 0x0037
    je short .back4                  ; 0x003a
    cmp ax, strict word 8            ; 0x003c
    je short .back3                  ; 0x003f
.forward2:
    mov ax, 0                        ; 0x0041
    ret                              ; 0x0044
