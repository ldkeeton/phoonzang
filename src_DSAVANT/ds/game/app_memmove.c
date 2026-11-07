/* copies n bytes between far addresses */
app_memmove(src, dst, n)
long src;
long dst;
unsigned n;
{
	movblock(src, dst, n);
}
