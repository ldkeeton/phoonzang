/* releases resources then exits with the given status */
release_and_exit(status)
int status;
{
	release_resources(status);
	aztec_exit(status);
}
