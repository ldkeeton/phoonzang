/* allocates a far block; result left in the return registers by
   lmalloc */
app_malloc(size)
long size;
{
	lmalloc(size);
}
