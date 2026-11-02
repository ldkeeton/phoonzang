; EMS page compaction copies into.
codeseg	segment	byte public 'code'
	public	ems_compact_dest_page
ems_compact_dest_page	dw	0000h
codeseg	ends
	end
