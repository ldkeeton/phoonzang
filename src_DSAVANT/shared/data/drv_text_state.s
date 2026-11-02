; Text renderer state.
codeseg	segment	byte public 'code'
	public	text_state_words
text_state_words	dw	20 dup (0)
	public	text_state_bytes
text_state_bytes	db	25 dup (0)
codeseg	ends
	end
