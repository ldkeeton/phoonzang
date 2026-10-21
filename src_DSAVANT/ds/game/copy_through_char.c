/* copies src to dst up to and including the first stop char (or the whole
   string if stop never appears), then NUL-terminates dst */
copy_through_char(dst, src, stop)
char *dst, *src; char stop;
{
	int i, done;

	i = 0;
	done = 0;
	/* done is set after copying stop, so stop itself is kept */
	while (src[i] && !done) {
		dst[i] = src[i];
		done = src[i] == stop ? 1 : 0;
		i++;
	}
	dst[i] = 0;
}
