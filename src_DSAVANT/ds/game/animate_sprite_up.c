/* shrinks n toward 0 in steps of 10, redrawing every 25 ms, while the driver
   reports the animation is still allowed to run */
animate_sprite_up(a, n)
{
	if (gfx_entry_52()) {
		/* stop early if gfx_entry_52 goes false mid-animation */
		while (n > 0 && gfx_entry_52()) {
			gfx_entry_54(a, n = clamp_between(n - 10, 0, n));
			delay_ms(25);
		}
		gfx_entry_53();
	}
}
