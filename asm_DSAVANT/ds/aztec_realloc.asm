aztec_realloc:
    push bp                          ; 0x467b
    mov bp, sp                       ; 0x467c
    add sp, byte 0xfc                ; 0x467e
    push di                          ; 0x4681
    push si                          ; 0x4682
    mov si, word [bp + 0x4]          ; 0x4683
    mov ax, word [si - 0x0002]       ; 0x4686
    and ax, strict word 0xfffe       ; 0x4689
    mov word [bp - 0x0002], ax       ; 0x468c
    sub ax, si                       ; 0x468f
    mov word [bp - 0x0004], ax       ; 0x4691
    cmp ax, word [bp + 0x6]          ; 0x4694
    jbe short @..aztec_realloc.l1    ; 0x4697
    mov ax, word [bp + 0x6]          ; 0x4699
    mov word [bp - 0x0004], ax       ; 0x469c
    mov cx, si                       ; 0x469f
    add cx, ax                       ; 0x46a1
    mov word [bp - 0x0002], cx       ; 0x46a3
@..aztec_realloc.l1:
    push si                          ; 0x46a6
    call aztec_free                  ; 0x46a7
    pop cx                           ; 0x46aa
    push word [bp + 0x6]             ; 0x46ab
    call aztec_malloc                ; 0x46ae
    pop cx                           ; 0x46b1
    mov di, ax                       ; 0x46b2
    test di, di                      ; 0x46b4
    je short @..aztec_realloc.l2     ; 0x46b6
    cmp di, si                       ; 0x46b8
    je short @..aztec_realloc.l2     ; 0x46ba
    push word [bp - 0x0004]          ; 0x46bc
    push di                          ; 0x46bf
    push si                          ; 0x46c0
    call aztec_movmem                ; 0x46c1
    add sp, byte 6                   ; 0x46c4
    cmp si, word [0x0d00]            ; 0x46c7
    ja short @..aztec_realloc.l2     ; 0x46cb
    mov ax, word [0x0d00]            ; 0x46cd
    cmp ax, word [bp - 0x0002]       ; 0x46d0
    jae short @..aztec_realloc.l2    ; 0x46d3
    mov ax, word [0x0cfe]            ; 0x46d5
    mov cx, word [0x0d00]            ; 0x46d8
    sub cx, si                       ; 0x46dc
    mov bx, cx                       ; 0x46de
    mov word [bx + di], ax           ; 0x46e0
@..aztec_realloc.l2:
    mov ax, di                       ; 0x46e2
    pop si                           ; 0x46e4
    pop di                           ; 0x46e5
    mov sp, bp                       ; 0x46e6
    pop bp                           ; 0x46e8
    ret                              ; 0x46e9
