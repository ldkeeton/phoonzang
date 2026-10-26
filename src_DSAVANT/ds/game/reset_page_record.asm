; auto-generated
reset_page_record:
    mov ax, 0xffea                   ; 0x184f
    call aztec_csav                  ; 0x1852
    mov ax, 0                        ; 0x1855
    push ax                          ; 0x1858
    mov ax, 0x12                     ; 0x1859
    push ax                          ; 0x185c
    mov ax, 0x248                    ; 0x185d
    imul word [bp + 4]               ; 0x1860
    push ax                          ; 0x1863
    mov ax, 0x12                     ; 0x1864
    imul word [bp + 6]               ; 0x1867
    mov cx, ax                       ; 0x186a
    pop ax                           ; 0x186c
    add ax, cx                       ; 0x186d
    add ax, 0x5d24                   ; 0x186f
    push ax                          ; 0x1872
    call aztec_setmem                ; 0x1873
    add sp, byte 6                   ; 0x1876
    mov ax, 0x248                    ; 0x1879
    imul word [bp + 4]               ; 0x187c
    push ax                          ; 0x187f
    mov ax, 0x12                     ; 0x1880
    imul word [bp + 6]               ; 0x1883
    mov cx, ax                       ; 0x1886
    pop ax                           ; 0x1888
    add ax, cx                       ; 0x1889
    mov bx, ax                       ; 0x188b
    mov byte [bx + party_records + pc_rec.slot_info + 0x2], 2 ; 0x188d
    mov byte [bx + party_records + pc_rec.slot_info + 0x3], 2 ; 0x1892
    mov byte [bx + party_records + pc_rec.slot_info + 0xf], 0x20 ; 0x1897
    mov ax, 0x248                    ; 0x189c
    imul word [bp + 4]               ; 0x189f
    mov bx, ax                       ; 0x18a2
    mov al, byte [bx + party_records + pc_rec.flag + 0x9] ; 0x18a4
    sub ah, ah                       ; 0x18a8
    mov cx, 5                        ; 0x18aa
    cwd                              ; 0x18ad
    idiv cx                          ; 0x18ae
    mov word [bp - 2], ax            ; 0x18b0
    mov al, byte [bx + party_records + pc_rec.flag + 0x21] ; 0x18b3
    sub ah, ah                       ; 0x18b7
    cwd                              ; 0x18b9
    idiv cx                          ; 0x18ba
    mov word [bp - 4], ax            ; 0x18bc
    cmp byte [bx + party_records + pc_rec.profession], 0xd ; 0x18bf
    je short .forward1               ; 0x18c4
    cmp byte [bx + party_records + pc_rec.profession], 0xc ; 0x18c6
    jne short .forward2              ; 0x18cb
.forward1:
    mov ax, word [bp - 2]            ; 0x18cd
    mov cx, 3                        ; 0x18d0
    cwd                              ; 0x18d3
    idiv cx                          ; 0x18d4
    inc ax                           ; 0x18d6
    inc ax                           ; 0x18d7
    push ax                          ; 0x18d8
    mov ax, 0x12                     ; 0x18d9
    imul word [bp + 6]               ; 0x18dc
    mov cx, ax                       ; 0x18df
    add bx, ax                       ; 0x18e1
    pop ax                           ; 0x18e3
    mov byte [bx + party_records + pc_rec.slot_info + 0x3], al ; 0x18e4
    or byte [bx + party_records + pc_rec.slot_info + 0xf], 0x40 ; 0x18e8
    mov ax, word [bp - 4]            ; 0x18ed
    add ax, strict word 5            ; 0x18f0
    mov byte [bx + party_records + pc_rec.slot_info + 0xa], al ; 0x18f3
    jmp short .forward4              ; 0x18f7
.forward2:
    cmp word [bp - 2], byte 0        ; 0x18f9
    jle short .forward3              ; 0x18fd
    mov ax, word [bp - 2]            ; 0x18ff
    mov cx, 4                        ; 0x1902
    cwd                              ; 0x1905
    idiv cx                          ; 0x1906
    inc ax                           ; 0x1908
    push ax                          ; 0x1909
    mov ax, 0x248                    ; 0x190a
    imul word [bp + 4]               ; 0x190d
    mov cx, ax                       ; 0x1910
    mov ax, 0x12                     ; 0x1912
    imul word [bp + 6]               ; 0x1915
    mov dx, ax                       ; 0x1918
    add cx, ax                       ; 0x191a
    mov bx, cx                       ; 0x191c
    pop ax                           ; 0x191e
    mov byte [bx + party_records + pc_rec.slot_info + 0x3], al ; 0x191f
    or byte [bx + party_records + pc_rec.slot_info + 0xf], 0x40 ; 0x1923
