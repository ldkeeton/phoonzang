/* frees a far block from app_malloc */
app_free(p)
long p;
{
	lfree(p);
}
