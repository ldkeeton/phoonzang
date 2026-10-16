; auto-generated
; asm only
string_loc_LTKU:
    test al, al                      ; 0x30b3
    je short @..string_loc_LTKU.l1   ; 0x30b5
    call loc_NJTI                    ; 0x30b7
    jmp short loc_KNJH               ; 0x30ba
@..string_loc_LTKU.l1:
    mov ax, word [bp - 0x0002]       ; 0x30bc
    pop si                           ; 0x30bf
    pop di                           ; 0x30c0
    mov sp, bp                       ; 0x30c1
    pop bp                           ; 0x30c3
    ret                              ; 0x30c4
loc_JJKK:
    mov byte [bp - 0x000c], 0x20     ; 0x30c5
    mov byte [bp - 0x000e], 0        ; 0x30c9
    mov byte [bp - 0x000d], 0        ; 0x30cd
    mov word [bp - 0x0006], 0xffff   ; 0x30d1
loc_JHJV:
    lodsb                            ; 0x30d6
    cmp al, 0x2d                     ; 0x30d7
    jne short loc_JKSS               ; 0x30d9
    or byte [bp - 0x000b], 8         ; 0x30db
    jmp short loc_JHJV               ; 0x30df
loc_JKSS:
    cmp al, 0x2b                     ; 0x30e1
    jne short loc_INOQ               ; 0x30e3
    mov byte [bp - 0x000e], 0x2b     ; 0x30e5
    jmp short loc_JHJV               ; 0x30e9
loc_INOQ:
    cmp al, 0x20                     ; 0x30eb
    jne short loc_OQNK               ; 0x30ed
    cmp byte [bp - 0x000e], 0        ; 0x30ef
    jne short loc_JHJV               ; 0x30f3
    mov byte [bp - 0x000e], 0x20     ; 0x30f5
    jmp short loc_JHJV               ; 0x30f9
loc_OQNK:
    cmp al, 0x23                     ; 0x30fb
    jne short loc_KLHI               ; 0x30fd
    or byte [bp - 0x000b], 0x10      ; 0x30ff
    jmp short loc_JHJV               ; 0x3103
loc_KLHI:
    cmp al, 0x30                     ; 0x3105
    jne short loc_HIQV               ; 0x3107
    mov byte [bp - 0x000c], 0x30     ; 0x3109
    lodsb                            ; 0x310d
loc_HIQV:
    call string_loc_TRQP             ; 0x310e
    test dx, dx                      ; 0x3111
    jns short loc_NLTU               ; 0x3113
    neg dx                           ; 0x3115
    or byte [bp - 0x000b], 8         ; 0x3117
loc_NLTU:
    mov word [bp - 0x0004], dx       ; 0x311b
    cmp al, 0x2e                     ; 0x311e
    jne short loc_RMVI               ; 0x3120
    lodsb                            ; 0x3122
    call string_loc_TRQP             ; 0x3123
    mov word [bp - 0x0006], dx       ; 0x3126
loc_RMVI:
    mov di, cs                       ; 0x3129
    mov es, di                       ; 0x312b
loc_SUPI:
    mov di, 0x2e3e                   ; 0x312d
    mov cx, 0x15                     ; 0x3130
    repne scasb                      ; 0x3133
    sub di, strict word 0x2e3f       ; 0x3135
    shl di, 1                        ; 0x3139
    jmp [cs:di + jumptable_3053 - IMAGE_BASE] ; 0x313b
