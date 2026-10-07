mouse_init_2:
    push bp                          ; 0x1810
    mov bp, sp                       ; 0x1811
    push es                          ; 0x1813
    mov ax, ds                       ; 0x1814
    mov es, ax                       ; 0x1816
    cmp byte [cs:data_0228], 0       ; 0x1818
    je short @..mouse_init_2.l1      ; 0x181e
    mov byte [cs:data_0228], 0       ; 0x1820
    mov ax, 0                        ; 0x1826
    int 0x33 ; BIOS mouse
    push ds                          ; 0x182b
    push es                          ; 0x182c
    push di                          ; 0x182d
    push si                          ; 0x182e
    mov ax, cs                       ; 0x182f
    mov ds, ax                       ; 0x1831
    mov ax, 0xa000                   ; 0x1833
    mov es, ax                       ; 0x1836
    mov si, word [cs:data_1bd5]      ; 0x1838
    mov dx, 0x3c4                    ; 0x183d
    mov al, 2                        ; 0x1840
    out dx, al                       ; 0x1842
    inc dx                           ; 0x1843
    mov al, 1                        ; 0x1844
    out dx, al                       ; 0x1846
    call leaf_loc_189f               ; 0x1847
    mov si, word [cs:data_1bd5]      ; 0x184a
    add si, strict word 0x120        ; 0x184f
    mov dx, 0x3c4                    ; 0x1853
    mov al, 2                        ; 0x1856
    out dx, al                       ; 0x1858
    inc dx                           ; 0x1859
    mov al, 2                        ; 0x185a
    out dx, al                       ; 0x185c
    call leaf_loc_189f               ; 0x185d
    mov si, word [cs:data_1bd5]      ; 0x1860
    add si, strict word 0x240        ; 0x1865
    mov dx, 0x3c4                    ; 0x1869
    mov al, 2                        ; 0x186c
    out dx, al                       ; 0x186e
    inc dx                           ; 0x186f
    mov al, 4                        ; 0x1870
    out dx, al                       ; 0x1872
    call leaf_loc_189f               ; 0x1873
    mov si, word [cs:data_1bd5]      ; 0x1876
    add si, strict word 0x360        ; 0x187b
    mov dx, 0x3c4                    ; 0x187f
    mov al, 2                        ; 0x1882
    out dx, al                       ; 0x1884
    inc dx                           ; 0x1885
    mov al, 8                        ; 0x1886
    out dx, al                       ; 0x1888
    call leaf_loc_189f               ; 0x1889
    mov dx, 0x3c4                    ; 0x188c
    mov al, 2                        ; 0x188f
    out dx, al                       ; 0x1891
    inc dx                           ; 0x1892
    mov al, 0xf                      ; 0x1893
    out dx, al                       ; 0x1895
    pop si                           ; 0x1896
    pop di                           ; 0x1897
    pop es                           ; 0x1898
    pop ds                           ; 0x1899
@..mouse_init_2.l1:
    pop es                           ; 0x189a
    mov sp, bp                       ; 0x189b
    pop bp                           ; 0x189d
    ret                              ; 0x189e
