/* allocates a far block; result left in the return registers by
   aztec_lmalloc */
app_malloc(size)
long size;
{
	aztec_lmalloc(size);
}
