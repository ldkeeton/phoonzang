; auto-generated
note_event_low:
    call string_loc_SLGG             ; 0x1081
    cmp byte [cs:cseg_0d3d - IMAGE_BASE], 0xff ; 0x1084
    jne short loc_JSJL               ; 0x108a
    jmp near loc_MRJU                ; 0x108c
loc_JSJL:
    cmp byte [cs:cseg_0d45 - IMAGE_BASE], 0 ; 0x108f
    jne short loc_POIP               ; 0x1095
    jmp near loc_RMHU                ; 0x1097
loc_POIP:
    mov al, byte [cs:music_device - IMAGE_BASE] ; 0x109a
    cmp al, 1                        ; 0x109e
    jmp near loc_RMHU                ; 0x10a0
    mov ah, byte [cs:cseg_0d46 - IMAGE_BASE] ; 0x10a3
    mov al, byte [cs:cseg_14e6 - IMAGE_BASE] ; 0x10a8
    cmp ah, 6                        ; 0x10ac
    je short loc_10a3.forward1       ; 0x10af
    cmp ah, 7                        ; 0x10b1
    je short loc_10a3.forward2       ; 0x10b4
    cmp ah, 8                        ; 0x10b6
    je short loc_10a3.forward3       ; 0x10b9
    cmp ah, 9                        ; 0x10bb
    je short loc_10a3.forward4       ; 0x10be
    cmp ah, 0xa                      ; 0x10c0
    jne short loc_RMHU               ; 0x10c3
    and al, 0xfe                     ; 0x10c5
    mov ah, 0xbd                     ; 0x10c7
    call opl_write                   ; 0x10c9
    jmp near loc_MRJU                ; 0x10cc
loc_10a3.forward1:
    and al, 0xef                     ; 0x10cf
    mov ah, 0xbd                     ; 0x10d1
    call opl_write                   ; 0x10d3
    jmp near loc_MRJU                ; 0x10d6
loc_10a3.forward2:
    and al, 0xf7                     ; 0x10d9
    mov ah, 0xbd                     ; 0x10db
    call opl_write                   ; 0x10dd
    jmp near loc_MRJU                ; 0x10e0
loc_10a3.forward3:
    and al, 0xfb                     ; 0x10e3
    mov ah, 0xbd                     ; 0x10e5
    call opl_write                   ; 0x10e7
    jmp near loc_MRJU                ; 0x10ea
loc_10a3.forward4:
    and al, 0xfd                     ; 0x10ed
    mov ah, 0xbd                     ; 0x10ef
    call opl_write                   ; 0x10f1
    jmp near loc_MRJU                ; 0x10f4
loc_RMHU:
    push si                          ; 0x10f7
    mov si, cseg_0d49 - IMAGE_BASE   ; 0x10f8
    mov cl, byte [cs:cseg_0d48 - IMAGE_BASE] ; 0x10fb
    xor ch, ch                       ; 0x1100
loc_GJLP:
    mov bx, cseg_0d03 - IMAGE_BASE   ; 0x1102
    mov ah, byte [cs:opl_note_semitone - IMAGE_BASE] ; 0x1105
    mov dh, byte [cs:si]             ; 0x110a
    mov dl, byte [cs:cseg_0d3f - IMAGE_BASE] ; 0x110d
    xor al, al                       ; 0x1112
loc_RPSI:
    cmp byte [cs:bx], 0              ; 0x1114
    je short loc_JHMG                ; 0x1118
    cmp byte [cs:bx + 1], ah         ; 0x111a
    jne short loc_JHMG               ; 0x111e
    cmp byte [cs:bx + 2], dh         ; 0x1120
    jne short loc_JHMG               ; 0x1124
    mov byte [cs:bx], 0              ; 0x1126
    mov word [cs:bx + 3], 0          ; 0x112a
    mov byte [cs:opl_channel_index - IMAGE_BASE], al ; 0x1130
    call loc_NLST                    ; 0x1134
loc_JHMG:
    inc al                           ; 0x1137
    add bx, byte 5                   ; 0x1139
    cmp al, byte [cs:opl_voice_count - IMAGE_BASE] ; 0x113c
    jb short loc_RPSI                ; 0x1141
    inc si                           ; 0x1143
    loop loc_GJLP                    ; 0x1144
    pop si                           ; 0x1146
    jmp near loc_MRJU                ; 0x1147
    push bx                          ; 0x114a
    mov bl, byte [cs:music_device - IMAGE_BASE] ; 0x114b
    xor bh, bh                       ; 0x1150
    shl bx, 1                        ; 0x1152
    call [cs:bx + jumptable_115b - IMAGE_BASE] ; 0x1154
    pop bx                           ; 0x1159
    ret                              ; 0x115a
jumptable_115b:
    dw loc_PLIR - IMAGE_BASE                   ; 0x115b
    dw loc_QKNN - IMAGE_BASE                   ; 0x115d
    dw loc_PLIR - IMAGE_BASE                   ; 0x115f
    dw loc_PLIR - IMAGE_BASE                   ; 0x1161
    dw loc_QKNN - IMAGE_BASE                   ; 0x1163
    dw loc_PLIR - IMAGE_BASE                   ; 0x1165
