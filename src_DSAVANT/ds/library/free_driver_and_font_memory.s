; Releases the allocated driver blocks and font memory.
	include	lmacros.h
	assume	cs:codeseg
	extrn	free_driver_blocks_:near
	extrn	free_font_memory_:near
	extrn	driver_block_table_end_:word
	public	free_driver_and_font_memory_
free_driver_and_font_memory_ proc near
	pushs	es,si
	; Start the driver-block walker just past its final table entry.
	lea	si, word [driver_block_table_end_ - 2]
	call	free_driver_blocks_
	; Then free the individually recorded font segments.
	call	free_font_memory_
	pops	si,es
	ret
free_driver_and_font_memory_ endp
	finish
	end
