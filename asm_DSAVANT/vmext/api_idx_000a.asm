api_idx_000a:
    mov ax, 0xfff6                   ; 0x0b8c
    call ds_dispatch_f40b            ; 0x0b8f
    mov ax, word [bss_8f46]          ; 0x0b92
    mov word [bp - 0x0002], ax       ; 0x0b95
    mov ax, word [bss_8f44]          ; 0x0b98
    mov word [bp - 0x0004], ax       ; 0x0b9b
    mov ax, word [bss_8f42]          ; 0x0b9e
    mov word [bp - 0x0006], ax       ; 0x0ba1
    mov ax, word [bss_8f40]          ; 0x0ba4
    mov word [bp - 0x0008], ax       ; 0x0ba7
    mov ax, word [bss_8f3e]          ; 0x0baa
    mov word [bp - 0x000a], ax       ; 0x0bad
    mov ax, word [bss_8f3a]          ; 0x0bb0
    mov word [bss_8f46], ax          ; 0x0bb3
    mov ax, word [bss_8f38]          ; 0x0bb6
    mov word [bss_8f44], ax          ; 0x0bb9
    mov ax, word [bss_8f36]          ; 0x0bbc
    mov word [bss_8f42], ax          ; 0x0bbf
    mov ax, word [bss_8f34]          ; 0x0bc2
    mov word [bss_8f40], ax          ; 0x0bc5
    mov ax, word [bss_8f32]          ; 0x0bc8
    mov word [bss_8f3e], ax          ; 0x0bcb
    call loc_054f                    ; 0x0bce
    test ax, ax                      ; 0x0bd1
    je short @..api_idx_000a.l1      ; 0x0bd3
    mov ax, word [bss_82e8]          ; 0x0bd5
    inc ax                           ; 0x0bd8
    mov cx, 2                        ; 0x0bd9
    cwd                              ; 0x0bdc
    idiv cx                          ; 0x0bdd
    mov word [bss_82e8], dx          ; 0x0bdf
@..api_idx_000a.l1:
    call loc_51fb                    ; 0x0be3
    mov ax, 2                        ; 0x0be6
    push ax                          ; 0x0be9
    call ds_dispatch_b75e            ; 0x0bea
    pop cx                           ; 0x0bed
    mov ax, word [bp - 0x0002]       ; 0x0bee
    mov word [bss_8f46], ax          ; 0x0bf1
    mov ax, word [bp - 0x0004]       ; 0x0bf4
    mov word [bss_8f44], ax          ; 0x0bf7
    mov ax, word [bp - 0x0006]       ; 0x0bfa
    mov word [bss_8f42], ax          ; 0x0bfd
    mov ax, word [bp - 0x0008]       ; 0x0c00
    mov word [bss_8f40], ax          ; 0x0c03
    mov ax, word [bp - 0x000a]       ; 0x0c06
    mov word [bss_8f3e], ax          ; 0x0c09
    ret                              ; 0x0c0c
loc_0c0d:
    mov ax, 0                        ; 0x0c0d
    call ds_dispatch_f40b            ; 0x0c10
    mov ax, 0x7f9                    ; 0x0c13
    push ax                          ; 0x0c16
    call api_idx_0050                ; 0x0c17
    pop cx                           ; 0x0c1a
    mov ax, 1                        ; 0x0c1b
    ret                              ; 0x0c1e
