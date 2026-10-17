; auto-generated
; Host symbols for every overlay of this tree (plan.md E2).
;
; The host is included in a section that occupies no bytes, so its labels
; carry the addresses the overlays call and the shared ``__zdseg_end``/
; ``dseg_``/``bss_`` names.  This is the *host's* frame -- the same for
; every overlay of it -- so it is emitted once here, not in each master.
; The overlay's own ``VBASE``/``IMAGE_BASE`` are shadowed for the
; duration of the include and cleared after it, so its own follow.
%define HOST_SYMS_ONLY
%define VBASE (-0x0200)
%define IMAGE_BASE 0
%define __zimage_end ds___zimage_end
section .host nobits vstart=-0x0200
%include "ds.asm"
%undef __zimage_end
%undef IMAGE_BASE
%undef HOST_SYMS_ONLY
%undef VBASE
