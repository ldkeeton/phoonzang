/* Defines the runtime stack size default. */
#if sizeof(char *) == 4
int _STKSIZ = 8192/16;		/* (in paragraphs) (large data model) */
#else
int _STKSIZ = 4096/16;		/* (in paragraphs) */
#endif
