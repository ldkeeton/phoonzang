copy_through_char(dst, src, stop)
char *dst, *src; char stop;
{
	int i, done;

	i = 0;
	done = 0;
	while (src[i] && !done) {
		dst[i] = src[i];
		done = src[i] == stop ? 1 : 0;
		i++;
	}
	dst[i] = 0;
}
