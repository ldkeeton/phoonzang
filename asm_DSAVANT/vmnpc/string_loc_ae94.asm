string_loc_ae94:
    push bp                          ; 0xae94
    mov bp, sp                       ; 0xae95
    mov cx, word [bp + 0x8]          ; 0xae97
    mov dx, cx                       ; 0xae9a
    shr cx, 1                        ; 0xae9c
    cld                              ; 0xae9e
    push si                          ; 0xae9f
    push di                          ; 0xaea0
    mov si, word [bp + 0x4]          ; 0xaea1
    mov di, ds                       ; 0xaea4
    mov es, di                       ; 0xaea6
    mov di, word [bp + 0x6]          ; 0xaea8
    jcxz @..string_loc_ae94.l2       ; 0xaeab
@..string_loc_ae94.l1:
    lodsw                            ; 0xaead
    scasw                            ; 0xaeae
    jne short loc_aec9               ; 0xaeaf
    test al, al                      ; 0xaeb1
    je short loc_aec3                ; 0xaeb3
    test ah, ah                      ; 0xaeb5
    loopne @..string_loc_ae94.l1     ; 0xaeb7
    je short loc_aec3                ; 0xaeb9
@..string_loc_ae94.l2:
    test dl, 1                       ; 0xaebb
    je short loc_aec3                ; 0xaebe
    cmpsb                            ; 0xaec0
    jne short loc_aed6               ; 0xaec1
loc_aec3:
    sub ax, ax                       ; 0xaec3
loc_aec5:
    pop di                           ; 0xaec5
    pop si                           ; 0xaec6
    pop bp                           ; 0xaec7
    ret                              ; 0xaec8
