	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	driver_slot_0_:near
	public	driver_entry_0_stub

; Three-byte jump to dispatch slot 0, immediately ahead of the slot table.
driver_entry_0_stub proc far
	jmp	driver_slot_0_
driver_entry_0_stub endp

	codeseg	ends
	end
