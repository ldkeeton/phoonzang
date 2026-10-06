; testexe.exe — small relocatable MZ target for the TSR GDB stub
;
; Build the DOS image with -f bin. Build the matching ELF/DWARF symbols with
; -f elf32; the ELF describes the loaded image and excludes the MZ header.

BITS 16                                  ; assemble fixture for 16-bit real mode

%ifidn __OUTPUT_FORMAT__, bin            ; MZ header is emitted only in flat DOS executable
    ; The DOS loader removes the 512-byte header before loading the image.
    ; Use a negative origin so code/data labels retain their load-image offsets.
    org -0x200                           ; make load-image labels ignore the 512-byte MZ header

 mz_header:
    dw 0x5A4D                           ; MZ magic identifies this as an EXE image
    dw (mz_file_end - $$) & 0x1FF       ; file bytes used on the last 512-byte page
    dw (mz_file_end - $$ + 0x1FF) / 512 ; total file size rounded up to 512-byte pages
    dw 1                                ; one segment relocation entry follows
    dw 0x20                             ; header occupies 0x20 paragraphs (512 bytes)
    dw 0x100                            ; request 0x100 paragraphs for minimum memory
    dw 0xFFFF                           ; let DOS allocate as much as available
    dw 0                                ; initial SS relative to load segment
    dw 0x1000                           ; initial stack pointer
    dw 0                                ; no MZ checksum
    dw _start                           ; initial instruction offset within load image
    dw 0                                ; initial CS relative to load segment
    dw 0x1C                             ; relocation table begins at header offset 0x1C
    dw 0                                ; image is not an overlay
    dw relocation_segment               ; offset of word that DOS must relocate
    dw 0                                ; relocation target is in load segment zero
    times 0x200 - ($ - $$) db 0         ; pad header to exactly 512 bytes
%endif                                   ; ELF output contains only the loaded image

global _start                            ; export entry point for GDB's ELF symbols
global loop                              ; export loop location for fixture checks
global relocation_segment                ; export relocation word for fixture checks
global counter                            ; export counter data for fixture checks
; Preserve fixture source line numbers without exporting a marker symbol.
global date_int                           ; keep source-line marker available to DWARF
global time_int                           ; keep source-line marker available to DWARF
global bios_int                           ; keep source-line marker available to DWARF
global bios_dos_int                       ; keep source-line marker available to DWARF
global loop_int                           ; keep source-line marker available to DWARF
global loop_next                          ; keep source-line marker available to DWARF
global date_time_text                     ; export formatted date/time output buffer

_start:
    ; The MZ loader relocates relocation_segment to the current load segment.
    mov ax, cs                            ; AX = runtime segment assigned to this EXE
    mov ds, ax                            ; DS = relocated program data segment
    mov bx, [relocation_segment]          ; BX = MZ-relocated word from the image
    cmp bx, ax                             ; compare relocated word with actual load segment
    jne relocation_error                  ; report failure if DOS relocation did not occur

    mov dx, banner                         ; DS:DX = banner string
    mov ah, 9                              ; DOS print-$-terminated-string service
    int 0x21                               ; print banner through DOS console

    ; Query the DOS version, date, and time without waiting for user input.
    mov ah, 0x30                           ; DOS get-version service
    ; Retain line numbering without a marker GDB treats as a nested function.
    int 0x21                               ; AL/AH = DOS major/minor version
    mov [dos_version_major], al            ; save major version for inspection
    mov [dos_version_minor], ah            ; save minor version for inspection

    mov ah, 0x2A                           ; DOS get-date service
date_int:                                  ; GDB line marker immediately before INT 21h
    int 0x21                               ; return year in CX, month in DH, day in DL
    mov [date_year], cx                    ; store four-digit year
    mov [date_month], dh                   ; store month number
    mov [date_day], dl                     ; store day number

    mov ah, 0x2C                           ; DOS get-time service
time_int:                                  ; GDB line marker immediately before INT 21h
    int 0x21                               ; return hour/minute/second in CH/CL/DH
    mov [time_hour], ch                    ; store hour
    mov [time_minute], cl                  ; store minute
    mov [time_second], dh                  ; store second

    ; Format MM/DD/YYYY HH:MM:SS for DOS function 09h.
    mov al, [date_month]                   ; AL = month to format as two decimal digits
    mov di, date_time_text                 ; DI = output position MM
    call format_2                          ; write month digits
    mov al, [date_day]                     ; AL = day to format
    mov di, date_time_text+3               ; DI = output position DD
    call format_2                          ; write day digits
    mov ax, [date_year]                    ; AX = four-digit year
    call format_year                       ; write YYYY into date/time buffer
    mov al, [time_hour]                    ; AL = hour to format
    mov di, date_time_text+11              ; DI = output position HH
    call format_2                          ; write hour digits
    mov al, [time_minute]                  ; AL = minute to format
    mov di, date_time_text+14              ; DI = output position MM
    call format_2                          ; write minute digits
    mov al, [time_second]                  ; AL = second to format
    mov di, date_time_text+17              ; DI = output position SS
    call format_2                          ; write second digits

    mov dx, date_label                     ; DS:DX = date/time label
    mov ah, 9                              ; DOS print-string service
    int 0x21                               ; print label
    mov dx, date_time_text                 ; DS:DX = formatted date/time plus CR/LF
    int 0x21                               ; print formatted date/time

    ; BIOS teletype output is distinct from the DOS console services above.
    mov dx, bios_label                     ; DS:DX = label distinguishing BIOS output
    mov ah, 9                              ; DOS print-string service
    int 0x21                               ; print label before BIOS teletype character
    mov ax, 0x0E21                         ; AH=0Eh BIOS teletype, AL='!'
    mov bx, 0x0007                         ; BH=page 0, BL=light-gray text attribute
