/* Copyright (C) Manx Software Systems. */
extern int (*cls_)();

/* Runs the registered cleanup routine before terminating. */
aztec_exit(code)
{
	(*cls_)();
	aztec_impl_exit(code);
}
