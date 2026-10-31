	include	lmacros.h
codeseg	segment	byte public 'code'
	assume	cs:codeseg
	extrn	music_enabled:byte
	extrn	stream_offset:word

; Return nonzero while music is enabled, whatever the stream offset.
	procdef	music_is_playing
	mov	al,byte ptr cs:music_enabled
	cmp	al,0
	; Disabled music returns the zero result already in al.
	je	music_is_playing_forward1
	mov	al,byte ptr cs:stream_offset
	cmp	al,0
	; A nonzero low offset byte is already a true result.
	jne	music_is_playing_forward1
	mov	al,1
music_is_playing_forward1:
	; Widen the byte result to the returned word.
	xor	ah,ah
	ret
	pend	music_is_playing

codeseg	ends
	end
