; auto-generated
api_idx_0002_NURV:
    mov ax, 0xfffe                   ; 0x000e
    call aztec_csav                  ; 0x0011
    mov word [bss_8f22], 0           ; 0x0014
    mov word [bss_9180], 5           ; 0x001a
    les bx, word [dseg_0002]         ; 0x0020
    mov ax, word [es:bx]             ; 0x0024
    mov dx, word [es:bx + 0x2]       ; 0x0027
    mov word [bss_908c], dx          ; 0x002b
    mov word [bss_908a], ax          ; 0x002f
    mov word [bp - 0x0002], 0        ; 0x0032
@..api_idx_0002_NURV.l1:
    mov ax, word [bp - 0x0002]       ; 0x0037
    shl ax, 1                        ; 0x003a
    mov bx, ax                       ; 0x003c
    mov word [bx - 0x6e7e], 0        ; 0x003e
    inc word [bp - 0x0002]           ; 0x0044
    mov ax, word [bp - 0x0002]       ; 0x0047
    cmp ax, strict word 3            ; 0x004a
    jl short @..api_idx_0002_NURV.l1 ; 0x004d
    cmp word [bss_906a], byte 0      ; 0x004f
    je short @..api_idx_0002_NURV.l2 ; 0x0054
    mov ax, 1                        ; 0x0056
    push ax                          ; 0x0059
    push word [bss_9068]             ; 0x005a
    call ds_app_file_HMNO            ; 0x005e
    add sp, byte 4                   ; 0x0061
    mov word [bss_906a], 0           ; 0x0064
@..api_idx_0002_NURV.l2:
    cmp word [bss_830a], byte 0x17   ; 0x006a
    jne short @..api_idx_0002_NURV.l3 ; 0x006f
    call api_idx_0002_HTRV           ; 0x0071
    mov ax, 0xa                      ; 0x0074
    push ax                          ; 0x0077
    call ds_app_PUNN                 ; 0x0078
    pop cx                           ; 0x007b
    add ax, strict word 4            ; 0x007c
    push ax                          ; 0x007f
    call api_idx_008a_SRHN           ; 0x0080
    pop cx                           ; 0x0083
@..api_idx_0002_NURV.l3:
    cmp word [bss_830a], byte 0x1b   ; 0x0084
    jne short @..api_idx_0002_NURV.l4 ; 0x0089
    call api_idx_0012_PJTU           ; 0x008b
@..api_idx_0002_NURV.l4:
    cmp word [bss_830a], byte 0x1e   ; 0x008e
    jne short @..api_idx_0002_NURV.l5 ; 0x0093
    push word [bss_8af0]             ; 0x0095
    call api_idx_0008_OTKN           ; 0x0099
    pop cx                           ; 0x009c
@..api_idx_0002_NURV.l5:
    cmp word [bss_830a], byte 0x1f   ; 0x009d
    jne short @..api_idx_0002_NURV.l6 ; 0x00a2
    push word [bss_8af0]             ; 0x00a4
    call loc_HTTH                    ; 0x00a8
    pop cx                           ; 0x00ab
@..api_idx_0002_NURV.l6:
    mov word [bss_830a], 5           ; 0x00ac
    mov ax, 0                        ; 0x00b2
    ret                              ; 0x00b5
