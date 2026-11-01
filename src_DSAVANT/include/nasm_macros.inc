; auto-generated
; nasm_macros_master.inc: macros for the generated NASM listings.
;
; The build copies this file to the project's include/nasm_macros.inc.  It is
; the NASM counterpart of lmacros_master.h, which is `as` syntax for the .s
; sources and which NASM cannot read.

%ifndef NASM_MACROS_INC
%define NASM_MACROS_INC

; ln starts a .COM with a jump to the code after it (e9 00 00).  NASM has no
; linker, so a raw_drv's root listing writes those bytes with this macro, and
; no .s or .c owns them.
%macro ln_com_jump 0
    jmp near $+3
%endmacro

%endif
