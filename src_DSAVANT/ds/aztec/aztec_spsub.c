/* Copyright (C) Manx Software Systems. */
extern char *buff;

/* Appends one formatted character to the output buffer. */
aztec_spsub(c)
{
	return (*buff++ = c)&255;
}
