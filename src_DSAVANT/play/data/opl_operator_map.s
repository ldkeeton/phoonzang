; :ts=8
codeseg	segment	byte public 'code'
	assume	cs:codeseg

; 18 bytes: OPL operator offsets, a pair per channel (first operator, second operator is +3)
	public	opl_operator_map
opl_operator_map	dw	0300h,0401h,0502h,0b08h,0c09h,0d0ah,1310h,1411h
	dw	1512h

codeseg	ends
	end
