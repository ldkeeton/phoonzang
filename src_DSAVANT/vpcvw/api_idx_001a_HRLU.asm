; auto-generated
api_idx_001a_HRLU:
    mov ax, 0xffe6                   ; 0x706c
    call aztec_csav                  ; 0x706f
    lea ax, word [bp - 0x001a]       ; 0x7072
    push ax                          ; 0x7075
    mov ax, MSG_471                  ; 0x7076
    push ax                          ; 0x7079
    call load_message_string         ; 0x707a
    add sp, byte 4                   ; 0x707d
    mov word [bp - 0x0002], 0        ; 0x7080
@..api_idx_001a_HRLU.l1:
    mov ax, word [bp + 0x6]          ; 0x7085
    mov cx, 0xa                      ; 0x7088
    cwd                              ; 0x708b
    idiv cx                          ; 0x708c
    mov word [bp - 0x0004], dx       ; 0x708e
    mov word [bp + 0x6], ax          ; 0x7091
    add word [bp - 0x0006], dx       ; 0x7094
    mov ax, word [bp - 0x0002]       ; 0x7097
    imul word [bp - 0x0006]          ; 0x709a
    mov dx, word [bp - 0x0004]       ; 0x709d
    add ax, dx                       ; 0x70a0
    cwd                              ; 0x70a2
    idiv cx                          ; 0x70a3
    mov word [bp - 0x0004], dx       ; 0x70a5
    mov bx, dx                       ; 0x70a8
    add bx, bp                       ; 0x70aa
    mov al, byte [bx - 0x001a]       ; 0x70ac
    mov si, word [bp - 0x0002]       ; 0x70af
    mov bx, word [bp + 0x4]          ; 0x70b2
    mov byte [bx + si], al           ; 0x70b5
    inc word [bp - 0x0002]           ; 0x70b7
    mov ax, word [bp - 0x0002]       ; 0x70ba
    cmp ax, strict word 4            ; 0x70bd
    jl short @..api_idx_001a_HRLU.l1 ; 0x70c0
    mov bx, word [bp + 0x4]          ; 0x70c2
    mov byte [bx + 0x4], 0           ; 0x70c5
    ret                              ; 0x70c9
