/* Invert and reveal a rectangle, with an optional short delay. */

extern call_invert_area(), call_show_area(), delay_ms();

flash_area(left, top, right, bottom, pause)
int left, top, right, bottom, pause;
{
	call_invert_area(left, top, right, bottom);
	call_show_area(left, top, right, bottom);
	if (pause)
		delay_ms(35); /* 0x23 is the delay passed by this routine. */
}
