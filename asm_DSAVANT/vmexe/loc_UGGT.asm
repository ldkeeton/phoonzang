; auto-generated
loc_UGGT:
    mov ax, 0                        ; 0x1849
    call aztec_csav                  ; 0x184c
    les bx, word [dseg_0002]         ; 0x184f
    mov ax, word [es:bx]             ; 0x1853
    mov dx, word [es:bx + 0x2]       ; 0x1856
    mov word [bss_9090], dx          ; 0x185a
    mov word [bss_908e], ax          ; 0x185e
    mov ax, word [bss_908e]          ; 0x1861
    mov dx, word [bss_9090]          ; 0x1864
    sub ax, word [bss_908a]          ; 0x1868
    sbb dx, word [bss_908c]          ; 0x186c
    mov word [bss_9094], dx          ; 0x1870
    mov word [bss_9092], ax          ; 0x1874
    mov ax, word [bss_90e2]          ; 0x1877
    cwd                              ; 0x187a
    mov cx, ax                       ; 0x187b
    mov bx, dx                       ; 0x187d
    mov ax, word [bss_9092]          ; 0x187f
    mov dx, word [bss_9094]          ; 0x1882
    cmp bx, dx                       ; 0x1886
    jg short @..loc_UGGT.l1          ; 0x1888
    jne short @..loc_UGGT.l2         ; 0x188a
    cmp cx, ax                       ; 0x188c
    jbe short @..loc_UGGT.l2         ; 0x188e
@..loc_UGGT.l1:
    jmp short @..loc_UGGT.l3         ; 0x1890
@..loc_UGGT.l2:
    mov ax, word [bss_908e]          ; 0x1892
    mov dx, word [bss_9090]          ; 0x1895
    mov word [bss_908c], dx          ; 0x1899
    mov word [bss_908a], ax          ; 0x189d
    mov ax, 1                        ; 0x18a0
    ret                              ; 0x18a3
@..loc_UGGT.l3:
    mov ax, 0                        ; 0x18a4
    ret                              ; 0x18a7
