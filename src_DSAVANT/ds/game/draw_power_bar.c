/* draws a power bar in the box left,top..left+width-1,top+height-1,
   filled from the bottom up in proportion to cur/max */
draw_power_bar(left, top, width, height, cur, max, color)
{
	int len = 0;

	if (max > 0)	/* no bar without a maximum to scale against */
		/* 100 keeps the scaling exact; +1 rounds up a partial pixel */
		len = (long)cur * 100 / ((long)max * 100 / height) + 1;
	/* full height at max, nothing at zero or below */
	len = cur == max ? height : cur > 0 ? len : 0;
	if (len > 0)
		gfx_fill_area(left, top + height - len, left + width - 1,
			top + height - 1, color);	/* grows up from the box bottom */
}