.forward3:
    cmp word [bp - 4], byte 0        ; 0x1928
    jle short .forward4              ; 0x192c
    mov al, byte [bp - 4]            ; 0x192e
    push ax                          ; 0x1931
    mov ax, 0x248                    ; 0x1932
    imul word [bp + 4]               ; 0x1935
    mov cx, ax                       ; 0x1938
    mov ax, 0x12                     ; 0x193a
    imul word [bp + 6]               ; 0x193d
    mov dx, ax                       ; 0x1940
    add cx, ax                       ; 0x1942
    mov bx, cx                       ; 0x1944
    pop ax                           ; 0x1946
    mov byte [bx + party_records + pc_rec.slot_info + 0xa], al ; 0x1947
.forward4:
    mov ax, word [bp + 6]            ; 0x194b
    jmp near .forward14              ; 0x194e
.back1:
    mov ax, 0x248                    ; 0x1951
    imul word [bp + 4]               ; 0x1954
    mov bx, ax                       ; 0x1957
    cmp byte [bx + party_records + pc_rec.stat], 0xf ; 0x1959
    jbe short .forward5              ; 0x195e
    mov ax, 1                        ; 0x1960
    jmp short .forward6              ; 0x1963
.forward5:
    mov ax, 0                        ; 0x1965
.forward6:
    push ax                          ; 0x1968
    mov ax, 0x12                     ; 0x1969
    imul word [bp + 6]               ; 0x196c
    mov cx, ax                       ; 0x196f
    add bx, ax                       ; 0x1971
    pop ax                           ; 0x1973
    add word [bx + party_records + pc_rec.slot_info], ax ; 0x1974
    mov ax, 0x248                    ; 0x1978
    imul word [bp + 4]               ; 0x197b
    mov bx, ax                       ; 0x197e
    cmp byte [bx + party_records + pc_rec.stat], 0x11 ; 0x1980
    jbe short .forward7              ; 0x1985
    mov ax, 1                        ; 0x1987
    jmp short .forward8              ; 0x198a
.forward7:
    mov ax, 0                        ; 0x198c
.forward8:
    add bx, cx                       ; 0x198f
    add word [bx + party_records + pc_rec.slot_info], ax ; 0x1991
    mov al, byte [bx + party_records + pc_rec.slot_info + 0xe] ; 0x1995
    cbw                              ; 0x1999
    push ax                          ; 0x199a
    mov ax, 0x248                    ; 0x199b
    imul word [bp + 4]               ; 0x199e
    mov bx, ax                       ; 0x19a1
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0xf ; 0x19a3
    pop ax                           ; 0x19a8
    jbe short .forward9              ; 0x19a9
    mov cx, 5                        ; 0x19ab
    jmp short .forward10             ; 0x19ae
.forward9:
    mov cx, 0                        ; 0x19b0
.forward10:
    sub ax, cx                       ; 0x19b3
    push ax                          ; 0x19b5
    mov ax, 0x12                     ; 0x19b6
    imul word [bp + 6]               ; 0x19b9
    mov cx, ax                       ; 0x19bc
    add bx, ax                       ; 0x19be
    pop ax                           ; 0x19c0
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al ; 0x19c1
    cbw                              ; 0x19c5
    push ax                          ; 0x19c6
    mov ax, 0x248                    ; 0x19c7
    imul word [bp + 4]               ; 0x19ca
    mov bx, ax                       ; 0x19cd
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0x11 ; 0x19cf
    pop ax                           ; 0x19d4
    jbe short .forward11             ; 0x19d5
    mov cx, 5                        ; 0x19d7
    jmp short .forward12             ; 0x19da
.forward11:
    mov cx, 0                        ; 0x19dc
.forward12:
    sub ax, cx                       ; 0x19df
    push ax                          ; 0x19e1
    mov ax, 0x12                     ; 0x19e2
    imul word [bp + 6]               ; 0x19e5
    mov cx, ax                       ; 0x19e8
    add bx, ax                       ; 0x19ea
    pop ax                           ; 0x19ec
    mov byte [bx + party_records + pc_rec.slot_info + 0xe], al ; 0x19ed
    jmp short .return1               ; 0x19f1
.back2:
    mov ax, 0x248                    ; 0x19f3
    imul word [bp + 4]               ; 0x19f6
    mov bx, ax                       ; 0x19f9
    mov al, byte [bx + party_records + pc_rec.slot_info + 0x20] ; 0x19fb
    cbw                              ; 0x19ff
    mov cx, 0                        ; 0x1a00
    cmp byte [bx + party_records + pc_rec.stat + 0x4], 0x11 ; 0x1a03
    jbe short .forward13             ; 0x1a08
    mov cx, 5                        ; 0x1a0a
.forward13:
    sub ax, cx                       ; 0x1a0d
    mov byte [bx + party_records + pc_rec.slot_info + 0x20], al ; 0x1a0f
    jmp short .return1               ; 0x1a13
.forward14:
    cmp ax, strict word 0            ; 0x1a15
    jne short .forward15             ; 0x1a18
    jmp near .back1                  ; 0x1a1a
.forward15:
    cmp ax, strict word 1            ; 0x1a1d
    je short .back2                  ; 0x1a20
.return1:
    ret                              ; 0x1a22
