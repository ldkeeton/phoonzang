/*  The RED zone is used for stack saftey checking */
#if sizeof(char *) == 4
int _STKRED = 1024;		/* size of RED zone (in bytes) */
#else
int _STKRED = 2048;		/* size of RED zone (in bytes) */
#endif

/*
NOTE: The RED zone is used for stack saftey checking.  With stack above heap,
the heap will not be allowed to get within STKRED bytes of the current value
of the SP, if limit checking is enabled (see the cc +b option), SP isn't
allowed any closer than STKRED bytes to the top of the heap.  If stack below
heap and limit checking is enabled, SP isn't allowed any closer than STKRED
bytes to _Utop.  Minimum stack size = 2*_STKRED.  Minimum value for STKRED
should be about 256 bytes.  This allows some margin to issue DOS calls and
allow interrupt handlers to execute.  (Some people think that this should
be > 1k.) */
