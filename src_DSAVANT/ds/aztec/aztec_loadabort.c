/* Copyright (C) Manx Software Systems. */
extern char *ovname;

/* Reports an overlay loading error and exits the program. */
aztec_loadabort(code)
{
	char buffer[80];

	aztec_sprintf(buffer, "Error %d loading overlay: %s$", code, ovname);
	aztec_bdos(9, buffer);
	aztec_exit(100);
}