bios_int:                                  ; GDB line marker before BIOS interrupt
    int 0x10                               ; display '!' through BIOS video service
    mov dx, line_ending                    ; DS:DX = DOS CR/LF string
    mov ah, 9                              ; DOS print-string service
bios_dos_int:                             ; GDB line marker before DOS interrupt
    int 0x21                               ; print line ending via DOS

    mov byte [counter], '0'                ; initialize loop's printable digit

loop:                                      ; repeating output loop for breakpoint tests
    mov ah, 2                              ; DOS display-character service
    mov dl, [counter]                      ; DL = current digit to print
loop_int:                                  ; GDB marker before DOS character output
    int 0x21                               ; print current digit
loop_next:                                 ; GDB marker at first instruction after DOS call
    inc byte [counter]                     ; advance to next ASCII digit
    cmp byte [counter], '9' + 1            ; have we gone past '9'?
    jb .again                              ; if not, retain the incremented digit
    mov byte [counter], '0'                ; wrap back to '0' after the last digit
.again:                                    ; loop continuation point
    call bios_delay                        ; pause between counter output iterations
    jmp loop                               ; print the next counter digit

relocation_error:
    mov dx, error_message                  ; DS:DX = failure message
    mov ah, 9                              ; DOS print-string service
    int 0x21                               ; tell user the MZ relocation check failed
    mov ax, 0x4C01                         ; DOS terminate-process, status 1
    int 0x21                               ; exit fixture with error status

; AL is a value from 0 through 99; DI points to two output characters.
format_2:
    aam                                    ; AH=AL/10 and AL=AL%10 (decimal digits)
    add ax, 0x3030                         ; convert both numeric digits to ASCII
    xchg al, ah                            ; put tens in AL and ones in AH for word store
    mov [di], ax                           ; write two ASCII digits at DS:DI
    ret                                    ; return to caller

; AX is the four-digit DOS year; write it at date_time_text+6.
format_year:
    xor dx, dx                             ; clear dividend high word before division
    mov bx, 1000                           ; BX = divisor for thousands digit
    div bx                                 ; AX/1000 -> quotient AL, remainder DX
    add al, '0'                            ; convert thousands digit to ASCII
    mov [date_time_text+6], al             ; store first year digit
    mov ax, dx                             ; AX = remainder after thousands digit
    xor dx, dx                             ; prepare next unsigned division
    mov bx, 100                            ; BX = divisor for hundreds digit
    div bx                                 ; quotient AL is hundreds, remainder DX
    add al, '0'                            ; convert hundreds digit to ASCII
    mov [date_time_text+7], al             ; store second year digit
    mov ax, dx                             ; AX = remainder below 100
    xor dx, dx                             ; prepare next unsigned division
    mov bx, 10                             ; BX = divisor for tens digit
    div bx                                 ; quotient AL is tens, remainder DL is ones
    add al, '0'                            ; convert tens digit to ASCII
    add dl, '0'                            ; convert ones digit to ASCII
    mov [date_time_text+8], al             ; store third year digit
    mov [date_time_text+9], dl             ; store final year digit
    ret                                    ; return with YYYY written

; BIOS interval wait: pause 100 ms between output iterations.
bios_delay:
    push ax                                ; preserve caller's registers
    push cx
    push dx
    mov ah, 0x86                           ; BIOS wait service
    mov cx, 0x0001                         ; high word of 100,000 microseconds
    mov dx, 0x86A0                         ; low word: CX:DX = 100,000 (100 ms)
    int 0x15                               ; wait for the requested interval
    pop dx
    pop cx
    pop ax
    ret

relocation_segment: dw 0                  ; DOS patches this word with load segment
counter:            db '0'                ; current digit displayed by loop
banner:             db 'testexe.exe running - MZ relocation verified', 0x0D, 0x0A, '$' ; startup text
error_message:      db 'MZ relocation failed', 0x0D, 0x0A, '$' ; failed self-check text
date_label:         db 'DOS date/time: $' ; prefix for timestamp output
date_time_text:     db '00/00/0000 00:00:00', 0x0D, 0x0A, '$' ; formatted timestamp buffer
bios_label:         db 'BIOS teletype: $' ; prefix showing BIOS output path
line_ending:        db 0x0D, 0x0A, '$'   ; DOS-terminated CR/LF string
dos_version_major:  db 0                  ; saved DOS major version
dos_version_minor:  db 0                  ; saved DOS minor version
date_year:          dw 0                  ; saved year returned by DOS
date_month:         db 0                  ; saved month returned by DOS
date_day:           db 0                  ; saved day returned by DOS
time_hour:          db 0                  ; saved hour returned by DOS
time_minute:        db 0                  ; saved minute returned by DOS
time_second:        db 0                  ; saved second returned by DOS

mz_file_end:
