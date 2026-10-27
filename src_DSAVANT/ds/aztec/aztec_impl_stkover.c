/* Reports stack overflow and terminates the program. */
aztec_impl_stkover()
{
	aztec_write(2, "STACK OVERFLOW, INCREASE STACK SIZE\n", 36);
	aztec_impl_exit(100);
}
