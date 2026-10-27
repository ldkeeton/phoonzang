; Copyright (C) 1983 1984 by Manx Software Systems
	include lmacros.h
	public aztec_impl_exit_
aztec_impl_exit_ proc near
	pops	ax,ax	; fetch return code
ifdef FARPROC
	pop	ax
endif
loc_GIPI_:
	dos 4cH
aztec_impl_exit_ endp
	finish
	end
