api_idx_0002:
    mov ax, 0xfffe                   ; 0x000e
    call ds_dispatch_f40b            ; 0x0011
    mov word [bss_8f22], 0           ; 0x0014
    mov word [bss_9192], 5           ; 0x001a
    les bx, word [dseg_0002]         ; 0x0020
    mov ax, word [es:bx]             ; 0x0024
    mov dx, word [es:bx + 0x2]       ; 0x0027
    mov word [bss_908c], dx          ; 0x002b
    mov word [bss_908a], ax          ; 0x002f
    mov word [bss_9194], 0           ; 0x0032
    mov word [bss_9196], 0           ; 0x0038
    mov word [bss_9198], 0           ; 0x003e
    mov ax, word [es:bx]             ; 0x0044
    mov dx, word [es:bx + 0x2]       ; 0x0047
    add ax, strict word 0x24         ; 0x004b
    adc dx, byte 0                   ; 0x004e
    mov word [bss_919c], dx          ; 0x0051
    mov word [bss_919a], ax          ; 0x0055
    call api_idx_0002_3              ; 0x0058
    cmp word [bss_906a], byte 0      ; 0x005b
    je short @..api_idx_0002.l1      ; 0x0060
    mov ax, 1                        ; 0x0062
    push ax                          ; 0x0065
    push word [bss_9068]             ; 0x0066
    call ds_dispatch_c459            ; 0x006a
    add sp, byte 4                   ; 0x006d
    mov word [bss_906a], 0           ; 0x0070
@..api_idx_0002.l1:
    cmp word [bss_830a], byte 6      ; 0x0076
    jne short @..api_idx_0002.l2     ; 0x007b
    push word [bss_830c]             ; 0x007d
    call api_idx_000c                ; 0x0081
    pop cx                           ; 0x0084
@..api_idx_0002.l2:
    cmp word [bss_830a], byte 5      ; 0x0085
    jne short @..api_idx_0002.l3     ; 0x008a
    call api_idx_0002_5              ; 0x008c
    call api_idx_0022                ; 0x008f
@..api_idx_0002.l3:
    call loc_0140                    ; 0x0092
    call api_idx_0002_3              ; 0x0095
    mov ax, word [bss_830a]          ; 0x0098
    cmp ax, strict word 0x1e         ; 0x009b
    je short @..api_idx_0002.l4      ; 0x009e
    cmp ax, strict word 0x1b         ; 0x00a0
    je short @..api_idx_0002.l4      ; 0x00a3
    cmp ax, strict word 0x18         ; 0x00a5
    je short @..api_idx_0002.l4      ; 0x00a8
    cmp ax, strict word 0x11         ; 0x00aa
    je short @..api_idx_0002.l4      ; 0x00ad
    cmp ax, strict word 0x13         ; 0x00af
    je short @..api_idx_0002.l4      ; 0x00b2
    cmp ax, strict word 0x14         ; 0x00b4
    je short @..api_idx_0002.l4      ; 0x00b7
    mov word [bss_8f22], 1           ; 0x00b9
    call api_idx_0030                ; 0x00bf
    mov ax, 0x9098                   ; 0x00c2
    push ax                          ; 0x00c5
    mov ax, 0x8f                     ; 0x00c6
    push ax                          ; 0x00c9
    mov ax, 0xf7                     ; 0x00ca
    push ax                          ; 0x00cd
    mov ax, 0x21                     ; 0x00ce
    push ax                          ; 0x00d1
    mov ax, 0x48                     ; 0x00d2
    push ax                          ; 0x00d5
    call ds_dispatch_c283            ; 0x00d6
    add sp, byte 0x0a                ; 0x00d9
    mov word [bss_9068], ax          ; 0x00dc
    mov word [bss_906a], 1           ; 0x00df
    mov ax, word [bss_82e8]          ; 0x00e5
    inc ax                           ; 0x00e8
    mov cx, 2                        ; 0x00e9
    cwd                              ; 0x00ec
    idiv cx                          ; 0x00ed
    mov word [bss_82e8], dx          ; 0x00ef
    call api_idx_0030                ; 0x00f3
    mov word [bss_906c], 1           ; 0x00f6
    mov word [bss_8f22], 0           ; 0x00fc
@..api_idx_0002.l4:
    mov ax, 0                        ; 0x0102
    ret                              ; 0x0105
